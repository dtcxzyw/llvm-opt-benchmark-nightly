Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/hull?download=true
inline.NumInlined: 449
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@b3CreateHull:bb.a
  %.not74.i.i = icmp eq ptr %i.ahk, %i.ar
  br i1 %.not74.i.i, label %b3HullBuilder_Construct.exit, label %.lr.ph102.i.i, !llvm.loop !163

b3HullBuilder_Construct.exit:                     ; preds = %bb.cb, %._crit_edge.i83.i
  %i.ahu = phi i32 [ 0, %._crit_edge.i83.i ], [ %.172.i.i, %bb.cb ] ; 4 uses
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.iw, align 4
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.2112.0..sroa_idx.i.i, align 4
  %i.ahv = fadd <2 x float> %.sroa.0198.0.copyload, %.sroa.03.0.copyload.i.i
  %i.ahw = fadd float %.sroa.4199.0.copyload, %.sroa.24.0.copyload.i.i
  store <2 x float> %i.ahv, ptr %i.iw, align 4
  store float %i.ahw, ptr %.sroa.2112.0..sroa_idx.i.i, align 4, !tbaa !23
  %i.ahx = getelementptr inbounds nuw i8, ptr %3, i64 372
  store i32 %i.ahu, ptr %i.ahx, align 4, !tbaa !209
  %i.ahy = getelementptr inbounds nuw i8, ptr %3, i64 376
  store i32 %i.agm, ptr %i.ahy, align 8, !tbaa !210
  %i.ahz = getelementptr inbounds nuw i8, ptr %3, i64 380
  store i32 %i.agn, ptr %i.ahz, align 4, !tbaa !211
  %.neg.i.i = sdiv i32 %i.agm, -2
  %i.aia = add i32 %i.agn, %.neg.i.i
  %i.aib = add i32 %i.aia, %i.ahu
  %i.aic = icmp eq i32 %i.aib, 2
  %i.aid = icmp sgt i32 %i.agn, 3
  %i.aie = and i1 %i.aid, %i.aic
  br i1 %i.aie, label %bb.cc, label %b3HullBuilder_Construct.exit.thread

b3HullBuilder_Construct.exit.thread:              ; preds = %b3FindFarthestPointFromPlane.exit.i.i, %b3FindFarthestPointsAlongCardinalAxes.exit.thread.i.i, %b3FindFarthestPointFromLine.exit.i.i, %b3FindFarthestPointsAlongCardinalAxes.exit.i.i, %b3HullBuilder_Construct.exit
  call void @b3Free(ptr noundef %i.ao, i64 noundef %i.an) #24
  br label %bb.cq

bb.cc:                                            ; preds = %b3HullBuilder_Construct.exit
  %i.aif = icmp sgt i32 %i.ahu, 128
  br i1 %i.aif, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str, i32 noundef %i.ahu, i32 noundef 128) #24
  call void @b3Free(ptr noundef %i.ao, i64 noundef %i.an) #24
  br label %bb.cq

bb.ce:                                            ; preds = %bb.cc
  %i.aig = icmp samesign ugt i32 %i.agn, 128
  br i1 %i.aig, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.1, i32 noundef %i.agn, i32 noundef 128) #24
  call void @b3Free(ptr noundef %i.ao, i64 noundef %i.an) #24
  br label %bb.cq

bb.cg:                                            ; preds = %bb.ce
  %i.aih = icmp sgt i32 %i.agm, 256
  br i1 %i.aih, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.2, i32 noundef %i.agm, i32 noundef 256) #24
  call void @b3Free(ptr noundef %i.ao, i64 noundef %i.an) #24
  br label %bb.cq

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.aii = load ptr, ptr %i.as, align 8, !tbaa !207 ; 2 uses
  %.not281 = icmp eq ptr %i.aii, %i.ar
  br i1 %.not281, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.aij = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ci
  %.0219.lcssa = phi i32 [ 0, %bb.ci ], [ %i.aij, %._crit_edge.loopexit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.aik = load ptr, ptr %i.au, align 8, !tbaa !206 ; 2 uses
  %.not225284 = icmp eq ptr %i.aik, %i.at
  br i1 %.not225284, label %._crit_edge290, label %.lr.ph289

.lr.ph:                                           ; preds = %bb.ci, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.ci ] ; 3 uses
  %.0218283 = phi ptr [ %i.aip, %.lr.ph ], [ %i.aii, %bb.ci ] ; 3 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %.0218283, i64 36
  %i.aim = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aim, ptr %i.ail, align 4, !tbaa !194
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store ptr %.0218283, ptr %i.ain, align 8, !tbaa !212
  %i.aio = getelementptr inbounds nuw i8, ptr %.0218283, i64 8
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !28 ; 2 uses
  %.not = icmp eq ptr %i.aip, %i.ar
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !164

._crit_edge290.loopexit:                          ; preds = %bb.cm
  %i.aiq = trunc nuw i64 %indvars.iv.next331 to i32
  br label %._crit_edge290

._crit_edge290:                                   ; preds = %._crit_edge290.loopexit, %._crit_edge
  %.0217.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.aiq, %._crit_edge290.loopexit ] ; 9 uses
  %.0214.lcssa = phi i32 [ 0, %._crit_edge ], [ %.2216, %._crit_edge290.loopexit ] ; 4 uses
  %i.air = add i32 %.0219.lcssa, 3                ; 2 uses
  %i.ais = and i32 %i.air, 2147483644             ; 3 uses
  %i.ait = add i32 %.0217.lcssa, 3                ; 2 uses
  %i.aiu = and i32 %i.ait, 2147483644             ; 4 uses
  %narrow = add nuw i32 %.0219.lcssa, 7
  %i.aiv = and i32 %narrow, -8
  %i.aiw = zext i32 %i.aiv to i64
  %i.aix = add nuw nsw i64 %i.aiw, 144            ; 3 uses
  %i.aiy = trunc i64 %i.aix to i32                ; 2 uses
  %i.aiz = mul nuw nsw i32 %.0219.lcssa, 12
  %narrow253 = add nuw i32 %i.aiz, 4
  %i.aja = and i32 %narrow253, -8
  %i.ajb = zext i32 %i.aja to i64
  %i.ajc = add nuw nsw i64 %i.aix, %i.ajb         ; 3 uses
  %i.ajd = trunc i64 %i.ajc to i32                ; 2 uses
  %i.aje = shl nsw i32 %.0214.lcssa, 2
  %i.ajf = sext i32 %i.aje to i64
  %i.ajg = add nsw i64 %i.ajf, 4
  %i.ajh = and i64 %i.ajg, -8
  %i.aji = add nsw i64 %i.ajh, %i.ajc             ; 3 uses
  %i.ajj = trunc i64 %i.aji to i32
  %i.ajk = shl nuw nsw i32 %.0217.lcssa, 4
  %i.ajl = zext nneg i32 %i.ajk to i64
  %i.ajm = add nsw i64 %i.aji, %i.ajl             ; 3 uses
  %i.ajn = trunc i64 %i.ajm to i32
  %narrow254 = add nuw i32 %.0217.lcssa, 7
  %i.ajo = and i32 %narrow254, -8
  %i.ajp = zext i32 %i.ajo to i64
  %i.ajq = add nsw i64 %i.ajm, %i.ajp             ; 3 uses
  %i.ajr = trunc i64 %i.ajq to i32                ; 2 uses
  %i.ajs = mul nuw nsw i32 %i.ais, 12
  %i.ajt = zext nneg i32 %i.ajs to i64
  %i.aju = add nsw i64 %i.ajq, %i.ajt             ; 3 uses
  %i.ajv = trunc i64 %i.aju to i32                ; 2 uses
  %i.ajw = mul nuw nsw i32 %i.aiu, 12
  %i.ajx = zext nneg i32 %i.ajw to i64
  %i.ajy = add i64 %i.aju, %i.ajx                 ; 3 uses
  %i.ajz = call ptr @b3Alloc(i64 noundef %i.ajy) #24 ; 23 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ajz, i8 0, i64 %i.ajy, i1 false)
  store i64 5353818467820062812, ptr %i.ajz, align 8, !tbaa !213
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 104
  store i32 144, ptr %i.aka, align 8, !tbaa !69
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajz, i64 108 ; 2 uses
  store i32 %i.aiy, ptr %i.akb, align 4, !tbaa !19
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajz, i64 116
  store i32 %i.ajd, ptr %i.akc, align 4, !tbaa !70
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajz, i64 124
  store i32 %i.ajj, ptr %i.akd, align 4, !tbaa !22
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajz, i64 128
  store i32 %i.ajn, ptr %i.ake, align 8, !tbaa !71
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajz, i64 132
  store i32 %i.ajr, ptr %i.akf, align 4, !tbaa !72
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ajz, i64 136
  store i32 %i.ajv, ptr %i.akg, align 8, !tbaa !73
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ajz, i64 100 ; 2 uses
  store i32 %.0219.lcssa, ptr %i.akh, align 4, !tbaa !18
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ajz, i64 112
  store i32 %.0214.lcssa, ptr %i.aki, align 8, !tbaa !214
  %i.akj = getelementptr inbounds nuw i8, ptr %i.ajz, i64 120
  store i32 %.0217.lcssa, ptr %i.akj, align 8, !tbaa !21
  %i.akk = trunc i64 %i.ajy to i32
  %i.akl = getelementptr inbounds nuw i8, ptr %i.ajz, i64 140 ; 3 uses
  store i32 %i.akk, ptr %i.akl, align 4, !tbaa !74
  %i.akm = ptrtoint ptr %i.ajz to i64             ; 8 uses
  %i.akn = add nsw i64 %i.akm, 144
  %i.ako = inttoptr i64 %i.akn to ptr             ; 2 uses
  %i.akp = icmp eq i32 %i.ajd, 0
  %sext = shl i64 %i.ajc, 32
  %i.akq = ashr exact i64 %sext, 32
  %i.akr = add nsw i64 %i.akq, %i.akm
  %i.aks = inttoptr i64 %i.akr to ptr
  %.0.i228 = select i1 %i.akp, ptr null, ptr %i.aks
  %sext255 = shl i64 %i.ajm, 32
  %i.akt = ashr exact i64 %sext255, 32
  %i.aku = add nsw i64 %i.akt, %i.akm
  %i.akv = inttoptr i64 %i.aku to ptr
  %i.akw = icmp eq i32 %i.aiy, 0
  %sext256 = shl i64 %i.aix, 32
  %i.akx = ashr exact i64 %sext256, 32
  %i.aky = add nsw i64 %i.akx, %i.akm
  %i.akz = inttoptr i64 %i.aky to ptr
  %.0.i229 = select i1 %i.akw, ptr null, ptr %i.akz
  %sext257 = shl i64 %i.aji, 32
  %i.ala = ashr exact i64 %sext257, 32
  %i.alb = add nsw i64 %i.ala, %i.akm
  %i.alc = inttoptr i64 %i.alb to ptr
  %i.ald = icmp eq i32 %i.ajr, 0
  %sext258 = shl i64 %i.ajq, 32
  %i.ale = ashr exact i64 %sext258, 32
  %i.alf = add nsw i64 %i.ale, %i.akm
  %i.alg = inttoptr i64 %i.alf to ptr             ; 16 uses
  %.0.i231 = select i1 %i.ald, ptr null, ptr %i.alg ; 6 uses
  %i.alh = icmp eq i32 %i.ajv, 0
  %sext259 = shl i64 %i.aju, 32
  %i.ali = ashr exact i64 %sext259, 32
  %i.alj = add nsw i64 %i.ali, %i.akm
  %i.alk = inttoptr i64 %i.alj to ptr             ; 5 uses
  %.0.i232 = select i1 %i.alh, ptr null, ptr %i.alk
  %i.all = zext nneg i32 %i.ais to i64            ; 5 uses
  %i.alm = getelementptr [4 x i8], ptr %.0.i231, i64 %i.all ; 13 uses
  %i.aln = getelementptr [4 x i8], ptr %i.alm, i64 %i.all ; 15 uses
  %.not307 = icmp eq i32 %.0219.lcssa, 0
  br i1 %.not307, label %.preheader261, label %.lr.ph295.preheader

.lr.ph295.preheader:                              ; preds = %._crit_edge290
  %smax = call i32 @llvm.smax.i32(i32 %.0219.lcssa, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph295

.lr.ph289:                                        ; preds = %._crit_edge, %bb.cm
  %indvars.iv330 = phi i64 [ %indvars.iv.next331, %bb.cm ], [ 0, %._crit_edge ] ; 3 uses
  %.0213287 = phi ptr [ %i.ami, %bb.cm ], [ %i.aik, %._crit_edge ] ; 4 uses
  %.0214286 = phi i32 [ %.2216, %bb.cm ], [ 0, %._crit_edge ]
  %i.alo = getelementptr inbounds nuw i8, ptr %.0213287, i64 120
  %i.alp = trunc nuw nsw i64 %indvars.iv330 to i32
  store i32 %i.alp, ptr %i.alo, align 8, !tbaa !62
  %i.alq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv330
  store ptr %.0213287, ptr %i.alq, align 8, !tbaa !57
  %i.alr = getelementptr inbounds nuw i8, ptr %.0213287, i64 16
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !52 ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cl, %.lr.ph289
  %.1215 = phi i32 [ %.0214286, %.lr.ph289 ], [ %.2216, %bb.cl ] ; 5 uses
  %.0212 = phi ptr [ %i.als, %.lr.ph289 ], [ %i.amg, %bb.cl ] ; 4 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %.0212, i64 40 ; 2 uses
  %i.alu = load i32, ptr %i.alt, align 8, !tbaa !65
  %i.alv = icmp slt i32 %i.alu, 0
  br i1 %i.alv, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  store i32 %.1215, ptr %i.alt, align 8, !tbaa !65
  %i.alw = add nsw i32 %.1215, 1                  ; 2 uses
  %i.alx = sext i32 %.1215 to i64
  %i.aly = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.alx
  store ptr %.0212, ptr %i.aly, align 8, !tbaa !196
  %i.alz = getelementptr inbounds nuw i8, ptr %.0212, i64 32
  %i.ama = load ptr, ptr %i.alz, align 8, !tbaa !47 ; 2 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 40
  store i32 %i.alw, ptr %i.amb, align 8, !tbaa !65
  %i.amc = add nsw i32 %.1215, 2
  %i.amd = sext i32 %i.alw to i64
  %i.ame = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.amd
  store ptr %i.ama, ptr %i.ame, align 8, !tbaa !196
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.2216 = phi i32 [ %i.amc, %bb.ck ], [ %.1215, %bb.cj ] ; 3 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %.0212, i64 8
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !55 ; 2 uses
  %.not226 = icmp eq ptr %i.amg, %i.als
  br i1 %.not226, label %bb.cm, label %bb.cj, !llvm.loop !165

bb.cm:                                            ; preds = %bb.cl
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1 ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %.0213287, i64 8
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !28 ; 2 uses
  %.not225 = icmp eq ptr %i.ami, %i.at
  br i1 %.not225, label %._crit_edge290.loopexit, label %.lr.ph289, !llvm.loop !166

.preheader261:                                    ; preds = %.lr.ph295, %._crit_edge290
  %i.amj = icmp samesign ult i32 %.0219.lcssa, %i.ais
  br i1 %i.amj, label %.lr.ph297.preheader, label %.preheader260

.lr.ph297.preheader:                              ; preds = %.preheader261
  %i.amk = zext nneg i32 %.0219.lcssa to i64      ; 6 uses
  %i.aml = sub nsw i64 %i.all, %i.amk             ; 3 uses
  %min.iters.check = icmp ult i64 %i.aml, 68
  br i1 %min.iters.check, label %.lr.ph297.preheader577, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph297.preheader
  %i.amm = shl nuw nsw i64 %i.amk, 2              ; 3 uses
  %scevgep444 = getelementptr i8, ptr %i.alg, i64 %i.amm ; 5 uses
  %i.amn = lshr i32 %i.air, 2
  %i.amo = and i32 %i.amn, 536870911
  %i.amp = zext nneg i32 %i.amo to i64            ; 3 uses
  %i.amq = shl nuw nsw i64 %i.amp, 4              ; 3 uses
  %scevgep445 = getelementptr i8, ptr %i.alg, i64 %i.amq ; 5 uses
  %i.amr = getelementptr i8, ptr %.0.i231, i64 %i.amq
  %scevgep446 = getelementptr i8, ptr %i.amr, i64 %i.amm ; 4 uses
  %i.ams = shl nuw nsw i64 %i.amp, 5              ; 2 uses
  %i.amt = getelementptr i8, ptr %.0.i231, i64 %i.ams
  %scevgep447 = getelementptr i8, ptr %i.amt, i64 %i.amm ; 5 uses
  %i.amu = mul nuw nsw i64 %i.amp, 48
  %scevgep448 = getelementptr i8, ptr %.0.i231, i64 %i.amu ; 5 uses
  %scevgep449 = getelementptr i8, ptr %i.alg, i64 4 ; 3 uses
  %i.amv = getelementptr i8, ptr %.0.i231, i64 %i.amq
  %scevgep450 = getelementptr i8, ptr %i.amv, i64 4 ; 3 uses
  %i.amw = getelementptr i8, ptr %.0.i231, i64 %i.ams
  %scevgep451 = getelementptr i8, ptr %i.amw, i64 4 ; 2 uses
  %bound0 = icmp ult ptr %scevgep444, %i.aln
  %bound1 = icmp ult ptr %scevgep446, %scevgep445
  %found.conflict = and i1 %bound0, %bound1
  %bound0452 = icmp ult ptr %scevgep444, %scevgep448
  %bound1453 = icmp ult ptr %scevgep447, %scevgep445
  %found.conflict454 = and i1 %bound0452, %bound1453
  %conflict.rdx = or i1 %found.conflict, %found.conflict454
  %bound0455 = icmp ult ptr %scevgep444, %scevgep449
  %bound1456 = icmp ugt ptr %scevgep445, %i.alg
  %found.conflict457 = and i1 %bound0455, %bound1456
  %conflict.rdx458 = or i1 %conflict.rdx, %found.conflict457
  %bound0459 = icmp ult ptr %scevgep444, %scevgep450
  %bound1460 = icmp ult ptr %i.alm, %scevgep445
  %found.conflict461 = and i1 %bound0459, %bound1460
  %conflict.rdx462 = or i1 %conflict.rdx458, %found.conflict461
  %bound0463 = icmp ult ptr %scevgep444, %scevgep451
  %bound1464 = icmp ult ptr %i.aln, %scevgep445
  %found.conflict465 = and i1 %bound0463, %bound1464
  %conflict.rdx466 = or i1 %conflict.rdx462, %found.conflict465
  %bound0467 = icmp ult ptr %scevgep446, %scevgep448
  %bound1468 = icmp ult ptr %scevgep447, %i.aln
  %found.conflict469 = and i1 %bound0467, %bound1468
  %conflict.rdx470 = or i1 %conflict.rdx466, %found.conflict469
  %bound0471 = icmp ult ptr %scevgep446, %scevgep449
  %bound1472 = icmp ugt ptr %i.aln, %i.alg
  %found.conflict473 = and i1 %bound0471, %bound1472
  %conflict.rdx474 = or i1 %conflict.rdx470, %found.conflict473
  %bound0475 = icmp ult ptr %scevgep446, %scevgep450
  %bound1476 = icmp ult ptr %i.alm, %i.aln
  %found.conflict477 = and i1 %bound0475, %bound1476
  %conflict.rdx478 = or i1 %conflict.rdx474, %found.conflict477
  %bound0480 = icmp ult ptr %scevgep447, %scevgep449
  %bound1481 = icmp ugt ptr %scevgep448, %i.alg
  %found.conflict482 = and i1 %bound0480, %bound1481
  %conflict.rdx483 = or i1 %conflict.rdx478, %found.conflict482
  %bound0484 = icmp ult ptr %scevgep447, %scevgep450
  %bound1485 = icmp ult ptr %i.alm, %scevgep448
  %found.conflict486 = and i1 %bound0484, %bound1485
  %conflict.rdx487 = or i1 %conflict.rdx483, %found.conflict486
  %bound0488 = icmp ult ptr %scevgep447, %scevgep451
  %bound1489 = icmp ult ptr %i.aln, %scevgep448
  %found.conflict490 = and i1 %bound0488, %bound1489
  %conflict.rdx491 = or i1 %conflict.rdx487, %found.conflict490
  br i1 %conflict.rdx491, label %.lr.ph297.preheader577, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aml, -8                     ; 3 uses
  %i.amx = add nsw i64 %n.vec, %i.amk
  %i.amy = load float, ptr %i.alg, align 4, !tbaa !23, !alias.scope !215
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.amy, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.amz = load float, ptr %i.alm, align 4, !tbaa !23, !alias.scope !216
  %broadcast.splatinsert492 = insertelement <4 x float> poison, float %i.amz, i64 0
  %broadcast.splat493 = shufflevector <4 x float> %broadcast.splatinsert492, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ana = load float, ptr %i.aln, align 4, !tbaa !23, !alias.scope !217
  %broadcast.splatinsert494 = insertelement <4 x float> poison, float %i.ana, i64 0
  %broadcast.splat495 = shufflevector <4 x float> %broadcast.splatinsert494, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.anb = add nuw i64 %index, %i.amk             ; 3 uses
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %i.alg, i64 %i.anb ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 16
  store <4 x float> %broadcast.splat, ptr %i.anc, align 4, !tbaa !23, !alias.scope !218, !noalias !219
  store <4 x float> %broadcast.splat, ptr %i.and, align 4, !tbaa !23, !alias.scope !218, !noalias !219
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %i.anb ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 16
  store <4 x float> %broadcast.splat493, ptr %i.ane, align 4, !tbaa !23, !alias.scope !220, !noalias !221
  store <4 x float> %broadcast.splat493, ptr %i.anf, align 4, !tbaa !23, !alias.scope !220, !noalias !221
  %i.ang = getelementptr inbounds nuw [4 x i8], ptr %i.aln, i64 %i.anb ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 16
  store <4 x float> %broadcast.splat495, ptr %i.ang, align 4, !tbaa !23, !alias.scope !222, !noalias !223
  store <4 x float> %broadcast.splat495, ptr %i.anh, align 4, !tbaa !23, !alias.scope !222, !noalias !223
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ani = icmp eq i64 %index.next, %n.vec
  br i1 %i.ani, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aml, %n.vec
  br i1 %cmp.n, label %.preheader260, label %.lr.ph297.preheader577

.lr.ph297.preheader577:                           ; preds = %vector.memcheck, %.lr.ph297.preheader, %middle.block
  %indvars.iv336.ph = phi i64 [ %i.amk, %vector.memcheck ], [ %i.amk, %.lr.ph297.preheader ], [ %i.amx, %middle.block ] ; 7 uses
  %xtraiter605 = and i64 %indvars.iv336.ph, 1
  %lcmp.mod606.not = icmp eq i64 %xtraiter605, 0
  br i1 %lcmp.mod606.not, label %.lr.ph297.prol.loopexit, label %.lr.ph297.prol

.lr.ph297.prol:                                   ; preds = %.lr.ph297.preheader577
  %i.anj = load float, ptr %i.alg, align 4, !tbaa !23
  %i.ank = getelementptr inbounds nuw [4 x i8], ptr %i.alg, i64 %indvars.iv336.ph
  store float %i.anj, ptr %i.ank, align 4, !tbaa !23
  %i.anl = load float, ptr %i.alm, align 4, !tbaa !23
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %indvars.iv336.ph
  store float %i.anl, ptr %i.anm, align 4, !tbaa !23
  %i.ann = load float, ptr %i.aln, align 4, !tbaa !23
  %i.ano = getelementptr inbounds nuw [4 x i8], ptr %i.aln, i64 %indvars.iv336.ph
  store float %i.ann, ptr %i.ano, align 4, !tbaa !23
  %indvars.iv.next337.prol = add nuw nsw i64 %indvars.iv336.ph, 1
  br label %.lr.ph297.prol.loopexit

.lr.ph297.prol.loopexit:                          ; preds = %.lr.ph297.prol, %.lr.ph297.preheader577
  %indvars.iv336.unr = phi i64 [ %indvars.iv336.ph, %.lr.ph297.preheader577 ], [ %indvars.iv.next337.prol, %.lr.ph297.prol ]
  %i.anp = add nsw i64 %i.all, -1
  %i.anq = icmp eq i64 %indvars.iv336.ph, %i.anp
  br i1 %i.anq, label %.preheader260, label %.lr.ph297

.lr.ph295:                                        ; preds = %.lr.ph295.preheader, %.lr.ph295
  %indvars.iv333 = phi i64 [ 0, %.lr.ph295.preheader ], [ %indvars.iv.next334, %.lr.ph295 ] ; 7 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.ako, i64 %indvars.iv333
  store i8 0, ptr %i.anr, align 1, !tbaa !78
  %i.ans = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv333
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !212 ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ant, i64 32
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.anv = getelementptr inbounds nuw [12 x i8], ptr %.0.i229, i64 %indvars.iv333 ; 2 uses
  %i.anw = load <2 x float>, ptr %i.anu, align 8, !tbaa !23 ; 3 uses
  store <2 x float> %i.anw, ptr %i.anv, align 4, !tbaa !23
  %.sroa.6.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.anv, i64 8
  store float %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx47, align 4, !tbaa !23
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %i.alg, i64 %indvars.iv333
  %i.any = extractelement <2 x float> %i.anw, i64 0
  store float %i.any, ptr %i.anx, align 4, !tbaa !23
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %indvars.iv333
  %i.aoa = extractelement <2 x float> %i.anw, i64 1
  store float %i.aoa, ptr %i.anz, align 4, !tbaa !23
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.aln, i64 %indvars.iv333
  store float %.sroa.6.0.copyload, ptr %i.aob, align 4, !tbaa !23
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next334, %wide.trip.count
  br i1 %exitcond.not, label %.preheader261, label %.lr.ph295, !llvm.loop !175

.preheader260:                                    ; preds = %.lr.ph297.prol.loopexit, %.lr.ph297, %middle.block, %.preheader261
  %i.aoc = icmp sgt i32 %.0214.lcssa, 0
  br i1 %i.aoc, label %.lr.ph299.preheader, label %._crit_edge300

.lr.ph299.preheader:                              ; preds = %.preheader260
  %wide.trip.count344 = zext nneg i32 %.0214.lcssa to i64
  br label %.lr.ph299

.lr.ph297:                                        ; preds = %.lr.ph297.prol.loopexit, %.lr.ph297
  %indvars.iv336 = phi i64 [ %indvars.iv.next337.1, %.lr.ph297 ], [ %indvars.iv336.unr, %.lr.ph297.prol.loopexit ] ; 5 uses
  %i.aod = load float, ptr %i.alg, align 4, !tbaa !23
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %i.alg, i64 %indvars.iv336
  store float %i.aod, ptr %i.aoe, align 4, !tbaa !23
  %i.aof = load float, ptr %i.alm, align 4, !tbaa !23
  %i.aog = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %indvars.iv336
  store float %i.aof, ptr %i.aog, align 4, !tbaa !23
  %i.aoh = load float, ptr %i.aln, align 4, !tbaa !23
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr %i.aln, i64 %indvars.iv336
  store float %i.aoh, ptr %i.aoi, align 4, !tbaa !23
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 3 uses
  %i.aoj = load float, ptr %i.alg, align 4, !tbaa !23
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %i.alg, i64 %indvars.iv.next337
  store float %i.aoj, ptr %i.aok, align 4, !tbaa !23
  %i.aol = load float, ptr %i.alm, align 4, !tbaa !23
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %indvars.iv.next337
  store float %i.aol, ptr %i.aom, align 4, !tbaa !23
  %i.aon = load float, ptr %i.aln, align 4, !tbaa !23
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %i.aln, i64 %indvars.iv.next337
  store float %i.aon, ptr %i.aoo, align 4, !tbaa !23
  %indvars.iv.next337.1 = add nuw nsw i64 %indvars.iv336, 2 ; 2 uses
  %exitcond340.not.1 = icmp eq i64 %indvars.iv.next337.1, %i.all
  br i1 %exitcond340.not.1, label %.preheader260, label %.lr.ph297, !llvm.loop !176

._crit_edge300:                                   ; preds = %.lr.ph299, %.preheader260
  %i.aop = zext nneg i32 %i.aiu to i64            ; 2 uses
  %i.aoq = getelementptr inbounds nuw [4 x i8], ptr %.0.i232, i64 %i.aop ; 2 uses
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr %i.aoq, i64 %i.aop
  %.not308 = icmp eq i32 %.0217.lcssa, 0
  br i1 %.not308, label %.preheader, label %.lr.ph303.preheader

.lr.ph303.preheader:                              ; preds = %._crit_edge300
  %smax349 = call i32 @llvm.smax.i32(i32 %.0217.lcssa, i32 1)
  %wide.trip.count349 = zext nneg i32 %smax349 to i64
  br label %.lr.ph303

.lr.ph299:                                        ; preds = %.lr.ph299.preheader, %.lr.ph299
  %indvars.iv341 = phi i64 [ 0, %.lr.ph299.preheader ], [ %indvars.iv.next342, %.lr.ph299 ] ; 4 uses
  %i.aos = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv341
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !196 ; 4 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aot, i64 8
  %i.aov = load ptr, ptr %i.aou, align 8, !tbaa !55
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 40
  %i.aox = load i32, ptr %i.aow, align 8, !tbaa !65
  %i.aoy = trunc i32 %i.aox to i8
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %.0.i228, i64 %indvars.iv341 ; 4 uses
  store i8 %i.aoy, ptr %i.aoz, align 1, !tbaa !80
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aot, i64 32
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !47
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 40
  %i.apd = load i32, ptr %i.apc, align 8, !tbaa !65
  %i.ape = trunc i32 %i.apd to i8
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aoz, i64 1
  store i8 %i.ape, ptr %i.apf, align 1, !tbaa !81
  %i.apg = getelementptr inbounds nuw i8, ptr %i.aot, i64 24
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !56
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 120
  %i.apj = load i32, ptr %i.api, align 8, !tbaa !62
  %i.apk = trunc i32 %i.apj to i8
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aoz, i64 3
  store i8 %i.apk, ptr %i.apl, align 1, !tbaa !224
  %i.apm = getelementptr inbounds nuw i8, ptr %i.aot, i64 16
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !58
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 36
  %i.app = load i32, ptr %i.apo, align 4, !tbaa !194 ; 2 uses
  %i.apq = trunc i32 %i.app to i8
  %i.apr = getelementptr inbounds nuw i8, ptr %i.aoz, i64 2
  store i8 %i.apq, ptr %i.apr, align 1, !tbaa !82
  %i.aps = trunc i64 %indvars.iv341 to i8
  %i.apt = sext i32 %i.app to i64
  %i.apu = getelementptr inbounds i8, ptr %i.ako, i64 %i.apt
  store i8 %i.aps, ptr %i.apu, align 1, !tbaa !78
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 2 uses
  %exitcond345.not = icmp eq i64 %indvars.iv.next342, %wide.trip.count344
  br i1 %exitcond345.not, label %._crit_edge300, label %.lr.ph299, !llvm.loop !177

.preheader:                                       ; preds = %.lr.ph303, %._crit_edge300
  %i.apv = icmp samesign ult i32 %.0217.lcssa, %i.aiu
  br i1 %i.apv, label %.lr.ph305.preheader, label %._crit_edge306

.lr.ph305.preheader:                              ; preds = %.preheader
  %i.apw = zext nneg i32 %.0217.lcssa to i64
  %i.apx = shl nuw nsw i64 %i.apw, 2              ; 3 uses
  %scevgep = getelementptr i8, ptr %i.alk, i64 %i.apx
  %i.apy = xor i32 %.0217.lcssa, -1
  %i.apz = add nsw i32 %i.aiu, %i.apy
  %i.aqa = zext i32 %i.apz to i64
  %i.aqb = shl nuw nsw i64 %i.aqa, 2
  %i.aqc = add nuw nsw i64 %i.aqb, 4              ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.aqc, i1 false), !tbaa !23
  %i.aqd = lshr i32 %i.ait, 2
  %i.aqe = zext nneg i32 %i.aqd to i64            ; 2 uses
  %i.aqf = shl nuw nsw i64 %i.aqe, 4
  %i.aqg = getelementptr i8, ptr %i.alk, i64 %i.aqf
  %scevgep351 = getelementptr i8, ptr %i.aqg, i64 %i.apx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep351, i8 0, i64 %i.aqc, i1 false), !tbaa !23
  %i.aqh = shl nuw nsw i64 %i.aqe, 5
  %i.aqi = getelementptr i8, ptr %i.alk, i64 %i.aqh
  %scevgep352 = getelementptr i8, ptr %i.aqi, i64 %i.apx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep352, i8 0, i64 %i.aqc, i1 false), !tbaa !23
  br label %._crit_edge306

.lr.ph303:                                        ; preds = %.lr.ph303.preheader, %.lr.ph303
  %indvars.iv346 = phi i64 [ 0, %.lr.ph303.preheader ], [ %indvars.iv.next347, %.lr.ph303 ] ; 7 uses
  %i.aqj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv346
  %i.aqk = load ptr, ptr %i.aqj, align 8, !tbaa !57 ; 4 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 16
  %i.aqm = load ptr, ptr %i.aql, align 8, !tbaa !52
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 40
  %i.aqo = load i32, ptr %i.aqn, align 8, !tbaa !65
  %i.aqp = trunc i32 %i.aqo to i8
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.akv, i64 %indvars.iv346
  store i8 %i.aqp, ptr %i.aqq, align 1, !tbaa !84
  %i.aqr = getelementptr inbounds nuw [16 x i8], ptr %i.alc, i64 %indvars.iv346
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqk, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aqr, ptr noundef nonnull align 8 dereferenceable(16) %i.aqs, i64 16, i1 false), !tbaa.struct !85
  %.sroa.0.0.copyload = load float, ptr %i.aqs, align 8, !tbaa !23
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqk, i64 36
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !23
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqk, i64 40
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !23
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %i.alk, i64 %indvars.iv346
  store float %.sroa.0.0.copyload, ptr %i.aqt, align 4, !tbaa !23
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %i.aoq, i64 %indvars.iv346
  store float %.sroa.4.0.copyload, ptr %i.aqu, align 4, !tbaa !23
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %indvars.iv346
  store float %.sroa.5.0.copyload, ptr %i.aqv, align 4, !tbaa !23
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %exitcond350.not = icmp eq i64 %indvars.iv.next347, %wide.trip.count349
  br i1 %exitcond350.not, label %.preheader, label %.lr.ph303, !llvm.loop !178

._crit_edge306:                                   ; preds = %.lr.ph305.preheader, %.preheader
  call void @b3Free(ptr noundef %i.ao, i64 noundef %i.an) #24
  %i.aqw = load i32, ptr %i.akb, align 4, !tbaa !19 ; 2 uses
  %i.aqx = icmp eq i32 %i.aqw, 0
  %i.aqy = sext i32 %i.aqw to i64
  %i.aqz = add nsw i64 %i.aqy, %i.akm
  %i.ara = inttoptr i64 %i.aqz to ptr             ; 3 uses
  %.0.i.i233 = select i1 %i.aqx, ptr null, ptr %i.ara
  %i.arb = load i32, ptr %i.akh, align 4, !tbaa !18 ; 2 uses
  %.sroa.020.0.copyload21.i = load <2 x float>, ptr %i.ara, align 4 ; 4 uses
  %.sroa.6.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.ara, i64 8
  %.sroa.6.0.copyload23.i = load float, ptr %.sroa.6.0..sroa_idx22.i, align 4, !tbaa !23 ; 4 uses
  %i.arc = icmp sgt i32 %i.arb, 1
  br i1 %i.arc, label %.lr.ph.preheader.i, label %b3UpdateHullBounds.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge306
  %wide.trip.count.i235 = zext nneg i32 %i.arb to i64
  br label %.lr.ph.i236

.lr.ph.i236:                                      ; preds = %.lr.ph.i236, %.lr.ph.preheader.i
  %indvars.iv.i237 = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i244, %.lr.ph.i236 ] ; 2 uses
  %.sroa.11.042.i = phi float [ %.sroa.6.0.copyload23.i, %.lr.ph.preheader.i ], [ %i.arl, %.lr.ph.i236 ] ; 2 uses
  %.sroa.8.041.i = phi <2 x float> [ %.sroa.020.0.copyload21.i, %.lr.ph.preheader.i ], [ %i.arj, %.lr.ph.i236 ] ; 2 uses
  %.sroa.6.040.i = phi float [ %.sroa.6.0.copyload23.i, %.lr.ph.preheader.i ], [ %i.arh, %.lr.ph.i236 ] ; 2 uses
  %.sroa.020.039.i = phi <2 x float> [ %.sroa.020.0.copyload21.i, %.lr.ph.preheader.i ], [ %i.arf, %.lr.ph.i236 ] ; 2 uses
  %i.ard = getelementptr inbounds nuw [12 x i8], ptr %.0.i.i233, i64 %indvars.iv.i237 ; 2 uses
  %.sroa.016.0.copyload.i = load <2 x float>, ptr %i.ard, align 4 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ard, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !23 ; 4 uses
  %i.are = fcmp olt <2 x float> %.sroa.020.039.i, %.sroa.016.0.copyload.i
  %i.arf = select <2 x i1> %i.are, <2 x float> %.sroa.020.039.i, <2 x float> %.sroa.016.0.copyload.i ; 2 uses
  %i.arg = fcmp olt float %.sroa.6.040.i, %.sroa.5.0.copyload.i
  %i.arh = select i1 %i.arg, float %.sroa.6.040.i, float %.sroa.5.0.copyload.i ; 2 uses
  %i.ari = fcmp ogt <2 x float> %.sroa.8.041.i, %.sroa.016.0.copyload.i
  %i.arj = select <2 x i1> %i.ari, <2 x float> %.sroa.8.041.i, <2 x float> %.sroa.016.0.copyload.i ; 2 uses
  %i.ark = fcmp ogt float %.sroa.11.042.i, %.sroa.5.0.copyload.i
  %i.arl = select i1 %i.ark, float %.sroa.11.042.i, float %.sroa.5.0.copyload.i ; 2 uses
  %indvars.iv.next.i244 = add nuw nsw i64 %indvars.iv.i237, 1 ; 2 uses
  %exitcond.not.i245 = icmp eq i64 %indvars.iv.next.i244, %wide.trip.count.i235
  br i1 %exitcond.not.i245, label %b3UpdateHullBounds.exit, label %.lr.ph.i236, !llvm.loop !0

b3UpdateHullBounds.exit:                          ; preds = %.lr.ph.i236, %._crit_edge306
  %.sroa.020.0.lcssa.i = phi <2 x float> [ %.sroa.020.0.copyload21.i, %._crit_edge306 ], [ %i.arf, %.lr.ph.i236 ]
  %.sroa.6.0.lcssa.i = phi float [ %.sroa.6.0.copyload23.i, %._crit_edge306 ], [ %i.arh, %.lr.ph.i236 ]
  %.sroa.8.0.lcssa.i = phi <2 x float> [ %.sroa.020.0.copyload21.i, %._crit_edge306 ], [ %i.arj, %.lr.ph.i236 ]
  %.sroa.11.0.lcssa.i = phi float [ %.sroa.6.0.copyload23.i, %._crit_edge306 ], [ %i.arl, %.lr.ph.i236 ]
  %i.arm = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16
  store <2 x float> %.sroa.020.0.lcssa.i, ptr %i.arm, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ajz, i64 24
  store float %.sroa.6.0.lcssa.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !23
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ajz, i64 28
  store <2 x float> %.sroa.8.0.lcssa.i, ptr %.sroa.8.0..sroa_idx.i, align 4
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ajz, i64 36
  store float %.sroa.11.0.lcssa.i, ptr %.sroa.11.0..sroa_idx.i, align 4, !tbaa !23
  %i.arn = call fastcc zeroext i1 @b3UpdateHullBulkProperties(ptr noundef nonnull %i.ajz)
  br i1 %i.arn, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %b3UpdateHullBounds.exit
  %i.aro = load i32, ptr %i.akl, align 4, !tbaa !74
  %i.arp = sext i32 %i.aro to i64
  call void @b3Free(ptr noundef nonnull %i.ajz, i64 noundef %i.arp) #24
  br label %bb.cp

bb.co:                                            ; preds = %b3UpdateHullBounds.exit
  %i.arq = getelementptr inbounds nuw i8, ptr %i.ajz, i64 8 ; 2 uses
  store i64 0, ptr %i.arq, align 8, !tbaa !86
  %i.arr = load i32, ptr %i.akl, align 4, !tbaa !74
  %i.ars = call i64 @b3Hash64NonZero(ptr noundef nonnull %i.ajz, i32 noundef %i.arr) #24
  store i64 %i.ars, ptr %i.arq, align 8, !tbaa !86
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.0207 = phi ptr [ null, %bb.cn ], [ %i.ajz, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.cq

bb.cq:                                            ; preds = %bb.ch, %bb.cp, %bb.cf, %bb.cd, %b3HullBuilder_Construct.exit.thread
  %.2 = phi ptr [ null, %b3HullBuilder_Construct.exit.thread ], [ null, %bb.cd ], [ null, %bb.cf ], [ null, %bb.ch ], [ %.0207, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.cr

bb.cr:                                            ; preds = %bb.a, %bb.cq
  %.3 = phi ptr [ %.2, %bb.cq ], [ null, %bb.a ]
  ret ptr %.3
}

declare void @b3Free(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef ptr @b3CreateCone(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = shl nsw i32 %3, 1                        ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = mul nsw i64 %i.b, 12                     ; 2 uses
  %i.d = tail call ptr @b3Alloc(i64 noundef %i.c) #24 ; 3 uses
  %i.e = uitofp nneg i32 %3 to float
  %i.f = fdiv float f0x40C90FDB, %i.e
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
end_hunk_0
