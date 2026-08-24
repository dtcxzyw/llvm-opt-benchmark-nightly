Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/xtrans_demosaic?download=true
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN6LibRaw18xtrans_interpolateEi:bb.a
  %i.ahz = load i8, ptr %i.ady, align 2, !tbaa !75
  %i.aia = icmp eq i8 %i.ahz, 1
  br i1 %i.aia, label %.loopexit1140.3, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.aib = add nuw i32 %i.aec, 6                  ; 4 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.aid = load i16, ptr %i.aic, align 8, !tbaa !79
  %i.aie = sext i16 %i.aid to i32                 ; 2 uses
  %i.aif = mul nsw i32 %i.aie, 3
  %i.aig = add i32 %i.aib, %i.aif                 ; 2 uses
  %i.aih = icmp sgt i32 %i.aig, -1
  %.not1035.3 = icmp slt i32 %i.aig, %i.aab
  %or.cond1040.3 = select i1 %i.aih, i1 %.not1035.3, i1 false
  br i1 %or.cond1040.3, label %bb.bz, label %bb.bk

bb.bz:                                            ; preds = %bb.by
  %i.aii = mul nsw i32 %i.aie, -3
  %i.aij = add i32 %i.aib, %i.aii                 ; 2 uses
  %i.aik = icmp sgt i32 %i.aij, -1
  %.not1036.3 = icmp slt i32 %i.aij, %i.aab
  %or.cond1041.3 = select i1 %i.aik, i1 %.not1036.3, i1 false
  br i1 %or.cond1041.3, label %bb.ca, label %bb.bm

bb.ca:                                            ; preds = %bb.bz
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aeb, i64 10
  %i.aim = load i16, ptr %i.ail, align 2, !tbaa !79
  %i.ain = sext i16 %i.aim to i32                 ; 2 uses
  %i.aio = mul nsw i32 %i.ain, 3
  %i.aip = add i32 %i.aib, %i.aio                 ; 2 uses
  %i.aiq = icmp sgt i32 %i.aip, -1
  %.not1035.1.3 = icmp slt i32 %i.aip, %i.aab
  %or.cond1040.1.3 = select i1 %i.aiq, i1 %.not1035.1.3, i1 false
  br i1 %or.cond1040.1.3, label %bb.cb, label %bb.bk

bb.cb:                                            ; preds = %bb.ca
  %i.air = mul nsw i32 %i.ain, -3
  %i.ais = add i32 %i.aib, %i.air                 ; 2 uses
  %i.ait = icmp sgt i32 %i.ais, -1
  %.not1036.1.3 = icmp slt i32 %i.ais, %i.aab
  %or.cond1041.1.3 = select i1 %i.ait, i1 %.not1036.1.3, i1 false
  br i1 %or.cond1041.1.3, label %.loopexit1140.3, label %bb.bm

.loopexit1140.3:                                  ; preds = %bb.cb, %bb.bx
  br i1 %exitcond1416.4.not, label %.critedge21, label %bb.cc

bb.cc:                                            ; preds = %.loopexit1140.3
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ady, i64 1
  %i.aiv = load i8, ptr %i.aiu, align 1, !tbaa !75
  %i.aiw = icmp eq i8 %i.aiv, 1
  br i1 %i.aiw, label %.loopexit1140.4, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.aix = add nuw i32 %i.aec, 7                  ; 4 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aeb, i64 40
  %i.aiz = load i16, ptr %i.aiy, align 8, !tbaa !79
  %i.aja = sext i16 %i.aiz to i32                 ; 2 uses
  %i.ajb = mul nsw i32 %i.aja, 3
  %i.ajc = add i32 %i.aix, %i.ajb                 ; 2 uses
  %i.ajd = icmp sgt i32 %i.ajc, -1
  %.not1035.4 = icmp slt i32 %i.ajc, %i.aab
  %or.cond1040.4 = select i1 %i.ajd, i1 %.not1035.4, i1 false
  br i1 %or.cond1040.4, label %bb.ce, label %bb.bk

bb.ce:                                            ; preds = %bb.cd
  %i.aje = mul nsw i32 %i.aja, -3
  %i.ajf = add i32 %i.aix, %i.aje                 ; 2 uses
  %i.ajg = icmp sgt i32 %i.ajf, -1
  %.not1036.4 = icmp slt i32 %i.ajf, %i.aab
  %or.cond1041.4 = select i1 %i.ajg, i1 %.not1036.4, i1 false
  br i1 %or.cond1041.4, label %bb.cf, label %bb.bm

bb.cf:                                            ; preds = %bb.ce
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aeb, i64 42
  %i.aji = load i16, ptr %i.ajh, align 2, !tbaa !79
  %i.ajj = sext i16 %i.aji to i32                 ; 2 uses
  %i.ajk = mul nsw i32 %i.ajj, 3
  %i.ajl = add i32 %i.aix, %i.ajk                 ; 2 uses
  %i.ajm = icmp sgt i32 %i.ajl, -1
  %.not1035.1.4 = icmp slt i32 %i.ajl, %i.aab
  %or.cond1040.1.4 = select i1 %i.ajm, i1 %.not1035.1.4, i1 false
  br i1 %or.cond1040.1.4, label %bb.cg, label %bb.bk

bb.cg:                                            ; preds = %bb.cf
  %i.ajn = mul nsw i32 %i.ajj, -3
  %i.ajo = add i32 %i.aix, %i.ajn                 ; 2 uses
  %i.ajp = icmp sgt i32 %i.ajo, -1
  %.not1036.1.4 = icmp slt i32 %i.ajo, %i.aab
  %or.cond1041.1.4 = select i1 %i.ajp, i1 %.not1036.1.4, i1 false
  br i1 %or.cond1041.1.4, label %.loopexit1140.4, label %bb.bm

.loopexit1140.4:                                  ; preds = %bb.cg, %bb.cc
  br i1 %exitcond1416.5.not, label %.critedge21, label %bb.ch

bb.ch:                                            ; preds = %.loopexit1140.4
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ady, i64 2
  %i.ajr = load i8, ptr %i.ajq, align 2, !tbaa !75
  %i.ajs = icmp eq i8 %i.ajr, 1
  br i1 %i.ajs, label %.critedge21, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ajt = add nuw i32 %i.aec, 8                  ; 4 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.aeb, i64 72
  %i.ajv = load i16, ptr %i.aju, align 8, !tbaa !79
  %i.ajw = sext i16 %i.ajv to i32                 ; 2 uses
  %i.ajx = mul nsw i32 %i.ajw, 3
  %i.ajy = add i32 %i.ajt, %i.ajx                 ; 2 uses
  %i.ajz = icmp sgt i32 %i.ajy, -1
  %.not1035.5 = icmp slt i32 %i.ajy, %i.aab
  %or.cond1040.5 = select i1 %i.ajz, i1 %.not1035.5, i1 false
  br i1 %or.cond1040.5, label %bb.cj, label %bb.bk

bb.cj:                                            ; preds = %bb.ci
  %i.aka = mul nsw i32 %i.ajw, -3
  %i.akb = add i32 %i.ajt, %i.aka                 ; 2 uses
  %i.akc = icmp sgt i32 %i.akb, -1
  %.not1036.5 = icmp slt i32 %i.akb, %i.aab
  %or.cond1041.5 = select i1 %i.akc, i1 %.not1036.5, i1 false
  br i1 %or.cond1041.5, label %bb.ck, label %bb.bm

bb.ck:                                            ; preds = %bb.cj
  %i.akd = getelementptr inbounds nuw i8, ptr %i.aeb, i64 74
  %i.ake = load i16, ptr %i.akd, align 2, !tbaa !79
  %i.akf = sext i16 %i.ake to i32                 ; 2 uses
  %i.akg = mul nsw i32 %i.akf, 3
  %i.akh = add i32 %i.ajt, %i.akg                 ; 2 uses
  %i.aki = icmp sgt i32 %i.akh, -1
  %.not1035.1.5 = icmp slt i32 %i.akh, %i.aab
  %or.cond1040.1.5 = select i1 %i.aki, i1 %.not1035.1.5, i1 false
  br i1 %or.cond1040.1.5, label %bb.cl, label %bb.bk

bb.cl:                                            ; preds = %bb.ck
  %i.akj = mul nsw i32 %i.akf, -3
  %i.akk = add i32 %i.ajt, %i.akj                 ; 2 uses
  %i.akl = icmp sgt i32 %i.akk, -1
  %.not1036.1.5 = icmp slt i32 %i.akk, %i.aab
  %or.cond1041.1.5 = select i1 %i.akl, i1 %.not1036.1.5, i1 false
  br i1 %or.cond1041.1.5, label %.critedge21, label %bb.bm

._crit_edge1356:                                  ; preds = %._crit_edge1353, %.critedge
  tail call void @_ZN6LibRaw16free_omp_buffersEPPci(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.aee, i32 noundef 1)
  tail call void @_ZN6LibRaw18border_interpolateEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void

bb.cm:                                            ; preds = %.lr.ph1355, %._crit_edge1353
  %i.akm = phi i16 [ %i.aef, %.lr.ph1355 ], [ %i.aln, %._crit_edge1353 ]
  %i.akn = phi i16 [ %.pre1599, %.lr.ph1355 ], [ %i.alo, %._crit_edge1353 ] ; 3 uses
  %indvars.iv1487 = phi i64 [ 6, %.lr.ph1355 ], [ %indvars.iv.next1488, %._crit_edge1353 ] ; 2 uses
  %indvars.iv1460 = phi i64 [ 5, %.lr.ph1355 ], [ %indvars.iv.next1461, %._crit_edge1353 ] ; 3 uses
  %indvars.iv1429 = phi i64 [ 3, %.lr.ph1355 ], [ %indvars.iv.next1430, %._crit_edge1353 ] ; 17 uses
  %umin1587 = tail call i64 @llvm.umin.i64(i64 %indvars.iv1429, i64 8)
  %i.ako = load ptr, ptr %i.aee, align 8, !tbaa !89 ; 20 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 %i.aeh ; 3 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 1572864 ; 3 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %i.ako, i64 %i.aei ; 3 uses
  %i.aks = icmp ugt i16 %i.akn, 22
  br i1 %i.aks, label %.lr.ph1352, label %._crit_edge1353

.lr.ph1352:                                       ; preds = %bb.cm
  %i.akt = zext i16 %i.akn to i32
  %i.aku = add nuw nsw i64 %indvars.iv1429, 2     ; 2 uses
  %i.akv = sub nsw i64 %indvars.iv1429, %i.aeq
  %.fr = freeze i64 %i.akv
  %i.akw = trunc i64 %.fr to i32
  %i.akx = add i32 %i.akw, 4                      ; 2 uses
  %i.aky = srem i32 %i.akx, 3
  %i.akz = add i32 %i.akx, %i.ael
  %i.ala = sub i32 %i.akz, %i.aky                 ; 2 uses
  %i.alb = add nuw nsw i64 %indvars.iv1429, 3
  %i.alc = trunc nuw nsw i64 %indvars.iv1429 to i32 ; 3 uses
  %i.ald = tail call i32 @llvm.umin.i32(i32 %i.alc, i32 8)
  %i.ale = sext i32 %i.ala to i64
  %i.alf = trunc i64 %indvars.iv1429 to i32
  %i.alg = add i32 %i.alf, 512
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ako, i64 1572864
  %i.ali = getelementptr inbounds nuw i8, ptr %i.ako, i64 3145728
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ako, i64 4718592
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ako, i64 1572864
  %i.all = getelementptr inbounds nuw i8, ptr %i.ako, i64 3145728
  %i.alm = getelementptr inbounds nuw i8, ptr %i.ako, i64 4718592
  br label %bb.cn

._crit_edge1353.loopexit:                         ; preds = %._crit_edge1347.split
  %.pre1624 = load i16, ptr %i.i, align 4, !tbaa !74
  br label %._crit_edge1353

._crit_edge1353:                                  ; preds = %._crit_edge1353.loopexit, %bb.cm
  %i.aln = phi i16 [ %.pre1624, %._crit_edge1353.loopexit ], [ %i.akm, %bb.cm ] ; 2 uses
  %i.alo = phi i16 [ %i.cvd, %._crit_edge1353.loopexit ], [ %i.akn, %bb.cm ]
  %indvars.iv.next1430 = add nuw nsw i64 %indvars.iv1429, 496 ; 2 uses
  %i.alp = zext i16 %i.aln to i64
  %i.alq = add nsw i64 %i.alp, -19
  %i.alr = icmp slt i64 %indvars.iv.next1430, %i.alq
  %indvars.iv.next1461 = add nuw nsw i64 %indvars.iv1460, 496
  %indvars.iv.next1488 = add nuw nsw i64 %indvars.iv1487, 496
  br i1 %i.alr, label %bb.cm, label %._crit_edge1356, !llvm.loop !90

bb.cn:                                            ; preds = %.lr.ph1352, %._crit_edge1347.split
  %indvars.iv1482 = phi i64 [ 6, %.lr.ph1352 ], [ %indvars.iv.next1483, %._crit_edge1347.split ] ; 2 uses
  %indvars.iv1455 = phi i64 [ 5, %.lr.ph1352 ], [ %indvars.iv.next1456, %._crit_edge1347.split ] ; 3 uses
  %indvars.iv1424 = phi i64 [ 3, %.lr.ph1352 ], [ %indvars.iv.next1425, %._crit_edge1347.split ] ; 17 uses
  %i.als = phi i32 [ %i.akt, %.lr.ph1352 ], [ %i.cve, %._crit_edge1347.split ]
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv1424, i64 8)
  %i.alt = load i16, ptr %i.i, align 4, !tbaa !74
  %i.alu = zext i16 %i.alt to i32
  %i.alv = add nsw i32 %i.alu, -3                 ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.alg, i32 %i.alv) ; 5 uses
  %i.alw = add nsw i32 %i.als, -3                 ; 2 uses
  %i.alx = trunc i64 %indvars.iv1424 to i32
  %i.aly = add i32 %i.alx, 512
  %i.alz = tail call i32 @llvm.smin.i32(i32 %i.aly, i32 %i.alw) ; 5 uses
  %i.ama = sext i32 %i.alv to i64
  %i.amb = icmp slt i64 %indvars.iv1429, %i.ama
  %i.amc = sext i32 %i.alw to i64
  %i.amd = icmp slt i64 %indvars.iv1424, %i.amc
  %or.cond1357 = select i1 %i.amb, i1 %i.amd, i1 false
  br i1 %or.cond1357, label %.preheader1137.preheader, label %.preheader1139.thread

.preheader1139.thread:                            ; preds = %bb.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1572864) %i.alh, ptr noundef nonnull align 2 dereferenceable(1572864) %i.ako, i64 1572864, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1572864) %i.ali, ptr noundef nonnull align 2 dereferenceable(1572864) %i.ako, i64 1572864, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1572864) %i.alj, ptr noundef nonnull align 2 dereferenceable(1572864) %i.ako, i64 1572864, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  br label %.preheader1138

.preheader1137.preheader:                         ; preds = %bb.cn
  %i.ame = sext i32 %i.alz to i64
  %i.amf = sext i32 %. to i64
  br label %.preheader1137

.preheader1139:                                   ; preds = %._crit_edge1220
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1572864) %i.alk, ptr noundef nonnull align 2 dereferenceable(1572864) %i.ako, i64 1572864, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1572864) %i.all, ptr noundef nonnull align 2 dereferenceable(1572864) %i.ako, i64 1572864, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1572864) %i.alm, ptr noundef nonnull align 2 dereferenceable(1572864) %i.ako, i64 1572864, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.amg = sext i32 %i.alz to i64
  %i.amh = sext i32 %. to i64
  %.promoted1733 = load i32, ptr %i.aej, align 16
  %.promoted = load i32, ptr %i.aek, align 4
  %.promoted1736 = load i32, ptr %i.aet, align 8
  %.promoted1738 = load i32, ptr %i.aeu, align 4
  br label %.preheader1136

.preheader1137:                                   ; preds = %.preheader1137.preheader, %._crit_edge1220
  %indvars.iv1431 = phi i64 [ %indvars.iv1429, %.preheader1137.preheader ], [ %indvars.iv.next1432, %._crit_edge1220 ] ; 3 uses
  %i.ami = sub nuw nsw i64 %indvars.iv1431, %indvars.iv1429
  %i.amj = getelementptr inbounds nuw [3072 x i8], ptr %i.ako, i64 %i.ami
  br label %bb.co

._crit_edge1220:                                  ; preds = %bb.co
  %indvars.iv.next1432 = add nuw nsw i64 %indvars.iv1431, 1 ; 2 uses
  %i.amk = icmp slt i64 %indvars.iv.next1432, %i.amf
  br i1 %i.amk, label %.preheader1137, label %.preheader1139, !llvm.loop !91

bb.co:                                            ; preds = %.preheader1137, %bb.co
  %indvars.iv1426 = phi i64 [ %indvars.iv1424, %.preheader1137 ], [ %indvars.iv.next1427, %bb.co ] ; 3 uses
  %i.aml = sub nuw nsw i64 %indvars.iv1426, %indvars.iv1424
  %i.amm = getelementptr inbounds nuw [6 x i8], ptr %i.amj, i64 %i.aml
  %i.amn = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.amo = load i16, ptr %i.f, align 2, !tbaa !11
  %i.amp = zext i16 %i.amo to i64
  %i.amq = mul i64 %indvars.iv1431, %i.amp
  %i.amr = add i64 %i.amq, %indvars.iv1426
  %i.ams = and i64 %i.amr, 4294967295
  %i.amt = getelementptr inbounds nuw [8 x i8], ptr %i.amn, i64 %i.ams
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.amm, ptr noundef nonnull align 2 dereferenceable(6) %i.amt, i64 6, i1 false)
  %indvars.iv.next1427 = add nuw nsw i64 %indvars.iv1426, 1 ; 2 uses
  %i.amu = icmp slt i64 %indvars.iv.next1427, %i.ame
  br i1 %i.amu, label %bb.co, label %._crit_edge1220, !llvm.loop !92

.preheader1138.loopexit:                          ; preds = %._crit_edge1233
  store i32 %i.avm, ptr %i.aej, align 16
  store i32 %i.avl, ptr %i.aek, align 4
  store i32 %i.avk, ptr %i.aet, align 8
  store i32 %i.avj, ptr %i.aeu, align 4
  br label %.preheader1138

.preheader1138:                                   ; preds = %.preheader1138.loopexit, %.preheader1139.thread
  br i1 %i.aem, label %.lr.ph1292, label %._crit_edge1293

.lr.ph1292:                                       ; preds = %.preheader1138
  %i.amv = add nsw i32 %., -2                     ; 2 uses
  %i.amw = sext i32 %i.amv to i64                 ; 5 uses
  %i.amx = icmp sge i64 %i.aku, %i.amw
  %i.amy = add nuw nsw i64 %indvars.iv1424, 2
  %i.amz = add nsw i32 %i.alz, -2                 ; 2 uses
  %i.ana = sext i32 %i.amz to i64                 ; 4 uses
  %i.anb = icmp sge i64 %i.amy, %i.ana            ; 2 uses
  %i.anc = icmp sge i32 %i.ala, %i.amv
  %i.and = sub nsw i64 %indvars.iv1424, %i.aer
  %.fr1709 = freeze i64 %i.and
  %i.ane = trunc i64 %.fr1709 to i32
  %i.anf = add i32 %i.ane, 4                      ; 2 uses
  %i.ang = srem i32 %i.anf, 3
  %i.anh = add i32 %i.anf, %i.aen
  %i.ani = sub i32 %i.anh, %i.ang                 ; 2 uses
  %i.anj = icmp sge i32 %i.ani, %i.amz
  %i.ank = add nsw i32 %., -3
  %i.anl = sext i32 %i.ank to i64                 ; 2 uses
  %i.anm = icmp sge i64 %i.alb, %i.anl
  %i.ann = add nuw nsw i64 %indvars.iv1424, 3
  %i.ano = add nsw i32 %i.alz, -3
  %i.anp = sext i32 %i.ano to i64                 ; 2 uses
  %i.anq = icmp sge i64 %i.ann, %i.anp
  %i.anr = icmp slt i64 %i.aku, %i.amw
  %i.ans = sext i32 %i.ani to i64
  %brmerge1361 = select i1 %i.amx, i1 true, i1 %i.anb
  %brmerge1364 = select i1 %i.anc, i1 true, i1 %i.anj
  %brmerge1367 = select i1 %i.anm, i1 true, i1 %i.anq
  br label %bb.cq

.preheader1136:                                   ; preds = %.preheader1139, %._crit_edge1233
  %.lcssa17321739 = phi i32 [ %.promoted1738, %.preheader1139 ], [ %i.avj, %._crit_edge1233 ]
  %.lcssa17301737 = phi i32 [ %.promoted1736, %.preheader1139 ], [ %i.avk, %._crit_edge1233 ]
  %.lcssa17281735 = phi i32 [ %.promoted, %.preheader1139 ], [ %i.avl, %._crit_edge1233 ]
  %.lcssa17261734 = phi i32 [ %.promoted1733, %.preheader1139 ], [ %i.avm, %._crit_edge1233 ]
  %indvars.iv1448 = phi i64 [ %indvars.iv1429, %.preheader1139 ], [ %indvars.iv.next1449, %._crit_edge1233 ] ; 6 uses
  %i.ant = trunc i64 %indvars.iv1448 to i32
  %i.anu = add i32 %i.ant, 6
  %i.anv = urem i32 %i.anu, 6
  %i.anw = zext nneg i32 %i.anv to i64
  %i.anx = getelementptr inbounds nuw [6 x i8], ptr %i.n, i64 %i.anw
  %i.any = trunc nuw nsw i64 %indvars.iv1448 to i32
  %i.anz = urem i32 %i.any, 3
  %i.aoa = zext nneg i32 %i.anz to i64
  %i.aob = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %i.aoa
  %i.aoc = sub nsw i64 %indvars.iv1448, %i.aeq
  %i.aod = trunc nsw i64 %i.aoc to i32
  %i.aoe = srem i32 %i.aod, 3
  %.not1034 = icmp eq i32 %i.aoe, 0               ; 3 uses
  %i.aof = zext i1 %.not1034 to i32               ; 2 uses
  %i.aog = sub nuw nsw i64 %indvars.iv1448, %indvars.iv1429
  %invariant.gep1226 = getelementptr [3072 x i8], ptr %i.ako, i64 %i.aog
  %i.aoh = zext i1 %.not1034 to i64
  %i.aoi = xor i32 %i.aof, 1
  %i.aoj = zext nneg i32 %i.aoi to i64
  %i.aok = zext i1 %.not1034 to i64
  %i.aol = xor i32 %i.aof, 3
  %i.aom = zext nneg i32 %i.aol to i64
  br label %bb.cp

._crit_edge1233:                                  ; preds = %.loopexit1132
  %indvars.iv.next1449 = add nuw nsw i64 %indvars.iv1448, 1 ; 2 uses
  %i.aon = icmp slt i64 %indvars.iv.next1449, %i.amh
  br i1 %i.aon, label %.preheader1136, label %.preheader1138.loopexit, !llvm.loop !93

bb.cp:                                            ; preds = %.preheader1136, %.loopexit1132
  %i.aoo = phi i32 [ %.lcssa17321739, %.preheader1136 ], [ %i.avj, %.loopexit1132 ]
  %i.aop = phi i32 [ %.lcssa17301737, %.preheader1136 ], [ %i.avk, %.loopexit1132 ]
  %i.aoq = phi i32 [ %.lcssa17281735, %.preheader1136 ], [ %i.avl, %.loopexit1132 ]
  %i.aor = phi i32 [ %.lcssa17261734, %.preheader1136 ], [ %i.avm, %.loopexit1132 ]
  %indvars.iv1445 = phi i64 [ %indvars.iv1424, %.preheader1136 ], [ %indvars.iv.next1446, %.loopexit1132 ] ; 5 uses
  %i.aos = trunc i64 %indvars.iv1445 to i32
  %i.aot = add i32 %i.aos, 6
  %i.aou = urem i32 %i.aot, 6
  %i.aov = zext nneg i32 %i.aou to i64
  %i.aow = getelementptr inbounds nuw i8, ptr %i.anx, i64 %i.aov
  %i.aox = load i8, ptr %i.aow, align 1, !tbaa !75 ; 2 uses
  %i.aoy = icmp eq i8 %i.aox, 1
  br i1 %i.aoy, label %.loopexit1132, label %.preheader1131

.preheader1131:                                   ; preds = %bb.cp
  %i.aoz = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.apa = load i16, ptr %i.f, align 2, !tbaa !11
  %i.apb = zext i16 %i.apa to i64
  %i.apc = mul i64 %indvars.iv1448, %i.apb
  %i.apd = and i64 %i.apc, 4294967295
  %i.ape = getelementptr inbounds nuw [8 x i8], ptr %i.aoz, i64 %i.apd
  %i.apf = getelementptr inbounds nuw [8 x i8], ptr %i.ape, i64 %indvars.iv1445 ; 14 uses
  %i.apg = trunc nuw nsw i64 %indvars.iv1445 to i32
  %i.aph = urem i32 %i.apg, 3
  %i.api = zext nneg i32 %i.aph to i64
  %i.apj = getelementptr inbounds nuw [32 x i8], ptr %i.aob, i64 %i.api ; 6 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 2
  %i.apl = load i16, ptr %i.apk, align 2, !tbaa !79 ; 2 uses
  %i.apm = sext i16 %i.apl to i64
  %i.apn = getelementptr inbounds [8 x i8], ptr %i.apf, i64 %i.apm
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 2
  %i.app = load i16, ptr %i.apo, align 2, !tbaa !79
  %i.apq = zext i16 %i.app to i32
  %i.apr = load i16, ptr %i.apj, align 16, !tbaa !79 ; 2 uses
  %i.aps = sext i16 %i.apr to i64
  %i.apt = getelementptr inbounds [8 x i8], ptr %i.apf, i64 %i.aps
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 2
  %i.apv = load i16, ptr %i.apu, align 2, !tbaa !79
  %i.apw = zext i16 %i.apv to i32
  %i.apx = add nuw nsw i32 %i.apw, %i.apq
  %i.apy = mul nuw nsw i32 %i.apx, 174
  %i.apz = sext i16 %i.apl to i32
  %i.aqa = shl nsw i32 %i.apz, 1
  %i.aqb = sext i32 %i.aqa to i64
  %i.aqc = getelementptr inbounds [8 x i8], ptr %i.apf, i64 %i.aqb
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 2
  %i.aqe = load i16, ptr %i.aqd, align 2, !tbaa !79
  %i.aqf = zext i16 %i.aqe to i32
  %i.aqg = sext i16 %i.apr to i32
  %i.aqh = shl nsw i32 %i.aqg, 1
  %i.aqi = sext i32 %i.aqh to i64
  %i.aqj = getelementptr inbounds [8 x i8], ptr %i.apf, i64 %i.aqi
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 2
  %i.aql = load i16, ptr %i.aqk, align 2, !tbaa !79
  %i.aqm = zext i16 %i.aql to i32
  %i.aqn = add nuw nsw i32 %i.aqm, %i.aqf
  %.neg1033 = mul nsw i32 %i.aqn, -46
  %i.aqo = add nsw i32 %.neg1033, %i.apy          ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.apj, i64 6
  %i.aqq = load i16, ptr %i.aqp, align 2, !tbaa !79
  %i.aqr = sext i16 %i.aqq to i64
  %i.aqs = getelementptr inbounds [8 x i8], ptr %i.apf, i64 %i.aqr
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 2
  %i.aqu = load i16, ptr %i.aqt, align 2, !tbaa !79
  %i.aqv = zext i16 %i.aqu to i32
  %i.aqw = mul nuw nsw i32 %i.aqv, 223
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.apj, i64 4
  %i.aqy = load i16, ptr %i.aqx, align 4, !tbaa !79
  %i.aqz = sext i16 %i.aqy to i64                 ; 2 uses
  %i.ara = getelementptr inbounds [8 x i8], ptr %i.apf, i64 %i.aqz
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 2
  %i.arc = load i16, ptr %i.arb, align 2, !tbaa !79
  %i.ard = zext i16 %i.arc to i32
  %i.are = mul nuw nsw i32 %i.ard, 33
  %i.arf = add nuw nsw i32 %i.are, %i.aqw
  %i.arg = sext i8 %i.aox to i64                  ; 2 uses
  %i.arh = getelementptr [2 x i8], ptr %i.apf, i64 %i.arg ; 5 uses
  %i.ari = load i16, ptr %i.arh, align 2, !tbaa !79
  %i.arj = zext i16 %i.ari to i32                 ; 2 uses
  %i.ark = sub nsw i64 0, %i.aqz
  %i.arl = getelementptr inbounds [8 x i8], ptr %i.apf, i64 %i.ark
  %i.arm = getelementptr inbounds [2 x i8], ptr %i.arl, i64 %i.arg
  %i.arn = load i16, ptr %i.arm, align 2, !tbaa !79
  %i.aro = zext i16 %i.arn to i32
  %i.arp = sub nsw i32 %i.arj, %i.aro
  %i.arq = mul nsw i32 %i.arp, 92
  %i.arr = add nsw i32 %i.arf, %i.arq             ; 2 uses
  %i.ars = shl nuw nsw i32 %i.arj, 1              ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.apj, i64 8
  %i.aru = load i16, ptr %i.art, align 8, !tbaa !79 ; 2 uses
  %i.arv = sext i16 %i.aru to i64
  %i.arw = getelementptr inbounds [8 x i8], ptr %i.apf, i64 %i.arv
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 2
  %i.ary = load i16, ptr %i.arx, align 2, !tbaa !79
  %i.arz = zext i16 %i.ary to i32
  %i.asa = mul nuw nsw i32 %i.arz, 164
  %i.asb = sext i16 %i.aru to i32                 ; 3 uses
  %i.asc = mul nsw i32 %i.asb, -2
  %i.asd = sext i32 %i.asc to i64
  %i.ase = getelementptr inbounds [8 x i8], ptr %i.apf, i64 %i.asd
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 2
  %i.asg = load i16, ptr %i.asf, align 2, !tbaa !79
  %i.ash = zext i16 %i.asg to i32
  %i.asi = mul nuw nsw i32 %i.ash, 92
  %i.asj = add nuw nsw i32 %i.asi, %i.asa
  %i.ask = mul nsw i32 %i.asb, 3
  %i.asl = sext i32 %i.ask to i64
  %gep = getelementptr [8 x i8], ptr %i.arh, i64 %i.asl
  %i.asm = load i16, ptr %gep, align 2, !tbaa !79
  %i.asn = zext i16 %i.asm to i32
  %i.aso = mul nsw i32 %i.asb, -3
  %i.asp = sext i32 %i.aso to i64
  %gep1224 = getelementptr [8 x i8], ptr %i.arh, i64 %i.asp
  %i.asq = load i16, ptr %gep1224, align 2, !tbaa !79
  %i.asr = zext i16 %i.asq to i32
  %i.ass = add nuw nsw i32 %i.asn, %i.asr
  %i.ast = sub nsw i32 %i.ars, %i.ass
  %i.asu = mul nsw i32 %i.ast, 33
  %i.asv = add nsw i32 %i.asj, %i.asu             ; 2 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %i.apj, i64 10
  %i.asx = load i16, ptr %i.asw, align 2, !tbaa !79 ; 2 uses
  %i.asy = sext i16 %i.asx to i64
  %i.asz = getelementptr inbounds [8 x i8], ptr %i.apf, i64 %i.asy
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 2
  %i.atb = load i16, ptr %i.ata, align 2, !tbaa !79
  %i.atc = zext i16 %i.atb to i32
  %i.atd = mul nuw nsw i32 %i.atc, 164
  %i.ate = sext i16 %i.asx to i32                 ; 3 uses
  %i.atf = mul nsw i32 %i.ate, -2
  %i.atg = sext i32 %i.atf to i64
  %i.ath = getelementptr inbounds [8 x i8], ptr %i.apf, i64 %i.atg
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ath, i64 2
  %i.atj = load i16, ptr %i.ati, align 2, !tbaa !79
  %i.atk = zext i16 %i.atj to i32
  %i.atl = mul nuw nsw i32 %i.atk, 92
  %i.atm = add nuw nsw i32 %i.atl, %i.atd
  %i.atn = mul nsw i32 %i.ate, 3
  %i.ato = sext i32 %i.atn to i64
  %gep.1 = getelementptr [8 x i8], ptr %i.arh, i64 %i.ato
  %i.atp = load i16, ptr %gep.1, align 2, !tbaa !79
  %i.atq = zext i16 %i.atp to i32
  %i.atr = mul nsw i32 %i.ate, -3
  %i.ats = sext i32 %i.atr to i64
  %gep1224.1 = getelementptr [8 x i8], ptr %i.arh, i64 %i.ats
  %i.att = load i16, ptr %gep1224.1, align 2, !tbaa !79
  %i.atu = zext i16 %i.att to i32
  %i.atv = add nuw nsw i32 %i.atq, %i.atu
  %i.atw = sub nsw i32 %i.ars, %i.atv
  %i.atx = mul nsw i32 %i.atw, 33
  %i.aty = add nsw i32 %i.atm, %i.atx             ; 2 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %i.apf, i64 2 ; 4 uses
  %i.aua = getelementptr inbounds nuw i8, ptr %i.apf, i64 6 ; 4 uses
  %i.aub = sub nuw nsw i64 %indvars.iv1445, %indvars.iv1424
  %invariant.gep1228 = getelementptr [6 x i8], ptr %invariant.gep1226, i64 %i.aub ; 4 uses
  %i.auc = load i16, ptr %i.atz, align 2, !tbaa !79
  %i.aud = zext i16 %i.auc to i32
  %i.aue = ashr i32 %i.aqo, 8
  %i.auf = load i16, ptr %i.aua, align 2, !tbaa !79
  %i.aug = zext i16 %i.auf to i32
  %.1042 = tail call i32 @llvm.smin.i32(i32 %i.aue, i32 %i.aug)
  %i.auh = tail call i32 @llvm.smax.i32(i32 %.1042, i32 %i.aud)
  %i.aui = trunc nuw i32 %i.auh to i16
  %gep1229 = getelementptr [1572864 x i8], ptr %invariant.gep1228, i64 %i.aoh
  %i.auj = getelementptr inbounds nuw i8, ptr %gep1229, i64 2
  store i16 %i.aui, ptr %i.auj, align 2, !tbaa !79
  %i.auk = load i16, ptr %i.atz, align 2, !tbaa !79
  %i.aul = zext i16 %i.auk to i32
  %i.aum = ashr i32 %i.arr, 8
  %i.aun = load i16, ptr %i.aua, align 2, !tbaa !79
  %i.auo = zext i16 %i.aun to i32
  %.1042.1 = tail call i32 @llvm.smin.i32(i32 %i.aum, i32 %i.auo)
  %i.aup = tail call i32 @llvm.smax.i32(i32 %.1042.1, i32 %i.aul)
  %i.auq = trunc nuw i32 %i.aup to i16
  %gep1229.1 = getelementptr [1572864 x i8], ptr %invariant.gep1228, i64 %i.aoj
  %i.aur = getelementptr inbounds nuw i8, ptr %gep1229.1, i64 2
  store i16 %i.auq, ptr %i.aur, align 2, !tbaa !79
  %i.aus = load i16, ptr %i.atz, align 2, !tbaa !79
  %i.aut = zext i16 %i.aus to i32
  %i.auu = ashr i32 %i.asv, 8
  %i.auv = load i16, ptr %i.aua, align 2, !tbaa !79
  %i.auw = zext i16 %i.auv to i32
  %.1042.2 = tail call i32 @llvm.smin.i32(i32 %i.auu, i32 %i.auw)
  %i.aux = tail call i32 @llvm.smax.i32(i32 %.1042.2, i32 %i.aut)
  %i.auy = trunc nuw i32 %i.aux to i16
  %i.auz = getelementptr [1572864 x i8], ptr %invariant.gep1228, i64 %i.aok
  %i.ava = getelementptr i8, ptr %i.auz, i64 3145730
  store i16 %i.auy, ptr %i.ava, align 2, !tbaa !79
  %i.avb = load i16, ptr %i.atz, align 2, !tbaa !79
  %i.avc = zext i16 %i.avb to i32
  %i.avd = ashr i32 %i.aty, 8
  %i.ave = load i16, ptr %i.aua, align 2, !tbaa !79
  %i.avf = zext i16 %i.ave to i32
  %.1042.3 = tail call i32 @llvm.smin.i32(i32 %i.avd, i32 %i.avf)
  %i.avg = tail call i32 @llvm.smax.i32(i32 %.1042.3, i32 %i.avc)
  %i.avh = trunc nuw i32 %i.avg to i16
  %gep1229.3 = getelementptr [1572864 x i8], ptr %invariant.gep1228, i64 %i.aom
  %i.avi = getelementptr inbounds nuw i8, ptr %gep1229.3, i64 2
  store i16 %i.avh, ptr %i.avi, align 2, !tbaa !79
  br label %.loopexit1132

.loopexit1132:                                    ; preds = %.preheader1131, %bb.cp
  %i.avj = phi i32 [ %i.aty, %.preheader1131 ], [ %i.aoo, %bb.cp ] ; 3 uses
  %i.avk = phi i32 [ %i.asv, %.preheader1131 ], [ %i.aop, %bb.cp ] ; 3 uses
  %i.avl = phi i32 [ %i.arr, %.preheader1131 ], [ %i.aoq, %bb.cp ] ; 3 uses
  %i.avm = phi i32 [ %i.aqo, %.preheader1131 ], [ %i.aor, %bb.cp ] ; 3 uses
  %indvars.iv.next1446 = add nuw nsw i64 %indvars.iv1445, 1 ; 2 uses
  %i.avn = icmp slt i64 %indvars.iv.next1446, %i.amg
  br i1 %i.avn, label %bb.cp, label %._crit_edge1233, !llvm.loop !94

._crit_edge1293:                                  ; preds = %._crit_edge1289, %.preheader1138
  %i.avo = sub nsw i32 %., %i.alc                 ; 7 uses
  %i.avp = trunc i64 %indvars.iv1424 to i32       ; 3 uses
  %i.avq = sub i32 %i.alz, %i.avp                 ; 8 uses
  %i.avr = add nsw i32 %i.avo, -2
  %i.avs = icmp sgt i32 %i.avo, 4
  %i.avt = add nsw i32 %i.avq, -2
  %i.avu = icmp sgt i32 %i.avq, 4
  %i.avv = add nsw i32 %i.avo, -3
  %i.avw = icmp sgt i32 %i.avo, 6
  %i.avx = add nsw i32 %i.avq, -3
  %i.avy = icmp sgt i32 %i.avq, 6
  %i.avz = sext i32 %i.avt to i64
  %i.awa = sext i32 %i.avr to i64
  %i.awb = sext i32 %i.avx to i64                 ; 2 uses
  %i.awc = sext i32 %i.avv to i64
  %i.awd = tail call i64 @llvm.smax.i64(i64 %i.awb, i64 4)
  %i.awe = add nsw i64 %i.awd, -3                 ; 2 uses
  %min.iters.check = icmp slt i32 %i.avq, 14
  %n.vec1801 = and i64 %i.awe, -8                 ; 3 uses
  %i.awf = or disjoint i64 %n.vec1801, 3
  %cmp.n = icmp eq i64 %i.awe, %n.vec1801
  br label %.preheader1134

bb.cq:                                            ; preds = %.lr.ph1292, %._crit_edge1289
  %.08911291 = phi i32 [ 0, %.lr.ph1292 ], [ %i.bzi, %._crit_edge1289 ] ; 2 uses
  %.19061290 = phi ptr [ %i.ako, %.lr.ph1292 ], [ %.29071061, %._crit_edge1289 ] ; 3 uses
  switch i32 %.08911291, label %bb.cr [
    i32 1, label %.thread
    i32 0, label %.loopexit1135
  ]

.thread:                                          ; preds = %bb.cq
  %i.awg = getelementptr inbounds nuw i8, ptr %.19061290, i64 6291456 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6291456) %i.awg, ptr noundef nonnull align 1 dereferenceable(6291456) %i.ako, i64 6291456, i1 false)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.thread
  %.29071060 = phi ptr [ %i.awg, %.thread ], [ %.19061290, %bb.cq ] ; 3 uses
  br i1 %brmerge1361, label %.loopexit1135, label %.lr.ph1242

.lr.ph1242:                                       ; preds = %bb.cr, %._crit_edge1243
  %indvars.iv1462 = phi i64 [ %indvars.iv.next1463, %._crit_edge1243 ], [ %indvars.iv1460, %bb.cr ] ; 6 uses
  %i.awh = trunc i64 %indvars.iv1462 to i32
  %i.awi = add i32 %i.awh, 6
  %i.awj = urem i32 %i.awi, 6
  %i.awk = zext nneg i32 %i.awj to i64
  %i.awl = getelementptr inbounds nuw [6 x i8], ptr %i.n, i64 %i.awk
  %i.awm = trunc nuw nsw i64 %indvars.iv1462 to i32
  %i.awn = urem i32 %i.awm, 3
  %i.awo = zext nneg i32 %i.awn to i64
  %i.awp = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %i.awo
  %i.awq = sub nsw i64 %indvars.iv1462, %i.aeq
  %i.awr = trunc nsw i64 %i.awq to i32
  %i.aws = srem i32 %i.awr, 3
  %.not1032 = icmp eq i32 %i.aws, 0               ; 2 uses
  %i.awt = zext i1 %.not1032 to i32               ; 2 uses
  %i.awu = sub nuw nsw i64 %indvars.iv1462, %indvars.iv1429
  %invariant.gep1235 = getelementptr [3072 x i8], ptr %.29071060, i64 %i.awu
  %i.awv = xor i32 %i.awt, 1
  %i.aww = zext nneg i32 %i.awv to i64
  %i.awx = zext i1 %.not1032 to i64
  %i.awy = xor i32 %i.awt, 3
  %i.awz = zext nneg i32 %i.awy to i64
  br label %bb.cs

._crit_edge1243:                                  ; preds = %.loopexit1124
  %indvars.iv.next1463 = add nuw nsw i64 %indvars.iv1462, 1 ; 2 uses
  %i.axa = icmp slt i64 %indvars.iv.next1463, %i.amw
  br i1 %i.axa, label %.lr.ph1242, label %.loopexit1135, !llvm.loop !95

bb.cs:                                            ; preds = %.lr.ph1242, %.loopexit1124
  %indvars.iv1457 = phi i64 [ %indvars.iv1455, %.lr.ph1242 ], [ %indvars.iv.next1458, %.loopexit1124 ] ; 5 uses
  %i.axb = trunc i64 %indvars.iv1457 to i32
  %i.axc = add i32 %i.axb, 6
  %i.axd = urem i32 %i.axc, 6
  %i.axe = zext nneg i32 %i.axd to i64
  %i.axf = getelementptr inbounds nuw i8, ptr %i.awl, i64 %i.axe
  %i.axg = load i8, ptr %i.axf, align 1, !tbaa !75 ; 2 uses
  %i.axh = icmp eq i8 %i.axg, 1
  br i1 %i.axh, label %.loopexit1124, label %.loopexit1124.loopexit

.loopexit1124.loopexit:                           ; preds = %bb.cs
  %i.axi = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.axj = load i16, ptr %i.f, align 2, !tbaa !11
  %i.axk = zext i16 %i.axj to i64
  %i.axl = mul i64 %indvars.iv1462, %i.axk
  %i.axm = and i64 %i.axl, 4294967295
  %i.axn = getelementptr inbounds nuw [8 x i8], ptr %i.axi, i64 %i.axm
  %i.axo = getelementptr inbounds nuw [8 x i8], ptr %i.axn, i64 %indvars.iv1457 ; 2 uses
  %i.axp = trunc nuw nsw i64 %indvars.iv1457 to i32
  %i.axq = urem i32 %i.axp, 3
  %i.axr = zext nneg i32 %i.axq to i64
  %i.axs = getelementptr inbounds nuw [32 x i8], ptr %i.awp, i64 %i.axr ; 3 uses
  %i.axt = sub nuw nsw i64 %indvars.iv1457, %indvars.iv1424
  %invariant.gep1237 = getelementptr [6 x i8], ptr %invariant.gep1235, i64 %i.axt ; 3 uses
  %i.axu = sext i8 %i.axg to i64                  ; 9 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axo, i64 2 ; 3 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axo, i64 6 ; 3 uses
  %gep1238 = getelementptr [1572864 x i8], ptr %invariant.gep1237, i64 %i.aww ; 4 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axs, i64 22
  %i.axy = load i16, ptr %i.axx, align 2, !tbaa !79
  %i.axz = sext i16 %i.axy to i64                 ; 2 uses
  %.idx = mul nsw i64 %i.axz, -12
  %i.aya = getelementptr inbounds i8, ptr %gep1238, i64 %.idx ; 2 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 2
  %i.ayc = load i16, ptr %i.ayb, align 2, !tbaa !79
  %i.ayd = zext i16 %i.ayc to i32
  %i.aye = getelementptr inbounds [6 x i8], ptr %gep1238, i64 %i.axz ; 2 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aye, i64 2
  %i.ayg = load i16, ptr %i.ayf, align 2, !tbaa !79
  %i.ayh = zext i16 %i.ayg to i32
  %i.ayi = getelementptr inbounds [2 x i8], ptr %i.aya, i64 %i.axu
  %i.ayj = load i16, ptr %i.ayi, align 2, !tbaa !79
  %i.ayk = zext i16 %i.ayj to i32
  %i.ayl = getelementptr inbounds [2 x i8], ptr %i.aye, i64 %i.axu
  %i.aym = load i16, ptr %i.ayl, align 2, !tbaa !79
  %i.ayn = zext i16 %i.aym to i32
  %i.ayo = getelementptr inbounds [2 x i8], ptr %gep1238, i64 %i.axu
  %i.ayp = load i16, ptr %i.ayo, align 2, !tbaa !79
  %i.ayq = zext i16 %i.ayp to i32
  %i.ayr = mul nuw nsw i32 %i.ayq, 3
  %reass.add1109 = sub nsw i32 %i.ayh, %i.ayn
  %reass.mul1110 = shl nsw i32 %reass.add1109, 1
  %i.ays = sub nsw i32 %i.ayd, %i.ayk
  %i.ayt = add nsw i32 %i.ays, %i.ayr
  %i.ayu = add nsw i32 %i.ayt, %reass.mul1110
  %i.ayv = load i16, ptr %i.axv, align 2, !tbaa !79
  %i.ayw = zext i16 %i.ayv to i32
  %i.ayx = sdiv i32 %i.ayu, 3
  %i.ayy = load i16, ptr %i.axw, align 2, !tbaa !79
  %i.ayz = zext i16 %i.ayy to i32
  %.1043 = tail call i32 @llvm.smin.i32(i32 %i.ayx, i32 %i.ayz)
  %i.aza = tail call i32 @llvm.smax.i32(i32 %.1043, i32 %i.ayw)
  %i.azb = trunc nuw i32 %i.aza to i16
  %i.azc = getelementptr inbounds nuw i8, ptr %gep1238, i64 2
  store i16 %i.azb, ptr %i.azc, align 2, !tbaa !79
  %i.azd = getelementptr [1572864 x i8], ptr %invariant.gep1237, i64 %i.awx ; 2 uses
  %gep1238.1 = getelementptr i8, ptr %i.azd, i64 3145728 ; 3 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %i.axs, i64 24
  %i.azf = load i16, ptr %i.aze, align 8, !tbaa !79
  %i.azg = sext i16 %i.azf to i64                 ; 2 uses
  %.idx.1 = mul nsw i64 %i.azg, -12
  %i.azh = getelementptr inbounds i8, ptr %gep1238.1, i64 %.idx.1 ; 2 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 2
  %i.azj = load i16, ptr %i.azi, align 2, !tbaa !79
  %i.azk = zext i16 %i.azj to i32
  %i.azl = getelementptr inbounds [6 x i8], ptr %gep1238.1, i64 %i.azg ; 2 uses
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azl, i64 2
  %i.azn = load i16, ptr %i.azm, align 2, !tbaa !79
  %i.azo = zext i16 %i.azn to i32
  %i.azp = getelementptr inbounds [2 x i8], ptr %i.azh, i64 %i.axu
  %i.azq = load i16, ptr %i.azp, align 2, !tbaa !79
  %i.azr = zext i16 %i.azq to i32
  %i.azs = getelementptr inbounds [2 x i8], ptr %i.azl, i64 %i.axu
  %i.azt = load i16, ptr %i.azs, align 2, !tbaa !79
  %i.azu = zext i16 %i.azt to i32
  %i.azv = getelementptr inbounds [2 x i8], ptr %gep1238.1, i64 %i.axu
  %i.azw = load i16, ptr %i.azv, align 2, !tbaa !79
  %i.azx = zext i16 %i.azw to i32
  %i.azy = mul nuw nsw i32 %i.azx, 3
  %reass.add1109.1 = sub nsw i32 %i.azo, %i.azu
  %reass.mul1110.1 = shl nsw i32 %reass.add1109.1, 1
  %i.azz = sub nsw i32 %i.azk, %i.azr
  %i.baa = add nsw i32 %i.azz, %i.azy
  %i.bab = add nsw i32 %i.baa, %reass.mul1110.1
  %i.bac = load i16, ptr %i.axv, align 2, !tbaa !79
  %i.bad = zext i16 %i.bac to i32
  %i.bae = sdiv i32 %i.bab, 3
  %i.baf = load i16, ptr %i.axw, align 2, !tbaa !79
  %i.bag = zext i16 %i.baf to i32
  %.1043.1 = tail call i32 @llvm.smin.i32(i32 %i.bae, i32 %i.bag)
  %i.bah = tail call i32 @llvm.smax.i32(i32 %.1043.1, i32 %i.bad)
  %i.bai = trunc nuw i32 %i.bah to i16
  %i.baj = getelementptr i8, ptr %i.azd, i64 3145730
  store i16 %i.bai, ptr %i.baj, align 2, !tbaa !79
  %gep1238.2 = getelementptr [1572864 x i8], ptr %invariant.gep1237, i64 %i.awz ; 4 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %i.axs, i64 26
  %i.bal = load i16, ptr %i.bak, align 2, !tbaa !79
  %i.bam = sext i16 %i.bal to i64                 ; 2 uses
  %.idx.2 = mul nsw i64 %i.bam, -12
  %i.ban = getelementptr inbounds i8, ptr %gep1238.2, i64 %.idx.2 ; 2 uses
  %i.bao = getelementptr inbounds nuw i8, ptr %i.ban, i64 2
  %i.bap = load i16, ptr %i.bao, align 2, !tbaa !79
  %i.baq = zext i16 %i.bap to i32
  %i.bar = getelementptr inbounds [6 x i8], ptr %gep1238.2, i64 %i.bam ; 2 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bar, i64 2
  %i.bat = load i16, ptr %i.bas, align 2, !tbaa !79
  %i.bau = zext i16 %i.bat to i32
  %i.bav = getelementptr inbounds [2 x i8], ptr %i.ban, i64 %i.axu
  %i.baw = load i16, ptr %i.bav, align 2, !tbaa !79
  %i.bax = zext i16 %i.baw to i32
  %i.bay = getelementptr inbounds [2 x i8], ptr %i.bar, i64 %i.axu
  %i.baz = load i16, ptr %i.bay, align 2, !tbaa !79
  %i.bba = zext i16 %i.baz to i32
  %i.bbb = getelementptr inbounds [2 x i8], ptr %gep1238.2, i64 %i.axu
  %i.bbc = load i16, ptr %i.bbb, align 2, !tbaa !79
  %i.bbd = zext i16 %i.bbc to i32
  %i.bbe = mul nuw nsw i32 %i.bbd, 3
  %reass.add1109.2 = sub nsw i32 %i.bau, %i.bba
  %reass.mul1110.2 = shl nsw i32 %reass.add1109.2, 1
  %i.bbf = sub nsw i32 %i.baq, %i.bax
  %i.bbg = add nsw i32 %i.bbf, %i.bbe
  %i.bbh = add nsw i32 %i.bbg, %reass.mul1110.2
  %i.bbi = load i16, ptr %i.axv, align 2, !tbaa !79
  %i.bbj = zext i16 %i.bbi to i32
  %i.bbk = sdiv i32 %i.bbh, 3
  %i.bbl = load i16, ptr %i.axw, align 2, !tbaa !79
  %i.bbm = zext i16 %i.bbl to i32
  %.1043.2 = tail call i32 @llvm.smin.i32(i32 %i.bbk, i32 %i.bbm)
  %i.bbn = tail call i32 @llvm.smax.i32(i32 %.1043.2, i32 %i.bbj)
  %i.bbo = trunc nuw i32 %i.bbn to i16
  %i.bbp = getelementptr inbounds nuw i8, ptr %gep1238.2, i64 2
  store i16 %i.bbo, ptr %i.bbp, align 2, !tbaa !79
  br label %.loopexit1124

.loopexit1124:                                    ; preds = %.loopexit1124.loopexit, %bb.cs
  %indvars.iv.next1458 = add nuw nsw i64 %indvars.iv1457, 1 ; 2 uses
  %i.bbq = icmp slt i64 %indvars.iv.next1458, %i.ana
end_hunk_0
begin_hunk_1_@_ZN6LibRaw18xtrans_interpolateEi:bb.a
  %i.csj = fcmp reassoc nsz arcp contract afn ogt float %.1867.1, %i.csi
  %.1867.2 = select nsz i1 %i.csj, float %i.csi, float %.1867.1 ; 2 uses
  %i.csk = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1307, i64 %indvars.iv1524
  %gep1308.3 = getelementptr inbounds nuw i8, ptr %i.csk, i64 3145728
  %i.csl = load float, ptr %gep1308.3, align 4, !tbaa !106 ; 2 uses
  %i.csm = fcmp reassoc nsz arcp contract afn ogt float %.1867.2, %i.csl
  %.1867.3 = select nsz i1 %i.csm, float %i.csl, float %.1867.2 ; 2 uses
  %i.csn = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1307, i64 %indvars.iv1524
  %gep1308.4 = getelementptr inbounds nuw i8, ptr %i.csn, i64 4194304
  %i.cso = load float, ptr %gep1308.4, align 4, !tbaa !106 ; 2 uses
  %i.csp = fcmp reassoc nsz arcp contract afn ogt float %.1867.3, %i.cso
  %.1867.4 = select nsz i1 %i.csp, float %i.cso, float %.1867.3 ; 2 uses
  %i.csq = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1307, i64 %indvars.iv1524
  %gep1308.5 = getelementptr inbounds nuw i8, ptr %i.csq, i64 5242880
  %i.csr = load float, ptr %gep1308.5, align 4, !tbaa !106 ; 2 uses
  %i.css = fcmp reassoc nsz arcp contract afn ogt float %.1867.4, %i.csr
  %.1867.5 = select nsz i1 %i.css, float %i.csr, float %.1867.4 ; 2 uses
  %i.cst = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1307, i64 %indvars.iv1524
  %gep1308.6 = getelementptr inbounds nuw i8, ptr %i.cst, i64 6291456
  %i.csu = load float, ptr %gep1308.6, align 4, !tbaa !106 ; 2 uses
  %i.csv = fcmp reassoc nsz arcp contract afn ogt float %.1867.5, %i.csu
  %.1867.6 = select nsz i1 %i.csv, float %i.csu, float %.1867.5 ; 2 uses
  %i.csw = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1307, i64 %indvars.iv1524
  %gep1308.7 = getelementptr inbounds nuw i8, ptr %i.csw, i64 7340032
  %i.csx = load float, ptr %gep1308.7, align 4, !tbaa !106 ; 2 uses
  %i.csy = fcmp reassoc nsz arcp contract afn ogt float %.1867.6, %i.csx
  %.1867.7 = select nsz i1 %i.csy, float %i.csx, float %.1867.6 ; 3 uses
  %indvars.iv.next1525.7 = add nuw nsw i64 %indvars.iv1524, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %.preheader1127.new, !llvm.loop !114

.unr-lcssa:                                       ; preds = %.preheader1127.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader1127
  %indvars.iv1524.epil.init = phi i64 [ 0, %.preheader1127 ], [ %indvars.iv.next1525.7, %.unr-lcssa ]
  %.08661310.epil.init = phi float [ f0x7F7FFFFF, %.preheader1127 ], [ %.1867.7, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1874)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dt, %.epil.preheader
  %indvars.iv1524.epil = phi i64 [ %indvars.iv1524.epil.init, %.epil.preheader ], [ %indvars.iv.next1525.epil, %bb.dt ] ; 2 uses
  %.08661310.epil = phi float [ %.08661310.epil.init, %.epil.preheader ], [ %.1867.epil, %bb.dt ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.dt ]
  %gep1308.epil = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1307, i64 %indvars.iv1524.epil
  %i.csz = load float, ptr %gep1308.epil, align 4, !tbaa !106 ; 2 uses
  %i.cta = fcmp reassoc nsz arcp contract afn ogt float %.08661310.epil, %i.csz
  %.1867.epil = select nsz i1 %i.cta, float %i.csz, float %.08661310.epil ; 2 uses
  %indvars.iv.next1525.epil = add nuw nsw i64 %indvars.iv1524.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 4
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.dt, !llvm.loop !115

.epilog-lcssa:                                    ; preds = %bb.dt, %.unr-lcssa
  %.1867.lcssa = phi float [ %.1867.7, %.unr-lcssa ], [ %.1867.epil, %bb.dt ]
  %i.ctb = fmul reassoc nsz arcp contract afn float %.1867.lcssa, 8.000000e+00 ; 9 uses
  %invariant.gep1315 = getelementptr inbounds nuw i8, ptr %invariant.gep1313, i64 %indvars.iv1542
  %i.ctc = add nsw i64 %indvars.iv1542, -1        ; 3 uses
  %i.ctd = add nuw nsw i64 %indvars.iv1542, 1     ; 5 uses
  br label %.preheader1121

.preheader1121:                                   ; preds = %.epilog-lcssa, %bb.ek
  %indvars.iv1537 = phi i64 [ 0, %.epilog-lcssa ], [ %indvars.iv.next1538, %bb.ek ] ; 3 uses
  %i.cte = getelementptr inbounds nuw [1048576 x i8], ptr %i.akq, i64 %indvars.iv1537 ; 3 uses
  %gep1316 = getelementptr inbounds nuw [262144 x i8], ptr %invariant.gep1315, i64 %indvars.iv1537 ; 18 uses
  %i.ctf = getelementptr [2048 x i8], ptr %i.cte, i64 %indvars.iv1545
  %i.ctg = getelementptr i8, ptr %i.ctf, i64 -2048 ; 3 uses
  %i.cth = getelementptr inbounds [4 x i8], ptr %i.ctg, i64 %i.ctc
  %i.cti = load float, ptr %i.cth, align 4, !tbaa !106
  %i.ctj = fcmp reassoc nsz arcp contract afn ugt float %i.cti, %i.ctb
  br i1 %i.ctj, label %bb.dw, label %bb.dv

bb.du:                                            ; preds = %bb.ek
  %i.ctk = icmp samesign ult i64 %i.ctd, %i.cnn
  br i1 %i.ctk, label %.preheader1127, label %._crit_edge1319, !llvm.loop !117

bb.dv:                                            ; preds = %.preheader1121
  %i.ctl = load i8, ptr %gep1316, align 1, !tbaa !75
  %i.ctm = add i8 %i.ctl, 1
  store i8 %i.ctm, ptr %gep1316, align 1, !tbaa !75
  br label %bb.dw

bb.dw:                                            ; preds = %.preheader1121, %bb.dv
  %i.ctn = getelementptr inbounds nuw [4 x i8], ptr %i.ctg, i64 %indvars.iv1542
  %i.cto = load float, ptr %i.ctn, align 4, !tbaa !106
  %i.ctp = fcmp reassoc nsz arcp contract afn ugt float %i.cto, %i.ctb
  br i1 %i.ctp, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ctq = load i8, ptr %gep1316, align 1, !tbaa !75
  %i.ctr = add i8 %i.ctq, 1
  store i8 %i.ctr, ptr %gep1316, align 1, !tbaa !75
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.cts = getelementptr inbounds nuw [4 x i8], ptr %i.ctg, i64 %i.ctd
  %i.ctt = load float, ptr %i.cts, align 4, !tbaa !106
  %i.ctu = fcmp reassoc nsz arcp contract afn ugt float %i.ctt, %i.ctb
  br i1 %i.ctu, label %.preheader1114.1, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ctv = load i8, ptr %gep1316, align 1, !tbaa !75
  %i.ctw = add i8 %i.ctv, 1
  store i8 %i.ctw, ptr %gep1316, align 1, !tbaa !75
  br label %.preheader1114.1

.preheader1114.1:                                 ; preds = %bb.dz, %bb.dy
  %i.ctx = getelementptr inbounds nuw [2048 x i8], ptr %i.cte, i64 %indvars.iv1545 ; 3 uses
  %i.cty = getelementptr inbounds [4 x i8], ptr %i.ctx, i64 %i.ctc
  %i.ctz = load float, ptr %i.cty, align 4, !tbaa !106
  %i.cua = fcmp reassoc nsz arcp contract afn ugt float %i.ctz, %i.ctb
  br i1 %i.cua, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %.preheader1114.1
  %i.cub = load i8, ptr %gep1316, align 1, !tbaa !75
  %i.cuc = add i8 %i.cub, 1
  store i8 %i.cuc, ptr %gep1316, align 1, !tbaa !75
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %.preheader1114.1
  %i.cud = getelementptr inbounds nuw [4 x i8], ptr %i.ctx, i64 %indvars.iv1542
  %i.cue = load float, ptr %i.cud, align 4, !tbaa !106
  %i.cuf = fcmp reassoc nsz arcp contract afn ugt float %i.cue, %i.ctb
  br i1 %i.cuf, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.cug = load i8, ptr %gep1316, align 1, !tbaa !75
  %i.cuh = add i8 %i.cug, 1
  store i8 %i.cuh, ptr %gep1316, align 1, !tbaa !75
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.cui = getelementptr inbounds nuw [4 x i8], ptr %i.ctx, i64 %i.ctd
  %i.cuj = load float, ptr %i.cui, align 4, !tbaa !106
  %i.cuk = fcmp reassoc nsz arcp contract afn ugt float %i.cuj, %i.ctb
  br i1 %i.cuk, label %.preheader1114.2, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.cul = load i8, ptr %gep1316, align 1, !tbaa !75
  %i.cum = add i8 %i.cul, 1
  store i8 %i.cum, ptr %gep1316, align 1, !tbaa !75
  br label %.preheader1114.2

.preheader1114.2:                                 ; preds = %bb.ee, %bb.ed
  %i.cun = getelementptr inbounds nuw [2048 x i8], ptr %i.cte, i64 %i.crj ; 3 uses
  %i.cuo = getelementptr inbounds [4 x i8], ptr %i.cun, i64 %i.ctc
  %i.cup = load float, ptr %i.cuo, align 4, !tbaa !106
  %i.cuq = fcmp reassoc nsz arcp contract afn ugt float %i.cup, %i.ctb
  br i1 %i.cuq, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %.preheader1114.2
  %i.cur = load i8, ptr %gep1316, align 1, !tbaa !75
  %i.cus = add i8 %i.cur, 1
  store i8 %i.cus, ptr %gep1316, align 1, !tbaa !75
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %.preheader1114.2
  %i.cut = getelementptr inbounds nuw [4 x i8], ptr %i.cun, i64 %indvars.iv1542
  %i.cuu = load float, ptr %i.cut, align 4, !tbaa !106
  %i.cuv = fcmp reassoc nsz arcp contract afn ugt float %i.cuu, %i.ctb
  br i1 %i.cuv, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.cuw = load i8, ptr %gep1316, align 1, !tbaa !75
  %i.cux = add i8 %i.cuw, 1
  store i8 %i.cux, ptr %gep1316, align 1, !tbaa !75
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.cuy = getelementptr inbounds nuw [4 x i8], ptr %i.cun, i64 %i.ctd
  %i.cuz = load float, ptr %i.cuy, align 4, !tbaa !106
  %i.cva = fcmp reassoc nsz arcp contract afn ugt float %i.cuz, %i.ctb
  br i1 %i.cva, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.cvb = load i8, ptr %gep1316, align 1, !tbaa !75
  %i.cvc = add i8 %i.cvb, 1
  store i8 %i.cvc, ptr %gep1316, align 1, !tbaa !75
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %indvars.iv.next1538 = add nuw nsw i64 %indvars.iv1537, 1 ; 2 uses
  %exitcond1541.not = icmp eq i64 %indvars.iv.next1538, %wide.trip.count
  br i1 %exitcond1541.not, label %bb.du, label %.preheader1121, !llvm.loop !118

._crit_edge1347.split.loopexit:                   ; preds = %._crit_edge1343
  %.pre1622 = load i16, ptr %i.f, align 2, !tbaa !11
  br label %._crit_edge1347.split

._crit_edge1347.split:                            ; preds = %._crit_edge1347.split.loopexit, %.lr.ph1346, %._crit_edge1321.split
  %i.cvd = phi i16 [ %.pre1622, %._crit_edge1347.split.loopexit ], [ %.pre1623, %.lr.ph1346 ], [ %.pre1623, %._crit_edge1321.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %indvars.iv.next1425 = add nuw nsw i64 %indvars.iv1424, 496 ; 2 uses
  %i.cve = zext i16 %i.cvd to i32                 ; 2 uses
  %i.cvf = add nsw i32 %i.cve, -19
  %i.cvg = sext i32 %i.cvf to i64
  %i.cvh = icmp slt i64 %indvars.iv.next1425, %i.cvg
  %indvars.iv.next1456 = add nuw nsw i64 %indvars.iv1455, 496
  %indvars.iv.next1483 = add nuw nsw i64 %indvars.iv1482, 496
  br i1 %i.cvh, label %bb.cn, label %._crit_edge1353.loopexit, !llvm.loop !119

.lr.ph1342:                                       ; preds = %.lr.ph1346.split, %._crit_edge1343
  %indvars.iv1588 = phi i64 [ %umin1587, %.lr.ph1346.split ], [ %i.cvj, %._crit_edge1343 ] ; 7 uses
  %invariant.gep1335 = getelementptr inbounds nuw [3072 x i8], ptr %i.ako, i64 %indvars.iv1588
  %i.cvi = add nuw nsw i64 %indvars.iv1588, %indvars.iv1429 ; 3 uses
  %i.cvj = add nuw nsw i64 %indvars.iv1588, 1     ; 3 uses
  br label %bb.el

._crit_edge1343:                                  ; preds = %.preheader1125
  %i.cvk = icmp samesign ult i64 %i.cvj, %i.csa
  br i1 %i.cvk, label %.lr.ph1342, label %._crit_edge1347.split.loopexit, !llvm.loop !120

bb.el:                                            ; preds = %.lr.ph1342, %.preheader1125
  %indvars.iv1585 = phi i64 [ %umin, %.lr.ph1342 ], [ %i.cvn, %.preheader1125 ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.cvl = add nsw i64 %indvars.iv1585, -2        ; 5 uses
  %i.cvm = add nsw i64 %indvars.iv1585, -1        ; 4 uses
  %i.cvn = add nuw nsw i64 %indvars.iv1585, 1     ; 5 uses
  %i.cvo = add nuw nsw i64 %indvars.iv1585, 2     ; 4 uses
  br label %.preheader

.preheader1126:                                   ; preds = %.preheader
  br i1 %i.jy, label %vector.body, label %._crit_edge1330

vector.body:                                      ; preds = %.preheader1126
  %unmaskedload = load <4 x i32>, ptr %i.d, align 16, !tbaa !76 ; 2 uses
  %unmaskedload1909 = load <4 x i32>, ptr %i.afd, align 16, !tbaa !76 ; 2 uses
  %i.cvp = icmp slt <4 x i32> %unmaskedload, %unmaskedload1909
  %i.cvq = icmp sgt <4 x i32> %unmaskedload, %unmaskedload1909
  %i.cvr = select <4 x i1> %i.afc, <4 x i1> %i.cvq, <4 x i1> zeroinitializer
  call void @llvm.masked.store.v4i32.p0(<4 x i32> zeroinitializer, ptr align 16 %i.afd, <4 x i1> %i.cvr), !tbaa !76
  %i.cvs = select <4 x i1> %i.afc, <4 x i1> %i.cvp, <4 x i1> zeroinitializer
  call void @llvm.masked.store.v4i32.p0(<4 x i32> zeroinitializer, ptr align 16 %i.d, <4 x i1> %i.cvs), !tbaa !76
  br i1 %i.afe, label %._crit_edge1330, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %unmaskedload1910 = load <4 x i32>, ptr %i.afg, align 16, !tbaa !76 ; 2 uses
  %wide.masked.load1799.1 = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr nonnull align 16 %i.afh, <4 x i1> %i.aff, <4 x i32> poison), !tbaa !76 ; 2 uses
  %i.cvt = icmp slt <4 x i32> %unmaskedload1910, %wide.masked.load1799.1
  %i.cvu = icmp sgt <4 x i32> %unmaskedload1910, %wide.masked.load1799.1
  %i.cvv = select <4 x i1> %i.aff, <4 x i1> %i.cvu, <4 x i1> zeroinitializer
  call void @llvm.masked.store.v4i32.p0(<4 x i32> zeroinitializer, ptr align 16 %i.afh, <4 x i1> %i.cvv), !tbaa !76
  %i.cvw = select <4 x i1> %i.aff, <4 x i1> %i.cvt, <4 x i1> zeroinitializer
  call void @llvm.masked.store.v4i32.p0(<4 x i32> zeroinitializer, ptr align 16 %i.afg, <4 x i1> %i.cvw), !tbaa !76
  br label %._crit_edge1330

.preheader:                                       ; preds = %bb.el, %.preheader
  %indvars.iv1556 = phi i64 [ 0, %bb.el ], [ %indvars.iv.next1557, %.preheader ] ; 3 uses
  %i.cvx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv1556
  %i.cvy = getelementptr inbounds nuw [262144 x i8], ptr %i.akr, i64 %indvars.iv1556 ; 5 uses
  %i.cvz = getelementptr [512 x i8], ptr %i.cvy, i64 %indvars.iv1588
  %i.cwa = getelementptr i8, ptr %i.cvz, i64 -1024 ; 5 uses
  %i.cwb = getelementptr inbounds i8, ptr %i.cwa, i64 %i.cvl
  %i.cwc = load i8, ptr %i.cwb, align 1, !tbaa !75
  %i.cwd = sext i8 %i.cwc to i32
  %i.cwe = getelementptr inbounds i8, ptr %i.cwa, i64 %i.cvm
  %i.cwf = load i8, ptr %i.cwe, align 1, !tbaa !75
  %i.cwg = sext i8 %i.cwf to i32
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.cwa, i64 %indvars.iv1585
  %i.cwi = load i8, ptr %i.cwh, align 1, !tbaa !75
  %i.cwj = sext i8 %i.cwi to i32
  %i.cwk = getelementptr inbounds nuw i8, ptr %i.cwa, i64 %i.cvn
  %i.cwl = load i8, ptr %i.cwk, align 1, !tbaa !75
  %i.cwm = sext i8 %i.cwl to i32
  %i.cwn = getelementptr inbounds nuw i8, ptr %i.cwa, i64 %i.cvo
  %i.cwo = load i8, ptr %i.cwn, align 1, !tbaa !75
  %i.cwp = sext i8 %i.cwo to i32
  %i.cwq = getelementptr [512 x i8], ptr %i.cvy, i64 %indvars.iv1588
  %i.cwr = getelementptr i8, ptr %i.cwq, i64 -512 ; 5 uses
  %i.cws = getelementptr inbounds i8, ptr %i.cwr, i64 %i.cvl
  %i.cwt = load i8, ptr %i.cws, align 1, !tbaa !75
  %i.cwu = sext i8 %i.cwt to i32
  %i.cwv = getelementptr inbounds i8, ptr %i.cwr, i64 %i.cvm
  %i.cww = load i8, ptr %i.cwv, align 1, !tbaa !75
  %i.cwx = sext i8 %i.cww to i32
  %i.cwy = getelementptr inbounds nuw i8, ptr %i.cwr, i64 %indvars.iv1585
  %i.cwz = load i8, ptr %i.cwy, align 1, !tbaa !75
  %i.cxa = sext i8 %i.cwz to i32
  %i.cxb = getelementptr inbounds nuw i8, ptr %i.cwr, i64 %i.cvn
  %i.cxc = load i8, ptr %i.cxb, align 1, !tbaa !75
  %i.cxd = sext i8 %i.cxc to i32
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.cwr, i64 %i.cvo
  %i.cxf = load i8, ptr %i.cxe, align 1, !tbaa !75
  %i.cxg = sext i8 %i.cxf to i32
  %i.cxh = getelementptr inbounds nuw [512 x i8], ptr %i.cvy, i64 %indvars.iv1588 ; 5 uses
  %i.cxi = getelementptr inbounds i8, ptr %i.cxh, i64 %i.cvl
  %i.cxj = load i8, ptr %i.cxi, align 1, !tbaa !75
  %i.cxk = sext i8 %i.cxj to i32
  %i.cxl = getelementptr inbounds i8, ptr %i.cxh, i64 %i.cvm
  %i.cxm = load i8, ptr %i.cxl, align 1, !tbaa !75
  %i.cxn = sext i8 %i.cxm to i32
  %i.cxo = getelementptr inbounds nuw i8, ptr %i.cxh, i64 %indvars.iv1585
  %i.cxp = load i8, ptr %i.cxo, align 1, !tbaa !75
  %i.cxq = sext i8 %i.cxp to i32
  %i.cxr = getelementptr inbounds nuw i8, ptr %i.cxh, i64 %i.cvn
  %i.cxs = load i8, ptr %i.cxr, align 1, !tbaa !75
  %i.cxt = sext i8 %i.cxs to i32
  %i.cxu = getelementptr inbounds nuw i8, ptr %i.cxh, i64 %i.cvo
  %i.cxv = load i8, ptr %i.cxu, align 1, !tbaa !75
  %i.cxw = sext i8 %i.cxv to i32
  %i.cxx = getelementptr inbounds nuw [512 x i8], ptr %i.cvy, i64 %i.cvj ; 2 uses
  %i.cxy = getelementptr inbounds i8, ptr %i.cxx, i64 %i.cvl
  %i.cxz = load i8, ptr %i.cxy, align 1, !tbaa !75
  %i.cya = sext i8 %i.cxz to i32
  %i.cyb = getelementptr inbounds i8, ptr %i.cxx, i64 %i.cvm
  %i.cyc = load <4 x i8>, ptr %i.cyb, align 1, !tbaa !75
  %i.cyd = getelementptr inbounds nuw [512 x i8], ptr %i.cvy, i64 %indvars.iv1588
  %i.cye = getelementptr inbounds nuw i8, ptr %i.cyd, i64 1024 ; 2 uses
  %i.cyf = getelementptr inbounds i8, ptr %i.cye, i64 %i.cvl
  %i.cyg = load <4 x i8>, ptr %i.cyf, align 1, !tbaa !75
  %i.cyh = getelementptr inbounds nuw i8, ptr %i.cye, i64 %i.cvo
  %i.cyi = load i8, ptr %i.cyh, align 1, !tbaa !75
  %i.cyj = sext i8 %i.cyi to i32
  %i.cyk = sext <4 x i8> %i.cyg to <4 x i32>
  %i.cyl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cyk)
  %i.cym = sext <4 x i8> %i.cyc to <4 x i32>
  %i.cyn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cym)
  %op.rdx1839 = add i32 %i.cyn, %i.cwd
  %op.rdx1840 = add nsw i32 %i.cwg, %i.cwj
  %op.rdx1841 = add nsw i32 %i.cwm, %i.cwp
  %op.rdx1842 = add nsw i32 %i.cwu, %i.cwx
  %op.rdx1843 = add nsw i32 %i.cxa, %i.cxd
  %op.rdx1844 = add nsw i32 %i.cxg, %i.cxk
  %op.rdx1845 = add nsw i32 %i.cxn, %i.cxq
  %op.rdx1846 = add nsw i32 %i.cxt, %i.cxw
  %op.rdx1847 = add nsw i32 %i.cya, %i.cyj
  %op.rdx1848 = add i32 %op.rdx1839, %op.rdx1840
  %op.rdx1849 = add nsw i32 %op.rdx1841, %op.rdx1842
  %op.rdx1850 = add nsw i32 %op.rdx1843, %op.rdx1844
  %op.rdx1851 = add nsw i32 %op.rdx1845, %op.rdx1846
  %op.rdx1852 = add i32 %op.rdx1847, %i.cyl
  %op.rdx1853 = add i32 %op.rdx1848, %op.rdx1849
  %op.rdx1854 = add nsw i32 %op.rdx1850, %op.rdx1851
  %op.rdx1855 = add i32 %op.rdx1853, %op.rdx1854
  %op.rdx1856 = add i32 %op.rdx1855, %op.rdx1852
  store i32 %op.rdx1856, ptr %i.cvx, align 4, !tbaa !76
  %indvars.iv.next1557 = add nuw nsw i64 %indvars.iv1556, 1 ; 2 uses
  %exitcond1560.not = icmp eq i64 %indvars.iv.next1557, %wide.trip.count
  br i1 %exitcond1560.not, label %.preheader1126, label %.preheader, !llvm.loop !121

._crit_edge1330:                                  ; preds = %vector.body, %vector.body.1, %.preheader1126
  %i.cyo = load i32, ptr %i.d, align 16, !tbaa !76
  br label %bb.em

bb.em:                                            ; preds = %bb.em, %._crit_edge1330
  %indvars.iv1567.epil = phi i64 [ 1, %._crit_edge1330 ], [ %indvars.iv.next1568.epil, %bb.em ] ; 2 uses
  %.0856.in1331.epil = phi i32 [ %i.cyo, %._crit_edge1330 ], [ %spec.select10541076.epil, %bb.em ]
  %epil.iter1878 = phi i64 [ 0, %._crit_edge1330 ], [ %epil.iter1878.next, %bb.em ]
  %i.cyp = and i32 %.0856.in1331.epil, 65535
  %i.cyq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv1567.epil
  %i.cyr = load i32, ptr %i.cyq, align 4, !tbaa !76
  %spec.select10541076.epil = tail call i32 @llvm.smax.i32(i32 %i.cyr, i32 %i.cyp) ; 2 uses
  %indvars.iv.next1568.epil = add nuw nsw i64 %indvars.iv1567.epil, 1
  %epil.iter1878.next = add i64 %epil.iter1878, 1 ; 2 uses
  %epil.iter1878.cmp.not = icmp eq i64 %epil.iter1878.next, %xtraiter1877
  br i1 %epil.iter1878.cmp.not, label %.epilog-lcssa1880, label %bb.em, !llvm.loop !122

.epilog-lcssa1880:                                ; preds = %bb.em
  %i.cys = trunc i32 %spec.select10541076.epil to i16 ; 2 uses
  %i.cyt = lshr i16 %i.cys, 3
  %i.cyu = sub i16 %i.cys, %i.cyt
  %i.cyv = zext i16 %i.cyu to i32                 ; 2 uses
  %invariant.gep1337 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep1335, i64 %indvars.iv1585 ; 2 uses
  br label %bb.en

.preheader1125:                                   ; preds = %bb.ep
  %i.cyw = add nuw nsw i64 %indvars.iv1585, %indvars.iv1424 ; 3 uses
  %i.cyx = sdiv i32 %.sroa.0.1.1, %.sroa.12.1.1
  %i.cyy = trunc i32 %i.cyx to i16
  %i.cyz = load i16, ptr %i.f, align 2, !tbaa !11
  %i.cza = zext i16 %i.cyz to i64
  %i.czb = mul i64 %i.cvi, %i.cza
  %i.czc = add i64 %i.czb, %i.cyw
  %i.czd = and i64 %i.czc, 4294967295
  %i.cze = getelementptr inbounds nuw [8 x i8], ptr %i.cry, i64 %i.czd
  store i16 %i.cyy, ptr %i.cze, align 2, !tbaa !79
  %i.czf = sdiv i32 %.sroa.6.1.1, %.sroa.12.1.1
  %i.czg = trunc i32 %i.czf to i16
  %i.czh = load i16, ptr %i.f, align 2, !tbaa !11
  %i.czi = zext i16 %i.czh to i64
  %i.czj = mul i64 %i.cvi, %i.czi
  %i.czk = add i64 %i.czj, %i.cyw
  %i.czl = and i64 %i.czk, 4294967295
  %i.czm = getelementptr inbounds nuw [8 x i8], ptr %i.cry, i64 %i.czl
  %i.czn = getelementptr inbounds nuw i8, ptr %i.czm, i64 2
  store i16 %i.czg, ptr %i.czn, align 2, !tbaa !79
  %i.czo = sdiv i32 %.sroa.9.1.1, %.sroa.12.1.1
  %i.czp = trunc i32 %i.czo to i16
  %i.czq = load i16, ptr %i.f, align 2, !tbaa !11
  %i.czr = zext i16 %i.czq to i64
  %i.czs = mul i64 %i.cvi, %i.czr
  %i.czt = add i64 %i.czs, %i.cyw
  %i.czu = and i64 %i.czt, 4294967295
  %i.czv = getelementptr inbounds nuw [8 x i8], ptr %i.cry, i64 %i.czu
  %i.czw = getelementptr inbounds nuw i8, ptr %i.czv, i64 4
  store i16 %i.czp, ptr %i.czw, align 2, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.czx = icmp samesign ult i64 %i.cvn, %i.crz
  br i1 %i.czx, label %bb.el, label %._crit_edge1343, !llvm.loop !123

bb.en:                                            ; preds = %bb.ep, %.epilog-lcssa1880
  %.sroa.0.0 = phi i32 [ 0, %.epilog-lcssa1880 ], [ %.sroa.0.1.1, %bb.ep ] ; 2 uses
  %.sroa.6.0 = phi i32 [ 0, %.epilog-lcssa1880 ], [ %.sroa.6.1.1, %bb.ep ] ; 2 uses
  %.sroa.9.0 = phi i32 [ 0, %.epilog-lcssa1880 ], [ %.sroa.9.1.1, %bb.ep ] ; 2 uses
  %.sroa.12.0 = phi i32 [ 0, %.epilog-lcssa1880 ], [ %.sroa.12.1.1, %bb.ep ] ; 2 uses
  %indvars.iv1576 = phi i64 [ 0, %.epilog-lcssa1880 ], [ %indvars.iv.next1577.1, %bb.ep ] ; 4 uses
  %i.czy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv1576
  %i.czz = load i32, ptr %i.czy, align 8, !tbaa !76
  %.not1019 = icmp slt i32 %i.czz, %i.cyv
  br i1 %.not1019, label %bb.eo, label %.preheader1120

.preheader1120:                                   ; preds = %bb.en
  %gep1338 = getelementptr inbounds nuw [1572864 x i8], ptr %invariant.gep1337, i64 %indvars.iv1576 ; 3 uses
  %i.daa = load i16, ptr %gep1338, align 2, !tbaa !79
  %i.dab = zext i16 %i.daa to i32
  %i.dac = add nsw i32 %.sroa.0.0, %i.dab
  %i.dad = getelementptr inbounds nuw i8, ptr %gep1338, i64 2
  %i.dae = load i16, ptr %i.dad, align 2, !tbaa !79
  %i.daf = zext i16 %i.dae to i32
  %i.dag = add nsw i32 %.sroa.6.0, %i.daf
  %i.dah = getelementptr inbounds nuw i8, ptr %gep1338, i64 4
  %i.dai = load i16, ptr %i.dah, align 2, !tbaa !79
  %i.daj = zext i16 %i.dai to i32
  %i.dak = add nsw i32 %.sroa.9.0, %i.daj
  %i.dal = add nsw i32 %.sroa.12.0, 1
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.preheader1120
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.en ], [ %i.dac, %.preheader1120 ] ; 2 uses
  %.sroa.6.1 = phi i32 [ %.sroa.6.0, %bb.en ], [ %i.dag, %.preheader1120 ] ; 2 uses
  %.sroa.9.1 = phi i32 [ %.sroa.9.0, %bb.en ], [ %i.dak, %.preheader1120 ] ; 2 uses
  %.sroa.12.1 = phi i32 [ %.sroa.12.0, %bb.en ], [ %i.dal, %.preheader1120 ] ; 2 uses
  %indvars.iv.next1577 = or disjoint i64 %indvars.iv1576, 1 ; 2 uses
  %i.dam = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next1577
  %i.dan = load i32, ptr %i.dam, align 4, !tbaa !76
  %.not1019.1 = icmp slt i32 %i.dan, %i.cyv
  br i1 %.not1019.1, label %bb.ep, label %.preheader1120.1

.preheader1120.1:                                 ; preds = %bb.eo
  %gep1338.1 = getelementptr inbounds nuw [1572864 x i8], ptr %invariant.gep1337, i64 %indvars.iv.next1577 ; 3 uses
  %i.dao = load i16, ptr %gep1338.1, align 2, !tbaa !79
  %i.dap = zext i16 %i.dao to i32
  %i.daq = add nsw i32 %.sroa.0.1, %i.dap
  %i.dar = getelementptr inbounds nuw i8, ptr %gep1338.1, i64 2
  %i.das = load i16, ptr %i.dar, align 2, !tbaa !79
  %i.dat = zext i16 %i.das to i32
  %i.dau = add nsw i32 %.sroa.6.1, %i.dat
  %i.dav = getelementptr inbounds nuw i8, ptr %gep1338.1, i64 4
  %i.daw = load i16, ptr %i.dav, align 2, !tbaa !79
  %i.dax = zext i16 %i.daw to i32
  %i.day = add nsw i32 %.sroa.9.1, %i.dax
  %i.daz = add nsw i32 %.sroa.12.1, 1
  br label %bb.ep

bb.ep:                                            ; preds = %.preheader1120.1, %bb.eo
  %.sroa.0.1.1 = phi i32 [ %.sroa.0.1, %bb.eo ], [ %i.daq, %.preheader1120.1 ] ; 2 uses
  %.sroa.6.1.1 = phi i32 [ %.sroa.6.1, %bb.eo ], [ %i.dau, %.preheader1120.1 ] ; 2 uses
  %.sroa.9.1.1 = phi i32 [ %.sroa.9.1, %bb.eo ], [ %i.day, %.preheader1120.1 ] ; 2 uses
  %.sroa.12.1.1 = phi i32 [ %.sroa.12.1, %bb.eo ], [ %i.daz, %.preheader1120.1 ] ; 4 uses
  %indvars.iv.next1577.1 = add nuw nsw i64 %indvars.iv1576, 2 ; 2 uses
  %exitcond1580.not.1 = icmp eq i64 %indvars.iv.next1577.1, %wide.trip.count
  br i1 %exitcond1580.not.1, label %.preheader1125, label %bb.en, !llvm.loop !124
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN6LibRaw6cielabEPtPs(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6LibRaw18malloc_omp_buffersEim(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN6LibRaw16free_omp_buffersEPPci(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN6LibRaw18border_interpolateEi(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i32> @llvm.masked.load.v4i32.p0(ptr captures(none), <4 x i1>, <4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4i32.p0(<4 x i32>, ptr captures(none), <4 x i1>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v3i16.p0(<3 x i16>, ptr captures(none), <3 x i1>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { cold noreturn }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !17, i64 22}
!12 = !{!"_ZTS6LibRaw", !13, i64 8, !60, i64 381584, !61, i64 381592, !9, i64 384344, !71, i64 433496, !71, i64 433504, !9, i64 433512, !72, i64 768232, !73, i64 768248, !9, i64 768400, !9, i64 768416, !9, i64 768432, !15, i64 768448, !15, i64 768456, !15, i64 768464, !52, i64 768472, !15, i64 768480, !15, i64 768488, !15, i64 768496, !15, i64 768504}
!13 = !{!"_ZTS13libraw_data_t", !14, i64 0, !16, i64 8, !19, i64 192, !21, i64 632, !27, i64 1928, !43, i64 5088, !44, i64 5232, !45, i64 5536, !8, i64 5584, !8, i64 5588, !48, i64 5592, !51, i64 192680, !54, i64 193480, !56, i64 193504, !57, i64 193768, !15, i64 381568}
!14 = !{!"p1 short", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"_ZTS20libraw_image_sizes_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !17, i64 14, !8, i64 16, !18, i64 24, !8, i64 32, !9, i64 36, !17, i64 164, !9, i64 166}
!17 = !{!"short", !9, i64 0}
!18 = !{!"double", !9, i64 0}
!19 = !{!"_ZTS16libraw_iparams_t", !9, i64 0, !9, i64 4, !9, i64 68, !9, i64 132, !9, i64 196, !9, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !9, i64 348, !9, i64 384, !9, i64 420, !8, i64 428, !20, i64 432}
!20 = !{!"p1 omnipotent char", !15, i64 0}
!21 = !{!"_ZTS17libraw_lensinfo_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !9, i64 20, !9, i64 148, !9, i64 276, !9, i64 404, !17, i64 532, !23, i64 536, !24, i64 544, !25, i64 560}
!22 = !{!"float", !9, i64 0}
!23 = !{!"_ZTS18libraw_nikonlens_t", !22, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7}
!24 = !{!"_ZTS16libraw_dnglens_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!25 = !{!"_ZTS24libraw_makernotes_lens_t", !26, i64 0, !9, i64 8, !17, i64 136, !17, i64 138, !26, i64 144, !17, i64 152, !17, i64 154, !9, i64 156, !17, i64 220, !9, i64 222, !9, i64 238, !22, i64 256, !22, i64 260, !22, i64 264, !22, i64 268, !22, i64 272, !22, i64 276, !22, i64 280, !22, i64 284, !22, i64 288, !22, i64 292, !22, i64 296, !22, i64 300, !22, i64 304, !22, i64 308, !22, i64 312, !26, i64 320, !9, i64 328, !26, i64 456, !9, i64 464, !26, i64 592, !9, i64 600, !17, i64 728, !22, i64 732}
!26 = !{!"long long", !9, i64 0}
!27 = !{!"_ZTS19libraw_makernotes_t", !28, i64 0, !30, i64 168, !32, i64 464, !33, i64 848, !34, i64 1200, !35, i64 1664, !36, i64 1848, !37, i64 2092, !38, i64 2160, !39, i64 2196, !40, i64 2648, !41, i64 2720, !42, i64 2856}
!28 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16, !8, i64 32, !9, i64 36, !17, i64 52, !17, i64 54, !9, i64 56, !17, i64 58, !17, i64 60, !17, i64 62, !17, i64 64, !17, i64 66, !17, i64 68, !17, i64 70, !17, i64 72, !17, i64 74, !17, i64 76, !17, i64 78, !17, i64 80, !17, i64 82, !8, i64 84, !22, i64 88, !17, i64 92, !17, i64 94, !17, i64 96, !17, i64 98, !8, i64 100, !17, i64 104, !8, i64 108, !8, i64 112, !17, i64 116, !8, i64 120, !29, i64 124, !29, i64 132, !29, i64 140, !29, i64 148, !29, i64 156, !9, i64 164}
!29 = !{!"_ZTS13libraw_area_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6}
!30 = !{!"_ZTS25libraw_nikon_makernotes_t", !18, i64 0, !17, i64 8, !17, i64 10, !9, i64 12, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 34, !9, i64 54, !9, i64 58, !9, i64 62, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 69, !9, i64 70, !9, i64 71, !9, i64 73, !9, i64 74, !9, i64 75, !9, i64 76, !9, i64 77, !9, i64 78, !9, i64 82, !9, i64 86, !17, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !9, i64 112, !9, i64 144, !9, i64 145, !9, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !9, i64 160, !9, i64 162, !17, i64 170, !31, i64 172, !17, i64 180, !17, i64 182, !17, i64 184, !8, i64 188, !9, i64 192, !9, i64 212, !8, i64 232, !9, i64 236, !8, i64 248, !20, i64 256, !17, i64 264, !17, i64 266, !9, i64 268, !17, i64 270, !18, i64 272, !18, i64 280, !18, i64 288}
!31 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6}
!32 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !18, i64 8, !9, i64 16, !9, i64 24, !9, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !9, i64 168, !9, i64 200, !8, i64 264, !9, i64 268, !9, i64 276, !9, i64 288}
!33 = !{!"_ZTS18libraw_fuji_info_t", !22, i64 0, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !17, i64 14, !17, i64 16, !17, i64 18, !9, i64 20, !9, i64 53, !22, i64 88, !17, i64 92, !17, i64 94, !9, i64 96, !17, i64 100, !8, i64 104, !8, i64 108, !17, i64 112, !9, i64 114, !17, i64 120, !17, i64 122, !17, i64 124, !17, i64 126, !17, i64 128, !8, i64 132, !17, i64 136, !9, i64 138, !9, i64 151, !9, i64 156, !8, i64 164, !17, i64 168, !8, i64 172, !17, i64 176, !9, i64 178, !9, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !9, i64 336, !8, i64 344}
!34 = !{!"_ZTS27libraw_olympus_makernotes_t", !9, i64 0, !17, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !9, i64 64, !9, i64 72, !17, i64 82, !9, i64 84, !17, i64 88, !17, i64 90, !9, i64 92, !9, i64 352, !17, i64 392, !9, i64 394, !9, i64 396, !9, i64 404, !17, i64 416, !17, i64 418, !17, i64 420, !17, i64 422, !18, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !8, i64 452, !17, i64 456, !17, i64 458}
!35 = !{!"_ZTS18libraw_sony_info_t", !17, i64 0, !9, i64 2, !9, i64 3, !8, i64 4, !9, i64 8, !8, i64 12, !9, i64 16, !9, i64 17, !17, i64 18, !9, i64 20, !9, i64 24, !9, i64 25, !17, i64 26, !9, i64 28, !9, i64 38, !9, i64 39, !9, i64 40, !17, i64 48, !9, i64 50, !9, i64 51, !9, i64 52, !17, i64 54, !8, i64 56, !17, i64 60, !9, i64 62, !17, i64 66, !17, i64 68, !17, i64 70, !17, i64 72, !17, i64 74, !17, i64 76, !17, i64 78, !8, i64 80, !22, i64 84, !17, i64 88, !8, i64 92, !8, i64 96, !17, i64 100, !9, i64 102, !8, i64 124, !17, i64 128, !8, i64 132, !9, i64 136, !9, i64 137, !17, i64 138, !17, i64 140, !17, i64 142, !17, i64 144, !17, i64 146, !17, i64 148, !17, i64 150, !17, i64 152, !17, i64 154, !8, i64 156, !17, i64 160, !9, i64 162, !22, i64 180}
!36 = !{!"_ZTS25libraw_kodak_makernotes_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !9, i64 12, !9, i64 48, !9, i64 84, !9, i64 120, !9, i64 156, !9, i64 192, !17, i64 228, !17, i64 230, !17, i64 232, !17, i64 234, !22, i64 236, !22, i64 240}
!37 = !{!"_ZTS29libraw_panasonic_makernotes_t", !17, i64 0, !17, i64 2, !9, i64 4, !8, i64 36, !22, i64 40, !9, i64 44, !17, i64 56, !17, i64 58, !8, i64 60, !8, i64 64}
!38 = !{!"_ZTS26libraw_pentax_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !17, i64 12, !8, i64 16, !8, i64 20, !17, i64 24, !9, i64 26, !17, i64 30, !9, i64 32, !9, i64 33, !17, i64 34}
!39 = !{!"_ZTS22libraw_p1_makernotes_t", !9, i64 0, !9, i64 64, !9, i64 128, !9, i64 384}
!40 = !{!"_ZTS25libraw_ricoh_makernotes_t", !17, i64 0, !9, i64 4, !9, i64 12, !17, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !17, i64 40, !17, i64 42, !17, i64 44, !17, i64 46, !17, i64 48, !17, i64 50, !18, i64 56, !18, i64 64}
!41 = !{!"_ZTS27libraw_samsung_makernotes_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 40, !18, i64 88, !8, i64 96, !9, i64 100}
!42 = !{!"_ZTS24libraw_metadata_common_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !22, i64 36, !22, i64 40, !22, i64 44, !22, i64 48, !22, i64 52, !22, i64 56, !22, i64 60, !17, i64 64, !9, i64 66, !22, i64 196, !9, i64 200, !8, i64 296}
!43 = !{!"_ZTS21libraw_shootinginfo_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !9, i64 14, !9, i64 78}
!44 = !{!"_ZTS22libraw_output_params_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 64, !9, i64 112, !22, i64 128, !22, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !20, i64 168, !20, i64 176, !20, i64 184, !20, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !9, i64 224, !8, i64 240, !8, i64 244, !22, i64 248, !22, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !22, i64 288, !22, i64 292, !8, i64 296, !8, i64 300}
!45 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !22, i64 28, !9, i64 32, !46, i64 40}
!46 = !{!"p2 omnipotent char", !47, i64 0}
!47 = !{!"any p2 pointer", !15, i64 0}
!48 = !{!"_ZTS18libraw_colordata_t", !9, i64 0, !9, i64 131072, !8, i64 147488, !8, i64 147492, !8, i64 147496, !9, i64 147500, !22, i64 147516, !22, i64 147520, !9, i64 147524, !9, i64 147652, !9, i64 147668, !9, i64 147684, !9, i64 147732, !9, i64 147780, !9, i64 147828, !49, i64 147876, !22, i64 147912, !22, i64 147916, !9, i64 147920, !9, i64 147984, !9, i64 148048, !9, i64 148112, !9, i64 148176, !9, i64 148193, !15, i64 148264, !8, i64 148272, !9, i64 148276, !9, i64 148308, !50, i64 148648, !9, i64 181624, !9, i64 185720, !8, i64 187000, !9, i64 187004, !8, i64 187076, !8, i64 187080}
!49 = !{!"_ZTS5ph1_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !22, i64 32}
!50 = !{!"_ZTS19libraw_dng_levels_t", !8, i64 0, !9, i64 4, !8, i64 16420, !9, i64 16424, !22, i64 32840, !9, i64 32844, !9, i64 32860, !9, i64 32868, !8, i64 32884, !9, i64 32888, !9, i64 32904, !22, i64 32920, !22, i64 32924, !9, i64 32928}
!51 = !{!"_ZTS17libraw_imgother_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !52, i64 16, !8, i64 24, !9, i64 28, !53, i64 156, !9, i64 204, !9, i64 716, !9, i64 780}
!52 = !{!"long", !9, i64 0}
!53 = !{!"_ZTS17libraw_gps_info_t", !9, i64 0, !9, i64 12, !9, i64 24, !22, i64 36, !9, i64 40, !9, i64 41, !9, i64 42, !9, i64 43, !9, i64 44}
!54 = !{!"_ZTS18libraw_thumbnail_t", !55, i64 0, !17, i64 4, !17, i64 6, !8, i64 8, !8, i64 12, !20, i64 16}
!55 = !{!"_ZTS24LibRaw_thumbnail_formats", !9, i64 0}
!56 = !{!"_ZTS23libraw_thumbnail_list_t", !8, i64 0, !9, i64 8}
!57 = !{!"_ZTS16libraw_rawdata_t", !15, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !14, i64 56, !14, i64 64, !19, i64 72, !16, i64 512, !59, i64 696, !48, i64 712}
!58 = !{!"p1 float", !15, i64 0}
!59 = !{!"_ZTS31libraw_internal_output_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !17, i64 12, !17, i64 14}
!60 = !{!"p1 _ZTS10LibRaw_TLS", !15, i64 0}
!61 = !{!"_ZTS22libraw_internal_data_t", !62, i64 0, !59, i64 64, !65, i64 80, !67, i64 96, !68, i64 136}
!62 = !{!"_ZTS15internal_data_t", !63, i64 0, !64, i64 8, !8, i64 16, !20, i64 24, !26, i64 32, !26, i64 40, !9, i64 48}
!63 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !15, i64 0}
!64 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!65 = !{!"_ZTS13output_data_t", !66, i64 0, !66, i64 8}
!66 = !{!"p1 int", !15, i64 0}
!67 = !{!"_ZTS15identify_data_t", !8, i64 0, !26, i64 8, !26, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!68 = !{!"_ZTS15unpacker_data_t", !17, i64 0, !9, i64 2, !9, i64 10, !8, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !26, i64 56, !26, i64 64, !26, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !69, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !26, i64 144, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !70, i64 192, !9, i64 440, !8, i64 2488, !8, i64 2492, !17, i64 2496, !17, i64 2498, !8, i64 2500, !8, i64 2504, !8, i64 2508, !8, i64 2512, !8, i64 2516, !8, i64 2520, !8, i64 2524, !9, i64 2528, !17, i64 2608}
!69 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !9, i64 0}
!70 = !{!"_ZTS12pana8_tags_t", !9, i64 0, !9, i64 24, !17, i64 36, !9, i64 38, !9, i64 46, !9, i64 80, !9, i64 114, !17, i64 148, !17, i64 150, !9, i64 152, !9, i64 192, !9, i64 204, !9, i64 224, !9, i64 234}
!71 = !{!"p1 _ZTS6decode", !15, i64 0}
!72 = !{!"_ZTS13libraw_memmgr", !47, i64 0, !8, i64 8}
!73 = !{!"_ZTS18libraw_callbacks_t", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144}
!74 = !{!12, !17, i64 20}
!75 = !{!9, !9, i64 0}
!76 = !{!8, !8, i64 0}
!77 = !{!78, !78, i64 0}
!78 = !{!"_ZTS17LibRaw_exceptions", !9, i64 0}
!79 = !{!17, !17, i64 0}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.mustprogress"}
!82 = distinct !{!82, !81}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !81}
!85 = !{!12, !14, i64 8}
!86 = distinct !{!86, !81}
!87 = distinct !{!87, !81}
!88 = distinct !{!88, !81}
!89 = !{!20, !20, i64 0}
!90 = distinct !{!90, !81}
!91 = distinct !{!91, !81}
!92 = distinct !{!92, !81}
!93 = distinct !{!93, !81}
!94 = distinct !{!94, !81}
!95 = distinct !{!95, !81}
!96 = distinct !{!96, !81}
!97 = distinct !{!97, !81}
!98 = distinct !{!98, !81}
!99 = distinct !{!99, !81}
!100 = distinct !{!100, !81}
!101 = distinct !{!101, !81}
!102 = distinct !{!102, !81}
!103 = distinct !{!103, !81}
!104 = distinct !{!104, !81}
!105 = distinct !{!105, !81}
!106 = !{!22, !22, i64 0}
!107 = distinct !{!107, !81, !108, !109}
!108 = !{!"llvm.loop.isvectorized", i32 1}
!109 = !{!"llvm.loop.unroll.runtime.disable"}
!110 = distinct !{!110, !81}
!111 = distinct !{!111, !81}
!112 = distinct !{!112, !81, !109, !108}
!113 = distinct !{!113, !81}
!114 = distinct !{!114, !81}
!115 = distinct !{!115, !116}
!116 = !{!"llvm.loop.unroll.disable"}
!117 = distinct !{!117, !81}
!118 = distinct !{!118, !81}
!119 = distinct !{!119, !81}
!120 = distinct !{!120, !81}
!121 = distinct !{!121, !81}
!122 = distinct !{!122, !116}
!123 = distinct !{!123, !81}
!124 = distinct !{!124, !81}
end_hunk_1
