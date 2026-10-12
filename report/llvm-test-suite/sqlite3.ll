Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sqlite3?download=true
inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 107
begin_hunk_0_@sqlite3Parser:bb.a
  %.sroa.0.0.insert.ext241 = zext i32 %i.ahk to i64
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext241, 71776119061217280
  %i.ahl = inttoptr i64 %.sroa.0.4.insert.insert to ptr
  br label %sqlite3CommitTransaction.exit

bb.gq:                                            ; preds = %bb.p
  br label %sqlite3CommitTransaction.exit

bb.gr:                                            ; preds = %bb.p
  br label %sqlite3CommitTransaction.exit

bb.gs:                                            ; preds = %bb.p
  br label %sqlite3CommitTransaction.exit

bb.gt:                                            ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ahn = load i32, ptr %i.ahm, align 8, !tbaa !139
  %.sroa.0.0.insert.ext225 = zext i32 %i.ahn to i64
  %i.aho = inttoptr i64 %.sroa.0.0.insert.ext225 to ptr
  br label %sqlite3CommitTransaction.exit

bb.gu:                                            ; preds = %bb.p
  %i.ahp = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %.sroa.0.0.copyload96 = load ptr, ptr %i.ahp, align 8, !tbaa !150
  %.sroa.165.0..sroa_idx113 = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %.sroa.165.0.copyload114 = load ptr, ptr %.sroa.165.0..sroa_idx113, align 8
  br label %sqlite3CommitTransaction.exit

bb.gv:                                            ; preds = %bb.p
  %i.ahq = getelementptr inbounds i8, ptr %i.ac, i64 -88
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !139
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aht = load i32, ptr %i.ahs, align 8, !tbaa !139
  %i.ahu = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %i.ahv = load i32, ptr %i.ahu, align 8, !tbaa !139
  call fastcc void @sqlite3AddPrimaryKey(ptr noundef %i.ca, ptr noundef %i.ahr, i32 noundef %i.aht, i32 noundef %i.ahv, i32 noundef 0), !inline_history !1540
  br label %sqlite3CommitTransaction.exit

bb.gw:                                            ; preds = %bb.p
  %i.ahw = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !139
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ahz = load i32, ptr %i.ahy, align 8, !tbaa !139
  call fastcc void @sqlite3CreateIndex(ptr noundef %i.ca, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %i.ahx, i32 noundef %i.ahz, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0), !inline_history !1540
  br label %sqlite3CommitTransaction.exit

bb.gx:                                            ; preds = %bb.p
  %i.aia = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !139 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ca, i64 280
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !380 ; 2 uses
  %i.aie = load ptr, ptr %i.ca, align 8, !tbaa !292 ; 2 uses
  %.not.i472 = icmp eq ptr %i.aid, null
  br i1 %.not.i472, label %sqlite3AddCheckConstraint.exit476, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ca, i64 328
  %i.aig = load i8, ptr %i.aif, align 8, !tbaa !376
  %.not10.i473 = icmp eq i8 %i.aig, 0
  br i1 %.not10.i473, label %bb.gz, label %sqlite3AddCheckConstraint.exit476

bb.gz:                                            ; preds = %bb.gy
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aid, i64 88 ; 2 uses
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !409 ; 3 uses
  %i.aij = call fastcc ptr @sqlite3ExprDup(ptr noundef %i.aie, ptr noundef %i.aib) ; 3 uses
  %i.aik = icmp eq ptr %i.aii, null
  br i1 %i.aik, label %sqlite3ExprAnd.exit.i474, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.ail = icmp eq ptr %i.aij, null
  br i1 %i.ail, label %sqlite3ExprAnd.exit.i474, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.aim = call fastcc ptr @sqlite3Expr(ptr noundef %i.aie, i32 noundef 61, ptr noundef nonnull %i.aii, ptr noundef nonnull %i.aij, ptr noundef null)
  br label %sqlite3ExprAnd.exit.i474

sqlite3ExprAnd.exit.i474:                         ; preds = %bb.hb, %bb.ha, %bb.gz
  %.0.i.i475 = phi ptr [ %i.aim, %bb.hb ], [ %i.aij, %bb.gz ], [ %i.aii, %bb.ha ]
  store ptr %.0.i.i475, ptr %i.aih, align 8, !tbaa !409
  br label %sqlite3AddCheckConstraint.exit476

sqlite3AddCheckConstraint.exit476:                ; preds = %bb.gx, %bb.gy, %sqlite3ExprAnd.exit.i474
  call fastcc void @sqlite3ExprDelete(ptr noundef %i.aib)
  br label %sqlite3CommitTransaction.exit

bb.hc:                                            ; preds = %bb.p
  %i.ain = getelementptr inbounds i8, ptr %i.ac, i64 -184
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !139
  %i.aip = getelementptr inbounds i8, ptr %i.ac, i64 -88
  %i.aiq = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !139
  %i.ais = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.ait = load i32, ptr %i.ais, align 8, !tbaa !139
  call fastcc void @sqlite3CreateForeignKey(ptr noundef %i.ca, ptr noundef %i.aio, ptr noundef %i.aip, ptr noundef %i.air, i32 noundef %i.ait), !inline_history !1540
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aiv = load i32, ptr %i.aiu, align 8, !tbaa !139
  %i.aiw = getelementptr i8, ptr %i.ca, i64 280
  %.val710.i = load ptr, ptr %i.aiw, align 8, !tbaa !380 ; 2 uses
  %i.aix = icmp eq ptr %.val710.i, null
  br i1 %i.aix, label %sqlite3CommitTransaction.exit, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.aiy = getelementptr inbounds nuw i8, ptr %.val710.i, i64 72
  %i.aiz = load ptr, ptr %i.aiy, align 8, !tbaa !400 ; 2 uses
  %i.aja = icmp eq ptr %i.aiz, null
  br i1 %i.aja, label %sqlite3CommitTransaction.exit, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.ajb = trunc i32 %i.aiv to i8
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aiz, i64 48
  store i8 %i.ajb, ptr %i.ajc, align 8, !tbaa !853
  br label %sqlite3CommitTransaction.exit

bb.hf:                                            ; preds = %bb.p, %bb.p
  br label %sqlite3CommitTransaction.exit

bb.hg:                                            ; preds = %bb.p
  br label %sqlite3CommitTransaction.exit

bb.hh:                                            ; preds = %bb.p, %bb.p
  br label %sqlite3CommitTransaction.exit

bb.hi:                                            ; preds = %bb.p
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !139
  %i.ajf = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.ajg = load i32, ptr %i.ajf, align 8, !tbaa !139
  call fastcc void @sqlite3DropTable(ptr noundef %i.ca, ptr noundef %i.aje, i32 noundef 0, i32 noundef %i.ajg), !inline_history !1540
  br label %sqlite3CommitTransaction.exit

bb.hj:                                            ; preds = %bb.p
  %i.ajh = getelementptr inbounds i8, ptr %i.ac, i64 -216
  %i.aji = getelementptr inbounds i8, ptr %i.ac, i64 -88 ; 4 uses
  %i.ajj = getelementptr inbounds i8, ptr %i.ac, i64 -56 ; 3 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !139 ; 6 uses
  %i.ajm = getelementptr inbounds i8, ptr %i.ac, i64 -184
  %i.ajn = load i32, ptr %i.ajm, align 8, !tbaa !139
  %i.ajo = getelementptr inbounds i8, ptr %i.ac, i64 -120
  %i.ajp = load i32, ptr %i.ajo, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  %i.ajq = load ptr, ptr %i.ca, align 8, !tbaa !292 ; 5 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ca, i64 184
  %i.ajs = load i32, ptr %i.ajr, align 8, !tbaa !1593
  %i.ajt = icmp sgt i32 %i.ajs, 0
  br i1 %i.ajt, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.381), !inline_history !1543
  call fastcc void @sqlite3SelectDelete(ptr noundef %i.ajl), !inline_history !1543
  br label %sqlite3CreateView.exit

bb.hl:                                            ; preds = %bb.hj
  call fastcc void @sqlite3StartTable(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.aji, ptr noundef nonnull %i.ajj, i32 noundef %i.ajn, i32 noundef 1, i32 noundef 0, i32 noundef %i.ajp), !inline_history !1543
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ca, i64 280
  %i.ajv = load ptr, ptr %i.aju, align 8, !tbaa !380 ; 4 uses
  %i.ajw = icmp eq ptr %i.ajv, null
  br i1 %i.ajw, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ca, i64 80 ; 3 uses
  %i.ajy = load i32, ptr %i.ajx, align 8, !tbaa !294
  %.not.i477 = icmp eq i32 %i.ajy, 0
  br i1 %.not.i477, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  call fastcc void @sqlite3SelectDelete(ptr noundef %i.ajl), !inline_history !1543
  br label %sqlite3CreateView.exit

bb.ho:                                            ; preds = %bb.hm
  %i.ajz = getelementptr inbounds i8, ptr %i.ac, i64 -48
  %i.aka = load i32, ptr %i.ajz, align 8
  %.not18.i.i = icmp ult i32 %i.aka, 2
  br i1 %.not18.i.i, label %sqlite3TwoPartName.exit.i, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.akb = load ptr, ptr %i.ca, align 8, !tbaa !292
  %i.akc = call fastcc i32 @sqlite3FindDb(ptr noundef %i.akb, ptr noundef nonnull %i.aji), !inline_history !1543
  %i.akd = icmp slt i32 %i.akc, 0
  br i1 %i.akd, label %bb.hq, label %sqlite3TwoPartName.exit.i

bb.hq:                                            ; preds = %bb.hp
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.291, ptr noundef nonnull %i.aji), !inline_history !1543
  %i.ake = load i32, ptr %i.ajx, align 8, !tbaa !294
  %i.akf = add nsw i32 %i.ake, 1
  store i32 %i.akf, ptr %i.ajx, align 8, !tbaa !294
  br label %sqlite3TwoPartName.exit.i

sqlite3TwoPartName.exit.i:                        ; preds = %bb.hq, %bb.hp, %bb.ho
  %.053.i = phi ptr [ %i.ajj, %bb.hp ], [ %i.ajj, %bb.hq ], [ %i.aji, %bb.ho ]
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ajv, i64 144
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !315 ; 2 uses
  %.not.i.i478 = icmp eq ptr %i.akh, null
  br i1 %.not.i.i478, label %sqlite3FixInit.exit.thread.i, label %.preheader.i.i479

.preheader.i.i479:                                ; preds = %sqlite3TwoPartName.exit.i
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ajq, i64 8
  %i.akj = load i32, ptr %i.aki, align 8, !tbaa !316 ; 3 uses
  %i.akk = icmp sgt i32 %i.akj, 0
  br i1 %i.akk, label %.lr.ph.i.i485, label %sqlite3SchemaToIndex.exit.i

.lr.ph.i.i485:                                    ; preds = %.preheader.i.i479
  %i.akl = getelementptr inbounds nuw i8, ptr %i.ajq, i64 16
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !280
  %wide.trip.count.i.i = zext nneg i32 %i.akj to i64
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hs, %.lr.ph.i.i485
  %indvars.iv.i.i486 = phi i64 [ 0, %.lr.ph.i.i485 ], [ %indvars.iv.next.i.i487, %bb.hs ] ; 3 uses
  %i.akn = getelementptr inbounds nuw [48 x i8], ptr %i.akm, i64 %indvars.iv.i.i486
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 40
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !284
  %i.akq = icmp eq ptr %i.akp, %i.akh
  br i1 %i.akq, label %.loopexit.loopexit.split.loop.exit13.i.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %indvars.iv.next.i.i487 = add nuw nsw i64 %indvars.iv.i.i486, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i487, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %sqlite3SchemaToIndex.exit.i, label %bb.hr, !llvm.loop !11

.loopexit.loopexit.split.loop.exit13.i.i:         ; preds = %bb.hr
  %i.akr = trunc nuw nsw i64 %indvars.iv.i.i486 to i32
  br label %sqlite3SchemaToIndex.exit.i

sqlite3SchemaToIndex.exit.i:                      ; preds = %bb.hs, %.loopexit.loopexit.split.loop.exit13.i.i, %.preheader.i.i479
  %.1.i.i = phi i32 [ %i.akr, %.loopexit.loopexit.split.loop.exit13.i.i ], [ 0, %.preheader.i.i479 ], [ %i.akj, %bb.hs ] ; 3 uses
  %12 = icmp slt i32 %.1.i.i, 0
  %i.aks = icmp eq i32 %.1.i.i, 1
  %or.cond.i.i = or i1 %12, %i.aks
  br i1 %or.cond.i.i, label %sqlite3FixInit.exit.thread.i, label %bb.ht

bb.ht:                                            ; preds = %sqlite3SchemaToIndex.exit.i
  %i.akt = load ptr, ptr %i.ca, align 8, !tbaa !292
  store ptr %i.ca, ptr %8, align 8, !tbaa !856
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 16
  %i.akv = load ptr, ptr %i.aku, align 8, !tbaa !280
  %i.akw = zext nneg i32 %.1.i.i to i64
  %i.akx = getelementptr inbounds nuw [48 x i8], ptr %i.akv, i64 %i.akw
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !430
  store ptr %i.aky, ptr %i.q, align 8, !tbaa !857
  store ptr @.str.297, ptr %i.r, align 8, !tbaa !858
  store ptr %.053.i, ptr %i.s, align 8, !tbaa !859
  %i.akz = call fastcc i32 @sqlite3FixSelect(ptr noundef %8, ptr noundef %i.ajl), !inline_history !1543
  %.not47.i = icmp eq i32 %i.akz, 0
  br i1 %.not47.i, label %sqlite3FixInit.exit.thread.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call fastcc void @sqlite3SelectDelete(ptr noundef %i.ajl), !inline_history !1543
  br label %sqlite3CreateView.exit

sqlite3FixInit.exit.thread.i:                     ; preds = %bb.ht, %sqlite3SchemaToIndex.exit.i, %sqlite3TwoPartName.exit.i
  %i.ala = call fastcc ptr @sqlite3SelectDup(ptr noundef %i.ajq, ptr noundef %i.ajl), !inline_history !1543
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ajv, i64 48
  store ptr %i.ala, ptr %i.alb, align 8, !tbaa !377
  call fastcc void @sqlite3SelectDelete(ptr noundef %i.ajl), !inline_history !1543
  %i.alc = getelementptr inbounds nuw i8, ptr %i.ajq, i64 42
  %i.ald = load i8, ptr %i.alc, align 2, !tbaa !202
  %.not48.i = icmp eq i8 %i.ald, 0
  br i1 %.not48.i, label %bb.hv, label %sqlite3CreateView.exit

bb.hv:                                            ; preds = %sqlite3FixInit.exit.thread.i
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ajq, i64 104
  %i.alf = load i8, ptr %i.ale, align 8, !tbaa !242
  %.not49.i = icmp eq i8 %i.alf, 0
  br i1 %.not49.i, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.alg = call fastcc i32 @sqlite3ViewGetColumnNames(ptr noundef nonnull %i.ca, ptr noundef %i.ajv), !inline_history !1543 ; 0 uses
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ca, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.alh, i64 16, i1 false), !tbaa.struct !850
  %i.ali = load ptr, ptr %7, align 8, !tbaa !154  ; 4 uses
  %i.alj = load i8, ptr %i.ali, align 1, !tbaa !139
  switch i8 %i.alj, label %bb.hy [
    i8 0, label %bb.hz
    i8 59, label %bb.hz
  ]

bb.hy:                                            ; preds = %bb.hx
  %i.alk = load i32, ptr %i.t, align 8
  %i.all = lshr i32 %i.alk, 1
  %i.alm = zext nneg i32 %i.all to i64
  %i.aln = getelementptr inbounds nuw i8, ptr %i.ali, i64 %i.alm
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx, %bb.hx
  %i.alo = phi ptr [ %i.ali, %bb.hx ], [ %i.ali, %bb.hx ], [ %i.aln, %bb.hy ]
  %i.alp = load i32, ptr %i.t, align 8
  %i.alq = and i32 %i.alp, 1
  %i.alr = load ptr, ptr %i.ajh, align 8, !tbaa !154 ; 3 uses
  %i.als = ptrtoint ptr %i.alo to i64
  %i.alt = ptrtoint ptr %i.alr to i64
  %i.alu = sub i64 %i.als, %i.alt                 ; 3 uses
  %i.alv = trunc i64 %i.alu to i32
  %i.alw = icmp sgt i32 %i.alv, 0
  br i1 %i.alw, label %.lr.ph.preheader.i481, label %.critedge.i480

.lr.ph.preheader.i481:                            ; preds = %bb.hz
  %i.alx = and i64 %i.alu, 2147483647
  br label %.lr.ph.i482

.lr.ph.i482:                                      ; preds = %.critedge2.i, %.lr.ph.preheader.i481
  %indvars.iv.i483 = phi i64 [ %i.alx, %.lr.ph.preheader.i481 ], [ %indvars.iv.next.i484, %.critedge2.i ] ; 4 uses
  %i.aly = getelementptr i8, ptr %i.alr, i64 %indvars.iv.i483
  %i.alz = getelementptr i8, ptr %i.aly, i64 -1
  %i.ama = load i8, ptr %i.alz, align 1, !tbaa !139 ; 2 uses
  %i.amb = icmp eq i8 %i.ama, 59
  br i1 %i.amb, label %.critedge2.i, label %bb.ia

bb.ia:                                            ; preds = %.lr.ph.i482
  %i.amc = tail call ptr @__ctype_b_loc() #46, !inline_history !1543
  %i.amd = load ptr, ptr %i.amc, align 8, !tbaa !233
  %i.ame = zext i8 %i.ama to i64
  %i.amf = getelementptr inbounds nuw [2 x i8], ptr %i.amd, i64 %i.ame
  %i.amg = load i16, ptr %i.amf, align 2, !tbaa !234
  %i.amh = and i16 %i.amg, 8192
  %.not52.i = icmp eq i16 %i.amh, 0
  br i1 %.not52.i, label %.critedge.i480, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.ia, %.lr.ph.i482
  %indvars.iv.next.i484 = add nsw i64 %indvars.iv.i483, -1
  %i.ami = icmp sgt i64 %indvars.iv.i483, 1
  br i1 %i.ami, label %.lr.ph.i482, label %.critedge.i480, !llvm.loop !1544

.critedge.i480:                                   ; preds = %.critedge2.i, %bb.ia, %bb.hz
  %.0.lcssa.i = phi i64 [ %i.alu, %bb.hz ], [ %indvars.iv.i483, %bb.ia ], [ 0, %.critedge2.i ]
  %sext.i = shl i64 %.0.lcssa.i, 32
  %i.amj = ashr exact i64 %sext.i, 32
  %i.amk = getelementptr i8, ptr %i.alr, i64 %i.amj
  %i.aml = getelementptr i8, ptr %i.amk, i64 -1
  store ptr %i.aml, ptr %7, align 8, !tbaa !154
  %i.amm = or disjoint i32 %i.alq, 2
  store i32 %i.amm, ptr %i.t, align 8
  call fastcc void @sqlite3EndTable(ptr noundef nonnull %i.ca, ptr noundef null, ptr noundef nonnull %7, ptr noundef null), !inline_history !1543
  br label %sqlite3CreateView.exit

sqlite3CreateView.exit:                           ; preds = %bb.hk, %bb.hn, %bb.hu, %sqlite3FixInit.exit.thread.i, %.critedge.i480
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %sqlite3CommitTransaction.exit

bb.ib:                                            ; preds = %bb.p
  %i.amn = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !139
  %i.amp = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.amq = load i32, ptr %i.amp, align 8, !tbaa !139
  call fastcc void @sqlite3DropTable(ptr noundef %i.ca, ptr noundef %i.amo, i32 noundef 1, i32 noundef %i.amq), !inline_history !1540
  br label %sqlite3CommitTransaction.exit

bb.ic:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) @__const.yy_reduce.dest, i64 12, i1 false)
  %i.amr = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ams = load ptr, ptr %i.amr, align 8, !tbaa !139
  %i.amt = call fastcc i32 @sqlite3Select(ptr noundef %i.ca, ptr noundef %i.ams, ptr noundef %10, ptr noundef null, i32 noundef 0, ptr noundef null) ; 0 uses
  %i.amu = load ptr, ptr %i.amr, align 8, !tbaa !139
  call fastcc void @sqlite3SelectDelete(ptr noundef %i.amu), !inline_history !1540
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  br label %sqlite3CommitTransaction.exit

bb.id:                                            ; preds = %bb.p, %bb.p
  %i.amv = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.amw = load ptr, ptr %i.amv, align 8, !tbaa !139
  br label %sqlite3CommitTransaction.exit

bb.ie:                                            ; preds = %bb.p
  %i.amx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !139 ; 2 uses
  %.not643.i = icmp eq ptr %i.amy, null
  br i1 %.not643.i, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.amz = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.ana = load i32, ptr %i.amz, align 8, !tbaa !139
  %i.anb = trunc i32 %i.ana to i8
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amy, i64 8
  store i8 %i.anb, ptr %i.anc, align 8, !tbaa !860
  %i.and = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !139
  %i.anf = load ptr, ptr %i.amx, align 8, !tbaa !139
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 56
  store ptr %i.ane, ptr %i.ang, align 8, !tbaa !820
  br label %bb.ih

bb.ig:                                            ; preds = %bb.ie
  %i.anh = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !139
  call fastcc void @sqlite3SelectDelete(ptr noundef %i.ani), !inline_history !1540
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %i.anj = load ptr, ptr %i.amx, align 8, !tbaa !139
  br label %sqlite3CommitTransaction.exit

bb.ii:                                            ; preds = %bb.p
  br label %sqlite3CommitTransaction.exit

bb.ij:                                            ; preds = %bb.p
  %i.ank = getelementptr inbounds i8, ptr %i.ac, i64 -184
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !139
  %i.anm = getelementptr inbounds i8, ptr %i.ac, i64 -152
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !139
  %i.ano = getelementptr inbounds i8, ptr %i.ac, i64 -120
  %i.anp = load ptr, ptr %i.ano, align 8, !tbaa !139
  %i.anq = getelementptr inbounds i8, ptr %i.ac, i64 -88
  %i.anr = load ptr, ptr %i.anq, align 8, !tbaa !139
  %i.ans = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !139
  %i.anu = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !139
  %i.anw = getelementptr inbounds i8, ptr %i.ac, i64 -216
  %i.anx = load i32, ptr %i.anw, align 8, !tbaa !139
  %i.any = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.anz = load ptr, ptr %i.any, align 8, !tbaa !139
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !139
  %i.aoc = call fastcc ptr @sqlite3SelectNew(ptr noundef %i.ca, ptr noundef %i.anl, ptr noundef %i.ann, ptr noundef %i.anp, ptr noundef %i.anr, ptr noundef %i.ant, ptr noundef %i.anv, i32 noundef %i.anx, ptr noundef %i.anz, ptr noundef %i.aob), !inline_history !1540
  br label %sqlite3CommitTransaction.exit

bb.ik:                                            ; preds = %bb.p, %bb.p
  %i.aod = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !139
  br label %sqlite3CommitTransaction.exit

bb.il:                                            ; preds = %bb.p
  %i.aof = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %i.aog = load ptr, ptr %i.aof, align 8, !tbaa !139
  %i.aoh = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.aoi = load ptr, ptr %i.aoh, align 8, !tbaa !139
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aok = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.aol = load i32, ptr %i.aok, align 8
  %.not642.i = icmp ult i32 %i.aol, 2
  %i.aom = select i1 %.not642.i, ptr null, ptr %i.aoj
  %.val708.i = load ptr, ptr %i.ca, align 8, !tbaa !292
end_hunk_0
begin_hunk_1_@lookupName:bb.a

sqlite3_free.exit:                                ; preds = %sqlite3StrICmp.exit473, %bb.cg
  %indvars.iv.next651 = add nuw nsw i64 %indvars.iv650, 1 ; 2 uses
  %exitcond654.not = icmp eq i64 %indvars.iv.next651, %wide.trip.count653
  br i1 %exitcond654.not, label %sqlite3_free.exit.thread, label %bb.cg, !llvm.loop !1702

sqlite3_free.exit.thread:                         ; preds = %sqlite3_free.exit, %.thread513, %.preheader555
  %i.vf = getelementptr inbounds nuw i8, ptr %.0291603, i64 48
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !962 ; 4 uses
  %.not893 = icmp eq ptr %i.vg, null
  br i1 %.not893, label %._crit_edge, label %bb.ad

._crit_edge:                                      ; preds = %sqlite3_free.exit.thread
  %i.vh = icmp eq ptr %.0.i345, null
  br i1 %i.vh, label %bb.ct, label %.thread538.thread

._crit_edge.thread797:                            ; preds = %bb.ac
  %i.vi = icmp eq ptr %.0.i345, null
  br i1 %i.vi, label %bb.ct, label %.thread538.thread

bb.ct:                                            ; preds = %._crit_edge.thread797, %._crit_edge
  %.0242.lcssa810 = phi ptr [ null, %._crit_edge.thread797 ], [ %.7, %._crit_edge ]
  %.0250.lcssa808 = phi ptr [ null, %._crit_edge.thread797 ], [ %.5255, %._crit_edge ]
  %.0291.lcssa804 = phi ptr [ null, %._crit_edge.thread797 ], [ %i.vg, %._crit_edge ]
  %i.vj = load ptr, ptr %3, align 8, !tbaa !154
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !139
  %i.vl = icmp eq i8 %i.vk, 34
  br i1 %i.vl, label %bb.cu, label %.thread538.thread

bb.cu:                                            ; preds = %bb.ct
  %i.vm = icmp eq ptr %.0.i359, null
  br i1 %i.vm, label %sqlite3_free.exit477, label %sqlite3_free.exit477.sink.split

bb.cv:                                            ; preds = %bb.cf
  %i.vn = icmp eq ptr %.0.i345, null
  %.not309 = icmp eq i32 %.7278, 1
  br i1 %.not309, label %.thread780, label %.thread538.thread

.thread538.thread:                                ; preds = %bb.ct, %._crit_edge.thread797, %._crit_edge, %bb.cv
  %.0291.lcssa759792 = phi ptr [ %.0291603, %bb.cv ], [ %i.vg, %._crit_edge ], [ null, %._crit_edge.thread797 ], [ %.0291.lcssa804, %bb.ct ]
  %.0271.lcssa762791 = phi i32 [ %.7278, %bb.cv ], [ 0, %._crit_edge ], [ 0, %._crit_edge.thread797 ], [ 0, %bb.ct ]
  %.0250.lcssa765790 = phi ptr [ %.5255, %bb.cv ], [ %.5255, %._crit_edge ], [ null, %._crit_edge.thread797 ], [ %.0250.lcssa808, %bb.ct ]
  %.0242.lcssa768789 = phi ptr [ %.7, %bb.cv ], [ %.7, %._crit_edge ], [ null, %._crit_edge.thread797 ], [ %.0242.lcssa810, %bb.ct ]
  %i.vo = phi i1 [ %i.vn, %bb.cv ], [ false, %._crit_edge ], [ false, %._crit_edge.thread797 ], [ true, %bb.ct ]
  %i.vp = phi ptr [ @.str.314, %bb.cv ], [ @.str.313, %._crit_edge ], [ @.str.313, %._crit_edge.thread797 ], [ @.str.313, %bb.ct ] ; 3 uses
  %.not310 = icmp eq ptr %.0.i, null
  br i1 %.not310, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %.thread538.thread
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.315, ptr noundef nonnull %i.vp, ptr noundef nonnull %.0.i, ptr noundef %.0.i345, ptr noundef %.0.i359)
  br label %bb.da

bb.cx:                                            ; preds = %.thread538.thread
  br i1 %i.vo, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.255, ptr noundef nonnull %i.vp, ptr noundef nonnull %.0.i345, ptr noundef %.0.i359)
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.256, ptr noundef nonnull %i.vp, ptr noundef %.0.i359)
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz, %bb.cw
  %i.vq = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !891
  %i.vs = add nsw i32 %i.vr, 1
  store i32 %i.vs, ptr %i.vq, align 4, !tbaa !891
  br label %.thread780

.thread780:                                       ; preds = %.thread495, %sqlite3IsRowid.exit.thread, %bb.da, %bb.cv
  %.0242.lcssa769 = phi ptr [ %.0242.lcssa768789, %bb.da ], [ %.7, %bb.cv ], [ %i.nh, %.thread495 ], [ %.7, %sqlite3IsRowid.exit.thread ] ; 2 uses
  %.0250.lcssa766 = phi ptr [ %.0250.lcssa765790, %bb.da ], [ %.5255, %bb.cv ], [ %.5255, %.thread495 ], [ %.5255, %sqlite3IsRowid.exit.thread ] ; 4 uses
  %.0271.lcssa763 = phi i32 [ %.0271.lcssa762791, %bb.da ], [ 1, %bb.cv ], [ 1, %.thread495 ], [ 1, %sqlite3IsRowid.exit.thread ] ; 2 uses
  %.0291.lcssa760 = phi ptr [ %.0291.lcssa759792, %bb.da ], [ %.0291603, %bb.cv ], [ %.0291603, %.thread495 ], [ %.0291603, %sqlite3IsRowid.exit.thread ] ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %5, i64 76
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !873 ; 2 uses
  %i.vv = icmp sgt i32 %i.vu, -1
  %i.vw = icmp ne ptr %.0250.lcssa766, null
  %or.cond13 = select i1 %i.vv, i1 %i.vw, i1 false
  br i1 %or.cond13, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.thread780
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.vu, i32 63)
  %i.vx = zext nneg i32 %spec.store.select to i64
  %i.vy = shl nuw i64 1, %i.vx
  %i.vz = getelementptr inbounds nuw i8, ptr %.0250.lcssa766, i64 64 ; 2 uses
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !963
  %i.wb = or i64 %i.wa, %i.vy
  store i64 %i.wb, ptr %i.vz, align 8, !tbaa !963
  br label %bb.dc

bb.dc:                                            ; preds = %.thread780, %bb.db, %sqlite3NameFromToken.exit361
  %.3294 = phi ptr [ %4, %sqlite3NameFromToken.exit361 ], [ %.0291.lcssa760, %bb.db ], [ %.0291.lcssa760, %.thread780 ]
  %.14 = phi i32 [ 0, %sqlite3NameFromToken.exit361 ], [ %.0271.lcssa763, %bb.db ], [ %.0271.lcssa763, %.thread780 ]
  %.11 = phi ptr [ null, %sqlite3NameFromToken.exit361 ], [ %.0250.lcssa766, %bb.db ], [ %.0250.lcssa766, %.thread780 ]
  %.8 = phi ptr [ null, %sqlite3NameFromToken.exit361 ], [ %.0242.lcssa769, %bb.db ], [ %.0242.lcssa769, %.thread780 ]
  %i.wc = icmp eq ptr %.0.i, null
  br i1 %i.wc, label %sqlite3_free.exit478, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.wd = getelementptr inbounds i8, ptr %.0.i, i64 -8 ; 2 uses
  %i.we = load i64, ptr %i.wd, align 8, !tbaa !130
  %i.wf = shl i64 %i.we, 32
  %i.wg = ashr exact i64 %i.wf, 32
  %i.wh = load i64, ptr @mem.5, align 8, !tbaa !125
  %i.wi = sub nsw i64 %i.wh, %i.wg
  store i64 %i.wi, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.wd) #43
  br label %sqlite3_free.exit478

sqlite3_free.exit478:                             ; preds = %bb.dc, %bb.dd
  %i.wj = icmp eq ptr %.0.i345, null
  br i1 %i.wj, label %sqlite3_free.exit479, label %bb.de

bb.de:                                            ; preds = %sqlite3_free.exit478
  %i.wk = getelementptr inbounds i8, ptr %.0.i345, i64 -8 ; 2 uses
  %i.wl = load i64, ptr %i.wk, align 8, !tbaa !130
  %i.wm = shl i64 %i.wl, 32
  %i.wn = ashr exact i64 %i.wm, 32
  %i.wo = load i64, ptr @mem.5, align 8, !tbaa !125
  %i.wp = sub nsw i64 %i.wo, %i.wn
  store i64 %i.wp, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.wk) #43
  br label %sqlite3_free.exit479

sqlite3_free.exit479:                             ; preds = %sqlite3_free.exit478, %bb.de
  %i.wq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !801
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.wr)
  store ptr null, ptr %i.wq, align 8, !tbaa !801
  %i.ws = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !802
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.wt)
  store ptr null, ptr %i.ws, align 8, !tbaa !802
  store i8 -107, ptr %5, align 8, !tbaa !848
  %i.wu = icmp eq i32 %.14, 1
  br label %bb.df

bb.df:                                            ; preds = %sqlite3_free.exit.thread.thread546, %sqlite3_free.exit479
  %.4295 = phi ptr [ %.3294, %sqlite3_free.exit479 ], [ %.0291603, %sqlite3_free.exit.thread.thread546 ] ; 3 uses
  %.15 = phi i1 [ %i.wu, %sqlite3_free.exit479 ], [ true, %sqlite3_free.exit.thread.thread546 ]
  %.12 = phi ptr [ %.11, %sqlite3_free.exit479 ], [ null, %sqlite3_free.exit.thread.thread546 ] ; 3 uses
  %.9 = phi ptr [ %.8, %sqlite3_free.exit479 ], [ %.7, %sqlite3_free.exit.thread.thread546 ] ; 2 uses
  %i.wv = icmp eq ptr %.0.i359, null
  br i1 %i.wv, label %sqlite3_free.exit480, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ww = getelementptr inbounds i8, ptr %.0.i359, i64 -8 ; 2 uses
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !130
  %i.wy = shl i64 %i.wx, 32
  %i.wz = ashr exact i64 %i.wy, 32
  %i.xa = load i64, ptr @mem.5, align 8, !tbaa !125
  %i.xb = sub nsw i64 %i.xa, %i.wz
  store i64 %i.xb, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.ww) #43
  br label %sqlite3_free.exit480

sqlite3_free.exit480:                             ; preds = %bb.df, %bb.dg
  br i1 %.15, label %bb.dh, label %sqlite3_free.exit477

bb.dh:                                            ; preds = %sqlite3_free.exit480
  %i.xc = getelementptr inbounds nuw i8, ptr %.4295, i64 8
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !886 ; 3 uses
  %i.xe = load ptr, ptr %0, align 8, !tbaa !292   ; 5 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 272
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !359 ; 2 uses
  %i.xh = icmp eq ptr %i.xg, null
  br i1 %i.xh, label %sqlite3AuthRead.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.xi = load i8, ptr %5, align 8, !tbaa !848
  %.not.i481 = icmp ne i8 %i.xi, -107
  %.not.i.i482 = icmp eq ptr %.9, null
  %or.cond.i = or i1 %.not.i.i482, %.not.i481
  br i1 %or.cond.i, label %sqlite3AuthRead.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.di
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xe, i64 8 ; 2 uses
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !316 ; 3 uses
  %i.xl = icmp sgt i32 %i.xk, 0
  br i1 %i.xl, label %.lr.ph.i.i489, label %.preheader.i483

.lr.ph.i.i489:                                    ; preds = %.preheader.i.i
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xe, i64 16
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !280
  %wide.trip.count.i.i = zext nneg i32 %i.xk to i64
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dk, %.lr.ph.i.i489
  %indvars.iv.i.i490 = phi i64 [ 0, %.lr.ph.i.i489 ], [ %indvars.iv.next.i.i491, %bb.dk ] ; 3 uses
  %i.xo = getelementptr inbounds nuw [48 x i8], ptr %i.xn, i64 %indvars.iv.i.i490
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 40
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !284
  %i.xr = icmp eq ptr %i.xq, %.9
  br i1 %i.xr, label %.loopexit.loopexit.split.loop.exit13.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %indvars.iv.next.i.i491 = add nuw nsw i64 %indvars.iv.i.i490, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i491, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %sqlite3SchemaToIndex.exit.i, label %bb.dj, !llvm.loop !11

.loopexit.loopexit.split.loop.exit13.i.i:         ; preds = %bb.dj
  %i.xs = trunc nuw nsw i64 %indvars.iv.i.i490 to i32
  br label %sqlite3SchemaToIndex.exit.i

sqlite3SchemaToIndex.exit.i:                      ; preds = %bb.dk, %.loopexit.loopexit.split.loop.exit13.i.i
  %.1.i.i = phi i32 [ %i.xs, %.loopexit.loopexit.split.loop.exit13.i.i ], [ %i.xk, %bb.dk ] ; 2 uses
  %6 = icmp slt i32 %.1.i.i, 0
  br i1 %6, label %sqlite3AuthRead.exit, label %.preheader.i483

.preheader.i483:                                  ; preds = %sqlite3SchemaToIndex.exit.i, %.preheader.i.i
  %.1.i85.i = phi i32 [ %.1.i.i, %sqlite3SchemaToIndex.exit.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %.not62.i = icmp eq ptr %i.xd, null
  br i1 %.not62.i, label %.critedge65.i, label %.lr.ph.i484

.lr.ph.i484:                                      ; preds = %.preheader.i483
  %i.xt = load i16, ptr %i.xd, align 8, !tbaa !824 ; 2 uses
  %i.xu = icmp sgt i16 %i.xt, 0
  br i1 %i.xu, label %.lr.ph73.i, label %.critedge65.i

.lr.ph73.i:                                       ; preds = %.lr.ph.i484
  %wide.trip.count.i485 = zext nneg i16 %i.xt to i64
  %i.xv = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.xw = load i32, ptr %i.xv, align 8, !tbaa !863
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dm, %.lr.ph73.i
  %indvars.iv.i486 = phi i64 [ 0, %.lr.ph73.i ], [ %indvars.iv.next.i487, %bb.dm ] ; 2 uses
  %i.xx = getelementptr inbounds nuw [72 x i8], ptr %i.xd, i64 %indvars.iv.i486 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 52
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !882
  %i.ya = icmp eq i32 %i.xw, %i.xz
  br i1 %i.ya, label %.split.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %indvars.iv.next.i487 = add nuw nsw i64 %indvars.iv.i486, 1 ; 2 uses
  %exitcond.not.i488 = icmp eq i64 %indvars.iv.next.i487, %wide.trip.count.i485
  br i1 %exitcond.not.i488, label %.critedge65.i, label %bb.dl

.split.i:                                         ; preds = %bb.dl
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xx, i64 32
  br label %bb.dn

.critedge65.i:                                    ; preds = %bb.dm, %.lr.ph.i484, %.preheader.i483
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !949 ; 2 uses
  %.not63.i = icmp eq ptr %i.yd, null
  br i1 %.not63.i, label %sqlite3AuthRead.exit, label %bb.dn

bb.dn:                                            ; preds = %.critedge65.i, %.split.i
  %.055.in.i = phi ptr [ %i.yb, %.split.i ], [ %i.yd, %.critedge65.i ]
  %.055.i = load ptr, ptr %.055.in.i, align 8, !tbaa !964 ; 5 uses
  %i.ye = icmp eq ptr %.055.i, null
  br i1 %i.ye, label %sqlite3AuthRead.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.yf = getelementptr inbounds nuw i8, ptr %5, i64 76
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !873 ; 2 uses
  %i.yh = icmp sgt i32 %i.yg, -1
  br i1 %i.yh, label %.sink.split.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.yi = getelementptr inbounds nuw i8, ptr %.055.i, i64 24
  %i.yj = load i32, ptr %i.yi, align 8, !tbaa !878 ; 2 uses
  %i.yk = icmp sgt i32 %i.yj, -1
  br i1 %i.yk, label %.sink.split.i, label %bb.dq

.sink.split.i:                                    ; preds = %bb.dp, %bb.do
  %.sink.i = phi i32 [ %i.yg, %bb.do ], [ %i.yj, %bb.dp ]
  %i.yl = getelementptr inbounds nuw i8, ptr %.055.i, i64 16
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !303
  %i.yn = zext nneg i32 %.sink.i to i64
  %i.yo = getelementptr inbounds nuw [40 x i8], ptr %i.ym, i64 %i.yn
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !307
  br label %bb.dq

bb.dq:                                            ; preds = %.sink.split.i, %bb.dp
  %.054.i = phi ptr [ @.str.317, %bb.dp ], [ %i.yp, %.sink.split.i ] ; 3 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.xe, i64 16
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !280
  %i.ys = zext nneg i32 %.1.i85.i to i64
  %i.yt = getelementptr inbounds nuw [48 x i8], ptr %i.yr, i64 %i.ys
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !430 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.xe, i64 280
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !360
  %i.yx = load ptr, ptr %.055.i, align 8, !tbaa !407
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !846
  %i.za = tail call i32 %i.xg(ptr noundef %i.yw, i32 noundef 20, ptr noundef %i.yx, ptr noundef %.054.i, ptr noundef %i.yu, ptr noundef %i.yz) #43, !inline_history !1703 ; 2 uses
  switch i32 %i.za, label %bb.dw [
    i32 2, label %bb.dr
    i32 1, label %bb.ds
    i32 0, label %sqlite3AuthRead.exit
  ]

bb.dr:                                            ; preds = %bb.dq
  store i8 92, ptr %5, align 8, !tbaa !848
  br label %sqlite3AuthRead.exit

bb.ds:                                            ; preds = %bb.dq
  %i.zb = load i32, ptr %i.xj, align 8, !tbaa !316
  %i.zc = icmp sgt i32 %i.zb, 2
  %i.zd = icmp ne i32 %.1.i85.i, 0
  %or.cond3.i = or i1 %i.zd, %i.zc
  %i.ze = load ptr, ptr %.055.i, align 8, !tbaa !407 ; 2 uses
  br i1 %or.cond3.i, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.319, ptr noundef %i.yu, ptr noundef %i.ze, ptr noundef %.054.i)
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.320, ptr noundef %i.ze, ptr noundef %.054.i)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 23, ptr %i.zf, align 8, !tbaa !293
  br label %sqlite3AuthRead.exit

bb.dw:                                            ; preds = %bb.dq
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.284, i32 noundef range(i32 1, 0) %i.za)
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.zg, align 8, !tbaa !293
  br label %sqlite3AuthRead.exit

sqlite3AuthRead.exit:                             ; preds = %bb.dh, %bb.di, %sqlite3SchemaToIndex.exit.i, %.critedge65.i, %bb.dn, %bb.dq, %bb.dr, %bb.dv, %bb.dw
  %.not332 = icmp eq ptr %.12, null
  br i1 %.not332, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %sqlite3AuthRead.exit
  %i.zh = getelementptr inbounds nuw i8, ptr %.12, i64 32
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !827
  %.not333 = icmp eq ptr %i.zi, null
  br i1 %.not333, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.zj = getelementptr inbounds nuw i8, ptr %.12, i64 24
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !826
  %i.zl = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %i.zk, ptr %i.zl, align 8, !tbaa !960
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %sqlite3AuthRead.exit
  %i.zm = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.zn = load i32, ptr %i.zm, align 8, !tbaa !956
  %i.zo = add nsw i32 %i.zn, 1
  store i32 %i.zo, ptr %i.zm, align 8, !tbaa !956
  %i.zp = icmp eq ptr %4, %.4295
  br i1 %i.zp, label %sqlite3_free.exit477, label %.lr.ph616

.lr.ph616:                                        ; preds = %bb.dz, %.lr.ph616
  %.0249614 = phi ptr [ %i.zr, %.lr.ph616 ], [ %4, %bb.dz ]
  %i.zq = getelementptr inbounds nuw i8, ptr %.0249614, i64 48
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !962 ; 3 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 24 ; 2 uses
  %i.zt = load i32, ptr %i.zs, align 8, !tbaa !956
  %i.zu = add nsw i32 %i.zt, 1
  store i32 %i.zu, ptr %i.zs, align 8, !tbaa !956
  %i.zv = icmp eq ptr %i.zr, %.4295
  br i1 %i.zv, label %sqlite3_free.exit477, label %.lr.ph616

sqlite3_free.exit477.sink.split:                  ; preds = %bb.cu, %bb.cl
  %i.zw = getelementptr inbounds i8, ptr %.0.i359, i64 -8 ; 2 uses
  %i.zx = load i64, ptr %i.zw, align 8, !tbaa !130
  %i.zy = shl i64 %i.zx, 32
  %i.zz = ashr exact i64 %i.zy, 32
  %i.aaa = load i64, ptr @mem.5, align 8, !tbaa !125
  %i.aab = sub nsw i64 %i.aaa, %i.zz
  store i64 %i.aab, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.zw) #43
  br label %sqlite3_free.exit477

sqlite3_free.exit477:                             ; preds = %.lr.ph616, %sqlite3_free.exit477.sink.split, %bb.dz, %bb.cl, %bb.cu, %sqlite3_free.exit480
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @sqlite3SelectResolve(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.NameContext, align 8        ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !1706
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 2, !tbaa !1706
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !294
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc i32 @prepSelectStmt(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %.not63 = icmp eq i32 %i.f, 0
  br i1 %.not63, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  store ptr %0, ptr %3, align 8, !tbaa !885
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !821  ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %sqlite3ExprResolveNames.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 112 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !851
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !888
  %i.o = add nsw i32 %i.n, %i.l                   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 1000
  br i1 %i.p, label %sqlite3ExprResolveNames.exit.thread83, label %bb.f

sqlite3ExprResolveNames.exit.thread83:            ; preds = %bb.e
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.303, i32 noundef 1000), !inline_history !889
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  store i32 %i.o, ptr %i.m, align 8, !tbaa !888
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 33
  %i.r = call fastcc i32 @walkExprTree(ptr noundef nonnull %i.i, ptr noundef nonnull @nameResolverStep, ptr noundef nonnull %3), !inline_history !889 ; 0 uses
  %i.s = load i32, ptr %i.k, align 8, !tbaa !851
  %i.t = load ptr, ptr %3, align 8, !tbaa !885    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 344 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !888
  %i.w = sub nsw i32 %i.v, %i.s
  store i32 %i.w, ptr %i.u, align 8, !tbaa !888
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !891
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !865
  %i.ac = or i16 %i.ab, 8
  store i16 %i.ac, ptr %i.aa, align 2, !tbaa !865
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = load i8, ptr %i.q, align 1, !tbaa !890  ; 2 uses
  %.not.i = icmp eq i8 %i.ad, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 2 uses
  %.pre119 = load i16, ptr %.phi.trans.insert, align 2, !tbaa !865 ; 2 uses
  br i1 %.not.i, label %sqlite3ExprResolveNames.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = or i16 %.pre119, 2                      ; 2 uses
  store i16 %i.ae, ptr %.phi.trans.insert, align 2, !tbaa !865
  br label %sqlite3ExprResolveNames.exit

sqlite3ExprResolveNames.exit:                     ; preds = %bb.h, %bb.i
  %i.af = phi i16 [ %i.ae, %bb.i ], [ %.pre119, %bb.h ]
  %i.ag = and i16 %i.af, 8
  %.not64 = icmp eq i16 %i.ag, 0
  br i1 %.not64, label %sqlite3ExprResolveNames.exit.thread, label %.loopexit

sqlite3ExprResolveNames.exit.thread:              ; preds = %bb.d, %sqlite3ExprResolveNames.exit
  %i.ah = phi i8 [ 0, %bb.d ], [ %i.ad, %sqlite3ExprResolveNames.exit ] ; 2 uses
  %i.ai = phi ptr [ %0, %bb.d ], [ %i.t, %sqlite3ExprResolveNames.exit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !822 ; 6 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %sqlite3ExprResolveNames.exit111.thread, label %bb.j

bb.j:                                             ; preds = %sqlite3ExprResolveNames.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !851
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 344 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !888
  %i.aq = add nsw i32 %i.ap, %i.an                ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 1000
  br i1 %i.ar, label %sqlite3ExprResolveNames.exit111.thread114, label %bb.k

sqlite3ExprResolveNames.exit111.thread114:        ; preds = %bb.j
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.303, i32 noundef 1000), !inline_history !889
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !888
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 33 ; 3 uses
  store i8 0, ptr %i.as, align 1, !tbaa !890
  %i.at = call fastcc i32 @walkExprTree(ptr noundef nonnull %i.ak, ptr noundef nonnull @nameResolverStep, ptr noundef nonnull %3), !inline_history !889 ; 0 uses
  %i.au = load i32, ptr %i.am, align 8, !tbaa !851
  %i.av = load ptr, ptr %3, align 8, !tbaa !885   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 344 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !888
  %i.ay = sub nsw i32 %i.ax, %i.au
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !888
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !891
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 2 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !865
  %i.be = or i16 %i.bd, 8
  store i16 %i.be, ptr %i.bc, align 2, !tbaa !865
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bf = load i8, ptr %i.as, align 1, !tbaa !890 ; 2 uses
  %.not.i110 = icmp eq i8 %i.bf, 0
  br i1 %.not.i110, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 2 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !865
  %i.bi = or i16 %i.bh, 2
  store i16 %i.bi, ptr %i.bg, align 2, !tbaa !865
  br label %sqlite3ExprResolveNames.exit111

bb.o:                                             ; preds = %bb.m
  %.not21.i = icmp eq i8 %i.ah, 0
  br i1 %.not21.i, label %sqlite3ExprResolveNames.exit111, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.as, align 1, !tbaa !890
  br label %sqlite3ExprResolveNames.exit111

sqlite3ExprResolveNames.exit111:                  ; preds = %bb.n, %bb.o, %bb.p
  %i.bj = phi i8 [ %i.bf, %bb.n ], [ 0, %bb.o ], [ 1, %bb.p ]
end_hunk_1
begin_hunk_2_@exprAnalyze:bb.a
.critedge279:                                     ; preds = %bb.aa, %operatorMask.exit297, %bb.r, %bb.q, %bb.ab, %whereClauseClear.exit
  %i.lk = load i8, ptr %i.k, align 8, !tbaa !848
  %.not.i.i307 = icmp eq i8 %i.lk, -108
  br i1 %.not.i.i307, label %bb.av, label %.critedge281

bb.av:                                            ; preds = %.critedge279
  %i.ll = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 4 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !803 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.lm, null
  br i1 %.not14.i.i, label %isLikeOrGlob.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !807
  %.not15.i.i = icmp eq i32 %i.ln, 2
  br i1 %.not15.i.i, label %bb.ax, label %isLikeOrGlob.exit.thread

bb.ax:                                            ; preds = %bb.aw
  %i.lo = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !800
  %i.lq = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.lr = load i32, ptr %i.lq, align 8
  %i.ls = lshr i32 %i.lr, 1
  %i.lt = call fastcc ptr @sqlite3FindFunction(ptr noundef %i.b, ptr noundef %i.lp, i32 noundef %i.ls, i32 noundef 2, i8 noundef zeroext 1, i32 noundef 0) ; 3 uses
  %i.lu = icmp eq ptr %i.lt, null
  br i1 %i.lu, label %isLikeOrGlob.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  %i.lw = load i8, ptr %i.lv, align 4, !tbaa !463 ; 2 uses
  %i.lx = and i8 %i.lw, 1
  %i.ly = icmp eq i8 %i.lx, 0
  br i1 %i.ly, label %isLikeOrGlob.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !270 ; 3 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.ma, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 1
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 2
  %.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 1
  %i.mb = and i8 %i.lw, 2
  %.not28 = icmp eq i8 %i.mb, 0                   ; 3 uses
  %i.mc = load ptr, ptr %i.ll, align 8, !tbaa !803
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !806 ; 2 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !809 ; 3 uses
  %i.mg = load i8, ptr %i.mf, align 8, !tbaa !848
  %.not39.i = icmp eq i8 %i.mg, 88
  br i1 %.not39.i, label %bb.ba, label %isLikeOrGlob.exit.thread

bb.ba:                                            ; preds = %bb.az
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !809 ; 2 uses
  %i.mj = load i8, ptr %i.mi, align 8, !tbaa !848
  %.not40.i308 = icmp eq i8 %i.mj, -107
  br i1 %.not40.i308, label %bb.bb, label %isLikeOrGlob.exit.thread

bb.bb:                                            ; preds = %bb.ba
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !901 ; 2 uses
  %i.mm = icmp eq ptr %i.ml, null
  br i1 %i.mm, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.mn = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !483
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.0.i309 = phi ptr [ %i.mo, %bb.bc ], [ %i.ml, %bb.bb ]
  %i.mp = getelementptr inbounds nuw i8, ptr %.0.i309, i64 9
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !484
  switch i8 %i.mq, label %isLikeOrGlob.exit.thread [
    i8 1, label %bb.be
    i8 2, label %bb.bf
  ]

bb.be:                                            ; preds = %bb.bd
  br i1 %.not28, label %isLikeOrGlob.exit.thread, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  br i1 %.not28, label %bb.bg, label %isLikeOrGlob.exit.thread

bb.bg:                                            ; preds = %bb.bf, %bb.be
  call fastcc void @sqlite3DequoteExpr(ptr noundef %i.b, ptr noundef nonnull %i.mf)
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mf, i64 40
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !800 ; 3 uses
  %.not45.i = icmp eq ptr %i.ms, null
  br i1 %.not45.i, label %isLikeOrGlob.exit.thread, label %.preheader.i310

.preheader.i310:                                  ; preds = %bb.bg, %.preheader.i310
  %indvars.iv.i311 = phi i64 [ %indvars.iv.next.i313, %.preheader.i310 ], [ 0, %bb.bg ] ; 6 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 %indvars.iv.i311
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !139 ; 5 uses
  %.not46.i = icmp eq i8 %i.mu, 0
  %.not47.i = icmp eq i8 %i.mu, %.sroa.0.0.copyload.i ; 2 uses
  %or.cond.i312 = select i1 %.not46.i, i1 true, i1 %.not47.i
  %.not48.i = icmp eq i8 %i.mu, %.sroa.5.0.copyload.i
  %or.cond51.i = select i1 %or.cond.i312, i1 true, i1 %.not48.i
  %.not49.i = icmp eq i8 %i.mu, %.sroa.6.0.copyload.i
  %or.cond53.i = select i1 %or.cond51.i, i1 true, i1 %.not49.i
  %indvars.iv.next.i313 = add nuw nsw i64 %indvars.iv.i311, 1
  br i1 %or.cond53.i, label %.critedge.i, label %.preheader.i310, !llvm.loop !1858

.critedge.i:                                      ; preds = %.preheader.i310
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 %indvars.iv.i311
  %i.mw = trunc nuw nsw i64 %indvars.iv.i311 to i32
  %i.mx = icmp eq i64 %indvars.iv.i311, 0
  %i.my = icmp eq i8 %i.mu, -1
  %or.cond70.i = or i1 %i.mx, %i.my
  br i1 %or.cond70.i, label %isLikeOrGlob.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %.critedge.i
  br i1 %.not47.i, label %bb.bi, label %isLikeOrGlob.exit

bb.bi:                                            ; preds = %bb.bh
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 1
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !139
  %i.nb = icmp ne i8 %i.na, 0
  br label %isLikeOrGlob.exit

isLikeOrGlob.exit:                                ; preds = %bb.bi, %bb.bh
  %.06 = phi i1 [ true, %bb.bh ], [ %i.nb, %bb.bi ]
  %i.nc = load ptr, ptr %i.ll, align 8, !tbaa !803
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !806 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !809 ; 2 uses
  %i.nh = load ptr, ptr %i.ne, align 8, !tbaa !809 ; 2 uses
  %.val284 = load ptr, ptr %i.a, align 8, !tbaa !292 ; 2 uses
  %.not.i.i.i321 = icmp eq ptr %.val284, null
  br i1 %.not.i.i.i321, label %sqlite3DbMallocRaw.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %isLikeOrGlob.exit
  %i.ni = getelementptr inbounds nuw i8, ptr %.val284, i64 42 ; 2 uses
  %i.nj = load i8, ptr %i.ni, align 2, !tbaa !202
  %i.nk = icmp eq i8 %i.nj, 0
  br i1 %i.nk, label %bb.bk, label %.split

bb.bk:                                            ; preds = %bb.bj
  %i.nl = call ptr @sqlite3_malloc(i32 noundef 120) ; 2 uses
  %i.nm = icmp eq ptr %i.nl, null
  br i1 %i.nm, label %bb.bl, label %sqlite3_free.exit.i

bb.bl:                                            ; preds = %bb.bk
  store i8 1, ptr %i.ni, align 2, !tbaa !202
  br label %.split

sqlite3DbMallocRaw.exit.i.i:                      ; preds = %isLikeOrGlob.exit
  %i.nn = call ptr @sqlite3_malloc(i32 noundef 120) ; 2 uses
  %.not.i.i323 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i323, label %.split, label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.bk, %sqlite3DbMallocRaw.exit.i.i
  %.0.i11.i.i = phi ptr [ %i.nn, %sqlite3DbMallocRaw.exit.i.i ], [ %i.nl, %bb.bk ] ; 10 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(119) %i.no, i8 0, i64 119, i1 false)
  store i8 88, ptr %.0.i11.i.i, align 8, !tbaa !848
  %i.np = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 16
  %i.nq = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.np, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.nq, align 8, !tbaa !849
  %i.nr = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 112
  store i32 1, ptr %i.nr, align 8, !tbaa !851
  %i.ns = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 40
  %i.nt = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 48 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nh, i64 40
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !154 ; 2 uses
  %.not11.i315 = icmp eq ptr %i.nv, null
  br i1 %.not11.i315, label %sqlite3TokenCopy.exit, label %bb.bm

bb.bm:                                            ; preds = %sqlite3_free.exit.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nh, i64 48
  %i.nx = load i32, ptr %i.nw, align 8            ; 2 uses
  %i.ny = and i32 %i.nx, -2
  store i32 %i.ny, ptr %i.nt, align 8
  %i.nz = lshr i32 %i.nx, 1                       ; 2 uses
  %i.oa = add nuw nsw i32 %i.nz, 1
  %i.ob = call ptr @sqlite3_malloc(i32 noundef %i.oa) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ob, null
  br i1 %.not.i.i.i, label %sqlite3StrNDup.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.oc = zext nneg i32 %i.nz to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ob, ptr nonnull readonly align 1 %i.nv, i64 %i.oc, i1 false)
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.oc
  store i8 0, ptr %i.od, align 1, !tbaa !139
  br label %sqlite3DbStrNDup.exit.i

sqlite3StrNDup.exit.i.i:                          ; preds = %bb.bm
  store i8 1, ptr %i.c, align 2, !tbaa !202
  br label %sqlite3DbStrNDup.exit.i

sqlite3DbStrNDup.exit.i:                          ; preds = %sqlite3StrNDup.exit.i.i, %bb.bn
  store ptr %i.ob, ptr %i.ns, align 8, !tbaa !154
  br label %sqlite3TokenCopy.exit

sqlite3TokenCopy.exit:                            ; preds = %sqlite3_free.exit.i, %sqlite3DbStrNDup.exit.i
  %i.oe = phi i32 [ 1, %sqlite3DbStrNDup.exit.i ], [ 0, %sqlite3_free.exit.i ]
  %i.of = shl i32 %i.mw, 1
  %i.og = or disjoint i32 %i.oe, %i.of
  store i32 %i.og, ptr %i.nt, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 2
  store i16 64, ptr %i.oh, align 2, !tbaa !865
  %i.oi = call fastcc ptr @sqlite3ExprDup(ptr noundef %i.b, ptr noundef nonnull %.0.i11.i.i)
  br label %.split

.split:                                           ; preds = %bb.bj, %bb.bl, %sqlite3DbMallocRaw.exit.i.i, %sqlite3TokenCopy.exit
  %.0.i32222 = phi ptr [ %.0.i11.i.i, %sqlite3TokenCopy.exit ], [ null, %sqlite3DbMallocRaw.exit.i.i ], [ null, %bb.bl ], [ null, %bb.bj ]
  %phi.call = phi ptr [ %i.oi, %sqlite3TokenCopy.exit ], [ null, %sqlite3DbMallocRaw.exit.i.i ], [ null, %bb.bl ], [ null, %bb.bj ] ; 2 uses
  %i.oj = load i8, ptr %i.c, align 2, !tbaa !202
  %.not274 = icmp eq i8 %i.oj, 0
  br i1 %.not274, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %.split
  %i.ok = getelementptr inbounds nuw i8, ptr %phi.call, i64 40
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !800
  %i.om = getelementptr i8, ptr %i.ol, i64 %indvars.iv.i311
  %i.on = getelementptr i8, ptr %i.om, i64 -1     ; 2 uses
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !139 ; 2 uses
  br i1 %.not28, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.op = zext i8 %i.oo to i64
  %i.oq = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !139
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.0236 = phi i8 [ %i.or, %bb.bp ], [ %i.oo, %bb.bo ]
  %i.os = add i8 %.0236, 1
  store i8 %i.os, ptr %i.on, align 1, !tbaa !139
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.split
  %i.ot = call fastcc ptr @sqlite3ExprDup(ptr noundef nonnull %i.b, ptr noundef %i.ng)
  %.val283 = load ptr, ptr %i.a, align 8, !tbaa !292
  %i.ou = call fastcc noalias noundef ptr @sqlite3Expr(ptr noundef %.val283, i32 noundef 72, ptr noundef %i.ot, ptr noundef %.0.i32222, ptr noundef null)
  %i.ov = call fastcc i32 @whereClauseInsert(ptr noundef %0, ptr noundef %i.ou, i32 noundef 3) ; 2 uses
  call fastcc void @exprAnalyze(ptr noundef %0, i32 noundef %i.ov)
  %i.ow = call fastcc ptr @sqlite3ExprDup(ptr noundef nonnull %i.b, ptr noundef %i.ng)
  %.val = load ptr, ptr %i.a, align 8, !tbaa !292
  %i.ox = call fastcc noalias noundef ptr @sqlite3Expr(ptr noundef %.val, i32 noundef 71, ptr noundef %i.ow, ptr noundef %phi.call, ptr noundef null)
  %i.oy = call fastcc i32 @whereClauseInsert(ptr noundef %0, ptr noundef %i.ox, i32 noundef 3) ; 2 uses
  call fastcc void @exprAnalyze(ptr noundef %0, i32 noundef %i.oy)
  br i1 %.06, label %isLikeOrGlob.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.oz = load ptr, ptr %i.e, align 8, !tbaa !984 ; 3 uses
  %i.pa = getelementptr inbounds [48 x i8], ptr %i.oz, i64 %i.g
  %i.pb = trunc i32 %1 to i16                     ; 2 uses
  %i.pc = sext i32 %i.ov to i64
  %i.pd = getelementptr inbounds [48 x i8], ptr %i.oz, i64 %i.pc
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  store i16 %i.pb, ptr %i.pe, align 8, !tbaa !1014
  %i.pf = sext i32 %i.oy to i64
  %i.pg = getelementptr inbounds [48 x i8], ptr %i.oz, i64 %i.pf
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  store i16 %i.pb, ptr %i.ph, align 8, !tbaa !1014
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pa, i64 17
  store i8 2, ptr %i.pi, align 1, !tbaa !1016
  br label %isLikeOrGlob.exit.thread

isLikeOrGlob.exit.thread:                         ; preds = %bb.av, %bb.aw, %bb.ax, %.critedge.i, %bb.bg, %bb.bf, %bb.ay, %bb.bd, %bb.ba, %bb.az, %bb.be, %bb.br, %bb.bs
  %.pr = load i8, ptr %i.k, align 8, !tbaa !848
  %.not.i316 = icmp eq i8 %.pr, -108
  br i1 %.not.i316, label %bb.bt, label %.critedge281

bb.bt:                                            ; preds = %isLikeOrGlob.exit.thread
  %i.pj = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.pk = load i32, ptr %i.pj, align 8
  %.mask.i = and i32 %i.pk, -2
  %.not6.i = icmp eq i32 %.mask.i, 10
  br i1 %.not6.i, label %.lr.ph.i.i318, label %.critedge281

.lr.ph.i.i318:                                    ; preds = %bb.bt
  %i.pl = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !800 ; 5 uses
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !139 ; 3 uses
  %.not.i.i319 = icmp eq i8 %i.pn, 0
  br i1 %.not.i.i319, label %sqlite3StrNICmp.exit.i, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i318
  %i.po = zext i8 %i.pn to i64
  %i.pp = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.po
  %i.pq = and i8 %i.pn, -33
  %i.pr = icmp eq i8 %i.pq, 77
  br i1 %i.pr, label %.lr.ph.i.1.i, label %split.i.i

.lr.ph.i.1.i:                                     ; preds = %bb.bu
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pm, i64 1
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !139 ; 3 uses
  %.not.i.1.i = icmp eq i8 %i.pt, 0
  br i1 %.not.i.1.i, label %sqlite3StrNICmp.exit.i, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i.1.i
  %i.pu = zext i8 %i.pt to i64
  %i.pv = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.pu
  %i.pw = and i8 %i.pt, -33
  %i.px = icmp eq i8 %i.pw, 65
  br i1 %i.px, label %.lr.ph.i.2.i, label %split.i.i

.lr.ph.i.2.i:                                     ; preds = %bb.bv
  %i.py = getelementptr inbounds nuw i8, ptr %i.pm, i64 2
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !139 ; 3 uses
  %.not.i.2.i = icmp eq i8 %i.pz, 0
  br i1 %.not.i.2.i, label %sqlite3StrNICmp.exit.i, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i.2.i
  %i.qa = zext i8 %i.pz to i64
  %i.qb = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.qa
  %i.qc = and i8 %i.pz, -33
  %i.qd = icmp eq i8 %i.qc, 84
  br i1 %i.qd, label %.lr.ph.i.3.i, label %split.i.i

.lr.ph.i.3.i:                                     ; preds = %bb.bw
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pm, i64 3
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !139 ; 3 uses
  %.not.i.3.i = icmp eq i8 %i.qf, 0
  br i1 %.not.i.3.i, label %sqlite3StrNICmp.exit.i, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i.3.i
  %i.qg = zext i8 %i.qf to i64
  %i.qh = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.qg
  %i.qi = and i8 %i.qf, -33
  %i.qj = icmp eq i8 %i.qi, 67
  br i1 %i.qj, label %.lr.ph.i.4.i, label %split.i.i

.lr.ph.i.4.i:                                     ; preds = %bb.bx
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !139 ; 3 uses
  %.not.i.4.i = icmp eq i8 %i.ql, 0
  br i1 %.not.i.4.i, label %sqlite3StrNICmp.exit.i, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i.4.i
  %i.qm = zext i8 %i.ql to i64
  %i.qn = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.qm
  %i.qo = and i8 %i.ql, -33
  %i.qp = icmp eq i8 %i.qo, 72
  br i1 %i.qp, label %sqlite3StrNICmp.exit.thread.i, label %split.i.i

split.i.i:                                        ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu
  %.lcssa.in.i = phi ptr [ %i.pp, %bb.bu ], [ %i.pv, %bb.bv ], [ %i.qb, %bb.bw ], [ %i.qh, %bb.bx ], [ %i.qn, %bb.by ]
  %.015.i.lcssa15.i = phi ptr [ @.str.401, %bb.bu ], [ getelementptr inbounds nuw (i8, ptr @.str.401, i64 1), %bb.bv ], [ getelementptr inbounds nuw (i8, ptr @.str.401, i64 2), %bb.bw ], [ getelementptr inbounds nuw (i8, ptr @.str.401, i64 3), %bb.bx ], [ getelementptr inbounds nuw (i8, ptr @.str.401, i64 4), %bb.by ]
  %.lcssa.i = load i8, ptr %.lcssa.in.i, align 1, !tbaa !139
  %i.qq = zext i8 %.lcssa.i to i32
  br label %sqlite3StrNICmp.exit.i

sqlite3StrNICmp.exit.i:                           ; preds = %split.i.i, %.lr.ph.i.4.i, %.lr.ph.i.3.i, %.lr.ph.i.2.i, %.lr.ph.i.1.i, %.lr.ph.i.i318
  %.015.i17.i = phi ptr [ %.015.i.lcssa15.i, %split.i.i ], [ @.str.401, %.lr.ph.i.i318 ], [ getelementptr inbounds nuw (i8, ptr @.str.401, i64 1), %.lr.ph.i.1.i ], [ getelementptr inbounds nuw (i8, ptr @.str.401, i64 2), %.lr.ph.i.2.i ], [ getelementptr inbounds nuw (i8, ptr @.str.401, i64 3), %.lr.ph.i.3.i ], [ getelementptr inbounds nuw (i8, ptr @.str.401, i64 4), %.lr.ph.i.4.i ]
  %i.qr = phi i32 [ %i.qq, %split.i.i ], [ 0, %.lr.ph.i.i318 ], [ 0, %.lr.ph.i.1.i ], [ 0, %.lr.ph.i.2.i ], [ 0, %.lr.ph.i.3.i ], [ 0, %.lr.ph.i.4.i ]
  %i.qs = load i8, ptr %.015.i17.i, align 1, !tbaa !139
  %i.qt = zext i8 %i.qs to i64
  %i.qu = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.qt
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !139
  %i.qw = zext i8 %i.qv to i32
  %.not7.i = icmp eq i32 %i.qr, %i.qw
  br i1 %.not7.i, label %sqlite3StrNICmp.exit.thread.i, label %.critedge281

sqlite3StrNICmp.exit.thread.i:                    ; preds = %sqlite3StrNICmp.exit.i, %bb.by
  %i.qx = load ptr, ptr %i.ll, align 8, !tbaa !803 ; 2 uses
  %i.qy = load i32, ptr %i.qx, align 8, !tbaa !807
  %.not8.i = icmp eq i32 %i.qy, 2
  br i1 %.not8.i, label %isMatchOfColumn.exit, label %.critedge281

isMatchOfColumn.exit:                             ; preds = %sqlite3StrNICmp.exit.thread.i
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !806 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 24
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !809 ; 3 uses
  %i.rd = load i8, ptr %i.rc, align 8, !tbaa !848
  %.not9.i.not = icmp eq i8 %i.rd, -107
  br i1 %.not9.i.not, label %bb.bz, label %.critedge281

bb.bz:                                            ; preds = %isMatchOfColumn.exit
  %i.re = load ptr, ptr %i.ra, align 8, !tbaa !809 ; 2 uses
  %i.rf = call fastcc i64 @exprTableUsage(ptr noundef %i.j, ptr noundef %i.re) ; 2 uses
  %i.rg = call fastcc i64 @exprTableUsage(ptr noundef %i.j, ptr noundef nonnull %i.rc)
  %i.rh = and i64 %i.rg, %i.rf
  %i.ri = icmp eq i64 %i.rh, 0
  br i1 %i.ri, label %bb.ca, label %.critedge281

bb.ca:                                            ; preds = %bb.bz
  %i.rj = call fastcc ptr @sqlite3ExprDup(ptr noundef %i.b, ptr noundef %i.re)
  %i.rk = call fastcc ptr @sqlite3Expr(ptr noundef %i.b, i32 noundef 43, ptr noundef null, ptr noundef %i.rj, ptr noundef null)
  %i.rl = call fastcc i32 @whereClauseInsert(ptr noundef %0, ptr noundef %i.rk, i32 noundef 3)
  %i.rm = load ptr, ptr %i.e, align 8, !tbaa !984 ; 2 uses
  %i.rn = sext i32 %i.rl to i64
  %i.ro = getelementptr inbounds [48 x i8], ptr %i.rm, i64 %i.rn ; 5 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 32
  store i64 %i.rf, ptr %i.rp, align 8, !tbaa !996
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rc, i64 72
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ro, i64 10
  %i.rs = load <2 x i32>, ptr %i.rq, align 8, !tbaa !112
  %i.rt = trunc <2 x i32> %i.rs to <2 x i16>
  store <2 x i16> %i.rt, ptr %i.rr, align 2, !tbaa !234
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ro, i64 14
  store i16 64, ptr %i.ru, align 2, !tbaa !994
  %i.rv = trunc i32 %1 to i16
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
end_hunk_2
