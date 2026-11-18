Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/hull?download=true
inline.NumInlined: 449
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@b3CreateHull:bb.a
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
  %i.alj = getelementptr [4 x i8], ptr %i.ali, i64 %i.alh ; 15 uses
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
  %min.iters.check = icmp ult i64 %i.amh, 68
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
  %i.amq = getelementptr i8, ptr %i.amp, i64 %i.ami ; 4 uses
  %bound0 = icmp ult ptr %i.amj, %i.alj
  %bound1 = icmp ult ptr %i.amq, %i.amo
  %found.conflict = and i1 %bound0, %bound1
  %4 = shl nuw nsw i64 %i.amm, 5                  ; 2 uses
  %i.amr = getelementptr i8, ptr %.0.i231, i64 %4
  %i.ams = getelementptr i8, ptr %i.amr, i64 %i.ami ; 5 uses
  %5 = mul nuw nsw i64 %i.amm, 48
  %i.amt = getelementptr i8, ptr %.0.i231, i64 %5 ; 5 uses
  %bound0492 = icmp ult ptr %i.amj, %i.amt
  %bound1493 = icmp ult ptr %i.ams, %i.amo
  %found.conflict494 = and i1 %bound0492, %bound1493
  %conflict.rdx = or i1 %found.conflict, %found.conflict494
  %6 = getelementptr i8, ptr %i.alc, i64 4        ; 3 uses
  %bound0492.a = icmp ult ptr %i.amj, %6
  %bound1496 = icmp ugt ptr %i.amo, %i.alc
  %found.conflict494.a = and i1 %bound0492.a, %bound1496
  %conflict.rdx.a = or i1 %conflict.rdx, %found.conflict494.a
  %7 = getelementptr i8, ptr %.0.i231, i64 %i.amn
  %8 = getelementptr i8, ptr %7, i64 4            ; 3 uses
  %bound0499 = icmp ult ptr %i.amj, %8
  %bound1500 = icmp ult ptr %i.ali, %i.amo
  %found.conflict501 = and i1 %bound0499, %bound1500
  %conflict.rdx502 = or i1 %conflict.rdx.a, %found.conflict501
  %9 = getelementptr i8, ptr %.0.i231, i64 %4
  %10 = getelementptr i8, ptr %9, i64 4           ; 2 uses
  %bound0503 = icmp ult ptr %i.amj, %10
  %bound1504 = icmp ult ptr %i.alj, %i.amo
  %found.conflict505 = and i1 %bound0503, %bound1504
  %conflict.rdx506 = or i1 %conflict.rdx502, %found.conflict505
  %bound0507 = icmp ult ptr %i.amq, %i.amt
  %bound1508 = icmp ult ptr %i.ams, %i.alj
  %found.conflict509 = and i1 %bound0507, %bound1508
  %conflict.rdx510 = or i1 %conflict.rdx506, %found.conflict509
  %bound0511 = icmp ult ptr %i.amq, %6
  %bound1512 = icmp ugt ptr %i.alj, %i.alc
  %found.conflict513 = and i1 %bound0511, %bound1512
  %conflict.rdx514 = or i1 %conflict.rdx510, %found.conflict513
  %bound0515 = icmp ult ptr %i.amq, %8
  %bound1516 = icmp ult ptr %i.ali, %i.alj
  %found.conflict517 = and i1 %bound0515, %bound1516
  %conflict.rdx518 = or i1 %conflict.rdx514, %found.conflict517
  %bound0519 = icmp ult ptr %i.ams, %6
  %bound1520 = icmp ugt ptr %i.amt, %i.alc
  %found.conflict521 = and i1 %bound0519, %bound1520
  %conflict.rdx522 = or i1 %conflict.rdx518, %found.conflict521
  %bound0523 = icmp ult ptr %i.ams, %8
  %bound1524 = icmp ult ptr %i.ali, %i.amt
  %found.conflict525 = and i1 %bound0523, %bound1524
  %conflict.rdx526 = or i1 %conflict.rdx522, %found.conflict525
  %bound0527 = icmp ult ptr %i.ams, %10
  %bound1528 = icmp ult ptr %i.alj, %i.amt
  %found.conflict529 = and i1 %bound0527, %bound1528
  %conflict.rdx530 = or i1 %conflict.rdx526, %found.conflict529
  br i1 %conflict.rdx530, label %.lr.ph297.preheader616, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.amh, -8                     ; 3 uses
  %i.amu = add nsw i64 %n.vec, %i.amg
  %i.amv = load float, ptr %i.alc, align 4, !tbaa !23, !alias.scope !215
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.amv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.amw = load float, ptr %i.ali, align 4, !tbaa !23, !alias.scope !216
  %broadcast.splatinsert531 = insertelement <4 x float> poison, float %i.amw, i64 0
  %broadcast.splat532 = shufflevector <4 x float> %broadcast.splatinsert531, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.amx = load float, ptr %i.alj, align 4, !tbaa !23, !alias.scope !217
  %broadcast.splatinsert533 = insertelement <4 x float> poison, float %i.amx, i64 0
  %broadcast.splat534 = shufflevector <4 x float> %broadcast.splatinsert533, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.amy = add nuw i64 %index, %i.amg             ; 3 uses
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %i.amy ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 16
  store <4 x float> %broadcast.splat, ptr %i.amz, align 4, !tbaa !23, !alias.scope !218, !noalias !219
  store <4 x float> %broadcast.splat, ptr %i.ana, align 4, !tbaa !23, !alias.scope !218, !noalias !219
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %i.amy ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 16
  store <4 x float> %broadcast.splat532, ptr %i.anb, align 4, !tbaa !23, !alias.scope !220, !noalias !221
  store <4 x float> %broadcast.splat532, ptr %i.anc, align 4, !tbaa !23, !alias.scope !220, !noalias !221
  %i.and = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %i.amy ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 16
  store <4 x float> %broadcast.splat534, ptr %i.and, align 4, !tbaa !23, !alias.scope !222, !noalias !223
  store <4 x float> %broadcast.splat534, ptr %i.ane, align 4, !tbaa !23, !alias.scope !222, !noalias !223
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.anf = icmp eq i64 %index.next, %n.vec
  br i1 %i.anf, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.amh, %n.vec
  br i1 %cmp.n, label %.preheader260, label %.lr.ph297.preheader616

.lr.ph297.preheader616:                           ; preds = %vector.memcheck, %.lr.ph297.preheader, %middle.block
  %indvars.iv336.ph = phi i64 [ %i.amg, %vector.memcheck ], [ %i.amg, %.lr.ph297.preheader ], [ %i.amu, %middle.block ] ; 7 uses
  %xtraiter644 = and i64 %indvars.iv336.ph, 1
  %lcmp.mod645.not = icmp eq i64 %xtraiter644, 0
  br i1 %lcmp.mod645.not, label %.lr.ph297.prol.loopexit, label %.lr.ph297.prol

.lr.ph297.prol:                                   ; preds = %.lr.ph297.preheader616
  %i.ang = load float, ptr %i.alc, align 4, !tbaa !23
  %i.anh = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %indvars.iv336.ph
  store float %i.ang, ptr %i.anh, align 4, !tbaa !23
  %i.ani = load float, ptr %i.ali, align 4, !tbaa !23
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %indvars.iv336.ph
  store float %i.ani, ptr %i.anj, align 4, !tbaa !23
  %i.ank = load float, ptr %i.alj, align 4, !tbaa !23
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %indvars.iv336.ph
  store float %i.ank, ptr %i.anl, align 4, !tbaa !23
  %indvars.iv.next337.prol = add nuw nsw i64 %indvars.iv336.ph, 1
  br label %.lr.ph297.prol.loopexit

.lr.ph297.prol.loopexit:                          ; preds = %.lr.ph297.prol, %.lr.ph297.preheader616
  %indvars.iv336.unr = phi i64 [ %indvars.iv336.ph, %.lr.ph297.preheader616 ], [ %indvars.iv.next337.prol, %.lr.ph297.prol ]
  %i.anm = add nsw i64 %i.alh, -1
  %i.ann = icmp eq i64 %indvars.iv336.ph, %i.anm
  br i1 %i.ann, label %.preheader260, label %.lr.ph297

.lr.ph295:                                        ; preds = %.lr.ph295.preheader, %.lr.ph295
  %indvars.iv333 = phi i64 [ 0, %.lr.ph295.preheader ], [ %indvars.iv.next334, %.lr.ph295 ] ; 7 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.akk, i64 %indvars.iv333
  store i8 0, ptr %i.ano, align 1, !tbaa !78
  %i.anp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv333
  %i.anq = load ptr, ptr %i.anp, align 8, !tbaa !212 ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.anq, i64 32
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.ans = getelementptr inbounds nuw [12 x i8], ptr %.0.i229, i64 %indvars.iv333 ; 2 uses
  %i.ant = load <2 x float>, ptr %i.anr, align 8, !tbaa !23 ; 3 uses
  store <2 x float> %i.ant, ptr %i.ans, align 4, !tbaa !23
  %.sroa.6.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.ans, i64 8
  store float %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx47, align 4, !tbaa !23
  %i.anu = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %indvars.iv333
  %i.anv = extractelement <2 x float> %i.ant, i64 0
  store float %i.anv, ptr %i.anu, align 4, !tbaa !23
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %indvars.iv333
  %i.anx = extractelement <2 x float> %i.ant, i64 1
  store float %i.anx, ptr %i.anw, align 4, !tbaa !23
  %i.any = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %indvars.iv333
  store float %.sroa.6.0.copyload, ptr %i.any, align 4, !tbaa !23
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next334, %wide.trip.count
  br i1 %exitcond.not, label %.preheader261, label %.lr.ph295, !llvm.loop !175

.preheader260:                                    ; preds = %.lr.ph297.prol.loopexit, %.lr.ph297, %middle.block, %.preheader261
  %i.anz = icmp sgt i32 %.0214.lcssa, 0
  br i1 %i.anz, label %.lr.ph299.preheader, label %._crit_edge300

.lr.ph299.preheader:                              ; preds = %.preheader260
  %wide.trip.count344 = zext nneg i32 %.0214.lcssa to i64
  br label %.lr.ph299

.lr.ph297:                                        ; preds = %.lr.ph297.prol.loopexit, %.lr.ph297
  %indvars.iv336 = phi i64 [ %indvars.iv.next337.1, %.lr.ph297 ], [ %indvars.iv336.unr, %.lr.ph297.prol.loopexit ] ; 5 uses
  %i.aoa = load float, ptr %i.alc, align 4, !tbaa !23
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %indvars.iv336
  store float %i.aoa, ptr %i.aob, align 4, !tbaa !23
  %i.aoc = load float, ptr %i.ali, align 4, !tbaa !23
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %indvars.iv336
  store float %i.aoc, ptr %i.aod, align 4, !tbaa !23
  %i.aoe = load float, ptr %i.alj, align 4, !tbaa !23
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %indvars.iv336
  store float %i.aoe, ptr %i.aof, align 4, !tbaa !23
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 3 uses
  %i.aog = load float, ptr %i.alc, align 4, !tbaa !23
  %i.aoh = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %indvars.iv.next337
  store float %i.aog, ptr %i.aoh, align 4, !tbaa !23
  %i.aoi = load float, ptr %i.ali, align 4, !tbaa !23
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %indvars.iv.next337
  store float %i.aoi, ptr %i.aoj, align 4, !tbaa !23
  %i.aok = load float, ptr %i.alj, align 4, !tbaa !23
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %indvars.iv.next337
  store float %i.aok, ptr %i.aol, align 4, !tbaa !23
  %indvars.iv.next337.1 = add nuw nsw i64 %indvars.iv336, 2 ; 2 uses
  %exitcond340.not.1 = icmp eq i64 %indvars.iv.next337.1, %i.alh
  br i1 %exitcond340.not.1, label %.preheader260, label %.lr.ph297, !llvm.loop !176

._crit_edge300:                                   ; preds = %.lr.ph299, %.preheader260
  %i.aom = zext nneg i32 %i.aiq to i64            ; 2 uses
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %.0.i232, i64 %i.aom ; 2 uses
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %i.aon, i64 %i.aom
  %.not308 = icmp eq i32 %.0217.lcssa, 0
  br i1 %.not308, label %.preheader, label %.lr.ph303.preheader

.lr.ph303.preheader:                              ; preds = %._crit_edge300
  %wide.trip.count349 = zext i32 %.0217.lcssa to i64
  br label %.lr.ph303

.lr.ph299:                                        ; preds = %.lr.ph299.preheader, %.lr.ph299
  %indvars.iv341 = phi i64 [ 0, %.lr.ph299.preheader ], [ %indvars.iv.next342, %.lr.ph299 ] ; 4 uses
  %i.aop = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv341
  %i.aoq = load ptr, ptr %i.aop, align 8, !tbaa !196 ; 4 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 8
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !55
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 40
  %i.aou = load i32, ptr %i.aot, align 8, !tbaa !65
  %i.aov = trunc i32 %i.aou to i8
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr %.0.i228, i64 %indvars.iv341 ; 4 uses
  store i8 %i.aov, ptr %i.aow, align 1, !tbaa !80
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aoq, i64 32
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !47
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 40
  %i.apa = load i32, ptr %i.aoz, align 8, !tbaa !65
  %i.apb = trunc i32 %i.apa to i8
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aow, i64 1
  store i8 %i.apb, ptr %i.apc, align 1, !tbaa !81
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aoq, i64 24
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !56
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 120
  %i.apg = load i32, ptr %i.apf, align 8, !tbaa !62
  %i.aph = trunc i32 %i.apg to i8
  %i.api = getelementptr inbounds nuw i8, ptr %i.aow, i64 3
  store i8 %i.aph, ptr %i.api, align 1, !tbaa !224
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aoq, i64 16
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !58
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 36
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !194 ; 2 uses
  %i.apn = trunc i32 %i.apm to i8
  %i.apo = getelementptr inbounds nuw i8, ptr %i.aow, i64 2
  store i8 %i.apn, ptr %i.apo, align 1, !tbaa !82
  %i.app = trunc i64 %indvars.iv341 to i8
  %i.apq = sext i32 %i.apm to i64
  %i.apr = getelementptr inbounds i8, ptr %i.akk, i64 %i.apq
  store i8 %i.app, ptr %i.apr, align 1, !tbaa !78
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 2 uses
  %exitcond345.not = icmp eq i64 %indvars.iv.next342, %wide.trip.count344
  br i1 %exitcond345.not, label %._crit_edge300, label %.lr.ph299, !llvm.loop !177

.preheader:                                       ; preds = %.lr.ph303, %._crit_edge300
  %i.aps = icmp samesign ult i32 %.0217.lcssa, %i.aiq
  br i1 %i.aps, label %.lr.ph305.preheader, label %._crit_edge306

.lr.ph305.preheader:                              ; preds = %.preheader
  %i.apt = zext nneg i32 %.0217.lcssa to i64
  %i.apu = shl nuw nsw i64 %i.apt, 2              ; 3 uses
  %scevgep = getelementptr i8, ptr %i.alg, i64 %i.apu
  %i.apv = xor i32 %.0217.lcssa, -1
  %i.apw = add nsw i32 %i.aiq, %i.apv
  %i.apx = zext i32 %i.apw to i64
  %i.apy = shl nuw nsw i64 %i.apx, 2
  %i.apz = add nuw nsw i64 %i.apy, 4              ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.apz, i1 false), !tbaa !23
  %i.aqa = lshr i32 %i.aip, 2
  %i.aqb = zext nneg i32 %i.aqa to i64            ; 2 uses
  %i.aqc = shl nuw nsw i64 %i.aqb, 4
  %i.aqd = getelementptr i8, ptr %i.alg, i64 %i.aqc
  %scevgep351 = getelementptr i8, ptr %i.aqd, i64 %i.apu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep351, i8 0, i64 %i.apz, i1 false), !tbaa !23
  %i.aqe = shl nuw nsw i64 %i.aqb, 5
  %i.aqf = getelementptr i8, ptr %i.alg, i64 %i.aqe
  %scevgep352 = getelementptr i8, ptr %i.aqf, i64 %i.apu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep352, i8 0, i64 %i.apz, i1 false), !tbaa !23
end_hunk_0
begin_hunk_1_@b3CloneAndTransformHull:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !84  ; 3 uses
  %i.bb = zext i8 %i.ba to i32                    ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph
  %.0281 = phi i32 [ -1, %.lr.ph ], [ %.1282, %bb.c ]
  %.0279 = phi i32 [ %i.bb, %.lr.ph ], [ %.1280, %bb.c ] ; 3 uses
  %i.bc = zext nneg i32 %.0279 to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !80  ; 2 uses
  %i.bf = icmp eq i8 %i.be, %i.ba                 ; 3 uses
  %i.bg = zext i8 %i.be to i32
  %.1282 = select i1 %i.bf, i32 %.0279, i32 %.0281 ; 2 uses
  %.1280 = select i1 %i.bf, i32 %.0279, i32 %i.bg ; 2 uses
  %.not296 = icmp eq i32 %.1280, %i.bb
  %or.cond = or i1 %i.bf, %.not296
  br i1 %or.cond, label %.preheader361, label %bb.c, !llvm.loop !256

.preheader361:                                    ; preds = %bb.c, %bb.e
  %.2283 = phi i32 [ %.2, %bb.e ], [ %.1282, %bb.c ]
  %.2 = phi i32 [ %i.bu, %bb.e ], [ %i.bb, %bb.c ] ; 3 uses
  %i.bh = zext nneg i32 %.2 to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.bh ; 4 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !80  ; 2 uses
  %i.bk = trunc i32 %.2283 to i8
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !81  ; 2 uses
  %i.bn = zext i8 %i.bm to i32
  %i.bo = icmp samesign ult i32 %.2, %i.bn
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader361
  %i.bp = zext i8 %i.bm to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 2 uses
  %.sroa.0190.0.copyload = load i8, ptr %i.br, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 2 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1
  store i8 %i.bt, ptr %i.br, align 1
  store i8 %.sroa.0190.0.copyload, ptr %i.bs, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader361
  %i.bu = zext i8 %i.bj to i32
  %.not297 = icmp eq i8 %i.bj, %i.ba
  br i1 %.not297, label %bb.f, label %.preheader361, !llvm.loop !257

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !258

.lr.ph374:                                        ; preds = %.lr.ph374, %.lr.ph374.preheader.new
  %indvars.iv396 = phi i64 [ 0, %.lr.ph374.preheader.new ], [ %indvars.iv.next397.3, %.lr.ph374 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph374.preheader.new ], [ %niter.next.3, %.lr.ph374 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i299, i64 %indvars.iv396 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !78
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
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
  %bound0 = icmp ult ptr %i.ey, %i.er
  %bound1 = icmp ult ptr %i.fc, %i.fa
  %found.conflict = and i1 %bound0, %bound1
  %i.fd = shl nsw i64 %i.ep, 3                    ; 2 uses
  %i.fe = getelementptr i8, ptr %.0.i301, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.ex  ; 5 uses
  %i.fg = mul nsw i64 %i.ep, 12
  %i.fh = getelementptr i8, ptr %.0.i301, i64 %i.fg ; 5 uses
  %bound0493 = icmp ult ptr %i.ey, %i.fh
  %bound1494 = icmp ult ptr %i.ff, %i.fa
  %found.conflict495 = and i1 %bound0493, %bound1494
  %conflict.rdx = or i1 %found.conflict, %found.conflict495
  %i.fi = getelementptr i8, ptr %i.eo, i64 4      ; 3 uses
  %bound0.a = icmp ult ptr %i.ey, %i.fi
  %bound1497 = icmp ugt ptr %i.fa, %i.eo
  %found.conflict.a = and i1 %bound0.a, %bound1497
  %conflict.rdx499 = or i1 %conflict.rdx, %found.conflict.a
  %4 = getelementptr i8, ptr %.0.i301, i64 %i.ez
  %5 = getelementptr i8, ptr %4, i64 4            ; 3 uses
  %bound0496 = icmp ult ptr %i.ey, %5
  %bound1501 = icmp ult ptr %i.eq, %i.fa
  %found.conflict498 = and i1 %bound0496, %bound1501
  %conflict.rdx499.a = or i1 %conflict.rdx499, %found.conflict498
  %6 = getelementptr i8, ptr %.0.i301, i64 %i.fd
  %7 = getelementptr i8, ptr %6, i64 4            ; 2 uses
  %bound0504 = icmp ult ptr %i.ey, %7
  %bound1505 = icmp ult ptr %i.er, %i.fa
  %found.conflict506 = and i1 %bound0504, %bound1505
  %conflict.rdx507 = or i1 %conflict.rdx499.a, %found.conflict506
  %bound0508 = icmp ult ptr %i.fc, %i.fh
  %bound1509 = icmp ult ptr %i.ff, %i.er
  %found.conflict510 = and i1 %bound0508, %bound1509
  %conflict.rdx511 = or i1 %conflict.rdx507, %found.conflict510
  %bound0512 = icmp ult ptr %i.fc, %i.fi
  %bound1513 = icmp ugt ptr %i.er, %i.eo
  %found.conflict514 = and i1 %bound0512, %bound1513
  %conflict.rdx515 = or i1 %conflict.rdx511, %found.conflict514
  %bound0516 = icmp ult ptr %i.fc, %5
  %bound1517 = icmp ult ptr %i.eq, %i.er
  %found.conflict518 = and i1 %bound0516, %bound1517
  %conflict.rdx519 = or i1 %conflict.rdx515, %found.conflict518
  %bound0520 = icmp ult ptr %i.ff, %i.fi
  %bound1521 = icmp ugt ptr %i.fh, %i.eo
  %found.conflict522 = and i1 %bound0520, %bound1521
  %conflict.rdx523 = or i1 %conflict.rdx519, %found.conflict522
  %bound0524 = icmp ult ptr %i.ff, %5
  %bound1525 = icmp ult ptr %i.eq, %i.fh
  %found.conflict526 = and i1 %bound0524, %bound1525
  %conflict.rdx527 = or i1 %conflict.rdx523, %found.conflict526
  %bound0528 = icmp ult ptr %i.ff, %7
  %bound1529 = icmp ult ptr %i.er, %i.fh
  %found.conflict530 = and i1 %bound0528, %bound1529
  %conflict.rdx531 = or i1 %conflict.rdx527, %found.conflict530
  br i1 %conflict.rdx531, label %.lr.ph379.preheader584, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ew, -8                      ; 3 uses
  %i.fj = add nsw i64 %n.vec, %i.ev
  %i.fk = load float, ptr %i.eo, align 4, !tbaa !23, !alias.scope !274
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fk, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fl = load float, ptr %i.eq, align 4, !tbaa !23, !alias.scope !275
  %broadcast.splatinsert532 = insertelement <4 x float> poison, float %i.fl, i64 0
  %broadcast.splat533 = shufflevector <4 x float> %broadcast.splatinsert532, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fm = load float, ptr %i.er, align 4, !tbaa !23, !alias.scope !276
  %broadcast.splatinsert534 = insertelement <4 x float> poison, float %i.fm, i64 0
  %broadcast.splat535 = shufflevector <4 x float> %broadcast.splatinsert534, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fn = add i64 %index, %i.ev                   ; 3 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.fn ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <4 x float> %broadcast.splat, ptr %i.fo, align 4, !tbaa !23, !alias.scope !277, !noalias !278
  store <4 x float> %broadcast.splat, ptr %i.fp, align 4, !tbaa !23, !alias.scope !277, !noalias !278
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.fn ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store <4 x float> %broadcast.splat533, ptr %i.fq, align 4, !tbaa !23, !alias.scope !279, !noalias !280
  store <4 x float> %broadcast.splat533, ptr %i.fr, align 4, !tbaa !23, !alias.scope !279, !noalias !280
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.fn ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store <4 x float> %broadcast.splat535, ptr %i.fs, align 4, !tbaa !23, !alias.scope !281, !noalias !282
  store <4 x float> %broadcast.splat535, ptr %i.ft, align 4, !tbaa !23, !alias.scope !281, !noalias !282
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !268

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ew, %n.vec
  br i1 %cmp.n, label %._crit_edge380, label %.lr.ph379.preheader584

.lr.ph379.preheader584:                           ; preds = %vector.memcheck, %.lr.ph379.preheader, %middle.block
  %indvars.iv406.ph = phi i64 [ %i.ev, %vector.memcheck ], [ %i.ev, %.lr.ph379.preheader ], [ %i.fj, %middle.block ] ; 7 uses
  %xtraiter586 = and i64 %indvars.iv406.ph, 1
  %lcmp.mod587.not = icmp eq i64 %xtraiter586, 0
  br i1 %lcmp.mod587.not, label %.lr.ph379.prol.loopexit, label %.lr.ph379.prol

.lr.ph379.prol:                                   ; preds = %.lr.ph379.preheader584
  %i.fv = load float, ptr %i.eo, align 4, !tbaa !23
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %indvars.iv406.ph
  store float %i.fv, ptr %i.fw, align 4, !tbaa !23
  %i.fx = load float, ptr %i.eq, align 4, !tbaa !23
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %indvars.iv406.ph
  store float %i.fx, ptr %i.fy, align 4, !tbaa !23
  %i.fz = load float, ptr %i.er, align 4, !tbaa !23
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.er, i64 %indvars.iv406.ph
  store float %i.fz, ptr %i.ga, align 4, !tbaa !23
  %indvars.iv.next407.prol = add nsw i64 %indvars.iv406.ph, 1
  br label %.lr.ph379.prol.loopexit

.lr.ph379.prol.loopexit:                          ; preds = %.lr.ph379.prol, %.lr.ph379.preheader584
  %indvars.iv406.unr = phi i64 [ %indvars.iv406.ph, %.lr.ph379.preheader584 ], [ %indvars.iv.next407.prol, %.lr.ph379.prol ]
  %i.gb = add nsw i64 %i.ep, -1
  %i.gc = icmp eq i64 %indvars.iv406.ph, %i.gb
  br i1 %i.gc, label %._crit_edge380, label %.lr.ph379

bb.g:                                             ; preds = %.lr.ph377, %bb.g
  %indvars.iv401 = phi i64 [ 0, %.lr.ph377 ], [ %indvars.iv.next402, %bb.g ] ; 5 uses
  %i.gd = getelementptr inbounds nuw [12 x i8], ptr %.0.i300, i64 %indvars.iv401 ; 3 uses
  %.sroa.0147.0.copyload = load <2 x float>, ptr %i.gd, align 4
  %.sroa.2148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %.sroa.2148.0.copyload = load float, ptr %.sroa.2148.0..sroa_idx, align 4
  %i.ge = fmul float %i.w, %.sroa.2148.0.copyload ; 2 uses
  %i.gf = fmul float %i.ea, %i.ge
  %i.gg = fmul <2 x float> %i.u, %.sroa.0147.0.copyload ; 3 uses
  %i.gh = fmul <2 x float> %i.dq, %i.gg
  %i.gi = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gj = fmul <2 x float> %i.dr, %i.gi
  %i.gk = fadd <2 x float> %i.gh, %i.gj
  %i.gl = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = fmul <2 x float> %i.dx, %i.gm
  %i.go = fadd <2 x float> %i.gn, %i.gk
  %i.gp = fmul <2 x float> %i.dv, %i.gg           ; 2 uses
  %shift552 = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop553 = fadd <2 x float> %i.gp, %shift552
  %i.gq = extractelement <2 x float> %foldExtExtBinop553, i64 0
  %i.gr = fadd float %i.gf, %i.gq
  %i.gs = fadd <2 x float> %i.et, %i.go           ; 3 uses
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gu = fadd float %.sroa.2134.0.copyload, %i.gr ; 2 uses
  store <2 x float> %i.gt, ptr %i.gd, align 4, !tbaa !23
  store float %i.gu, ptr %.sroa.2148.0..sroa_idx, align 4, !tbaa !23
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv401
  %i.gw = extractelement <2 x float> %i.gs, i64 1
  store float %i.gw, ptr %i.gv, align 4, !tbaa !23
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv401
  %i.gy = extractelement <2 x float> %i.gs, i64 0
  store float %i.gy, ptr %i.gx, align 4, !tbaa !23
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv401
  store float %i.gu, ptr %i.gz, align 4, !tbaa !23
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 2 uses
  %exitcond405.not = icmp eq i64 %indvars.iv.next402, %wide.trip.count404
  br i1 %exitcond405.not, label %.preheader360, label %bb.g, !llvm.loop !269

._crit_edge380:                                   ; preds = %.lr.ph379.prol.loopexit, %.lr.ph379, %middle.block, %.preheader360
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !22 ; 2 uses
  %i.hc = icmp eq i32 %i.hb, 0
  %i.hd = sext i32 %i.hb to i64
  %i.he = add nsw i64 %i.hd, %i.aa
  %i.hf = inttoptr i64 %i.he to ptr
  %.0.i314 = select i1 %i.hc, ptr null, ptr %i.hf
  %i.hg = add i32 %i.ak, 3
  %i.hh = and i32 %i.hg, -4                       ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !73 ; 2 uses
  %i.hk = icmp eq i32 %i.hj, 0
  %i.hl = sext i32 %i.hj to i64
  %i.hm = add nsw i64 %i.hl, %i.aa
  %i.hn = inttoptr i64 %i.hm to ptr               ; 5 uses
  %.0.i315 = select i1 %i.hk, ptr null, ptr %i.hn
  %i.ho = sext i32 %i.hh to i64                   ; 4 uses
  %i.hp = getelementptr inbounds [4 x i8], ptr %.0.i315, i64 %i.ho ; 2 uses
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.ho
  %i.hr = icmp sgt i32 %i.ak, 0
  br i1 %i.hr, label %.lr.ph383.preheader, label %.preheader

.lr.ph383.preheader:                              ; preds = %._crit_edge380
  %wide.trip.count414 = zext nneg i32 %i.ak to i64
  br label %.lr.ph383

.lr.ph379:                                        ; preds = %.lr.ph379.prol.loopexit, %.lr.ph379
  %indvars.iv406 = phi i64 [ %indvars.iv.next407.1, %.lr.ph379 ], [ %indvars.iv406.unr, %.lr.ph379.prol.loopexit ] ; 5 uses
  %i.hs = load float, ptr %i.eo, align 4, !tbaa !23
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %indvars.iv406
  store float %i.hs, ptr %i.ht, align 4, !tbaa !23
  %i.hu = load float, ptr %i.eq, align 4, !tbaa !23
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %indvars.iv406
  store float %i.hu, ptr %i.hv, align 4, !tbaa !23
  %i.hw = load float, ptr %i.er, align 4, !tbaa !23
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.er, i64 %indvars.iv406
  store float %i.hw, ptr %i.hx, align 4, !tbaa !23
  %indvars.iv.next407 = add nsw i64 %indvars.iv406, 1 ; 3 uses
  %i.hy = load float, ptr %i.eo, align 4, !tbaa !23
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %indvars.iv.next407
  store float %i.hy, ptr %i.hz, align 4, !tbaa !23
  %i.ia = load float, ptr %i.eq, align 4, !tbaa !23
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %indvars.iv.next407
  store float %i.ia, ptr %i.ib, align 4, !tbaa !23
  %i.ic = load float, ptr %i.er, align 4, !tbaa !23
  %i.id = getelementptr inbounds [4 x i8], ptr %i.er, i64 %indvars.iv.next407
  store float %i.ic, ptr %i.id, align 4, !tbaa !23
  %indvars.iv.next407.1 = add nsw i64 %indvars.iv406, 2 ; 2 uses
  %exitcond410.not.1 = icmp eq i64 %indvars.iv.next407.1, %i.ep
  br i1 %exitcond410.not.1, label %._crit_edge380, label %.lr.ph379, !llvm.loop !270

.preheader:                                       ; preds = %bb.i, %._crit_edge380
  %i.ie = icmp slt i32 %i.ak, %i.hh
  br i1 %i.ie, label %.lr.ph385.preheader, label %._crit_edge386

.lr.ph385.preheader:                              ; preds = %.preheader
  %i.if = sext i32 %i.ak to i64                   ; 2 uses
  %i.ig = shl nsw i64 %i.if, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.hn, i64 %i.ig
  %i.ih = xor i32 %i.ak, -1
  %i.ii = add i32 %i.hh, %i.ih
  %i.ij = zext i32 %i.ii to i64
  %i.ik = shl nuw nsw i64 %i.ij, 2
  %i.il = add nuw nsw i64 %i.ik, 4                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.il, i1 false), !tbaa !23
  %i.im = add nsw i64 %i.if, %i.ho
  %i.in = shl nsw i64 %i.im, 2
  %scevgep416 = getelementptr i8, ptr %i.hn, i64 %i.in
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep416, i8 0, i64 %i.il, i1 false), !tbaa !23
  %i.io = shl nsw i64 %i.ho, 3
  %i.ip = getelementptr i8, ptr %i.hn, i64 %i.io
  %scevgep417 = getelementptr i8, ptr %i.ip, i64 %i.ig
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep417, i8 0, i64 %i.il, i1 false), !tbaa !23
  br label %._crit_edge386

.lr.ph383:                                        ; preds = %.lr.ph383.preheader, %bb.i
  %indvars.iv411 = phi i64 [ 0, %.lr.ph383.preheader ], [ %indvars.iv.next412, %bb.i ] ; 6 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv411
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !84  ; 3 uses
  %i.is = zext i8 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !82
  %i.iw = zext i8 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [12 x i8], ptr %.0.i300, i64 %i.iw ; 2 uses
  %.sroa.078.0.copyload = load <2 x float>, ptr %i.ix, align 4, !tbaa !23 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !23 ; 3 uses
  %i.iy = shufflevector <2 x float> %.sroa.078.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.iz = insertelement <2 x float> %i.iy, float %.sroa.6.0.copyload, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph383
end_hunk_1
