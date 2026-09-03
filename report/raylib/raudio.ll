Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@start_decoder:bb.a
  store i16 %i.zt, ptr %i.zu, align 2
  %indvars.iv.next1586 = add nuw nsw i64 %indvars.iv1585, 1 ; 2 uses
  %i.zv = load i32, ptr %i.yn, align 4
  %i.zw = sext i32 %i.zv to i64                   ; 2 uses
  %i.zx = icmp slt i64 %indvars.iv.next1586, %i.zw
  br i1 %i.zx, label %.lr.ph1402, label %._crit_edge1403

._crit_edge1403:                                  ; preds = %.lr.ph1402, %.preheader1257.._crit_edge1403_crit_edge
  %.pre-phi = phi i64 [ %.pre1664, %.preheader1257.._crit_edge1403_crit_edge ], [ %i.zw, %.lr.ph1402 ]
  call void @qsort(ptr noundef nonnull %1, i64 noundef %.pre-phi, i64 noundef 4, ptr noundef nonnull @point_compare) #61
  %i.zy = load i32, ptr %i.yn, align 4            ; 3 uses
  %i.zz = call i32 @llvm.smax.i32(i32 %i.zy, i32 1)
  %smax = add nsw i32 %i.zz, -1                   ; 2 uses
  %wide.trip.count1591 = zext nneg i32 %smax to i64
  %exitcond1592.not1874 = icmp eq i32 %smax, 0
  br i1 %exitcond1592.not1874, label %.preheader1256, label %.lr.ph1876

bb.fl:                                            ; preds = %.lr.ph1876
  %exitcond1592.not = icmp eq i64 %indvars.iv.next1589, %wide.trip.count1591
  br i1 %exitcond1592.not, label %.preheader1256, label %.lr.ph1876

.preheader1256:                                   ; preds = %bb.fl, %._crit_edge1403
  %i.aaa = icmp sgt i32 %i.zy, 0
  br i1 %i.aaa, label %.lr.ph1406, label %._crit_edge1409

.lr.ph1406:                                       ; preds = %.preheader1256
  %i.aab = getelementptr inbounds nuw i8, ptr %i.wl, i64 838
  br label %bb.fm

.lr.ph1876:                                       ; preds = %._crit_edge1403, %bb.fl
  %indvars.iv15881875 = phi i64 [ %indvars.iv.next1589, %bb.fl ], [ 0, %._crit_edge1403 ] ; 2 uses
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv15881875
  %i.aad = load i16, ptr %i.aac, align 4
  %indvars.iv.next1589 = add nuw nsw i64 %indvars.iv15881875, 1 ; 3 uses
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next1589
  %i.aaf = load i16, ptr %i.aae, align 4
  %i.aag = icmp eq i16 %i.aad, %i.aaf
  br i1 %i.aag, label %.thread1231, label %bb.fl

.preheader1255:                                   ; preds = %bb.fm
  %i.aah = icmp sgt i32 %i.aao, 2
  br i1 %i.aah, label %.lr.ph1408, label %._crit_edge1409

.lr.ph1408:                                       ; preds = %.preheader1255
  %i.aai = getelementptr inbounds nuw i8, ptr %i.wl, i64 1088
  br label %bb.fn

bb.fm:                                            ; preds = %.lr.ph1406, %bb.fm
  %indvars.iv1593 = phi i64 [ 0, %.lr.ph1406 ], [ %indvars.iv.next1594, %bb.fm ] ; 3 uses
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv1593
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 2
  %i.aal = load i16, ptr %i.aak, align 2
  %i.aam = trunc i16 %i.aal to i8
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aab, i64 %indvars.iv1593
  store i8 %i.aam, ptr %i.aan, align 1
  %indvars.iv.next1594 = add nuw nsw i64 %indvars.iv1593, 1 ; 2 uses
  %i.aao = load i32, ptr %i.yn, align 4           ; 3 uses
  %i.aap = sext i32 %i.aao to i64
  %i.aaq = icmp slt i64 %indvars.iv.next1594, %i.aap
  br i1 %i.aaq, label %bb.fm, label %.preheader1255

bb.fn:                                            ; preds = %.lr.ph1408, %neighbors.exit
  %indvars.iv1596 = phi i64 [ 2, %.lr.ph1408 ], [ %indvars.iv.next1597, %neighbors.exit ] ; 4 uses
  %i.aar = getelementptr inbounds nuw [2 x i8], ptr %i.yi, i64 %indvars.iv1596 ; 2 uses
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fs, %bb.fn
  %.01200 = phi i8 [ 0, %bb.fn ], [ %.11201, %bb.fs ] ; 2 uses
  %.01198 = phi i8 [ 0, %bb.fn ], [ %.11199, %bb.fs ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %bb.fn ], [ %indvars.iv.next.i, %bb.fs ] ; 4 uses
  %.02431.i = phi i32 [ 65536, %bb.fn ], [ %.1.i, %bb.fs ] ; 3 uses
  %.02530.i = phi i32 [ -1, %bb.fn ], [ %.126.i, %bb.fs ] ; 3 uses
  %i.aas = getelementptr inbounds nuw [2 x i8], ptr %i.yi, i64 %indvars.iv.i
  %i.aat = load i16, ptr %i.aas, align 2          ; 3 uses
  %i.aau = zext i16 %i.aat to i32                 ; 4 uses
  %i.aav = icmp slt i32 %.02530.i, %i.aau
  br i1 %i.aav, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.aaw = load i16, ptr %i.aar, align 2
  %i.aax = icmp ult i16 %i.aat, %i.aaw            ; 2 uses
  %i.aay = trunc i64 %indvars.iv.i to i8
  %spec.select1239 = select i1 %i.aax, i8 %i.aay, i8 %.01200
  %spec.select1240 = select i1 %i.aax, i32 %i.aau, i32 %.02530.i
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.11201 = phi i8 [ %.01200, %bb.fo ], [ %spec.select1239, %bb.fp ] ; 2 uses
  %.126.i = phi i32 [ %.02530.i, %bb.fo ], [ %spec.select1240, %bb.fp ]
  %i.aaz = icmp sgt i32 %.02431.i, %i.aau
  br i1 %i.aaz, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.aba = load i16, ptr %i.aar, align 2
  %i.abb = icmp ugt i16 %i.aat, %i.aba            ; 2 uses
  %i.abc = trunc i64 %indvars.iv.i to i8
  %spec.select1241 = select i1 %i.abb, i8 %i.abc, i8 %.01198
  %spec.select1242 = select i1 %i.abb, i32 %i.aau, i32 %.02431.i
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.11199 = phi i8 [ %.01198, %bb.fq ], [ %spec.select1241, %bb.fr ] ; 2 uses
  %.1.i = phi i32 [ %.02431.i, %bb.fq ], [ %spec.select1242, %bb.fr ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv1596
  br i1 %exitcond.not.i, label %neighbors.exit, label %bb.fo

neighbors.exit:                                   ; preds = %bb.fs
  %i.abd = getelementptr inbounds nuw [2 x i8], ptr %i.aai, i64 %indvars.iv1596 ; 2 uses
  store i8 %.11201, ptr %i.abd, align 2
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 1
  store i8 %.11199, ptr %i.abe, align 1
  %indvars.iv.next1597 = add nuw nsw i64 %indvars.iv1596, 1 ; 2 uses
  %i.abf = load i32, ptr %i.yn, align 4           ; 2 uses
  %i.abg = sext i32 %i.abf to i64
  %i.abh = icmp slt i64 %indvars.iv.next1597, %i.abg
  br i1 %i.abh, label %bb.fn, label %._crit_edge1409

.thread1231:                                      ; preds = %bb.fg, %.lr.ph1876, %bb.fj
  %i.abi = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.abi, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #61
  br label %.critedge

._crit_edge1409:                                  ; preds = %neighbors.exit, %.preheader1256, %.preheader1255
  %.lcssa1271 = phi i32 [ %i.aao, %.preheader1255 ], [ %i.zy, %.preheader1256 ], [ %i.abf, %neighbors.exit ]
  %spec.select1167 = call i32 @llvm.smax.i32(i32 %.lcssa1271, i32 %.09701412) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #61
  %indvars.iv.next1600 = add nuw nsw i64 %indvars.iv1599, 1 ; 2 uses
  %i.abj = load i32, ptr %i.us, align 8
  %i.abk = sext i32 %i.abj to i64
  %i.abl = icmp slt i64 %indvars.iv.next1600, %i.abk
  br i1 %i.abl, label %bb.ey, label %._crit_edge1414.loopexit

._crit_edge1414.loopexit:                         ; preds = %._crit_edge1409
  %i.abm = shl nuw i32 %spec.select1167, 1
  br label %._crit_edge1414

._crit_edge1414:                                  ; preds = %._crit_edge1414.loopexit, %.preheader1259
  %.0970.lcssa = phi i32 [ 0, %.preheader1259 ], [ %i.abm, %._crit_edge1414.loopexit ]
  %i.abn = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6)
  %i.abo = add i32 %i.abn, 1                      ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 6 uses
  store i32 %i.abo, ptr %i.abp, align 8
  %i.abq = shl i32 %i.abo, 5
  %i.abr = call fastcc ptr @setup_malloc(ptr noundef %0, i32 noundef %i.abq) ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  store ptr %i.abr, ptr %i.abs, align 8
  %i.abt = icmp eq ptr %i.abr, null
  br i1 %i.abt, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %._crit_edge1414
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 3, ptr %i.abu, align 4
  br label %.critedge

bb.fu:                                            ; preds = %._crit_edge1414
  %i.abv = load i32, ptr %i.abp, align 8
  %i.abw = sext i32 %i.abv to i64
  %i.abx = shl nsw i64 %i.abw, 5
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.abr, i8 0, i64 %i.abx, i1 false)
  %i.aby = load i32, ptr %i.abp, align 8
  %i.abz = icmp sgt i32 %i.aby, 0
  br i1 %i.abz, label %.lr.ph1433, label %._crit_edge1434

.lr.ph1433:                                       ; preds = %bb.fu
  %i.aca = getelementptr inbounds nuw i8, ptr %0, i64 340
  br label %bb.fv

bb.fv:                                            ; preds = %.lr.ph1433, %._crit_edge1430
  %indvars.iv1618 = phi i64 [ 0, %.lr.ph1433 ], [ %indvars.iv.next1619, %._crit_edge1430 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  %i.acb = load ptr, ptr %i.abs, align 8
  %i.acc = getelementptr inbounds nuw [32 x i8], ptr %i.acb, i64 %indvars.iv1618 ; 8 uses
  %i.acd = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16) ; 2 uses
  %i.ace = trunc i32 %i.acd to i16
  %i.acf = getelementptr inbounds nuw [2 x i8], ptr %i.aca, i64 %indvars.iv1618
  store i16 %i.ace, ptr %i.acf, align 2
  %i.acg = and i32 %i.acd, 65535
  %i.ach = icmp samesign ugt i32 %i.acg, 2
  br i1 %i.ach, label %.critedge1169, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aci = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 24)
  store i32 %i.aci, ptr %i.acc, align 8
  %i.acj = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 24) ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acc, i64 4
  store i32 %i.acj, ptr %i.ack, align 4
  %i.acl = load i32, ptr %i.acc, align 8
  %i.acm = icmp ult i32 %i.acj, %i.acl
  br i1 %i.acm, label %.critedge1169, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.acn = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 24)
  %i.aco = add i32 %i.acn, 1
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acc, i64 8
  store i32 %i.aco, ptr %i.acp, align 8
  %i.acq = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6)
  %i.acr = trunc i32 %i.acq to i8
  %i.acs = add i8 %i.acr, 1
  %i.act = getelementptr inbounds nuw i8, ptr %i.acc, i64 12 ; 7 uses
  store i8 %i.acs, ptr %i.act, align 4
  %i.acu = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8) ; 2 uses
  %i.acv = trunc i32 %i.acu to i8
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acc, i64 13 ; 5 uses
  store i8 %i.acv, ptr %i.acw, align 1
  %i.acx = and i32 %i.acu, 255
  %i.acy = load i32, ptr %i.ha, align 8
  %.not1116 = icmp slt i32 %i.acx, %i.acy
  br i1 %.not1116, label %.preheader1254, label %.critedge1169

.preheader1254:                                   ; preds = %bb.fx
  %i.acz = load i8, ptr %i.act, align 4
  %.not1471 = icmp eq i8 %i.acz, 0
  br i1 %.not1471, label %._crit_edge1418, label %.lr.ph1417

.lr.ph1417:                                       ; preds = %.preheader1254, %bb.fz
  %indvars.iv1602 = phi i64 [ %indvars.iv.next1603, %bb.fz ], [ 0, %.preheader1254 ] ; 2 uses
  %i.ada = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 3)
  %i.adb = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 1)
  %.not1121 = icmp eq i32 %i.adb, 0
  br i1 %.not1121, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %.lr.ph1417
  %i.adc = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 5)
  %i.add = shl i32 %i.adc, 3
  %i.ade = and i32 %i.add, 2040
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %.lr.ph1417
  %.0940 = phi i32 [ %i.ade, %bb.fy ], [ 0, %.lr.ph1417 ]
  %i.adf = add i32 %.0940, %i.ada
  %i.adg = trunc i32 %i.adf to i8
  %i.adh = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv1602
  store i8 %i.adg, ptr %i.adh, align 1
  %indvars.iv.next1603 = add nuw nsw i64 %indvars.iv1602, 1 ; 2 uses
  %i.adi = load i8, ptr %i.act, align 4           ; 2 uses
  %i.adj = zext i8 %i.adi to i64
  %i.adk = icmp samesign ult i64 %indvars.iv.next1603, %i.adj
  br i1 %i.adk, label %.lr.ph1417, label %._crit_edge1418.loopexit

._crit_edge1418.loopexit:                         ; preds = %bb.fz
  %i.adl = zext i8 %i.adi to i32
  %i.adm = shl nuw nsw i32 %i.adl, 4
  br label %._crit_edge1418

._crit_edge1418:                                  ; preds = %._crit_edge1418.loopexit, %.preheader1254
  %.lcssa.in = phi i32 [ 0, %.preheader1254 ], [ %i.adm, %._crit_edge1418.loopexit ]
  %i.adn = call fastcc ptr @setup_malloc(ptr noundef %0, i32 noundef %.lcssa.in) ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.acc, i64 24 ; 25 uses
  store ptr %i.adn, ptr %i.ado, align 8
  %i.adp = icmp eq ptr %i.adn, null
  br i1 %i.adp, label %.critedge1169, label %.preheader1253

.preheader1253:                                   ; preds = %._crit_edge1418
  %i.adq = load i8, ptr %i.act, align 4
  %.not1472 = icmp eq i8 %i.adq, 0
  br i1 %.not1472, label %._crit_edge1422, label %.preheader1252

.preheader1252:                                   ; preds = %.preheader1253, %bb.gx
  %indvars.iv1609 = phi i64 [ %indvars.iv.next1610, %bb.gx ], [ 0, %.preheader1253 ] ; 26 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv1609
  %i.ads = load i8, ptr %i.adr, align 1           ; 2 uses
  %i.adt = zext i8 %i.ads to i32                  ; 7 uses
  %i.adu = and i32 %i.adt, 1
  %.not1119 = icmp eq i32 %i.adu, 0
  br i1 %.not1119, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %.preheader1252
  %i.adv = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %i.adw = trunc i32 %i.adv to i16
  %i.adx = load ptr, ptr %i.ado, align 8
  %i.ady = getelementptr inbounds nuw [16 x i8], ptr %i.adx, i64 %indvars.iv1609
  store i16 %i.adw, ptr %i.ady, align 2
  %i.adz = load ptr, ptr %i.ado, align 8
  %i.aea = getelementptr inbounds nuw [16 x i8], ptr %i.adz, i64 %indvars.iv1609
  %i.aeb = load i16, ptr %i.aea, align 2
  %i.aec = sext i16 %i.aeb to i32
  %i.aed = load i32, ptr %i.ha, align 8
  %.not1120 = icmp sgt i32 %i.aed, %i.aec
  br i1 %.not1120, label %bb.gc, label %.critedge1169

bb.gb:                                            ; preds = %.preheader1252
  %i.aee = load ptr, ptr %i.ado, align 8
  %i.aef = getelementptr inbounds nuw [16 x i8], ptr %i.aee, i64 %indvars.iv1609
  store i16 -1, ptr %i.aef, align 2
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.aeg = and i32 %i.adt, 2
  %.not1119.1 = icmp eq i32 %i.aeg, 0
  br i1 %.not1119.1, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.aeh = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %i.aei = trunc i32 %i.aeh to i16
  %i.aej = load ptr, ptr %i.ado, align 8
  %i.aek = getelementptr inbounds nuw [16 x i8], ptr %i.aej, i64 %indvars.iv1609
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 2
  store i16 %i.aei, ptr %i.ael, align 2
  %i.aem = load ptr, ptr %i.ado, align 8
  %i.aen = getelementptr inbounds nuw [16 x i8], ptr %i.aem, i64 %indvars.iv1609
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 2
  %i.aep = load i16, ptr %i.aeo, align 2
  %i.aeq = sext i16 %i.aep to i32
  %i.aer = load i32, ptr %i.ha, align 8
  %.not1120.1 = icmp sgt i32 %i.aer, %i.aeq
  br i1 %.not1120.1, label %bb.gf, label %.critedge1169

bb.ge:                                            ; preds = %bb.gc
  %i.aes = load ptr, ptr %i.ado, align 8
  %i.aet = getelementptr inbounds nuw [16 x i8], ptr %i.aes, i64 %indvars.iv1609
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 2
  store i16 -1, ptr %i.aeu, align 2
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %i.aev = and i32 %i.adt, 4
  %.not1119.2 = icmp eq i32 %i.aev, 0
  br i1 %.not1119.2, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aew = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %i.aex = trunc i32 %i.aew to i16
  %i.aey = load ptr, ptr %i.ado, align 8
  %i.aez = getelementptr inbounds nuw [16 x i8], ptr %i.aey, i64 %indvars.iv1609
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 4
  store i16 %i.aex, ptr %i.afa, align 2
  %i.afb = load ptr, ptr %i.ado, align 8
  %i.afc = getelementptr inbounds nuw [16 x i8], ptr %i.afb, i64 %indvars.iv1609
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 4
  %i.afe = load i16, ptr %i.afd, align 2
  %i.aff = sext i16 %i.afe to i32
  %i.afg = load i32, ptr %i.ha, align 8
  %.not1120.2 = icmp sgt i32 %i.afg, %i.aff
  br i1 %.not1120.2, label %bb.gi, label %.critedge1169

bb.gh:                                            ; preds = %bb.gf
  %i.afh = load ptr, ptr %i.ado, align 8
  %i.afi = getelementptr inbounds nuw [16 x i8], ptr %i.afh, i64 %indvars.iv1609
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 4
  store i16 -1, ptr %i.afj, align 2
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %i.afk = and i32 %i.adt, 8
  %.not1119.3 = icmp eq i32 %i.afk, 0
  br i1 %.not1119.3, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.afl = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %i.afm = trunc i32 %i.afl to i16
  %i.afn = load ptr, ptr %i.ado, align 8
  %i.afo = getelementptr inbounds nuw [16 x i8], ptr %i.afn, i64 %indvars.iv1609
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 6
  store i16 %i.afm, ptr %i.afp, align 2
  %i.afq = load ptr, ptr %i.ado, align 8
  %i.afr = getelementptr inbounds nuw [16 x i8], ptr %i.afq, i64 %indvars.iv1609
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 6
  %i.aft = load i16, ptr %i.afs, align 2
  %i.afu = sext i16 %i.aft to i32
  %i.afv = load i32, ptr %i.ha, align 8
  %.not1120.3 = icmp sgt i32 %i.afv, %i.afu
  br i1 %.not1120.3, label %bb.gl, label %.critedge1169

bb.gk:                                            ; preds = %bb.gi
  %i.afw = load ptr, ptr %i.ado, align 8
  %i.afx = getelementptr inbounds nuw [16 x i8], ptr %i.afw, i64 %indvars.iv1609
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 6
  store i16 -1, ptr %i.afy, align 2
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %i.afz = and i32 %i.adt, 16
  %.not1119.4 = icmp eq i32 %i.afz, 0
  br i1 %.not1119.4, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.aga = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %i.agb = trunc i32 %i.aga to i16
  %i.agc = load ptr, ptr %i.ado, align 8
  %i.agd = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %indvars.iv1609
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  store i16 %i.agb, ptr %i.age, align 2
  %i.agf = load ptr, ptr %i.ado, align 8
  %i.agg = getelementptr inbounds nuw [16 x i8], ptr %i.agf, i64 %indvars.iv1609
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 8
  %i.agi = load i16, ptr %i.agh, align 2
  %i.agj = sext i16 %i.agi to i32
  %i.agk = load i32, ptr %i.ha, align 8
  %.not1120.4 = icmp sgt i32 %i.agk, %i.agj
  br i1 %.not1120.4, label %bb.go, label %.critedge1169

bb.gn:                                            ; preds = %bb.gl
  %i.agl = load ptr, ptr %i.ado, align 8
  %i.agm = getelementptr inbounds nuw [16 x i8], ptr %i.agl, i64 %indvars.iv1609
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 8
  store i16 -1, ptr %i.agn, align 2
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %i.ago = and i32 %i.adt, 32
  %.not1119.5 = icmp eq i32 %i.ago, 0
  br i1 %.not1119.5, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.agp = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %i.agq = trunc i32 %i.agp to i16
  %i.agr = load ptr, ptr %i.ado, align 8
  %i.ags = getelementptr inbounds nuw [16 x i8], ptr %i.agr, i64 %indvars.iv1609
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 10
  store i16 %i.agq, ptr %i.agt, align 2
  %i.agu = load ptr, ptr %i.ado, align 8
  %i.agv = getelementptr inbounds nuw [16 x i8], ptr %i.agu, i64 %indvars.iv1609
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 10
  %i.agx = load i16, ptr %i.agw, align 2
  %i.agy = sext i16 %i.agx to i32
  %i.agz = load i32, ptr %i.ha, align 8
  %.not1120.5 = icmp sgt i32 %i.agz, %i.agy
  br i1 %.not1120.5, label %bb.gr, label %.critedge1169

bb.gq:                                            ; preds = %bb.go
  %i.aha = load ptr, ptr %i.ado, align 8
  %i.ahb = getelementptr inbounds nuw [16 x i8], ptr %i.aha, i64 %indvars.iv1609
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 10
  store i16 -1, ptr %i.ahc, align 2
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %i.ahd = and i32 %i.adt, 64
  %.not1119.6 = icmp eq i32 %i.ahd, 0
  br i1 %.not1119.6, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ahe = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %i.ahf = trunc i32 %i.ahe to i16
  %i.ahg = load ptr, ptr %i.ado, align 8
  %i.ahh = getelementptr inbounds nuw [16 x i8], ptr %i.ahg, i64 %indvars.iv1609
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 12
  store i16 %i.ahf, ptr %i.ahi, align 2
  %i.ahj = load ptr, ptr %i.ado, align 8
  %i.ahk = getelementptr inbounds nuw [16 x i8], ptr %i.ahj, i64 %indvars.iv1609
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 12
  %i.ahm = load i16, ptr %i.ahl, align 2
  %i.ahn = sext i16 %i.ahm to i32
  %i.aho = load i32, ptr %i.ha, align 8
  %.not1120.6 = icmp sgt i32 %i.aho, %i.ahn
  br i1 %.not1120.6, label %bb.gu, label %.critedge1169

bb.gt:                                            ; preds = %bb.gr
  %i.ahp = load ptr, ptr %i.ado, align 8
  %i.ahq = getelementptr inbounds nuw [16 x i8], ptr %i.ahp, i64 %indvars.iv1609
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 12
  store i16 -1, ptr %i.ahr, align 2
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %.not1119.7 = icmp sgt i8 %i.ads, -1
  br i1 %.not1119.7, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.ahs = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %i.aht = trunc i32 %i.ahs to i16
  %i.ahu = load ptr, ptr %i.ado, align 8
  %i.ahv = getelementptr inbounds nuw [16 x i8], ptr %i.ahu, i64 %indvars.iv1609
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 14
  store i16 %i.aht, ptr %i.ahw, align 2
  %i.ahx = load ptr, ptr %i.ado, align 8
  %i.ahy = getelementptr inbounds nuw [16 x i8], ptr %i.ahx, i64 %indvars.iv1609
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 14
  %i.aia = load i16, ptr %i.ahz, align 2
  %i.aib = sext i16 %i.aia to i32
  %i.aic = load i32, ptr %i.ha, align 8
  %.not1120.7 = icmp sgt i32 %i.aic, %i.aib
  br i1 %.not1120.7, label %bb.gx, label %.critedge1169

bb.gw:                                            ; preds = %bb.gu
  %i.aid = load ptr, ptr %i.ado, align 8
  %i.aie = getelementptr inbounds nuw [16 x i8], ptr %i.aid, i64 %indvars.iv1609
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 14
  store i16 -1, ptr %i.aif, align 2
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %indvars.iv.next1610 = add nuw nsw i64 %indvars.iv1609, 1 ; 2 uses
  %i.aig = load i8, ptr %i.act, align 4
  %i.aih = zext i8 %i.aig to i64
  %i.aii = icmp samesign ult i64 %indvars.iv.next1610, %i.aih
  br i1 %i.aii, label %.preheader1252, label %._crit_edge1422

._crit_edge1422:                                  ; preds = %bb.gx, %.preheader1253
  %i.aij = load ptr, ptr %i.hd, align 8
  %i.aik = load i8, ptr %i.acw, align 1
  %i.ail = zext i8 %i.aik to i64
  %i.aim = getelementptr inbounds nuw [2120 x i8], ptr %i.aij, i64 %i.ail
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 4
  %i.aio = load i32, ptr %i.ain, align 4
  %i.aip = shl i32 %i.aio, 3
  %i.aiq = call fastcc ptr @setup_malloc(ptr noundef %0, i32 noundef %i.aip) ; 3 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.acc, i64 16 ; 4 uses
  store ptr %i.aiq, ptr %i.air, align 8
  %.not1117 = icmp eq ptr %i.aiq, null
  br i1 %.not1117, label %.critedge1169, label %bb.gy

bb.gy:                                            ; preds = %._crit_edge1422
  %i.ais = load ptr, ptr %i.hd, align 8
  %i.ait = load i8, ptr %i.acw, align 1
  %i.aiu = zext i8 %i.ait to i64
  %i.aiv = getelementptr inbounds nuw [2120 x i8], ptr %i.ais, i64 %i.aiu
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 4
  %i.aix = load i32, ptr %i.aiw, align 4
  %i.aiy = sext i32 %i.aix to i64
  %i.aiz = shl nsw i64 %i.aiy, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aiq, i8 0, i64 %i.aiz, i1 false)
  %i.aja = load ptr, ptr %i.hd, align 8
  %i.ajb = load i8, ptr %i.acw, align 1
  %i.ajc = zext i8 %i.ajb to i64
  %i.ajd = getelementptr inbounds nuw [2120 x i8], ptr %i.aja, i64 %i.ajc ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 4
  %i.ajf = load i32, ptr %i.aje, align 4
  %i.ajg = icmp sgt i32 %i.ajf, 0
  br i1 %i.ajg, label %.lr.ph1429, label %._crit_edge1430

.lr.ph1429:                                       ; preds = %bb.gy, %._crit_edge1426
  %indvars.iv1615 = phi i64 [ %indvars.iv.next1616, %._crit_edge1426 ], [ 0, %bb.gy ] ; 5 uses
  %i.ajh = phi ptr [ %i.akg, %._crit_edge1426 ], [ %i.ajd, %bb.gy ]
  %i.aji = load i32, ptr %i.ajh, align 8          ; 3 uses
  %i.ajj = call fastcc ptr @setup_malloc(ptr noundef %0, i32 noundef %i.aji)
  %i.ajk = load ptr, ptr %i.air, align 8
  %i.ajl = getelementptr inbounds nuw [8 x i8], ptr %i.ajk, i64 %indvars.iv1615
  store ptr %i.ajj, ptr %i.ajl, align 8
  %i.ajm = load ptr, ptr %i.air, align 8
  %i.ajn = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %indvars.iv1615
  %i.ajo = load ptr, ptr %i.ajn, align 8
  %.not1118 = icmp eq ptr %i.ajo, null
  br i1 %.not1118, label %.critedge1169, label %.preheader1251

.preheader1251:                                   ; preds = %.lr.ph1429
  %i.ajp = icmp sgt i32 %i.aji, 0
  br i1 %i.ajp, label %.lr.ph1425.preheader, label %._crit_edge1426

.lr.ph1425.preheader:                             ; preds = %.preheader1251
  %i.ajq = zext nneg i32 %i.aji to i64
  %i.ajr = trunc nuw nsw i64 %indvars.iv1615 to i32
  %.pre1662 = load i8, ptr %i.act, align 4
  br label %.lr.ph1425

.lr.ph1425:                                       ; preds = %.lr.ph1425.preheader, %.lr.ph1425
  %i.ajs = phi i8 [ %.pre1662, %.lr.ph1425.preheader ], [ %i.aka, %.lr.ph1425 ]
  %indvars.iv1612 = phi i64 [ %i.ajq, %.lr.ph1425.preheader ], [ %indvars.iv.next1613, %.lr.ph1425 ] ; 2 uses
  %.09391424 = phi i32 [ %i.ajr, %.lr.ph1425.preheader ], [ %i.akc, %.lr.ph1425 ] ; 2 uses
  %indvars.iv.next1613 = add nsw i64 %indvars.iv1612, -1 ; 2 uses
  %i.ajt = zext i8 %i.ajs to i32
  %i.aju = srem i32 %.09391424, %i.ajt
  %i.ajv = trunc i32 %i.aju to i8
  %i.ajw = load ptr, ptr %i.air, align 8
  %i.ajx = getelementptr inbounds nuw [8 x i8], ptr %i.ajw, i64 %indvars.iv1615
  %i.ajy = load ptr, ptr %i.ajx, align 8
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 %indvars.iv.next1613
  store i8 %i.ajv, ptr %i.ajz, align 1
  %i.aka = load i8, ptr %i.act, align 4           ; 2 uses
  %i.akb = zext i8 %i.aka to i32
  %i.akc = sdiv i32 %.09391424, %i.akb
  %2 = icmp samesign ugt i64 %indvars.iv1612, 1
  br i1 %2, label %.lr.ph1425, label %._crit_edge1426

._crit_edge1426:                                  ; preds = %.lr.ph1425, %.preheader1251
  %indvars.iv.next1616 = add nuw nsw i64 %indvars.iv1615, 1 ; 2 uses
  %i.akd = load ptr, ptr %i.hd, align 8
  %i.ake = load i8, ptr %i.acw, align 1
  %i.akf = zext i8 %i.ake to i64
  %i.akg = getelementptr inbounds nuw [2120 x i8], ptr %i.akd, i64 %i.akf ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 4
  %i.aki = load i32, ptr %i.akh, align 4
  %i.akj = sext i32 %i.aki to i64
  %i.akk = icmp slt i64 %indvars.iv.next1616, %i.akj
  br i1 %i.akk, label %.lr.ph1429, label %._crit_edge1430

._crit_edge1430:                                  ; preds = %._crit_edge1426, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  %indvars.iv.next1619 = add nuw nsw i64 %indvars.iv1618, 1 ; 2 uses
  %i.akl = load i32, ptr %i.abp, align 8
  %i.akm = sext i32 %i.akl to i64
  %i.akn = icmp slt i64 %indvars.iv.next1619, %i.akm
  br i1 %i.akn, label %bb.fv, label %._crit_edge1434

._crit_edge1434:                                  ; preds = %._crit_edge1430, %bb.fu
  %i.ako = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6)
  %i.akp = add i32 %i.ako, 1                      ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 5 uses
  store i32 %i.akp, ptr %i.akq, align 8
  %i.akr = mul i32 %i.akp, 48
  %i.aks = call fastcc ptr @setup_malloc(ptr noundef %0, i32 noundef %i.akr) ; 3 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  store ptr %i.aks, ptr %i.akt, align 8
  %i.aku = icmp eq ptr %i.aks, null
  br i1 %i.aku, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %._crit_edge1434
  %i.akv = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 3, ptr %i.akv, align 4
  br label %.critedge

bb.ha:                                            ; preds = %._crit_edge1434
  %i.akw = load i32, ptr %i.akq, align 8
  %i.akx = sext i32 %i.akw to i64
  %i.aky = mul nsw i64 %i.akx, 48
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aks, i8 0, i64 %i.aky, i1 false)
  %i.akz = load i32, ptr %i.akq, align 8
  %i.ala = icmp sgt i32 %i.akz, 0
  br i1 %i.ala, label %.lr.ph1448, label %._crit_edge1449

.lr.ph1448:                                       ; preds = %bb.ha, %._crit_edge1444
  %indvars.iv1633 = phi i64 [ %indvars.iv.next1634, %._crit_edge1444 ], [ 0, %bb.ha ] ; 2 uses
  %i.alb = load ptr, ptr %i.akt, align 8
  %i.alc = getelementptr inbounds nuw [48 x i8], ptr %i.alb, i64 %indvars.iv1633 ; 7 uses
  %i.ald = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16)
  %.not1107 = icmp eq i32 %i.ald, 0
  br i1 %.not1107, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %.lr.ph1448
  %i.ale = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.ale, align 4
  br label %.critedge

bb.hc:                                            ; preds = %.lr.ph1448
  %i.alf = load i32, ptr %i.be, align 4
  %i.alg = mul i32 %i.alf, 3
  %i.alh = call fastcc ptr @setup_malloc(ptr noundef %0, i32 noundef %i.alg) ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alc, i64 8 ; 7 uses
  store ptr %i.alh, ptr %i.ali, align 8
  %i.alj = icmp eq ptr %i.alh, null
  br i1 %i.alj, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.alk = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 3, ptr %i.alk, align 4
  br label %.critedge

bb.he:                                            ; preds = %bb.hc
  %i.all = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 1)
  %.not1108 = icmp eq i32 %i.all, 0
  br i1 %.not1108, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.alm = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 4)
  %i.aln = trunc i32 %i.alm to i8
  %i.alo = add i8 %i.aln, 1
  br label %bb.hg

bb.hg:                                            ; preds = %bb.he, %bb.hf
  %.sink = phi i8 [ %i.alo, %bb.hf ], [ 1, %bb.he ]
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alc, i64 16 ; 5 uses
  store i8 %.sink, ptr %i.alp, align 8
  %i.alq = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 1)
  %.not1109 = icmp eq i32 %i.alq, 0
  br i1 %.not1109, label %bb.hp, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.alr = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %i.als = trunc i32 %i.alr to i16
  %i.alt = add i16 %i.als, 1                      ; 3 uses
  store i16 %i.alt, ptr %i.alc, align 8
  %i.alu = zext i16 %i.alt to i32
  %i.alv = load i32, ptr %i.be, align 4           ; 2 uses
  %i.alw = icmp slt i32 %i.alv, %i.alu
  br i1 %i.alw, label %bb.hi, label %.preheader1249

.preheader1249:                                   ; preds = %bb.hh
  %.not1473 = icmp eq i16 %i.alt, 0
  br i1 %.not1473, label %.loopexit1250, label %.lr.ph1436

bb.hi:                                            ; preds = %bb.hh
  %i.alx = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.alx, align 4
  br label %.critedge

bb.hj:                                            ; preds = %bb.hn
  %indvars.iv.next1622 = add nuw nsw i64 %indvars.iv1621, 1 ; 2 uses
  %i.aly = load i16, ptr %i.alc, align 8
  %i.alz = zext i16 %i.aly to i64
  %i.ama = icmp samesign ult i64 %indvars.iv.next1622, %i.alz
  br i1 %i.ama, label %.lr.ph1436, label %.loopexit1250

.lr.ph1436:                                       ; preds = %.preheader1249, %bb.hj
  %i.amb = phi i32 [ %i.amu, %bb.hj ], [ %i.alv, %.preheader1249 ]
  %indvars.iv1621 = phi i64 [ %indvars.iv.next1622, %bb.hj ], [ 0, %.preheader1249 ] ; 4 uses
  %i.amc = add nsw i32 %i.amb, -1
  %i.amd = call fastcc i32 @ilog(i32 noundef %i.amc)
  %i.ame = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef %i.amd)
  %i.amf = trunc i32 %i.ame to i8
  %i.amg = load ptr, ptr %i.ali, align 8
  %i.amh = getelementptr inbounds nuw [3 x i8], ptr %i.amg, i64 %indvars.iv1621
  store i8 %i.amf, ptr %i.amh, align 1
  %i.ami = load i32, ptr %i.be, align 4
  %i.amj = add nsw i32 %i.ami, -1
  %i.amk = call fastcc i32 @ilog(i32 noundef %i.amj)
  %i.aml = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef %i.amk)
  %i.amm = trunc i32 %i.aml to i8
  %i.amn = load ptr, ptr %i.ali, align 8
  %i.amo = getelementptr inbounds nuw [3 x i8], ptr %i.amn, i64 %indvars.iv1621
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 1
  store i8 %i.amm, ptr %i.amp, align 1
  %i.amq = load ptr, ptr %i.ali, align 8
  %i.amr = getelementptr inbounds nuw [3 x i8], ptr %i.amq, i64 %indvars.iv1621 ; 2 uses
  %i.ams = load i8, ptr %i.amr, align 1           ; 2 uses
  %i.amt = zext i8 %i.ams to i32
  %i.amu = load i32, ptr %i.be, align 4           ; 3 uses
  %.not1114 = icmp sgt i32 %i.amu, %i.amt
  br i1 %.not1114, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %.lr.ph1436
  %i.amv = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.amv, align 4
  br label %.critedge

bb.hl:                                            ; preds = %.lr.ph1436
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amr, i64 1
  %i.amx = load i8, ptr %i.amw, align 1           ; 2 uses
  %i.amy = zext i8 %i.amx to i32
  %.not1115 = icmp samesign ugt i32 %i.amu, %i.amy
  br i1 %.not1115, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.amz = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.amz, align 4
  br label %.critedge

bb.hn:                                            ; preds = %bb.hl
  %i.ana = icmp eq i8 %i.ams, %i.amx
  br i1 %i.ana, label %bb.ho, label %bb.hj

bb.ho:                                            ; preds = %bb.hn
  %i.anb = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.anb, align 4
  br label %.critedge

bb.hp:                                            ; preds = %bb.hg
  store i16 0, ptr %i.alc, align 8
  br label %.loopexit1250

.loopexit1250:                                    ; preds = %bb.hj, %.preheader1249, %bb.hp
  %i.anc = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 2)
  %.not1110 = icmp eq i32 %i.anc, 0
  br i1 %.not1110, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %.loopexit1250
  %i.and = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.and, align 4
  br label %.critedge

bb.hr:                                            ; preds = %.loopexit1250
  %i.ane = load i8, ptr %i.alp, align 8           ; 2 uses
  %i.anf = icmp ugt i8 %i.ane, 1
  %i.ang = load i32, ptr %i.be, align 4
  %i.anh = icmp sgt i32 %i.ang, 0                 ; 2 uses
  br i1 %i.anf, label %.preheader1246, label %.preheader1247

.preheader1247:                                   ; preds = %bb.hr
  br i1 %i.anh, label %.lr.ph1438, label %.loopexit

.preheader1246:                                   ; preds = %bb.hr
  br i1 %i.anh, label %.lr.ph1440, label %.lr.ph1443

bb.hs:                                            ; preds = %.lr.ph1440
  %indvars.iv.next1628 = add nuw nsw i64 %indvars.iv1627, 1 ; 2 uses
  %i.ani = load i32, ptr %i.be, align 4
end_hunk_0
begin_hunk_1_@drmp3dec_decode_frame:bb.a
  %.not45.2.i.i.i = icmp eq i32 %i.ug, 0
  br i1 %.not45.2.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.uh = zext i8 %i.uf to i64                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ud, ptr nonnull align 1 %i.uc, i64 %i.uh, i1 false)
  br label %.loopexit.2.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.ui = zext i8 %.sroa.8.0.i.i to i32           ; 3 uses
  %.not46.2.i.i.i = icmp eq i8 %.sroa.8.0.i.i, 0
  br i1 %.not46.2.i.i.i, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %notmask.2.i.i.i = shl nsw i32 -1, %i.ui
  %i.uj = xor i32 %notmask.2.i.i.i, -1
  %.mask.i.i.i158 = and i32 %.076.i.i, 536870912
  %.inv.2.i.i.i = icmp eq i32 %.mask.i.i.i158, 0
  %i.uk = select i1 %.inv.2.i.i.i, i32 -1, i32 %i.uj
  %wide.trip.count.2.i.i.i = zext i8 %i.uf to i64 ; 2 uses
  %i.ul = load ptr, ptr %i.mj, align 8
  %i.um = load i32, ptr %i.nj, align 4
  br label %bb.bi

bb.bi:                                            ; preds = %drmp3_bs_get_bits.exit.2.i.i.i, %bb.bh
  %i.un = phi i32 [ %.promoted144.i, %bb.bh ], [ %i.uo, %drmp3_bs_get_bits.exit.2.i.i.i ] ; 3 uses
  %indvars.iv.2.i.i.i = phi i64 [ 0, %bb.bh ], [ %indvars.iv.next.2.i.i.i, %drmp3_bs_get_bits.exit.2.i.i.i ] ; 3 uses
  %i.uo = add nsw i32 %i.un, %i.ui                ; 4 uses
  store i32 %i.uo, ptr %i.nh, align 8
  %i.up = icmp sgt i32 %i.uo, %i.um
  br i1 %i.up, label %drmp3_bs_get_bits.exit.2.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.uq = ashr i32 %i.un, 3
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds i8, ptr %i.ul, i64 %i.ur ; 2 uses
  %i.ut = and i32 %i.un, 7                        ; 2 uses
  %i.uu = add nuw nsw i32 %i.ut, %i.ui            ; 3 uses
  %i.uv = load i8, ptr %i.us, align 1
  %i.uw = zext i8 %i.uv to i32
  %i.ux = lshr i32 255, %i.ut
  %i.uy = and i32 %i.ux, %i.uw                    ; 2 uses
  %i.uz = icmp samesign ugt i32 %i.uu, 8
  br i1 %i.uz, label %.lr.ph.i.2.i.i.i, label %._crit_edge.i.2.i.i.i

.lr.ph.i.2.i.i.i:                                 ; preds = %bb.bj, %.lr.ph.i.2.i.i.i
  %.pn26.i.2.i.i.i = phi ptr [ %.0.i.2.i.i.i, %.lr.ph.i.2.i.i.i ], [ %i.us, %bb.bj ]
  %.01825.i.2.i.i.i = phi i32 [ %i.va, %.lr.ph.i.2.i.i.i ], [ %i.uu, %bb.bj ] ; 2 uses
  %.01924.i.2.i.i.i = phi i32 [ %i.vc, %.lr.ph.i.2.i.i.i ], [ 0, %bb.bj ]
  %.02023.i.2.i.i.i = phi i32 [ %i.ve, %.lr.ph.i.2.i.i.i ], [ %i.uy, %bb.bj ]
  %.0.i.2.i.i.i = getelementptr inbounds nuw i8, ptr %.pn26.i.2.i.i.i, i64 1 ; 2 uses
  %i.va = add nsw i32 %.01825.i.2.i.i.i, -8       ; 3 uses
  %i.vb = shl i32 %.02023.i.2.i.i.i, %i.va
  %i.vc = or i32 %i.vb, %.01924.i.2.i.i.i         ; 2 uses
  %i.vd = load i8, ptr %.0.i.2.i.i.i, align 1
  %i.ve = zext i8 %i.vd to i32                    ; 2 uses
  %i.vf = icmp samesign ugt i32 %.01825.i.2.i.i.i, 16
  br i1 %i.vf, label %.lr.ph.i.2.i.i.i, label %._crit_edge.i.2.i.i.i

._crit_edge.i.2.i.i.i:                            ; preds = %.lr.ph.i.2.i.i.i, %bb.bj
  %.020.lcssa.i.2.i.i.i = phi i32 [ %i.uy, %bb.bj ], [ %i.ve, %.lr.ph.i.2.i.i.i ]
  %.019.lcssa.i.2.i.i.i = phi i32 [ 0, %bb.bj ], [ %i.vc, %.lr.ph.i.2.i.i.i ]
  %.018.lcssa.i.2.i.i.i = phi i32 [ %i.uu, %bb.bj ], [ %i.va, %.lr.ph.i.2.i.i.i ]
  %i.vg = sub nuw nsw i32 8, %.018.lcssa.i.2.i.i.i
  %i.vh = lshr i32 %.020.lcssa.i.2.i.i.i, %i.vg
  %i.vi = or i32 %i.vh, %.019.lcssa.i.2.i.i.i
  br label %drmp3_bs_get_bits.exit.2.i.i.i

drmp3_bs_get_bits.exit.2.i.i.i:                   ; preds = %._crit_edge.i.2.i.i.i, %bb.bi
  %.021.i.2.i.i.i = phi i32 [ %i.vi, %._crit_edge.i.2.i.i.i ], [ 0, %bb.bi ] ; 2 uses
  %i.vj = icmp eq i32 %.021.i.2.i.i.i, %i.uk
  %i.vk = trunc i32 %.021.i.2.i.i.i to i8         ; 2 uses
  %i.vl = select i1 %i.vj, i8 -1, i8 %i.vk
  %i.vm = getelementptr inbounds nuw i8, ptr %i.uc, i64 %indvars.iv.2.i.i.i
  store i8 %i.vl, ptr %i.vm, align 1
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ud, i64 %indvars.iv.2.i.i.i
  store i8 %i.vk, ptr %i.vn, align 1
  %indvars.iv.next.2.i.i.i = add nuw nsw i64 %indvars.iv.2.i.i.i, 1 ; 2 uses
  %exitcond.2.not.i.i.i = icmp eq i64 %indvars.iv.next.2.i.i.i, %wide.trip.count.2.i.i.i
  br i1 %exitcond.2.not.i.i.i, label %.loopexit.2.i.i.i, label %bb.bi

bb.bk:                                            ; preds = %bb.bg
  %i.vo = zext i8 %i.uf to i64                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ud, i8 0, i64 %i.vo, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.uc, i8 0, i64 %i.vo, i1 false)
  br label %.loopexit.2.i.i.i

.loopexit.2.i.i.i:                                ; preds = %drmp3_bs_get_bits.exit.2.i.i.i, %bb.bk, %bb.bf
  %.promoted145.i = phi i32 [ %.promoted144.i, %bb.bk ], [ %.promoted144.i, %bb.bf ], [ %i.uo, %drmp3_bs_get_bits.exit.2.i.i.i ] ; 4 uses
  %.pre-phi64.i.i.i = phi i64 [ %i.vo, %bb.bk ], [ %i.uh, %bb.bf ], [ %wide.trip.count.2.i.i.i, %drmp3_bs_get_bits.exit.2.i.i.i ] ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.uc, i64 %.pre-phi64.i.i.i ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ud, i64 %.pre-phi64.i.i.i ; 5 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.075.i.i, i64 3
  %i.vs = load i8, ptr %i.vr, align 1             ; 4 uses
  %.not.3.i.i.i = icmp eq i8 %i.vs, 0
  br i1 %.not.3.i.i.i, label %drmp3_L3_read_scalefactors.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %.loopexit.2.i.i.i
  %i.vt = and i32 %.076.i.i, 1
  %.not45.3.i.i.i = icmp eq i32 %i.vt, 0
  br i1 %.not45.3.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.vu = zext i8 %i.vs to i64                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vq, ptr nonnull align 1 %i.vp, i64 %i.vu, i1 false)
  br label %.loopexit.3.i.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.vv = zext i8 %.sroa.11.0.i.i to i32          ; 3 uses
  %.not46.3.i.i.i = icmp eq i8 %.sroa.11.0.i.i, 0
  br i1 %.not46.3.i.i.i, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %notmask.3.i.i.i = shl nsw i32 -1, %i.vv
  %i.vw = xor i32 %notmask.3.i.i.i, -1
  %.mask77.i.i.i = and i32 %.076.i.i, 268435456
  %.inv.3.i.i.i = icmp eq i32 %.mask77.i.i.i, 0
  %i.vx = select i1 %.inv.3.i.i.i, i32 -1, i32 %i.vw
  %wide.trip.count.3.i.i.i = zext i8 %i.vs to i64 ; 2 uses
  %i.vy = load ptr, ptr %i.mj, align 8
  %i.vz = load i32, ptr %i.nj, align 4
  br label %bb.bp

bb.bp:                                            ; preds = %drmp3_bs_get_bits.exit.3.i.i.i, %bb.bo
  %i.wa = phi i32 [ %.promoted145.i, %bb.bo ], [ %i.wb, %drmp3_bs_get_bits.exit.3.i.i.i ] ; 3 uses
  %indvars.iv.3.i.i.i = phi i64 [ 0, %bb.bo ], [ %indvars.iv.next.3.i.i.i, %drmp3_bs_get_bits.exit.3.i.i.i ] ; 3 uses
  %i.wb = add nsw i32 %i.wa, %i.vv                ; 4 uses
  store i32 %i.wb, ptr %i.nh, align 8
  %i.wc = icmp sgt i32 %i.wb, %i.vz
  br i1 %i.wc, label %drmp3_bs_get_bits.exit.3.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.wd = ashr i32 %i.wa, 3
  %i.we = sext i32 %i.wd to i64
  %i.wf = getelementptr inbounds i8, ptr %i.vy, i64 %i.we ; 2 uses
  %i.wg = and i32 %i.wa, 7                        ; 2 uses
  %i.wh = add nuw nsw i32 %i.wg, %i.vv            ; 3 uses
  %i.wi = load i8, ptr %i.wf, align 1
  %i.wj = zext i8 %i.wi to i32
  %i.wk = lshr i32 255, %i.wg
  %i.wl = and i32 %i.wk, %i.wj                    ; 2 uses
  %i.wm = icmp samesign ugt i32 %i.wh, 8
  br i1 %i.wm, label %.lr.ph.i.3.i.i.i, label %._crit_edge.i.3.i.i.i

.lr.ph.i.3.i.i.i:                                 ; preds = %bb.bq, %.lr.ph.i.3.i.i.i
  %.pn26.i.3.i.i.i = phi ptr [ %.0.i.3.i.i.i, %.lr.ph.i.3.i.i.i ], [ %i.wf, %bb.bq ]
  %.01825.i.3.i.i.i = phi i32 [ %i.wn, %.lr.ph.i.3.i.i.i ], [ %i.wh, %bb.bq ] ; 2 uses
  %.01924.i.3.i.i.i = phi i32 [ %i.wp, %.lr.ph.i.3.i.i.i ], [ 0, %bb.bq ]
  %.02023.i.3.i.i.i = phi i32 [ %i.wr, %.lr.ph.i.3.i.i.i ], [ %i.wl, %bb.bq ]
  %.0.i.3.i.i.i = getelementptr inbounds nuw i8, ptr %.pn26.i.3.i.i.i, i64 1 ; 2 uses
  %i.wn = add nsw i32 %.01825.i.3.i.i.i, -8       ; 3 uses
  %i.wo = shl i32 %.02023.i.3.i.i.i, %i.wn
  %i.wp = or i32 %i.wo, %.01924.i.3.i.i.i         ; 2 uses
  %i.wq = load i8, ptr %.0.i.3.i.i.i, align 1
  %i.wr = zext i8 %i.wq to i32                    ; 2 uses
  %i.ws = icmp samesign ugt i32 %.01825.i.3.i.i.i, 16
  br i1 %i.ws, label %.lr.ph.i.3.i.i.i, label %._crit_edge.i.3.i.i.i

._crit_edge.i.3.i.i.i:                            ; preds = %.lr.ph.i.3.i.i.i, %bb.bq
  %.020.lcssa.i.3.i.i.i = phi i32 [ %i.wl, %bb.bq ], [ %i.wr, %.lr.ph.i.3.i.i.i ]
  %.019.lcssa.i.3.i.i.i = phi i32 [ 0, %bb.bq ], [ %i.wp, %.lr.ph.i.3.i.i.i ]
  %.018.lcssa.i.3.i.i.i = phi i32 [ %i.wh, %bb.bq ], [ %i.wn, %.lr.ph.i.3.i.i.i ]
  %i.wt = sub nuw nsw i32 8, %.018.lcssa.i.3.i.i.i
  %i.wu = lshr i32 %.020.lcssa.i.3.i.i.i, %i.wt
  %i.wv = or i32 %i.wu, %.019.lcssa.i.3.i.i.i
  br label %drmp3_bs_get_bits.exit.3.i.i.i

drmp3_bs_get_bits.exit.3.i.i.i:                   ; preds = %._crit_edge.i.3.i.i.i, %bb.bp
  %.021.i.3.i.i.i = phi i32 [ %i.wv, %._crit_edge.i.3.i.i.i ], [ 0, %bb.bp ] ; 2 uses
  %i.ww = icmp eq i32 %.021.i.3.i.i.i, %i.vx
  %i.wx = trunc i32 %.021.i.3.i.i.i to i8         ; 2 uses
  %i.wy = select i1 %i.ww, i8 -1, i8 %i.wx
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vp, i64 %indvars.iv.3.i.i.i
  store i8 %i.wy, ptr %i.wz, align 1
  %i.xa = getelementptr inbounds nuw i8, ptr %i.vq, i64 %indvars.iv.3.i.i.i
  store i8 %i.wx, ptr %i.xa, align 1
  %indvars.iv.next.3.i.i.i = add nuw nsw i64 %indvars.iv.3.i.i.i, 1 ; 2 uses
  %exitcond.3.not.i.i.i = icmp eq i64 %indvars.iv.next.3.i.i.i, %wide.trip.count.3.i.i.i
  br i1 %exitcond.3.not.i.i.i, label %.loopexit.3.i.i.i, label %bb.bp

bb.br:                                            ; preds = %bb.bn
  %i.xb = zext i8 %i.vs to i64                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.vq, i8 0, i64 %i.xb, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.vp, i8 0, i64 %i.xb, i1 false)
  br label %.loopexit.3.i.i.i

.loopexit.3.i.i.i:                                ; preds = %drmp3_bs_get_bits.exit.3.i.i.i, %bb.br, %bb.bm
  %i.xc = phi i32 [ %.promoted145.i, %bb.br ], [ %.promoted145.i, %bb.bm ], [ %i.wb, %drmp3_bs_get_bits.exit.3.i.i.i ]
  %.pre-phi66.i.i.i = phi i64 [ %i.xb, %bb.br ], [ %i.vu, %bb.bm ], [ %wide.trip.count.3.i.i.i, %drmp3_bs_get_bits.exit.3.i.i.i ]
  %i.xd = getelementptr inbounds nuw i8, ptr %i.vq, i64 %.pre-phi66.i.i.i
  br label %drmp3_L3_read_scalefactors.exit.i.i

drmp3_L3_read_scalefactors.exit.i.i:              ; preds = %.loopexit.3.i.i.i, %.loopexit.2.i.i.i, %.loopexit.1.i.i.i, %.loopexit.i.i.i, %bb.ap
  %i.xe = phi i32 [ %i.xc, %.loopexit.3.i.i.i ], [ %.promoted.i, %bb.ap ], [ %.promoted143.i, %.loopexit.i.i.i ], [ %.promoted145.i, %.loopexit.2.i.i.i ], [ %.promoted144.i, %.loopexit.1.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi ptr [ %i.xd, %.loopexit.3.i.i.i ], [ %i.b, %bb.ap ], [ %i.sq, %.loopexit.i.i.i ], [ %i.vq, %.loopexit.2.i.i.i ], [ %i.ud, %.loopexit.1.i.i.i ] ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 2
  store i8 0, ptr %i.xf, align 1
  %i.xg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 1
  store i8 0, ptr %i.xg, align 1
  store i8 0, ptr %.0.lcssa.i.i.i, align 1
  %i.xh = load i8, ptr %i.os, align 2             ; 4 uses
  %.not79.i.i = icmp eq i8 %i.xh, 0
  br i1 %.not79.i.i, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %drmp3_L3_read_scalefactors.exit.i.i
  %i.xi = sub nsw i32 2, %i.pd                    ; 3 uses
  %i.xj = load i8, ptr %i.ow, align 1
  %i.xk = getelementptr inbounds nuw i8, ptr %i.om, i64 25
  %i.xl = load i8, ptr %i.xk, align 1
  %i.xm = zext i8 %i.xl to i32
  %i.xn = shl nuw nsw i32 %i.xm, %i.xi
  %i.xo = trunc i32 %i.xn to i8                   ; 3 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.om, i64 26
  %i.xq = load i8, ptr %i.xp, align 2
  %i.xr = zext i8 %i.xq to i32
  %i.xs = shl nuw nsw i32 %i.xr, %i.xi
  %i.xt = trunc i32 %i.xs to i8                   ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.om, i64 27
  %i.xv = load i8, ptr %i.xu, align 1
  %i.xw = zext i8 %i.xv to i32
  %i.xx = shl nuw nsw i32 %i.xw, %i.xi
  %i.xy = trunc i32 %i.xx to i8                   ; 3 uses
  %i.xz = zext i8 %i.xj to i64
  %i.ya = zext i8 %i.xh to i64
  %invariant.gep.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xz ; 3 uses
  %7 = add nsw i64 %i.ya, -1
  %8 = udiv i64 %7, 3                             ; 2 uses
  %9 = add nuw nsw i64 %8, 1                      ; 2 uses
  %10 = icmp ult i8 %i.xh, 4
  br i1 %10, label %.epil.preheader768, label %.new

.new:                                             ; preds = %bb.bs
  %unroll_iter772 = and i64 %9, 9223372036854775806
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %.new
  %indvars.iv129.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next130.i.i.1, %bb.bt ] ; 3 uses
  %niter773 = phi i64 [ 0, %.new ], [ %niter773.next.1, %bb.bt ]
  %gep.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %indvars.iv129.i.i ; 4 uses
  %11 = load i8, ptr %gep.i.i, align 1
  %12 = add i8 %11, %i.xo
  store i8 %12, ptr %gep.i.i, align 1
  %13 = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 1 ; 2 uses
  %14 = load i8, ptr %13, align 1
  %15 = add i8 %14, %i.xt
  store i8 %15, ptr %13, align 1
  %16 = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 2 ; 2 uses
  %17 = load i8, ptr %16, align 1
  %18 = add i8 %17, %i.xy
  store i8 %18, ptr %16, align 1
  %19 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %indvars.iv129.i.i ; 3 uses
  %gep.i.i.1 = getelementptr inbounds nuw i8, ptr %19, i64 3 ; 2 uses
  %i.yb = load i8, ptr %gep.i.i.1, align 1
  %i.yc = add i8 %i.yb, %i.xo
  store i8 %i.yc, ptr %gep.i.i.1, align 1
  %i.yd = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 2 uses
  %i.ye = load i8, ptr %i.yd, align 1
  %i.yf = add i8 %i.ye, %i.xt
  store i8 %i.yf, ptr %i.yd, align 1
  %i.yg = getelementptr inbounds nuw i8, ptr %19, i64 5 ; 2 uses
  %i.yh = load i8, ptr %i.yg, align 1
  %i.yi = add i8 %i.yh, %i.xy
  store i8 %i.yi, ptr %i.yg, align 1
  %indvars.iv.next130.i.i.1 = add nuw nsw i64 %indvars.iv129.i.i, 6 ; 2 uses
  %niter773.next.1 = add i64 %niter773, 2         ; 2 uses
  %niter773.ncmp.1.not = icmp eq i64 %niter773.next.1, %unroll_iter772
  br i1 %niter773.ncmp.1.not, label %.loopexit.i.i.loopexit.unr-lcssa, label %bb.bt

bb.bu:                                            ; preds = %drmp3_L3_read_scalefactors.exit.i.i
  %i.yj = getelementptr inbounds nuw i8, ptr %i.om, i64 28
  %i.yk = load i8, ptr %i.yj, align 4
  %.not80.i.i = icmp eq i8 %i.yk, 0
  br i1 %.not80.i.i, label %.loopexit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.bu
  %i.yl = load <8 x i8>, ptr %i.nt, align 1
  %i.ym = add <8 x i8> %i.yl, <i8 1, i8 1, i8 1, i8 1, i8 2, i8 2, i8 3, i8 3>
  store <8 x i8> %i.ym, ptr %i.nt, align 1
  %i.yn = load i8, ptr %i.nu, align 1
  %i.yo = add i8 %i.yn, 3
  store i8 %i.yo, ptr %i.nu, align 1
  %i.yp = load i8, ptr %i.nv, align 4
  %i.yq = add i8 %i.yp, 2
  store i8 %i.yq, ptr %i.nv, align 4
  br label %.loopexit.i.i

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %bb.bt
  %20 = and i64 %8, 1
  %lcmp.mod770.not.not = icmp eq i64 %20, 0
  br i1 %lcmp.mod770.not.not, label %.epil.preheader768, label %.loopexit.i.i

.epil.preheader768:                               ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %bb.bs
  %indvars.iv129.i.i.epil.init = phi i64 [ 0, %bb.bs ], [ %indvars.iv.next130.i.i.1, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod771 = trunc i64 %9 to i1
  tail call void @llvm.assume(i1 %lcmp.mod771)
  %gep.i.i.epil = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %indvars.iv129.i.i.epil.init ; 4 uses
  %21 = load i8, ptr %gep.i.i.epil, align 1
  %22 = add i8 %21, %i.xo
  store i8 %22, ptr %gep.i.i.epil, align 1
  %23 = getelementptr inbounds nuw i8, ptr %gep.i.i.epil, i64 1 ; 2 uses
  %24 = load i8, ptr %23, align 1
  %25 = add i8 %24, %i.xt
  store i8 %25, ptr %23, align 1
  %26 = getelementptr inbounds nuw i8, ptr %gep.i.i.epil, i64 2 ; 2 uses
  %27 = load i8, ptr %26, align 1
  %28 = add i8 %27, %i.xy
  store i8 %28, ptr %26, align 1
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.epil.preheader768, %.loopexit.i.i.loopexit.unr-lcssa, %.preheader.preheader.i.i, %bb.bu
  %i.yr = getelementptr inbounds nuw i8, ptr %i.om, i64 14
  %i.ys = load i8, ptr %i.yr, align 2
  %i.yt = zext i8 %i.ys to i32
  %i.yu = load i8, ptr %i.np, align 1
  %i.yv = and i8 %i.yu, -32
  %i.yw = icmp eq i8 %i.yv, 96
  %.neg.neg109.i.i = select i1 %i.yw, i32 2, i32 0
  %reass.sub = sub nsw i32 %.neg.neg109.i.i, %i.yt
  %i.yx = add nsw i32 %reass.sub, 258
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.loopexit.i.i
  %.07.i.i.i = phi float [ 2.048000e+03, %.loopexit.i.i ], [ %i.zh, %bb.bv ]
  %.0.i.i.i = phi i32 [ %i.yx, %.loopexit.i.i ], [ %i.zi, %bb.bv ] ; 2 uses
  %i.yy = tail call i32 @llvm.umin.i32(i32 %.0.i.i.i, i32 120) ; 3 uses
  %i.yz = and i32 %i.yy, 3
  %i.za = zext nneg i32 %i.yz to i64
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr @drmp3_L3_ldexp_q2.g_expfrac, i64 %i.za
  %i.zc = load float, ptr %i.zb, align 4
  %i.zd = lshr i32 %i.yy, 2
  %i.ze = lshr i32 1073741824, %i.zd
  %i.zf = uitofp nneg i32 %i.ze to float
  %i.zg = fmul float %i.zc, %i.zf
  %i.zh = fmul float %.07.i.i.i, %i.zg            ; 2 uses
  %i.zi = sub nuw nsw i32 %.0.i.i.i, %i.yy        ; 2 uses
  %.not168.i.i = icmp eq i32 %i.zi, 0
  br i1 %.not168.i.i, label %drmp3_L3_ldexp_q2.exit.preheader.i.i, label %bb.bv

drmp3_L3_ldexp_q2.exit.preheader.i.i:             ; preds = %bb.bv
  %i.zj = load i8, ptr %i.ow, align 1
  %i.zk = or i8 %i.zj, %i.xh
  %.not110.i.i = icmp eq i8 %i.zk, 0
  br i1 %.not110.i.i, label %drmp3_L3_decode_scalefactors.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %drmp3_L3_ldexp_q2.exit.preheader.i.i, %drmp3_L3_ldexp_q2.exit83.i.i
  %indvars.iv135.i.i = phi i64 [ %indvars.iv.next136.i.i, %drmp3_L3_ldexp_q2.exit83.i.i ], [ 0, %drmp3_L3_ldexp_q2.exit.preheader.i.i ] ; 3 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv135.i.i
  %i.zm = load i8, ptr %i.zl, align 1
  %i.zn = zext i8 %i.zm to i32
  %i.zo = shl i32 %i.zn, %i.pe
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %.lr.ph.i.i
  %.07.i81.i.i = phi float [ %i.zh, %.lr.ph.i.i ], [ %i.zy, %bb.bw ]
  %.0.i82.i.i = phi i32 [ %i.zo, %.lr.ph.i.i ], [ %i.zz, %bb.bw ] ; 2 uses
  %i.zp = tail call i32 @llvm.smin.i32(i32 %.0.i82.i.i, i32 120) ; 3 uses
  %i.zq = and i32 %i.zp, 3
  %i.zr = zext nneg i32 %i.zq to i64
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr @drmp3_L3_ldexp_q2.g_expfrac, i64 %i.zr
  %i.zt = load float, ptr %i.zs, align 4
  %i.zu = ashr i32 %i.zp, 2
  %i.zv = lshr i32 1073741824, %i.zu
  %i.zw = uitofp nneg i32 %i.zv to float
  %i.zx = fmul float %i.zt, %i.zw
  %i.zy = fmul float %.07.i81.i.i, %i.zx          ; 2 uses
  %i.zz = sub nsw i32 %.0.i82.i.i, %i.zp          ; 2 uses
  %i.aaa = icmp sgt i32 %i.zz, 0
  br i1 %i.aaa, label %bb.bw, label %drmp3_L3_ldexp_q2.exit83.i.i

drmp3_L3_ldexp_q2.exit83.i.i:                     ; preds = %bb.bw
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv135.i.i
  store float %i.zy, ptr %i.aab, align 4
  %indvars.iv.next136.i.i = add nuw nsw i64 %indvars.iv135.i.i, 1 ; 2 uses
  %i.aac = load i8, ptr %i.ow, align 1
  %i.aad = zext i8 %i.aac to i64
  %i.aae = load i8, ptr %i.os, align 2
  %i.aaf = zext i8 %i.aae to i64
  %i.aag = add nuw nsw i64 %i.aaf, %i.aad
  %i.aah = icmp samesign ult i64 %indvars.iv.next136.i.i, %i.aag
  br i1 %i.aah, label %.lr.ph.i.i, label %drmp3_L3_decode_scalefactors.exit.i

drmp3_L3_decode_scalefactors.exit.i:              ; preds = %drmp3_L3_ldexp_q2.exit83.i.i, %drmp3_L3_ldexp_q2.exit.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  %i.aai = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv.i152 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.om, i64 10
  %i.aak = load i16, ptr %i.aaj, align 2          ; 2 uses
  %i.aal = load ptr, ptr %i.om, align 8           ; 2 uses
  %i.aam = load ptr, ptr %i.mj, align 8
  %i.aan = sdiv i32 %i.xe, 8
  %i.aao = sext i32 %i.aan to i64
  %i.aap = getelementptr inbounds i8, ptr %i.aam, i64 %i.aao ; 5 uses
  %i.aaq = load i8, ptr %i.aap, align 1
  %i.aar = zext i8 %i.aaq to i32
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aap, i64 1
  %i.aat = load i8, ptr %i.aas, align 1
  %i.aau = zext i8 %i.aat to i32
  %i.aav = shl nuw nsw i32 %i.aar, 16
  %i.aaw = shl nuw nsw i32 %i.aau, 8
  %i.aax = or disjoint i32 %i.aaw, %i.aav
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aap, i64 2
  %i.aaz = load i8, ptr %i.aay, align 1
  %i.aba = zext i8 %i.aaz to i32
  %i.abb = or disjoint i32 %i.aax, %i.aba
  %i.abc = shl nuw i32 %i.abb, 8
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aap, i64 3
  %i.abe = load i8, ptr %i.abd, align 1
  %i.abf = zext i8 %i.abe to i32
  %i.abg = or disjoint i32 %i.abc, %i.abf
  %i.abh = and i32 %i.xe, 7
  %i.abi = shl i32 %i.abg, %i.abh                 ; 2 uses
  %i.abj = or i32 %i.xe, -8                       ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aap, i64 4 ; 2 uses
  %.not421.i.i = icmp eq i16 %i.aak, 0
  br i1 %.not421.i.i, label %._crit_edge403.i.i, label %.lr.ph402.i.i

.lr.ph402.i.i:                                    ; preds = %drmp3_L3_decode_scalefactors.exit.i
  %i.abl = zext i16 %i.aak to i32
  %i.abm = getelementptr inbounds nuw i8, ptr %i.om, i64 19
  %i.abn = getelementptr inbounds nuw i8, ptr %i.om, i64 22
  br label %bb.bx

bb.bx:                                            ; preds = %.critedge.i.i, %.lr.ph402.i.i
  %indvars.iv.i59.i = phi i64 [ 0, %.lr.ph402.i.i ], [ %indvars.iv.next.i60.i, %.critedge.i.i ] ; 3 uses
  %.0190400.i.i = phi ptr [ %i.aai, %.lr.ph402.i.i ], [ %.7.i.i, %.critedge.i.i ] ; 2 uses
  %.0202399.i.i = phi i32 [ %i.abj, %.lr.ph402.i.i ], [ %.13.i.i, %.critedge.i.i ] ; 2 uses
  %.0217398.i.i = phi i32 [ %i.abi, %.lr.ph402.i.i ], [ %.13230.i.i, %.critedge.i.i ] ; 2 uses
  %.0238397.i.i = phi ptr [ %i.abk, %.lr.ph402.i.i ], [ %.10248.i.i, %.critedge.i.i ] ; 2 uses
  %.0252396.i.i = phi ptr [ %i.aal, %.lr.ph402.i.i ], [ %.3255.i.i, %.critedge.i.i ] ; 2 uses
  %.0260395.i.i = phi i32 [ %i.abl, %.lr.ph402.i.i ], [ %.3263.i.i, %.critedge.i.i ] ; 2 uses
  %.0271393.i.i = phi ptr [ %i.nr, %.lr.ph402.i.i ], [ %.3274.i.i, %.critedge.i.i ] ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abm, i64 %indvars.iv.i59.i
  %i.abp = load i8, ptr %i.abo, align 1           ; 2 uses
  %indvars.iv.next.i60.i = add nuw nsw i64 %indvars.iv.i59.i, 1
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abn, i64 %indvars.iv.i59.i
  %i.abr = load i8, ptr %i.abq, align 1
  %i.abs = zext i8 %i.abr to i32                  ; 2 uses
  %i.abt = zext i8 %i.abp to i64                  ; 2 uses
  %i.abu = getelementptr inbounds nuw [2 x i8], ptr @drmp3_L3_huffman.tabindex, i64 %i.abt
  %i.abv = load i16, ptr %i.abu, align 2
  %i.abw = sext i16 %i.abv to i64
  %i.abx = getelementptr inbounds [2 x i8], ptr @drmp3_L3_huffman.tabs, i64 %i.abw ; 4 uses
  %i.aby = getelementptr inbounds nuw i8, ptr @drmp3_L3_huffman.g_linbits, i64 %i.abt
  %i.abz = load i8, ptr %i.aby, align 1
  %i.aca = zext i8 %i.abz to i32                  ; 5 uses
  %.not304.i.i = icmp ult i8 %i.abp, 16
  br i1 %.not304.i.i, label %.preheader323.i.i, label %.preheader324.i.i

.preheader324.i.i:                                ; preds = %bb.bx
  %i.acb = sub nsw i32 32, %i.aca                 ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.cj, %.preheader324.i.i
  %.1272.i.i = phi ptr [ %i.aku, %bb.cj ], [ %.0271393.i.i, %.preheader324.i.i ] ; 2 uses
  %.1261.i.i = phi i32 [ %i.akv, %bb.cj ], [ %.0260395.i.i, %.preheader324.i.i ] ; 2 uses
  %.1253.i.i = phi ptr [ %i.akt, %bb.cj ], [ %.0252396.i.i, %.preheader324.i.i ] ; 2 uses
  %.1239.i.i = phi ptr [ %.6244.lcssa.i.i, %bb.cj ], [ %.0238397.i.i, %.preheader324.i.i ]
  %.1218.i.i = phi i32 [ %.7224.lcssa.i.i, %bb.cj ], [ %.0217398.i.i, %.preheader324.i.i ]
  %.1203.i.i = phi i32 [ %.7209.lcssa.i.i, %bb.cj ], [ %.0202399.i.i, %.preheader324.i.i ]
  %.0200.i.i = phi i32 [ %i.akx, %bb.cj ], [ %i.abs, %.preheader324.i.i ] ; 2 uses
  %.1.i.i = phi ptr [ %i.ajg, %bb.cj ], [ %.0190400.i.i, %.preheader324.i.i ]
  %i.acc = load i8, ptr %.1253.i.i, align 1
  %i.acd = lshr i8 %i.acc, 1
  %i.ace = zext nneg i8 %i.acd to i32             ; 2 uses
  %i.acf = tail call i32 @llvm.umin.i32(i32 %.1261.i.i, i32 %i.ace)
  %i.acg = load float, ptr %.1272.i.i, align 4    ; 5 uses
  br label %bb.bz

bb.bz:                                            ; preds = %._crit_edge362.i.i, %bb.by
  %.2240.i.i = phi ptr [ %.1239.i.i, %bb.by ], [ %.6244.lcssa.i.i, %._crit_edge362.i.i ] ; 5 uses
  %.2219.i.i = phi i32 [ %.1218.i.i, %bb.by ], [ %.7224.lcssa.i.i, %._crit_edge362.i.i ] ; 3 uses
  %.0215.i.i = phi i32 [ %i.acf, %bb.by ], [ %i.aks, %._crit_edge362.i.i ]
  %.2204.i.i = phi i32 [ %.1203.i.i, %bb.by ], [ %.7209.lcssa.i.i, %._crit_edge362.i.i ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %bb.by ], [ %i.ajg, %._crit_edge362.i.i ] ; 3 uses
  %i.ach = lshr i32 %.2219.i.i, 27
  %.pn333.i.i = zext nneg i32 %i.ach to i64
  %.0196.in.in334.i.i = getelementptr inbounds nuw [2 x i8], ptr %i.abx, i64 %.pn333.i.i
  %.0196.in335.i.i = load i16, ptr %.0196.in.in334.i.i, align 2 ; 2 uses
  %.0196336.i.i = sext i16 %.0196.in335.i.i to i32 ; 2 uses
  %i.aci = icmp slt i16 %.0196.in335.i.i, 0
  br i1 %i.aci, label %.lr.ph.i63.i, label %._crit_edge.i.i

.lr.ph.i63.i:                                     ; preds = %bb.bz, %.lr.ph.i63.i
  %.0196340.i.i = phi i32 [ %.0196.i.i, %.lr.ph.i63.i ], [ %.0196336.i.i, %bb.bz ] ; 2 uses
  %.0198339.i.i = phi i32 [ %i.acl, %.lr.ph.i63.i ], [ 5, %bb.bz ] ; 2 uses
  %.3205338.i.i = phi i32 [ %i.ack, %.lr.ph.i63.i ], [ %.2204.i.i, %bb.bz ]
  %.3220337.i.i = phi i32 [ %i.acj, %.lr.ph.i63.i ], [ %.2219.i.i, %bb.bz ]
  %i.acj = shl i32 %.3220337.i.i, %.0198339.i.i   ; 3 uses
  %i.ack = add nsw i32 %.3205338.i.i, %.0198339.i.i ; 2 uses
  %i.acl = and i32 %.0196340.i.i, 7               ; 2 uses
  %i.acm = sub nuw nsw i32 32, %i.acl
  %i.acn = lshr i32 %i.acj, %i.acm
  %i.aco = ashr i32 %.0196340.i.i, 3
  %i.acp = sub nsw i32 %i.acn, %i.aco
  %.pn.i.i = zext nneg i32 %i.acp to i64
  %.0196.in.in.i.i = getelementptr inbounds nuw [2 x i8], ptr %i.abx, i64 %.pn.i.i
  %.0196.in.i.i = load i16, ptr %.0196.in.in.i.i, align 2 ; 2 uses
  %.0196.i.i = sext i16 %.0196.in.i.i to i32      ; 2 uses
  %i.acq = icmp slt i16 %.0196.in.i.i, 0
  br i1 %i.acq, label %.lr.ph.i63.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i63.i, %bb.bz
  %.3220.lcssa.i.i = phi i32 [ %.2219.i.i, %bb.bz ], [ %i.acj, %.lr.ph.i63.i ]
  %.3205.lcssa.i.i = phi i32 [ %.2204.i.i, %bb.bz ], [ %i.ack, %.lr.ph.i63.i ]
  %.0196.lcssa.i.i = phi i32 [ %.0196336.i.i, %bb.bz ], [ %.0196.i.i, %.lr.ph.i63.i ] ; 3 uses
  %i.acr = lshr i32 %.0196.lcssa.i.i, 8           ; 2 uses
  %i.acs = shl i32 %.3220.lcssa.i.i, %i.acr       ; 4 uses
  %i.act = add nsw i32 %i.acr, %.3205.lcssa.i.i   ; 2 uses
  %i.acu = and i32 %.0196.lcssa.i.i, 15           ; 3 uses
  %i.acv = icmp eq i32 %i.acu, 15
  br i1 %i.acv, label %bb.ca, label %bb.cd
end_hunk_1
