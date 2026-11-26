Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/hull?download=true
inline.NumInlined: 449
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@b3CreateHull:bb.a
  %i.ahp = add nsw i32 %.071100.i.i, 1
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.172.i.i = phi i32 [ %i.ahp, %bb.ca ], [ %.071100.i.i, %bb.bz ] ; 2 uses
  %.not74.i.i = icmp eq ptr %i.ahg, %i.ar
  br i1 %.not74.i.i, label %b3HullBuilder_Construct.exit, label %.lr.ph102.i.i, !llvm.loop !163

b3HullBuilder_Construct.exit:                     ; preds = %bb.cb, %._crit_edge.i83.i
  %i.ahq = phi i32 [ 0, %._crit_edge.i83.i ], [ %.172.i.i, %bb.cb ] ; 4 uses
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.iw, align 4
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.2112.0..sroa_idx.i.i, align 4
  %i.ahr = fadd <2 x float> %.sroa.0198.0.copyload, %.sroa.03.0.copyload.i.i
  %i.ahs = fadd float %.sroa.4199.0.copyload, %.sroa.24.0.copyload.i.i
  store <2 x float> %i.ahr, ptr %i.iw, align 4, !tbaa !23
  store float %i.ahs, ptr %.sroa.2112.0..sroa_idx.i.i, align 4, !tbaa !23
  %i.aht = getelementptr inbounds nuw i8, ptr %3, i64 372
  store i32 %i.ahq, ptr %i.aht, align 4, !tbaa !209
  %i.ahu = getelementptr inbounds nuw i8, ptr %3, i64 376
  store i32 %i.agi, ptr %i.ahu, align 8, !tbaa !210
  %i.ahv = getelementptr inbounds nuw i8, ptr %3, i64 380
  store i32 %i.agj, ptr %i.ahv, align 4, !tbaa !211
  %.neg.i.i = sdiv i32 %i.agi, -2
  %i.ahw = add i32 %i.agj, %.neg.i.i
  %i.ahx = add i32 %i.ahw, %i.ahq
  %i.ahy = icmp eq i32 %i.ahx, 2
  %i.ahz = icmp sgt i32 %i.agj, 3
  %i.aia = and i1 %i.ahz, %i.ahy
  br i1 %i.aia, label %bb.cc, label %b3HullBuilder_Construct.exit.thread

b3HullBuilder_Construct.exit.thread:              ; preds = %b3FindFarthestPointFromPlane.exit.i.i, %b3FindFarthestPointsAlongCardinalAxes.exit.thread.i.i, %b3FindFarthestPointFromLine.exit.i.i, %b3FindFarthestPointsAlongCardinalAxes.exit.i.i, %b3HullBuilder_Construct.exit
  call void @b3Free(ptr noundef %i.ao, i64 noundef %i.an) #24
  br label %bb.cq

bb.cc:                                            ; preds = %b3HullBuilder_Construct.exit
  %i.aib = icmp sgt i32 %i.ahq, 128
  br i1 %i.aib, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str, i32 noundef %i.ahq, i32 noundef 128) #24
  call void @b3Free(ptr noundef nonnull %i.ao, i64 noundef %i.an) #24
  br label %bb.cq

bb.ce:                                            ; preds = %bb.cc
  %i.aic = icmp samesign ugt i32 %i.agj, 128
  br i1 %i.aic, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.1, i32 noundef %i.agj, i32 noundef 128) #24
  call void @b3Free(ptr noundef nonnull %i.ao, i64 noundef %i.an) #24
  br label %bb.cq

bb.cg:                                            ; preds = %bb.ce
  %i.aid = icmp sgt i32 %i.agi, 256
  br i1 %i.aid, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.2, i32 noundef %i.agi, i32 noundef 256) #24
  call void @b3Free(ptr noundef nonnull %i.ao, i64 noundef %i.an) #24
  br label %bb.cq

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.aie = load ptr, ptr %i.as, align 8, !tbaa !207 ; 2 uses
  %.not281 = icmp eq ptr %i.aie, %i.ar
  br i1 %.not281, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.aif = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ci
  %.0219.lcssa = phi i32 [ 0, %bb.ci ], [ %i.aif, %._crit_edge.loopexit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.aig = load ptr, ptr %i.au, align 8, !tbaa !206 ; 2 uses
  %.not225284 = icmp eq ptr %i.aig, %i.at
  br i1 %.not225284, label %._crit_edge290, label %.lr.ph289

.lr.ph:                                           ; preds = %bb.ci, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.ci ] ; 3 uses
  %.0218283 = phi ptr [ %i.ail, %.lr.ph ], [ %i.aie, %bb.ci ] ; 3 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %.0218283, i64 36
  %i.aii = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aii, ptr %i.aih, align 4, !tbaa !194
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aij = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store ptr %.0218283, ptr %i.aij, align 8, !tbaa !212
  %i.aik = getelementptr inbounds nuw i8, ptr %.0218283, i64 8
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !28 ; 2 uses
  %.not = icmp eq ptr %i.ail, %i.ar
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !164

._crit_edge290.loopexit:                          ; preds = %bb.cm
  %i.aim = trunc nuw i64 %indvars.iv.next331 to i32
  br label %._crit_edge290

._crit_edge290:                                   ; preds = %._crit_edge290.loopexit, %._crit_edge
  %.0217.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.aim, %._crit_edge290.loopexit ] ; 9 uses
  %.0214.lcssa = phi i32 [ 0, %._crit_edge ], [ %.2216, %._crit_edge290.loopexit ] ; 4 uses
  %i.ain = add i32 %.0219.lcssa, 3                ; 2 uses
  %i.aio = and i32 %i.ain, 2147483644             ; 3 uses
  %i.aip = add i32 %.0217.lcssa, 3                ; 2 uses
  %i.aiq = and i32 %i.aip, 2147483644             ; 4 uses
  %narrow = add nuw i32 %.0219.lcssa, 7
  %i.air = and i32 %narrow, -8
  %i.ais = zext i32 %i.air to i64
  %i.ait = add nuw nsw i64 %i.ais, 144            ; 3 uses
  %i.aiu = trunc i64 %i.ait to i32                ; 2 uses
  %i.aiv = mul nuw nsw i32 %.0219.lcssa, 12
  %narrow253 = add nuw i32 %i.aiv, 4
  %i.aiw = and i32 %narrow253, -8
  %i.aix = zext i32 %i.aiw to i64
  %i.aiy = add nuw nsw i64 %i.ait, %i.aix         ; 3 uses
  %i.aiz = trunc i64 %i.aiy to i32                ; 2 uses
  %i.aja = shl nsw i32 %.0214.lcssa, 2
  %i.ajb = sext i32 %i.aja to i64
  %i.ajc = add nsw i64 %i.ajb, 4
  %i.ajd = and i64 %i.ajc, -8
  %i.aje = add nsw i64 %i.ajd, %i.aiy             ; 3 uses
  %i.ajf = trunc i64 %i.aje to i32
  %i.ajg = shl nuw nsw i32 %.0217.lcssa, 4
  %i.ajh = zext nneg i32 %i.ajg to i64
  %i.aji = add nsw i64 %i.aje, %i.ajh             ; 3 uses
  %i.ajj = trunc i64 %i.aji to i32
  %narrow254 = add nuw i32 %.0217.lcssa, 7
  %i.ajk = and i32 %narrow254, -8
  %i.ajl = zext i32 %i.ajk to i64
  %i.ajm = add nsw i64 %i.aji, %i.ajl             ; 3 uses
  %i.ajn = trunc i64 %i.ajm to i32                ; 2 uses
  %i.ajo = mul nuw nsw i32 %i.aio, 12
  %i.ajp = zext nneg i32 %i.ajo to i64
  %i.ajq = add nsw i64 %i.ajm, %i.ajp             ; 3 uses
  %i.ajr = trunc i64 %i.ajq to i32                ; 2 uses
  %i.ajs = mul nuw nsw i32 %i.aiq, 12
  %i.ajt = zext nneg i32 %i.ajs to i64
  %i.aju = add i64 %i.ajq, %i.ajt                 ; 3 uses
  %i.ajv = call ptr @b3Alloc(i64 noundef %i.aju) #24 ; 23 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ajv, i8 0, i64 %i.aju, i1 false)
  store i64 5353818467820062812, ptr %i.ajv, align 8, !tbaa !213
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 104
  store i32 144, ptr %i.ajw, align 8, !tbaa !69
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajv, i64 108 ; 2 uses
  store i32 %i.aiu, ptr %i.ajx, align 4, !tbaa !19
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajv, i64 116
  store i32 %i.aiz, ptr %i.ajy, align 4, !tbaa !70
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajv, i64 124
  store i32 %i.ajf, ptr %i.ajz, align 4, !tbaa !22
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajv, i64 128
  store i32 %i.ajj, ptr %i.aka, align 8, !tbaa !71
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajv, i64 132
  store i32 %i.ajn, ptr %i.akb, align 4, !tbaa !72
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajv, i64 136
  store i32 %i.ajr, ptr %i.akc, align 8, !tbaa !73
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajv, i64 100 ; 2 uses
  store i32 %.0219.lcssa, ptr %i.akd, align 4, !tbaa !18
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajv, i64 112
  store i32 %.0214.lcssa, ptr %i.ake, align 8, !tbaa !214
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajv, i64 120
  store i32 %.0217.lcssa, ptr %i.akf, align 8, !tbaa !21
  %i.akg = trunc i64 %i.aju to i32
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ajv, i64 140 ; 3 uses
  store i32 %i.akg, ptr %i.akh, align 4, !tbaa !74
  %i.aki = ptrtoint ptr %i.ajv to i64             ; 8 uses
  %i.akj = add nsw i64 %i.aki, 144
  %i.akk = inttoptr i64 %i.akj to ptr             ; 2 uses
  %i.akl = icmp eq i32 %i.aiz, 0
  %sext = shl i64 %i.aiy, 32
  %i.akm = ashr exact i64 %sext, 32
  %i.akn = add nsw i64 %i.akm, %i.aki
  %i.ako = inttoptr i64 %i.akn to ptr
  %.0.i228 = select i1 %i.akl, ptr null, ptr %i.ako
  %sext255 = shl i64 %i.aji, 32
  %i.akp = ashr exact i64 %sext255, 32
  %i.akq = add nsw i64 %i.akp, %i.aki
  %i.akr = inttoptr i64 %i.akq to ptr
  %i.aks = icmp eq i32 %i.aiu, 0
  %sext256 = shl i64 %i.ait, 32
  %i.akt = ashr exact i64 %sext256, 32
  %i.aku = add nsw i64 %i.akt, %i.aki
  %i.akv = inttoptr i64 %i.aku to ptr
  %.0.i229 = select i1 %i.aks, ptr null, ptr %i.akv
  %sext257 = shl i64 %i.aje, 32
  %i.akw = ashr exact i64 %sext257, 32
  %i.akx = add nsw i64 %i.akw, %i.aki
  %i.aky = inttoptr i64 %i.akx to ptr
  %i.akz = icmp eq i32 %i.ajn, 0
  %sext258 = shl i64 %i.ajm, 32
  %i.ala = ashr exact i64 %sext258, 32
  %i.alb = add nsw i64 %i.ala, %i.aki
  %i.alc = inttoptr i64 %i.alb to ptr             ; 16 uses
  %.0.i231 = select i1 %i.akz, ptr null, ptr %i.alc ; 6 uses
  %i.ald = icmp eq i32 %i.ajr, 0
  %sext259 = shl i64 %i.ajq, 32
  %i.ale = ashr exact i64 %sext259, 32
  %i.alf = add nsw i64 %i.ale, %i.aki
  %i.alg = inttoptr i64 %i.alf to ptr             ; 5 uses
  %.0.i232 = select i1 %i.ald, ptr null, ptr %i.alg
  %i.alh = zext nneg i32 %i.aio to i64            ; 5 uses
  %i.ali = getelementptr [4 x i8], ptr %.0.i231, i64 %i.alh ; 13 uses
  %i.alj = getelementptr [4 x i8], ptr %i.ali, i64 %i.alh ; 14 uses
  %.not307 = icmp eq i32 %.0219.lcssa, 0
  br i1 %.not307, label %.preheader261, label %.lr.ph295.preheader

.lr.ph295.preheader:                              ; preds = %._crit_edge290
  %wide.trip.count = zext i32 %.0219.lcssa to i64
  br label %.lr.ph295

.lr.ph289:                                        ; preds = %._crit_edge, %bb.cm
  %indvars.iv330 = phi i64 [ %indvars.iv.next331, %bb.cm ], [ 0, %._crit_edge ] ; 3 uses
  %.0213287 = phi ptr [ %i.ame, %bb.cm ], [ %i.aig, %._crit_edge ] ; 4 uses
  %.0214286 = phi i32 [ %.2216, %bb.cm ], [ 0, %._crit_edge ]
  %i.alk = getelementptr inbounds nuw i8, ptr %.0213287, i64 120
  %i.all = trunc nuw nsw i64 %indvars.iv330 to i32
  store i32 %i.all, ptr %i.alk, align 8, !tbaa !62
  %i.alm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv330
  store ptr %.0213287, ptr %i.alm, align 8, !tbaa !57
  %i.aln = getelementptr inbounds nuw i8, ptr %.0213287, i64 16
  %i.alo = load ptr, ptr %i.aln, align 8, !tbaa !52 ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cl, %.lr.ph289
  %.1215 = phi i32 [ %.0214286, %.lr.ph289 ], [ %.2216, %bb.cl ] ; 5 uses
  %.0212 = phi ptr [ %i.alo, %.lr.ph289 ], [ %i.amc, %bb.cl ] ; 4 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %.0212, i64 40 ; 2 uses
  %i.alq = load i32, ptr %i.alp, align 8, !tbaa !65
  %i.alr = icmp slt i32 %i.alq, 0
  br i1 %i.alr, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  store i32 %.1215, ptr %i.alp, align 8, !tbaa !65
  %i.als = add nsw i32 %.1215, 1                  ; 2 uses
  %i.alt = sext i32 %.1215 to i64
  %i.alu = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.alt
  store ptr %.0212, ptr %i.alu, align 8, !tbaa !196
  %i.alv = getelementptr inbounds nuw i8, ptr %.0212, i64 32
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !47 ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 40
  store i32 %i.als, ptr %i.alx, align 8, !tbaa !65
  %i.aly = add nsw i32 %.1215, 2
  %i.alz = sext i32 %i.als to i64
  %i.ama = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.alz
  store ptr %i.alw, ptr %i.ama, align 8, !tbaa !196
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.2216 = phi i32 [ %i.aly, %bb.ck ], [ %.1215, %bb.cj ] ; 3 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %.0212, i64 8
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !55 ; 2 uses
  %.not226 = icmp eq ptr %i.amc, %i.alo
  br i1 %.not226, label %bb.cm, label %bb.cj, !llvm.loop !165

bb.cm:                                            ; preds = %bb.cl
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1 ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %.0213287, i64 8
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !28 ; 2 uses
  %.not225 = icmp eq ptr %i.ame, %i.at
  br i1 %.not225, label %._crit_edge290.loopexit, label %.lr.ph289, !llvm.loop !166

.preheader261:                                    ; preds = %.lr.ph295, %._crit_edge290
  %i.amf = icmp samesign ult i32 %.0219.lcssa, %i.aio
  br i1 %i.amf, label %.lr.ph297.preheader, label %.preheader260

.lr.ph297.preheader:                              ; preds = %.preheader261
  %i.amg = zext nneg i32 %.0219.lcssa to i64      ; 6 uses
  %i.amh = sub nsw i64 %i.alh, %i.amg             ; 3 uses
  %min.iters.check = icmp ult i64 %i.amh, 64
  br i1 %min.iters.check, label %.lr.ph297.preheader616, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph297.preheader
  %i.ami = shl nuw nsw i64 %i.amg, 2              ; 3 uses
  %i.amj = getelementptr i8, ptr %i.alc, i64 %i.ami ; 5 uses
  %i.amk = lshr i32 %i.ain, 2
  %i.aml = and i32 %i.amk, 536870911
  %i.amm = zext nneg i32 %i.aml to i64            ; 3 uses
  %i.amn = shl nuw nsw i64 %i.amm, 4              ; 3 uses
  %i.amo = getelementptr i8, ptr %i.alc, i64 %i.amn ; 5 uses
  %i.amp = getelementptr i8, ptr %.0.i231, i64 %i.amn
  %i.amq = getelementptr i8, ptr %i.amp, i64 %i.ami ; 3 uses
  %i.amr = shl nuw nsw i64 %i.amm, 5              ; 2 uses
  %i.ams = getelementptr i8, ptr %.0.i231, i64 %i.amr
  %i.amt = getelementptr i8, ptr %i.ams, i64 %i.ami ; 4 uses
  %i.amu = mul nuw nsw i64 %i.amm, 48
  %i.amv = getelementptr i8, ptr %.0.i231, i64 %i.amu ; 4 uses
  %i.amw = getelementptr i8, ptr %i.alc, i64 4    ; 3 uses
  %i.amx = getelementptr i8, ptr %.0.i231, i64 %i.amn
  %i.amy = getelementptr i8, ptr %i.amx, i64 4    ; 3 uses
  %i.amz = getelementptr i8, ptr %.0.i231, i64 %i.amr
  %i.ana = getelementptr i8, ptr %i.amz, i64 4    ; 2 uses
  %bound0 = icmp ult ptr %i.amj, %i.alj
  %bound1 = icmp ult ptr %i.amq, %i.amo
  %found.conflict = and i1 %bound0, %bound1
  %bound0492 = icmp ult ptr %i.amj, %i.amv
  %bound1493 = icmp ult ptr %i.amt, %i.amo
  %found.conflict494 = and i1 %bound0492, %bound1493
  %conflict.rdx = or i1 %found.conflict, %found.conflict494
  %bound0495 = icmp ult ptr %i.amj, %i.amw
  %bound1496 = icmp ugt ptr %i.amo, %i.alc
  %found.conflict501 = and i1 %bound0495, %bound1496
  %conflict.rdx502 = or i1 %conflict.rdx, %found.conflict501
  %bound0503 = icmp ult ptr %i.amj, %i.amy
  %bound1504 = icmp ult ptr %i.ali, %i.amo
  %found.conflict505 = and i1 %bound0503, %bound1504
  %conflict.rdx506 = or i1 %conflict.rdx502, %found.conflict505
  %bound0507 = icmp ult ptr %i.amj, %i.ana
  %bound1508 = icmp ult ptr %i.alj, %i.amo
  %found.conflict509 = and i1 %bound0507, %bound1508
  %conflict.rdx510 = or i1 %conflict.rdx506, %found.conflict509
  %bound0511 = icmp ult ptr %i.amq, %i.amw
  %bound1512 = icmp ugt ptr %i.alj, %i.alc
  %found.conflict513 = and i1 %bound0511, %bound1512
  %conflict.rdx514 = or i1 %conflict.rdx510, %found.conflict513
  %bound0515 = icmp ult ptr %i.amq, %i.amy
  %bound1516 = icmp ult ptr %i.ali, %i.alj
  %found.conflict517 = and i1 %bound0515, %bound1516
  %conflict.rdx518 = or i1 %conflict.rdx514, %found.conflict517
  %bound0519 = icmp ult ptr %i.amt, %i.amw
  %bound1520 = icmp ugt ptr %i.amv, %i.alc
  %found.conflict521 = and i1 %bound0519, %bound1520
  %conflict.rdx522 = or i1 %conflict.rdx518, %found.conflict521
  %bound0523 = icmp ult ptr %i.amt, %i.amy
  %bound1524 = icmp ult ptr %i.ali, %i.amv
  %found.conflict525 = and i1 %bound0523, %bound1524
  %conflict.rdx526 = or i1 %conflict.rdx522, %found.conflict525
  %bound0527 = icmp ult ptr %i.amt, %i.ana
  %bound1528 = icmp ult ptr %i.alj, %i.amv
  %found.conflict529 = and i1 %bound0527, %bound1528
  %conflict.rdx530 = or i1 %conflict.rdx526, %found.conflict529
  br i1 %conflict.rdx530, label %.lr.ph297.preheader616, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.amh, -8                     ; 3 uses
  %i.anb = add nsw i64 %n.vec, %i.amg
  %i.anc = load float, ptr %i.alc, align 4, !tbaa !23, !alias.scope !215
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.anc, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.and = load float, ptr %i.ali, align 4, !tbaa !23, !alias.scope !216
  %broadcast.splatinsert533 = insertelement <4 x float> poison, float %i.and, i64 0
  %broadcast.splat534 = shufflevector <4 x float> %broadcast.splatinsert533, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ane = add nuw i64 %index, %i.amg             ; 3 uses
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %i.ane ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 16
  store <4 x float> %broadcast.splat, ptr %i.anf, align 4, !tbaa !23, !alias.scope !217, !noalias !218
  store <4 x float> %broadcast.splat, ptr %i.ang, align 4, !tbaa !23, !alias.scope !217, !noalias !218
  %i.anh = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %i.ane ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 16
  store <4 x float> %broadcast.splat534, ptr %i.anh, align 4, !tbaa !23, !alias.scope !219, !noalias !220
  store <4 x float> %broadcast.splat534, ptr %i.ani, align 4, !tbaa !23, !alias.scope !219, !noalias !220
  %4 = load float, ptr %i.alj, align 4, !tbaa !23, !alias.scope !221
  %broadcast.splatinsert524 = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat525 = shufflevector <4 x float> %broadcast.splatinsert524, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %i.ane ; 2 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 16
  store <4 x float> %broadcast.splat525, ptr %i.anj, align 4, !tbaa !23, !alias.scope !222, !noalias !223
  store <4 x float> %broadcast.splat525, ptr %i.ank, align 4, !tbaa !23, !alias.scope !222, !noalias !223
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.anl = icmp eq i64 %index.next, %n.vec
  br i1 %i.anl, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.amh, %n.vec
  br i1 %cmp.n, label %.preheader260, label %.lr.ph297.preheader616

.lr.ph297.preheader616:                           ; preds = %vector.memcheck, %.lr.ph297.preheader, %middle.block
  %indvars.iv336.ph = phi i64 [ %i.amg, %vector.memcheck ], [ %i.amg, %.lr.ph297.preheader ], [ %i.anb, %middle.block ] ; 7 uses
  %xtraiter644 = and i64 %indvars.iv336.ph, 1
  %lcmp.mod645.not = icmp eq i64 %xtraiter644, 0
  br i1 %lcmp.mod645.not, label %.lr.ph297.prol.loopexit, label %.lr.ph297.prol

.lr.ph297.prol:                                   ; preds = %.lr.ph297.preheader616
  %i.anm = load float, ptr %i.alc, align 4, !tbaa !23
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %indvars.iv336.ph
  store float %i.anm, ptr %i.ann, align 4, !tbaa !23
  %i.ano = load float, ptr %i.ali, align 4, !tbaa !23
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %indvars.iv336.ph
  store float %i.ano, ptr %i.anp, align 4, !tbaa !23
  %i.anq = load float, ptr %i.alj, align 4, !tbaa !23
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %indvars.iv336.ph
  store float %i.anq, ptr %i.anr, align 4, !tbaa !23
  %indvars.iv.next337.prol = add nuw nsw i64 %indvars.iv336.ph, 1
  br label %.lr.ph297.prol.loopexit

.lr.ph297.prol.loopexit:                          ; preds = %.lr.ph297.prol, %.lr.ph297.preheader616
  %indvars.iv336.unr = phi i64 [ %indvars.iv336.ph, %.lr.ph297.preheader616 ], [ %indvars.iv.next337.prol, %.lr.ph297.prol ]
  %i.ans = add nsw i64 %i.alh, -1
  %i.ant = icmp eq i64 %indvars.iv336.ph, %i.ans
  br i1 %i.ant, label %.preheader260, label %.lr.ph297

.lr.ph295:                                        ; preds = %.lr.ph295.preheader, %.lr.ph295
  %indvars.iv333 = phi i64 [ 0, %.lr.ph295.preheader ], [ %indvars.iv.next334, %.lr.ph295 ] ; 7 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.akk, i64 %indvars.iv333
  store i8 0, ptr %i.anu, align 1, !tbaa !78
  %i.anv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv333
  %i.anw = load ptr, ptr %i.anv, align 8, !tbaa !212 ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.anw, i64 32
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.any = getelementptr inbounds nuw [12 x i8], ptr %.0.i229, i64 %indvars.iv333 ; 2 uses
  %i.anz = load <2 x float>, ptr %i.anx, align 8, !tbaa !23 ; 3 uses
  store <2 x float> %i.anz, ptr %i.any, align 4, !tbaa !23
  %.sroa.6.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.any, i64 8
  store float %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx47, align 4, !tbaa !23
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %indvars.iv333
  %i.aob = extractelement <2 x float> %i.anz, i64 0
  store float %i.aob, ptr %i.aoa, align 4, !tbaa !23
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %indvars.iv333
  %i.aod = extractelement <2 x float> %i.anz, i64 1
  store float %i.aod, ptr %i.aoc, align 4, !tbaa !23
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %indvars.iv333
  store float %.sroa.6.0.copyload, ptr %i.aoe, align 4, !tbaa !23
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next334, %wide.trip.count
  br i1 %exitcond.not, label %.preheader261, label %.lr.ph295, !llvm.loop !175

.preheader260:                                    ; preds = %.lr.ph297.prol.loopexit, %.lr.ph297, %middle.block, %.preheader261
  %i.aof = icmp sgt i32 %.0214.lcssa, 0
  br i1 %i.aof, label %.lr.ph299.preheader, label %._crit_edge300

.lr.ph299.preheader:                              ; preds = %.preheader260
  %wide.trip.count344 = zext nneg i32 %.0214.lcssa to i64
  br label %.lr.ph299

.lr.ph297:                                        ; preds = %.lr.ph297.prol.loopexit, %.lr.ph297
  %indvars.iv336 = phi i64 [ %indvars.iv.next337.1, %.lr.ph297 ], [ %indvars.iv336.unr, %.lr.ph297.prol.loopexit ] ; 5 uses
  %i.aog = load float, ptr %i.alc, align 4, !tbaa !23
  %i.aoh = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %indvars.iv336
  store float %i.aog, ptr %i.aoh, align 4, !tbaa !23
  %i.aoi = load float, ptr %i.ali, align 4, !tbaa !23
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %indvars.iv336
  store float %i.aoi, ptr %i.aoj, align 4, !tbaa !23
  %i.aok = load float, ptr %i.alj, align 4, !tbaa !23
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %indvars.iv336
  store float %i.aok, ptr %i.aol, align 4, !tbaa !23
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 3 uses
  %i.aom = load float, ptr %i.alc, align 4, !tbaa !23
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %indvars.iv.next337
  store float %i.aom, ptr %i.aon, align 4, !tbaa !23
  %i.aoo = load float, ptr %i.ali, align 4, !tbaa !23
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %indvars.iv.next337
  store float %i.aoo, ptr %i.aop, align 4, !tbaa !23
  %i.aoq = load float, ptr %i.alj, align 4, !tbaa !23
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %indvars.iv.next337
  store float %i.aoq, ptr %i.aor, align 4, !tbaa !23
  %indvars.iv.next337.1 = add nuw nsw i64 %indvars.iv336, 2 ; 2 uses
  %exitcond340.not.1 = icmp eq i64 %indvars.iv.next337.1, %i.alh
  br i1 %exitcond340.not.1, label %.preheader260, label %.lr.ph297, !llvm.loop !176

._crit_edge300:                                   ; preds = %.lr.ph299, %.preheader260
  %i.aos = zext nneg i32 %i.aiq to i64            ; 2 uses
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %.0.i232, i64 %i.aos ; 2 uses
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %i.aot, i64 %i.aos
  %.not308 = icmp eq i32 %.0217.lcssa, 0
  br i1 %.not308, label %.preheader, label %.lr.ph303.preheader

.lr.ph303.preheader:                              ; preds = %._crit_edge300
  %wide.trip.count349 = zext i32 %.0217.lcssa to i64
  br label %.lr.ph303

.lr.ph299:                                        ; preds = %.lr.ph299.preheader, %.lr.ph299
  %indvars.iv341 = phi i64 [ 0, %.lr.ph299.preheader ], [ %indvars.iv.next342, %.lr.ph299 ] ; 4 uses
  %i.aov = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv341
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !196 ; 4 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 8
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !55
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 40
  %i.apa = load i32, ptr %i.aoz, align 8, !tbaa !65
  %i.apb = trunc i32 %i.apa to i8
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %.0.i228, i64 %indvars.iv341 ; 4 uses
  store i8 %i.apb, ptr %i.apc, align 1, !tbaa !80
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aow, i64 32
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !47
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 40
  %i.apg = load i32, ptr %i.apf, align 8, !tbaa !65
  %i.aph = trunc i32 %i.apg to i8
  %i.api = getelementptr inbounds nuw i8, ptr %i.apc, i64 1
  store i8 %i.aph, ptr %i.api, align 1, !tbaa !81
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aow, i64 24
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !56
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 120
  %i.apm = load i32, ptr %i.apl, align 8, !tbaa !62
  %i.apn = trunc i32 %i.apm to i8
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apc, i64 3
  store i8 %i.apn, ptr %i.apo, align 1, !tbaa !224
  %i.app = getelementptr inbounds nuw i8, ptr %i.aow, i64 16
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !58
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 36
  %i.aps = load i32, ptr %i.apr, align 4, !tbaa !194 ; 2 uses
  %i.apt = trunc i32 %i.aps to i8
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apc, i64 2
  store i8 %i.apt, ptr %i.apu, align 1, !tbaa !82
  %i.apv = trunc i64 %indvars.iv341 to i8
  %i.apw = sext i32 %i.aps to i64
  %i.apx = getelementptr inbounds i8, ptr %i.akk, i64 %i.apw
  store i8 %i.apv, ptr %i.apx, align 1, !tbaa !78
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 2 uses
  %exitcond345.not = icmp eq i64 %indvars.iv.next342, %wide.trip.count344
  br i1 %exitcond345.not, label %._crit_edge300, label %.lr.ph299, !llvm.loop !177

.preheader:                                       ; preds = %.lr.ph303, %._crit_edge300
  %i.apy = icmp samesign ult i32 %.0217.lcssa, %i.aiq
  br i1 %i.apy, label %.lr.ph305.preheader, label %._crit_edge306

.lr.ph305.preheader:                              ; preds = %.preheader
  %i.apz = zext nneg i32 %.0217.lcssa to i64
  %i.aqa = shl nuw nsw i64 %i.apz, 2              ; 3 uses
  %scevgep = getelementptr i8, ptr %i.alg, i64 %i.aqa
  %i.aqb = xor i32 %.0217.lcssa, -1
  %i.aqc = add nsw i32 %i.aiq, %i.aqb
  %i.aqd = zext i32 %i.aqc to i64
  %i.aqe = shl nuw nsw i64 %i.aqd, 2
  %i.aqf = add nuw nsw i64 %i.aqe, 4              ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.aqf, i1 false), !tbaa !23
  %i.aqg = lshr i32 %i.aip, 2
  %i.aqh = zext nneg i32 %i.aqg to i64            ; 2 uses
  %i.aqi = shl nuw nsw i64 %i.aqh, 4
  %i.aqj = getelementptr i8, ptr %i.alg, i64 %i.aqi
  %scevgep351 = getelementptr i8, ptr %i.aqj, i64 %i.aqa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep351, i8 0, i64 %i.aqf, i1 false), !tbaa !23
  %i.aqk = shl nuw nsw i64 %i.aqh, 5
  %i.aql = getelementptr i8, ptr %i.alg, i64 %i.aqk
  %scevgep352 = getelementptr i8, ptr %i.aql, i64 %i.aqa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep352, i8 0, i64 %i.aqf, i1 false), !tbaa !23
  br label %._crit_edge306

.lr.ph303:                                        ; preds = %.lr.ph303.preheader, %.lr.ph303
  %indvars.iv346 = phi i64 [ 0, %.lr.ph303.preheader ], [ %indvars.iv.next347, %.lr.ph303 ] ; 7 uses
  %i.aqm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv346
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !57 ; 4 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 16
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !52
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 40
  %i.aqr = load i32, ptr %i.aqq, align 8, !tbaa !65
  %i.aqs = trunc i32 %i.aqr to i8
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.akr, i64 %indvars.iv346
  store i8 %i.aqs, ptr %i.aqt, align 1, !tbaa !84
  %i.aqu = getelementptr inbounds nuw [16 x i8], ptr %i.aky, i64 %indvars.iv346
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqn, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aqu, ptr noundef nonnull align 8 dereferenceable(16) %i.aqv, i64 16, i1 false), !tbaa.struct !85
  %.sroa.0.0.copyload = load float, ptr %i.aqv, align 8, !tbaa !23
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqn, i64 36
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !23
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqn, i64 40
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !23
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %i.alg, i64 %indvars.iv346
  store float %.sroa.0.0.copyload, ptr %i.aqw, align 4, !tbaa !23
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %i.aot, i64 %indvars.iv346
  store float %.sroa.4.0.copyload, ptr %i.aqx, align 4, !tbaa !23
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %i.aou, i64 %indvars.iv346
  store float %.sroa.5.0.copyload, ptr %i.aqy, align 4, !tbaa !23
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %exitcond350.not = icmp eq i64 %indvars.iv.next347, %wide.trip.count349
  br i1 %exitcond350.not, label %.preheader, label %.lr.ph303, !llvm.loop !178

._crit_edge306:                                   ; preds = %.lr.ph305.preheader, %.preheader
  call void @b3Free(ptr noundef nonnull %i.ao, i64 noundef %i.an) #24
end_hunk_0
begin_hunk_1_@b3CloneAndTransformHull:bb.a
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !81
  store i8 %i.ca, ptr %i.bv, align 1, !tbaa !78
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i299, i64 %indvars.iv396
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !78
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  store i8 %i.ch, ptr %i.cc, align 1, !tbaa !78
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i299, i64 %indvars.iv396
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !78
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !81
  store i8 %i.co, ptr %i.cj, align 1, !tbaa !78
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i299, i64 %indvars.iv396
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 3 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !78
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !81
  store i8 %i.cv, ptr %i.cq, align 1, !tbaa !78
  %indvars.iv.next397.3 = add nuw nsw i64 %indvars.iv396, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph374, !llvm.loop !259

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph374
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph374.epil.preheader

.lr.ph374.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph374.preheader
  %indvars.iv396.epil.init = phi i64 [ 0, %.lr.ph374.preheader ], [ %indvars.iv.next397.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod585 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod585)
  br label %.lr.ph374.epil

.lr.ph374.epil:                                   ; preds = %.lr.ph374.epil, %.lr.ph374.epil.preheader
  %indvars.iv396.epil = phi i64 [ %indvars.iv396.epil.init, %.lr.ph374.epil.preheader ], [ %indvars.iv.next397.epil, %.lr.ph374.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph374.epil.preheader ], [ %epil.iter.next, %.lr.ph374.epil ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i299, i64 %indvars.iv396.epil ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !78
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !81
  store i8 %i.db, ptr %i.cw, align 1, !tbaa !78
  %indvars.iv.next397.epil = add nuw nsw i64 %indvars.iv396.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph374.epil, !llvm.loop !260

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph374.epil, %._crit_edge, %bb.b
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dd = load <2 x float>, ptr %i.dc, align 4    ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.df = load <2 x float>, ptr %i.de, align 4    ; 6 uses
  %i.dg = fmul <2 x float> %i.dd, %i.dd           ; 3 uses
  %foldExtExtBinop537 = fmul <2 x float> %i.df, %i.df
  %shift539 = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop540 = fmul <2 x float> %i.dd, %shift539 ; 2 uses
  %i.dh = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.di = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x float> %i.dh, %i.di           ; 2 uses
  %i.dk = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dl = fmul <2 x float> %i.dd, %i.dk           ; 2 uses
  %shift542 = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop543 = fmul <2 x float> %i.df, %shift542 ; 2 uses
  %i.dm = shufflevector <2 x float> %foldExtExtBinop537, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fadd <2 x float> %i.dg, %i.dm
  %i.do = fmul <2 x float> %i.dn, splat (float 2.000000e+00)
  %foldExtExtBinop545 = fadd <2 x float> %foldExtExtBinop540, %foldExtExtBinop543
  %foldExtExtBinop547 = fsub <2 x float> %foldExtExtBinop540, %foldExtExtBinop543
  %i.dp = shufflevector <2 x float> %foldExtExtBinop545, <2 x float> %foldExtExtBinop547, <2 x i32> <i32 0, i32 2>
  %i.dq = fmul <2 x float> %i.dp, splat (float 2.000000e+00)
  %i.dr = fsub <2 x float> splat (float 1.000000e+00), %i.do
  %i.ds = fsub <2 x float> %i.dj, %i.dl           ; 2 uses
  %i.dt = fadd <2 x float> %i.dj, %i.dl           ; 2 uses
  %i.du = shufflevector <2 x float> %i.ds, <2 x float> %i.dt, <2 x i32> <i32 1, i32 2>
  %i.dv = fmul <2 x float> %i.du, splat (float 2.000000e+00)
  %i.dw = shufflevector <2 x float> %i.ds, <2 x float> %i.dt, <2 x i32> <i32 0, i32 3>
  %i.dx = fmul <2 x float> %i.dw, splat (float 2.000000e+00)
  %shift549 = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop550 = fadd <2 x float> %i.dg, %shift549
  %i.dy = extractelement <2 x float> %foldExtExtBinop550, i64 0
  %i.dz = fmul float %i.dy, 2.000000e+00
  %i.ea = fsub float 1.000000e+00, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !19 ; 2 uses
  %i.ed = icmp eq i32 %i.ec, 0
  %i.ee = sext i32 %i.ec to i64
  %i.ef = add nsw i64 %i.ee, %i.aa
  %i.eg = inttoptr i64 %i.ef to ptr               ; 3 uses
  %.0.i300 = select i1 %i.ed, ptr null, ptr %i.eg ; 5 uses
  %i.eh = add i32 %i.am, 3
  %i.ei = and i32 %i.eh, -4                       ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !72 ; 2 uses
  %i.el = icmp eq i32 %i.ek, 0
  %i.em = sext i32 %i.ek to i64
  %i.en = add nsw i64 %i.em, %i.aa
  %i.eo = inttoptr i64 %i.en to ptr               ; 16 uses
  %.0.i301 = select i1 %i.el, ptr null, ptr %i.eo ; 6 uses
  %i.ep = sext i32 %i.ei to i64                   ; 8 uses
  %i.eq = getelementptr [4 x i8], ptr %.0.i301, i64 %i.ep ; 13 uses
  %i.er = getelementptr [4 x i8], ptr %i.eq, i64 %i.ep ; 15 uses
  %i.es = icmp sgt i32 %i.am, 0
  br i1 %i.es, label %.lr.ph377, label %.preheader360

.lr.ph377:                                        ; preds = %.loopexit
  %.sroa.0133.0.copyload = load <2 x float>, ptr %1, align 8
  %.sroa.2134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2134.0.copyload = load float, ptr %.sroa.2134.0..sroa_idx, align 8
  %i.et = shufflevector <2 x float> %.sroa.0133.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %wide.trip.count404 = zext nneg i32 %i.am to i64
  br label %bb.g

.preheader360:                                    ; preds = %bb.g, %.loopexit
  %i.eu = icmp slt i32 %i.am, %i.ei
  br i1 %i.eu, label %.lr.ph379.preheader, label %._crit_edge380

.lr.ph379.preheader:                              ; preds = %.preheader360
  %i.ev = sext i32 %i.am to i64                   ; 6 uses
  %i.ew = sub nsw i64 %i.ep, %i.ev                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ew, 68
  br i1 %min.iters.check, label %.lr.ph379.preheader584, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph379.preheader
  %i.ex = shl nsw i64 %i.ev, 2                    ; 3 uses
  %i.ey = getelementptr i8, ptr %i.eo, i64 %i.ex  ; 5 uses
  %i.ez = shl nsw i64 %i.ep, 2                    ; 3 uses
  %i.fa = getelementptr i8, ptr %i.eo, i64 %i.ez  ; 5 uses
  %i.fb = getelementptr i8, ptr %.0.i301, i64 %i.ex
  %i.fc = getelementptr i8, ptr %i.fb, i64 %i.ez  ; 4 uses
  %i.fd = shl nsw i64 %i.ep, 3                    ; 2 uses
  %i.fe = getelementptr i8, ptr %.0.i301, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.ex  ; 5 uses
  %i.fg = mul nsw i64 %i.ep, 12
  %i.fh = getelementptr i8, ptr %.0.i301, i64 %i.fg ; 5 uses
  %i.fi = getelementptr i8, ptr %i.eo, i64 4      ; 3 uses
  %i.fj = getelementptr i8, ptr %.0.i301, i64 %i.ez
  %i.fk = getelementptr i8, ptr %i.fj, i64 4      ; 3 uses
  %i.fl = getelementptr i8, ptr %.0.i301, i64 %i.fd
  %i.fm = getelementptr i8, ptr %i.fl, i64 4      ; 2 uses
  %bound0 = icmp ult ptr %i.ey, %i.er
  %bound1 = icmp ult ptr %i.fc, %i.fa
  %found.conflict = and i1 %bound0, %bound1
  %bound0493 = icmp ult ptr %i.ey, %i.fh
  %bound1494 = icmp ult ptr %i.ff, %i.fa
  %found.conflict495 = and i1 %bound0493, %bound1494
  %conflict.rdx = or i1 %found.conflict, %found.conflict495
  %bound0496 = icmp ult ptr %i.ey, %i.fi
  %bound1497 = icmp ugt ptr %i.fa, %i.eo
  %found.conflict498 = and i1 %bound0496, %bound1497
  %conflict.rdx499 = or i1 %conflict.rdx, %found.conflict498
  %bound0500 = icmp ult ptr %i.ey, %i.fk
  %bound1501 = icmp ult ptr %i.eq, %i.fa
  %found.conflict502 = and i1 %bound0500, %bound1501
  %conflict.rdx503 = or i1 %conflict.rdx499, %found.conflict502
  %bound0504 = icmp ult ptr %i.ey, %i.fm
  %bound1505 = icmp ult ptr %i.er, %i.fa
  %found.conflict506 = and i1 %bound0504, %bound1505
  %conflict.rdx507 = or i1 %conflict.rdx503, %found.conflict506
  %bound0508 = icmp ult ptr %i.fc, %i.fh
  %bound1509 = icmp ult ptr %i.ff, %i.er
  %found.conflict510 = and i1 %bound0508, %bound1509
  %conflict.rdx511 = or i1 %conflict.rdx507, %found.conflict510
  %bound0512 = icmp ult ptr %i.fc, %i.fi
  %bound1513 = icmp ugt ptr %i.er, %i.eo
  %found.conflict514 = and i1 %bound0512, %bound1513
  %conflict.rdx515 = or i1 %conflict.rdx511, %found.conflict514
  %bound0516 = icmp ult ptr %i.fc, %i.fk
  %bound1517 = icmp ult ptr %i.eq, %i.er
  %found.conflict518 = and i1 %bound0516, %bound1517
  %conflict.rdx519 = or i1 %conflict.rdx515, %found.conflict518
  %bound0520 = icmp ult ptr %i.ff, %i.fi
  %bound1521 = icmp ugt ptr %i.fh, %i.eo
  %found.conflict522 = and i1 %bound0520, %bound1521
  %conflict.rdx523 = or i1 %conflict.rdx519, %found.conflict522
  %bound0524 = icmp ult ptr %i.ff, %i.fk
  %bound1525 = icmp ult ptr %i.eq, %i.fh
  %found.conflict526 = and i1 %bound0524, %bound1525
  %conflict.rdx527 = or i1 %conflict.rdx523, %found.conflict526
  %bound0528 = icmp ult ptr %i.ff, %i.fm
  %bound1529 = icmp ult ptr %i.er, %i.fh
  %found.conflict530 = and i1 %bound0528, %bound1529
  %conflict.rdx531 = or i1 %conflict.rdx527, %found.conflict530
  br i1 %conflict.rdx531, label %.lr.ph379.preheader584, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ew, -8                      ; 3 uses
  %i.fn = add nsw i64 %n.vec, %i.ev
  %i.fo = load float, ptr %i.eo, align 4, !tbaa !23, !alias.scope !274
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fo, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fp = load float, ptr %i.eq, align 4, !tbaa !23, !alias.scope !275
  %broadcast.splatinsert534 = insertelement <4 x float> poison, float %i.fp, i64 0
  %broadcast.splat535 = shufflevector <4 x float> %broadcast.splatinsert534, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fq = add i64 %index, %i.ev                   ; 3 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.fq ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store <4 x float> %broadcast.splat, ptr %i.fr, align 4, !tbaa !23, !alias.scope !276, !noalias !277
  store <4 x float> %broadcast.splat, ptr %i.fs, align 4, !tbaa !23, !alias.scope !276, !noalias !277
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.fq ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store <4 x float> %broadcast.splat535, ptr %i.ft, align 4, !tbaa !23, !alias.scope !278, !noalias !279
  store <4 x float> %broadcast.splat535, ptr %i.fu, align 4, !tbaa !23, !alias.scope !278, !noalias !279
  %4 = load float, ptr %i.er, align 4, !tbaa !23, !alias.scope !280
  %broadcast.splatinsert533 = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat534 = shufflevector <4 x float> %broadcast.splatinsert533, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.fq ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store <4 x float> %broadcast.splat534, ptr %i.fv, align 4, !tbaa !23, !alias.scope !281, !noalias !282
  store <4 x float> %broadcast.splat534, ptr %i.fw, align 4, !tbaa !23, !alias.scope !281, !noalias !282
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fx = icmp eq i64 %index.next, %n.vec
  br i1 %i.fx, label %middle.block, label %vector.body, !llvm.loop !268

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ew, %n.vec
  br i1 %cmp.n, label %._crit_edge380, label %.lr.ph379.preheader584

.lr.ph379.preheader584:                           ; preds = %vector.memcheck, %.lr.ph379.preheader, %middle.block
  %indvars.iv406.ph = phi i64 [ %i.ev, %vector.memcheck ], [ %i.ev, %.lr.ph379.preheader ], [ %i.fn, %middle.block ] ; 7 uses
  %xtraiter586 = and i64 %indvars.iv406.ph, 1
  %lcmp.mod587.not = icmp eq i64 %xtraiter586, 0
  br i1 %lcmp.mod587.not, label %.lr.ph379.prol.loopexit, label %.lr.ph379.prol

.lr.ph379.prol:                                   ; preds = %.lr.ph379.preheader584
  %i.fy = load float, ptr %i.eo, align 4, !tbaa !23
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %indvars.iv406.ph
  store float %i.fy, ptr %i.fz, align 4, !tbaa !23
  %i.ga = load float, ptr %i.eq, align 4, !tbaa !23
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %indvars.iv406.ph
  store float %i.ga, ptr %i.gb, align 4, !tbaa !23
  %i.gc = load float, ptr %i.er, align 4, !tbaa !23
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.er, i64 %indvars.iv406.ph
  store float %i.gc, ptr %i.gd, align 4, !tbaa !23
  %indvars.iv.next407.prol = add nsw i64 %indvars.iv406.ph, 1
  br label %.lr.ph379.prol.loopexit

.lr.ph379.prol.loopexit:                          ; preds = %.lr.ph379.prol, %.lr.ph379.preheader584
  %indvars.iv406.unr = phi i64 [ %indvars.iv406.ph, %.lr.ph379.preheader584 ], [ %indvars.iv.next407.prol, %.lr.ph379.prol ]
  %i.ge = add nsw i64 %i.ep, -1
  %i.gf = icmp eq i64 %indvars.iv406.ph, %i.ge
  br i1 %i.gf, label %._crit_edge380, label %.lr.ph379

bb.g:                                             ; preds = %.lr.ph377, %bb.g
  %indvars.iv401 = phi i64 [ 0, %.lr.ph377 ], [ %indvars.iv.next402, %bb.g ] ; 5 uses
  %i.gg = getelementptr inbounds nuw [12 x i8], ptr %.0.i300, i64 %indvars.iv401 ; 3 uses
  %.sroa.0147.0.copyload = load <2 x float>, ptr %i.gg, align 4
  %.sroa.2148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  %.sroa.2148.0.copyload = load float, ptr %.sroa.2148.0..sroa_idx, align 4
  %i.gh = fmul float %i.w, %.sroa.2148.0.copyload ; 2 uses
  %i.gi = fmul float %i.ea, %i.gh
  %i.gj = fmul <2 x float> %i.u, %.sroa.0147.0.copyload ; 3 uses
  %i.gk = fmul <2 x float> %i.dq, %i.gj
  %i.gl = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gm = fmul <2 x float> %i.dr, %i.gl
  %i.gn = fadd <2 x float> %i.gk, %i.gm
  %i.go = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = fmul <2 x float> %i.dx, %i.gp
  %i.gr = fadd <2 x float> %i.gq, %i.gn
  %i.gs = fmul <2 x float> %i.dv, %i.gj           ; 2 uses
  %shift552 = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop553 = fadd <2 x float> %i.gs, %shift552
  %i.gt = extractelement <2 x float> %foldExtExtBinop553, i64 0
  %i.gu = fadd float %i.gi, %i.gt
  %i.gv = fadd <2 x float> %i.et, %i.gr           ; 3 uses
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gx = fadd float %.sroa.2134.0.copyload, %i.gu ; 2 uses
  store <2 x float> %i.gw, ptr %i.gg, align 4, !tbaa !23
  store float %i.gx, ptr %.sroa.2148.0..sroa_idx, align 4, !tbaa !23
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv401
  %i.gz = extractelement <2 x float> %i.gv, i64 1
  store float %i.gz, ptr %i.gy, align 4, !tbaa !23
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv401
  %i.hb = extractelement <2 x float> %i.gv, i64 0
  store float %i.hb, ptr %i.ha, align 4, !tbaa !23
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv401
  store float %i.gx, ptr %i.hc, align 4, !tbaa !23
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 2 uses
  %exitcond405.not = icmp eq i64 %indvars.iv.next402, %wide.trip.count404
  br i1 %exitcond405.not, label %.preheader360, label %bb.g, !llvm.loop !269

._crit_edge380:                                   ; preds = %.lr.ph379.prol.loopexit, %.lr.ph379, %middle.block, %.preheader360
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !22 ; 2 uses
  %i.hf = icmp eq i32 %i.he, 0
  %i.hg = sext i32 %i.he to i64
  %i.hh = add nsw i64 %i.hg, %i.aa
  %i.hi = inttoptr i64 %i.hh to ptr
  %.0.i314 = select i1 %i.hf, ptr null, ptr %i.hi
  %i.hj = add i32 %i.ak, 3
  %i.hk = and i32 %i.hj, -4                       ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !73 ; 2 uses
  %i.hn = icmp eq i32 %i.hm, 0
  %i.ho = sext i32 %i.hm to i64
  %i.hp = add nsw i64 %i.ho, %i.aa
  %i.hq = inttoptr i64 %i.hp to ptr               ; 5 uses
  %.0.i315 = select i1 %i.hn, ptr null, ptr %i.hq
  %i.hr = sext i32 %i.hk to i64                   ; 4 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %.0.i315, i64 %i.hr ; 2 uses
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.hr
  %i.hu = icmp sgt i32 %i.ak, 0
  br i1 %i.hu, label %.lr.ph383.preheader, label %.preheader

.lr.ph383.preheader:                              ; preds = %._crit_edge380
  %wide.trip.count414 = zext nneg i32 %i.ak to i64
  br label %.lr.ph383

.lr.ph379:                                        ; preds = %.lr.ph379.prol.loopexit, %.lr.ph379
  %indvars.iv406 = phi i64 [ %indvars.iv.next407.1, %.lr.ph379 ], [ %indvars.iv406.unr, %.lr.ph379.prol.loopexit ] ; 5 uses
  %i.hv = load float, ptr %i.eo, align 4, !tbaa !23
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %indvars.iv406
  store float %i.hv, ptr %i.hw, align 4, !tbaa !23
  %i.hx = load float, ptr %i.eq, align 4, !tbaa !23
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %indvars.iv406
  store float %i.hx, ptr %i.hy, align 4, !tbaa !23
  %i.hz = load float, ptr %i.er, align 4, !tbaa !23
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.er, i64 %indvars.iv406
  store float %i.hz, ptr %i.ia, align 4, !tbaa !23
  %indvars.iv.next407 = add nsw i64 %indvars.iv406, 1 ; 3 uses
  %i.ib = load float, ptr %i.eo, align 4, !tbaa !23
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %indvars.iv.next407
  store float %i.ib, ptr %i.ic, align 4, !tbaa !23
  %i.id = load float, ptr %i.eq, align 4, !tbaa !23
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %indvars.iv.next407
  store float %i.id, ptr %i.ie, align 4, !tbaa !23
  %i.if = load float, ptr %i.er, align 4, !tbaa !23
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.er, i64 %indvars.iv.next407
  store float %i.if, ptr %i.ig, align 4, !tbaa !23
  %indvars.iv.next407.1 = add nsw i64 %indvars.iv406, 2 ; 2 uses
  %exitcond410.not.1 = icmp eq i64 %indvars.iv.next407.1, %i.ep
  br i1 %exitcond410.not.1, label %._crit_edge380, label %.lr.ph379, !llvm.loop !270

.preheader:                                       ; preds = %bb.i, %._crit_edge380
  %i.ih = icmp slt i32 %i.ak, %i.hk
  br i1 %i.ih, label %.lr.ph385.preheader, label %._crit_edge386

.lr.ph385.preheader:                              ; preds = %.preheader
  %i.ii = sext i32 %i.ak to i64                   ; 2 uses
  %i.ij = shl nsw i64 %i.ii, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.hq, i64 %i.ij
  %i.ik = xor i32 %i.ak, -1
  %i.il = add i32 %i.hk, %i.ik
  %i.im = zext i32 %i.il to i64
  %i.in = shl nuw nsw i64 %i.im, 2
  %i.io = add nuw nsw i64 %i.in, 4                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.io, i1 false), !tbaa !23
  %i.ip = add nsw i64 %i.ii, %i.hr
  %i.iq = shl nsw i64 %i.ip, 2
  %scevgep416 = getelementptr i8, ptr %i.hq, i64 %i.iq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep416, i8 0, i64 %i.io, i1 false), !tbaa !23
  %i.ir = shl nsw i64 %i.hr, 3
  %i.is = getelementptr i8, ptr %i.hq, i64 %i.ir
  %scevgep417 = getelementptr i8, ptr %i.is, i64 %i.ij
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep417, i8 0, i64 %i.io, i1 false), !tbaa !23
  br label %._crit_edge386

.lr.ph383:                                        ; preds = %.lr.ph383.preheader, %bb.i
  %indvars.iv411 = phi i64 [ 0, %.lr.ph383.preheader ], [ %indvars.iv.next412, %bb.i ] ; 6 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv411
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !84  ; 3 uses
  %i.iv = zext i8 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !82
  %i.iz = zext i8 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [12 x i8], ptr %.0.i300, i64 %i.iz ; 2 uses
  %.sroa.078.0.copyload = load <2 x float>, ptr %i.ja, align 4, !tbaa !23 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !23 ; 3 uses
  %i.jb = shufflevector <2 x float> %.sroa.078.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jc = insertelement <2 x float> %i.jb, float %.sroa.6.0.copyload, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph383
  %.0289 = phi i8 [ %i.iu, %.lr.ph383 ], [ %i.kl, %bb.h ]
  %.sroa.088.0 = phi <2 x float> [ zeroinitializer, %.lr.ph383 ], [ %i.kh, %bb.h ]
  %.sroa.099.0 = phi <2 x float> [ zeroinitializer, %.lr.ph383 ], [ %i.jx, %bb.h ]
  %.0288 = phi i32 [ 0, %.lr.ph383 ], [ %i.js, %bb.h ]
  %i.jd = phi <2 x float> [ zeroinitializer, %.lr.ph383 ], [ %i.kk, %bb.h ]
  %i.je = zext i8 %.0289 to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.je ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 1
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !81
  %i.ji = zext i8 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 2
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !82
  %i.jm = zext i8 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [12 x i8], ptr %.0.i300, i64 %i.jm ; 2 uses
  %.sroa.065.0.copyload = load <2 x float>, ptr %i.jn, align 4
  %.sroa.266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %.sroa.266.0.copyload = load float, ptr %.sroa.266.0..sroa_idx, align 4
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !82
  %i.jq = zext i8 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [12 x i8], ptr %.0.i300, i64 %i.jq ; 2 uses
  %.sroa.051.0.copyload = load <2 x float>, ptr %i.jr, align 4 ; 2 uses
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %.sroa.252.0.copyload = load float, ptr %.sroa.252.0..sroa_idx, align 4
  %i.js = add nuw nsw i32 %.0288, 1               ; 2 uses
  %foldExtExtBinop555 = fsub <2 x float> %.sroa.051.0.copyload, %.sroa.078.0.copyload ; 2 uses
  %i.jt = shufflevector <2 x float> %.sroa.051.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ju = insertelement <2 x float> %i.jt, float %.sroa.252.0.copyload, i64 1
  %i.jv = fsub <2 x float> %i.ju, %i.jc           ; 3 uses
  %i.jw = fsub <2 x float> %.sroa.065.0.copyload, %.sroa.078.0.copyload ; 5 uses
  %i.jx = fadd <2 x float> %.sroa.099.0, %i.jw    ; 2 uses
  %i.jy = extractelement <2 x float> %i.jv, i64 1
  %i.jz = shufflevector <2 x float> %i.jw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.fadd.v2f32
!18 = !{!17, !9, i64 100}
!19 = !{!17, !9, i64 108}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!17, !9, i64 120}
!22 = !{!17, !9, i64 124}
!23 = !{!13, !13, i64 0}
!24 = !{!"any pointer", !8, i64 0}
!25 = !{!"p1 _ZTS12b3QHListNode", !24, i64 0}
!26 = !{!"b3QHListNode", !25, i64 0, !25, i64 8}
!27 = !{!26, !25, i64 0}
!28 = !{!26, !25, i64 8}
!29 = !{!"p1 _ZTS8b3QHFace", !24, i64 0}
!30 = !{!"_Bool", !8, i64 0}
!31 = !{!"b3QHVertex", !26, i64 0, !29, i64 16, !14, i64 24, !9, i64 36, !30, i64 40}
!32 = !{!"p1 _ZTS12b3QHHalfEdge", !24, i64 0}
!33 = !{!"b3Plane", !14, i64 0, !13, i64 12}
!34 = !{!"p1 _ZTS10b3QHVertex", !24, i64 0}
!35 = !{!"b3QHFace", !26, i64 0, !32, i64 16, !9, i64 24, !13, i64 28, !33, i64 32, !14, i64 48, !13, i64 60, !31, i64 64, !34, i64 112, !9, i64 120, !30, i64 124}
!36 = !{!"any p2 pointer", !24, i64 0}
!37 = !{!"p2 _ZTS12b3QHHalfEdge", !36, i64 0}
!38 = !{!"p2 _ZTS8b3QHFace", !36, i64 0}
!39 = !{!"p1 _ZTS14b3HorizonFrame", !24, i64 0}
!40 = !{!"b3HullBuilder", !13, i64 0, !13, i64 4, !13, i64 8, !14, i64 12, !31, i64 24, !31, i64 72, !35, i64 120, !34, i64 248, !9, i64 256, !9, i64 260, !32, i64 264, !9, i64 272, !9, i64 276, !32, i64 280, !29, i64 288, !9, i64 296, !9, i64 300, !29, i64 304, !37, i64 312, !9, i64 320, !9, i64 324, !38, i64 328, !9, i64 336, !9, i64 340, !38, i64 344, !9, i64 352, !9, i64 356, !39, i64 360, !9, i64 368, !9, i64 372, !9, i64 376, !9, i64 380}
!41 = !{!40, !32, i64 264}
!42 = !{!40, !29, i64 288}
!43 = !{!40, !38, i64 344}
!44 = !{!40, !13, i64 8}
!45 = !{!9, !9, i64 0}
!46 = !{!"b3QHHalfEdge", !32, i64 0, !32, i64 8, !34, i64 16, !29, i64 24, !32, i64 32, !9, i64 40}
!47 = !{!46, !32, i64 32}
!48 = !{!31, !29, i64 16}
!49 = !{!35, !13, i64 60}
!50 = !{!35, !34, i64 112}
!51 = !{!35, !9, i64 24}
!52 = !{!35, !32, i64 16}
!53 = !{i8 0, i8 2}
!54 = !{}
!55 = !{!46, !32, i64 8}
!56 = !{!46, !29, i64 24}
!57 = !{!29, !29, i64 0}
!58 = !{!46, !34, i64 16}
!59 = !{!40, !29, i64 304}
!60 = !{!35, !25, i64 8}
!61 = !{!40, !9, i64 300}
!62 = !{!35, !9, i64 120}
!63 = !{!40, !32, i64 280}
!64 = !{!40, !9, i64 276}
!65 = !{!46, !9, i64 40}
!66 = !{!35, !13, i64 28}
!67 = !{!35, !30, i64 124}
!68 = !{!46, !32, i64 0}
!69 = !{!17, !9, i64 104}
!70 = !{!17, !9, i64 116}
!71 = !{!17, !9, i64 128}
!72 = !{!17, !9, i64 132}
!73 = !{!17, !9, i64 136}
!74 = !{!17, !9, i64 140}
!75 = !{!"llvm.loop.isvectorized", i32 1}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!"b3HullVertex", !8, i64 0}
!78 = !{!77, !8, i64 0}
!79 = !{!"b3HullHalfEdge", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3}
!80 = !{!79, !8, i64 0}
!81 = !{!79, !8, i64 1}
!82 = !{!79, !8, i64 2}
!83 = !{!"b3HullFace", !8, i64 0}
!84 = !{!83, !8, i64 0}
!85 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !23, i64 12, i64 4, !23}
!86 = !{!17, !12, i64 8}
!87 = !{!14, !13, i64 0}
!88 = !{!14, !13, i64 8}
!89 = !{!17, !13, i64 44}
!90 = !{!17, !13, i64 48}
!91 = !{!"p1 short", !24, i64 0}
!92 = !{!"", !12, i64 0, !12, i64 8, !24, i64 16, !91, i64 24}
!93 = !{!92, !91, i64 24}
!94 = !{!92, !12, i64 8}
!95 = !{!12, !12, i64 0}
!96 = !{!92, !24, i64 16}
!97 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!98 = !{!92, !12, i64 0}
!99 = !{!"", !24, i64 0, !91, i64 8, !91, i64 16, !12, i64 24}
!100 = !{!99, !91, i64 8}
!101 = !{!99, !91, i64 16}
!102 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!103 = !{!"short", !8, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!"p1 _ZTS10b3HullData", !24, i64 0}
!106 = !{!"", !105, i64 0, !9, i64 8}
!107 = !{!106, !105, i64 0}
!108 = !{!105, !105, i64 0}
!109 = !{i64 0, i64 8, !108, i64 8, i64 4, !45}
!110 = !{!99, !24, i64 0}
!111 = !{!99, !12, i64 24}
!112 = !{!"branch_weights", i32 2146410443, i32 1073205}
!113 = !{!24, !24, i64 0}
!114 = !{!91, !91, i64 0}
!115 = !{!"branch_weights", !"expected", i32 2146839404, i32 644244}
!116 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !23}
!117 = !{!"p1 _ZTS6b3Vec3", !24, i64 0}
!118 = !{!117, !117, i64 0}
!119 = !{i64 0, i64 8, !118, i64 8, i64 4, !45, i64 12, i64 4, !23}
!120 = !{!"b3ShapeProxy", !117, i64 0, !9, i64 8, !13, i64 12}
!121 = !{!"b3Quat", !14, i64 0, !13, i64 12}
!122 = !{!"b3Transform", !14, i64 0, !121, i64 12}
!123 = !{!"b3DistanceInput", !120, i64 0, !120, i64 16, !122, i64 32, !30, i64 60}
!124 = !{!123, !30, i64 60}
!125 = !{!"b3DistanceOutput", !14, i64 0, !14, i64 12, !14, i64 24, !13, i64 36, !9, i64 40, !9, i64 44}
!126 = !{!125, !13, i64 36}
!127 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !23, i64 12, i64 4, !23, i64 16, i64 4, !23, i64 20, i64 4, !23, i64 24, i64 4, !23}
!128 = !{!14, !13, i64 4}
!129 = !{!40, !9, i64 356}
!130 = distinct !{!130, !20}
!131 = distinct !{!131, !20}
!132 = distinct !{!132, !20}
!133 = distinct !{!133, i1 true, !"b3BuildBounds"}
!134 = distinct !{!134, !133, !"b3BuildBounds: argument 0"}
!135 = distinct !{!135, !20}
!136 = distinct !{!136, !20}
!137 = distinct !{!137, !20}
!138 = distinct !{!138, !20}
!139 = distinct !{!139, !20}
!140 = distinct !{!140, !20}
!141 = distinct !{!141, !20}
!142 = distinct !{!142, !20}
!143 = distinct !{!143, !20}
!144 = distinct !{!144, !20}
!145 = distinct !{!145, !20}
!146 = distinct !{!146, !20}
!147 = distinct !{!147, !20}
!148 = distinct !{!148, !20}
!149 = distinct !{!149, !20}
!150 = distinct !{!150, !20}
!151 = distinct !{!151, !20}
!152 = distinct !{!152, !20}
!153 = distinct !{!153, !20}
!154 = distinct !{!154, !20}
!155 = distinct !{!155, !20}
!156 = distinct !{!156, !20}
!157 = distinct !{!157, !20}
!158 = distinct !{!158, !20}
!159 = distinct !{!159, !20}
!160 = distinct !{!160, !20}
!161 = distinct !{!161, !20}
!162 = distinct !{!162, !20}
!163 = distinct !{!163, !20}
!164 = distinct !{!164, !20}
!165 = distinct !{!165, !20}
!166 = distinct !{!166, !20}
!167 = distinct !{!167, i1 false, !"LVerDomain"}
!168 = distinct !{!168, !167}
!169 = distinct !{!169, !167}
!170 = distinct !{!170, !167}
!171 = distinct !{!171, !167}
!172 = distinct !{!172, !167}
!173 = distinct !{!173, !167}
!174 = distinct !{!174, !20, !75, !76}
!175 = distinct !{!175, !20}
!176 = distinct !{!176, !20, !75}
!177 = distinct !{!177, !20}
!178 = distinct !{!178, !20}
!179 = !{!40, !34, i64 248}
!180 = !{!40, !9, i64 256}
!181 = !{!40, !9, i64 272}
!182 = !{!40, !9, i64 296}
!183 = !{!40, !37, i64 312}
!184 = !{!40, !9, i64 320}
!185 = !{!40, !38, i64 328}
!186 = !{!40, !9, i64 336}
!187 = !{!40, !9, i64 352}
!188 = !{!40, !39, i64 360}
!189 = !{!40, !9, i64 368}
!190 = !{!134}
!191 = !{!40, !13, i64 0}
!192 = !{!40, !13, i64 4}
!193 = !{!40, !9, i64 260}
!194 = !{!31, !9, i64 36}
!195 = !{!31, !30, i64 40}
!196 = !{!32, !32, i64 0}
!197 = !{!40, !9, i64 324}
!198 = !{!35, !25, i64 72}
!199 = !{!"b3HorizonFrame", !29, i64 0, !32, i64 8, !32, i64 16, !30, i64 24}
!200 = !{!199, !29, i64 0}
!201 = !{!199, !30, i64 24}
!202 = !{!199, !32, i64 8}
!203 = !{!199, !32, i64 16}
!204 = !{!40, !9, i64 340}
!205 = !{!40, !25, i64 32}
!206 = !{!40, !25, i64 128}
!207 = !{!40, !25, i64 80}
!208 = !{!35, !13, i64 44}
!209 = !{!40, !9, i64 372}
!210 = !{!40, !9, i64 376}
!211 = !{!40, !9, i64 380}
!212 = !{!34, !34, i64 0}
!213 = !{!17, !12, i64 0}
!214 = !{!17, !9, i64 112}
!215 = !{!168}
!216 = !{!169}
!217 = !{!170}
!218 = !{!173, !172, !168, !169, !171}
!219 = !{!173}
!220 = !{!168, !169}
!221 = !{!171}
!222 = !{!172}
!223 = !{!168, !169, !171}
!224 = !{!79, !8, i64 3}
!225 = distinct !{!225, !20}
!226 = distinct !{!226, !20}
!227 = distinct !{!227, !20}
!228 = distinct !{!228, !20}
!229 = !{!17, !13, i64 40}
!230 = distinct !{!230, i1 true, !"b3HullMap_end_itr"}
!231 = distinct !{!231, !230, !"b3HullMap_end_itr: argument 0"}
!232 = distinct !{!232, i1 true, !"b3HullMap_end_itr"}
!233 = distinct !{!233, !232, !"b3HullMap_end_itr: argument 0"}
!234 = !{!"branch_weights", i32 2146411, i32 2145337237}
!235 = !{!231}
!236 = !{!106, !9, i64 8}
!237 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!238 = !{!233}
!239 = distinct !{!239, !20}
!240 = !{!"branch_weights", i32 1, i32 127}
!241 = !{i64 0, i64 8, !95, i64 8, i64 8, !95, i64 16, i64 8, !113, i64 24, i64 8, !114}
!242 = !{!"branch_weights", i32 127, i32 255873}
!243 = distinct !{!243, i1 true, !"b3HullMap_end_itr"}
!244 = distinct !{!244, !243, !"b3HullMap_end_itr: argument 0"}
!245 = distinct !{!245, i1 true, !"b3HullMap_end_itr"}
!246 = distinct !{!246, !245, !"b3HullMap_end_itr: argument 0"}
!247 = !{!244}
!248 = !{!246}
!249 = distinct !{!249, i1 true, !"b3HullMap_get"}
!250 = distinct !{!250, !249, !"b3HullMap_get: argument 0"}
!251 = !{!250}
!252 = !{i64 0, i64 8, !113, i64 8, i64 8, !114, i64 16, i64 8, !114, i64 24, i64 8, !95}
!253 = distinct !{!253, i1 true, !"b3HullMap_end_itr"}
!254 = distinct !{!254, !253, !"b3HullMap_end_itr: argument 0"}
!255 = !{!254}
!256 = distinct !{!256, !20}
!257 = distinct !{!257, !20}
!258 = distinct !{!258, !20}
!259 = distinct !{!259, !20}
!260 = distinct !{!260, !273}
!261 = distinct !{!261, i1 false, !"LVerDomain"}
!262 = distinct !{!262, !261}
!263 = distinct !{!263, !261}
!264 = distinct !{!264, !261}
!265 = distinct !{!265, !261}
!266 = distinct !{!266, !261}
!267 = distinct !{!267, !261}
!268 = distinct !{!268, !20, !75, !76}
!269 = distinct !{!269, !20}
!270 = distinct !{!270, !20, !75}
!271 = distinct !{!271, !20}
!272 = distinct !{!272, !20}
!273 = !{!"llvm.loop.unroll.disable"}
!274 = !{!262}
!275 = !{!263}
!276 = !{!264}
!277 = !{!267, !266, !262, !263, !265}
!278 = !{!267}
!279 = !{!266, !262, !263}
!280 = !{!265}
!281 = !{!266}
!282 = !{!262, !263, !265}
!283 = !{!"b3MassData", !13, i64 0, !14, i64 4, !16, i64 16}
!284 = !{!283, !13, i64 0}
!285 = distinct !{!285, i1 true, !"b3AABB_Transform"}
!286 = distinct !{!286, !285, !"b3AABB_Transform: argument 0"}
!287 = !{!286}
!288 = distinct !{!288, i1 true, !"b3AABB_Union"}
!289 = distinct !{!289, !288, !"b3AABB_Union: argument 0"}
!290 = !{!289}
!291 = distinct !{!291, !20}
!292 = !{!"b3RayCastInput", !14, i64 0, !14, i64 12, !13, i64 24}
!293 = !{!292, !13, i64 24}
!294 = !{!"b3CastOutput", !14, i64 0, !14, i64 12, !13, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !30, i64 44}
!295 = !{!294, !13, i64 24}
!296 = !{!294, !30, i64 44}
!297 = !{!"b3ShapeCastInput", !120, i64 0, !14, i64 16, !13, i64 28, !30, i64 32}
!298 = !{!297, !13, i64 28}
!299 = !{!"b3ShapeCastPairInput", !120, i64 0, !120, i64 16, !122, i64 32, !14, i64 60, !13, i64 72, !30, i64 76}
!300 = !{!299, !13, i64 72}
!301 = !{!297, !30, i64 32}
!302 = !{!299, !30, i64 76}
!303 = !{!"b3Capsule", !14, i64 0, !14, i64 12, !13, i64 24}
!304 = !{!303, !13, i64 24}
!305 = distinct !{!305, !20}
!306 = !{!"b3ShapeExtent", !13, i64 0, !14, i64 4}
!307 = !{!306, !13, i64 0}
!308 = distinct !{!308, !20}
!309 = distinct !{!309, !20}
!310 = !{!"b3BoxHull", !17, i64 0, !8, i64 144, !8, i64 152, !8, i64 248, !8, i64 344, !8, i64 440, !8, i64 446, !8, i64 448, !8, i64 480, !8, i64 512, !8, i64 544, !8, i64 576, !8, i64 608}
!311 = !{!310, !13, i64 40}
!312 = !{!310, !13, i64 44}
!313 = !{!310, !13, i64 48}
!314 = !{!33, !13, i64 0}
!315 = !{!33, !13, i64 4}
!316 = !{!33, !13, i64 8}
!317 = !{!310, !12, i64 8}
!318 = !{!310, !9, i64 140}
!319 = distinct !{!319, !20}
!320 = distinct !{!320, !20}
!321 = distinct !{!321, !20}
!322 = distinct !{!322, !20}
!323 = distinct !{!323, !20}
!324 = distinct !{!324, !20}
!325 = distinct !{!325, !20}
end_hunk_2
