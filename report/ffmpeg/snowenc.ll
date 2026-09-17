Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snowenc?download=true
inline.NumInlined: 82
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 29
begin_hunk_0_@encode_q_branch:bb.a
  br i1 %i.aga, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.agb = ashr i32 %i.afz, 31                    ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !144
  %i.age = add nsw i32 %i.agb, 1
  %i.agf = add i32 %i.age, %i.agd
  %i.agg = trunc i32 %i.agf to i8
  %i.agh = load ptr, ptr %i.adm, align 8, !tbaa !145
  store i8 %i.agg, ptr %i.agh, align 1, !tbaa !86
  %i.agi = load i32, ptr %i.agc, align 4, !tbaa !144
  %i.agj = icmp sgt i32 %i.agi, -1
  %i.agk = load ptr, ptr %i.adm, align 8, !tbaa !145
  %i.agl = zext i1 %i.agj to i64
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agk, i64 %i.agl
  store ptr %i.agm, ptr %i.adm, align 8, !tbaa !145
  %i.agn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ago = load i32, ptr %i.agn, align 8, !tbaa !143
  %.not16.i.i573 = icmp eq i32 %i.ago, 0
  br i1 %.not16.i.i573, label %._crit_edge.i.i576, label %.lr.ph.i.i574

.lr.ph.i.i574:                                    ; preds = %bb.bz
  %i.agp = trunc nsw i32 %i.agb to i8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %.lr.ph.i.i574
  %i.agq = load ptr, ptr %i.adm, align 8, !tbaa !145 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 1
  store ptr %i.agr, ptr %i.adm, align 8, !tbaa !145
  store i8 %i.agp, ptr %i.agq, align 1, !tbaa !86
  %i.ags = load i32, ptr %i.agn, align 8, !tbaa !143
  %i.agt = add nsw i32 %i.ags, -1                 ; 2 uses
  store i32 %i.agt, ptr %i.agn, align 8, !tbaa !143
  %.not.i.i575 = icmp eq i32 %i.agt, 0
  br i1 %.not.i.i575, label %._crit_edge.i.i576, label %bb.ca, !llvm.loop !2

._crit_edge.i.i576:                               ; preds = %bb.ca, %bb.bz
  %i.agu = load i32, ptr %5, align 8, !tbaa !142  ; 2 uses
  %i.agv = ashr i32 %i.agu, 8
  store i32 %i.agv, ptr %i.agc, align 4, !tbaa !144
  %.pre.i577 = load i32, ptr %i.afo, align 4, !tbaa !141
  br label %renorm_encoder.exit.i572

bb.cb:                                            ; preds = %bb.by
  %i.agw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.agx = load i32, ptr %i.agw, align 8, !tbaa !143
  %i.agy = add nsw i32 %i.agx, 1
  store i32 %i.agy, ptr %i.agw, align 8, !tbaa !143
  br label %renorm_encoder.exit.i572

renorm_encoder.exit.i572:                         ; preds = %bb.cb, %._crit_edge.i.i576
  %i.agz = phi i32 [ %i.afs, %bb.cb ], [ %.pre.i577, %._crit_edge.i.i576 ]
  %i.aha = phi i32 [ %i.afu, %bb.cb ], [ %i.agu, %._crit_edge.i.i576 ]
  %i.ahb = shl i32 %i.aha, 8
  %i.ahc = and i32 %i.ahb, 65280
  store i32 %i.ahc, ptr %5, align 8, !tbaa !142
  %i.ahd = shl i32 %i.agz, 8
  store i32 %i.ahd, ptr %i.afo, align 4, !tbaa !141
  br label %put_rac.exit578

put_rac.exit578:                                  ; preds = %put_rac.exit570, %renorm_encoder.exit.i572
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ahf = sub nsw i32 %i.abe, %i.cg
  call fastcc void @put_symbol(ptr noundef nonnull %5, ptr noundef nonnull %i.ahe, i32 noundef %i.ahf, i32 noundef 1)
  %i.ahg = load i32, ptr %i.abg, align 16, !tbaa !96
  %i.ahh = icmp sgt i32 %i.ahg, 2
  br i1 %i.ahh, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %put_rac.exit578
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ahj = sub nsw i32 %.0420, %i.ch
  call fastcc void @put_symbol(ptr noundef nonnull %5, ptr noundef nonnull %i.ahi, i32 noundef %i.ahj, i32 noundef 1)
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ahl = sub nsw i32 %.0421, %i.ck
  call fastcc void @put_symbol(ptr noundef nonnull %5, ptr noundef nonnull %i.ahk, i32 noundef %i.ahl, i32 noundef 1)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %put_rac.exit578
  %i.ahm = load ptr, ptr %i.adm, align 8, !tbaa !145
  %i.ahn = load ptr, ptr %i.adn, align 8, !tbaa !573
  %i.aho = ptrtoint ptr %i.ahm to i64
  %i.ahp = ptrtoint ptr %i.ahn to i64
  %i.ahq = sub i64 %i.aho, %i.ahp                 ; 2 uses
  %i.ahr = load i32, ptr %i.js, align 4, !tbaa !116
  %i.ahs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aht = load i32, ptr %i.ahs, align 8, !tbaa !143
  %i.ahu = trunc i64 %i.ahq to i32
  %i.ahv = add i32 %i.aht, %i.ahu
  %i.ahw = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !144
  %i.ahy = icmp sgt i32 %i.ahx, -1
  %i.ahz = zext i1 %i.ahy to i32
  %spec.select.i579 = add nsw i32 %i.ahv, %i.ahz
  %i.aia = shl nsw i32 %spec.select.i579, 3
  %i.aib = load i32, ptr %i.afo, align 4, !tbaa !141 ; 3 uses
  %.not.i.i580 = icmp ult i32 %i.aib, 65536       ; 2 uses
  %i.aic = lshr i32 %i.aib, 16
  %spec.select.i.i581 = select i1 %.not.i.i580, i32 %i.aib, i32 %i.aic ; 3 uses
  %spec.select12.i.neg.i582 = select i1 %.not.i.i580, i32 0, i32 -16 ; 2 uses
  %.not11.i.i583 = icmp samesign ult i32 %spec.select.i.i581, 256 ; 2 uses
  %i.aid = lshr i32 %spec.select.i.i581, 8
  %.neg7.i584 = add nsw i32 %spec.select12.i.neg.i582, -8
  %.110.i.i585 = select i1 %.not11.i.i583, i32 %spec.select.i.i581, i32 %i.aid
  %.1.i.neg8.i586 = select i1 %.not11.i.i583, i32 %spec.select12.i.neg.i582, i32 %.neg7.i584
  %i.aie = zext nneg i32 %.110.i.i585 to i64
  %i.aif = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.aie
  %i.aig = load i8, ptr %i.aif, align 1, !tbaa !86
  %i.aih = zext i8 %i.aig to i32
  %.neg676 = sub i32 %.neg691, %i.aih
  %i.aii = add i32 %.neg676, %i.aia
  %i.aij = add i32 %i.aii, %.1.i.neg8.i586
  %i.aik = mul nsw i32 %i.aij, %i.ahr
  %i.ail = ashr i32 %i.aik, 7
  %reass.add = sub i32 %i.abf, %.013.lcssa.i663
  %reass.mul = mul i32 %reass.add, %i.abe
  %i.aim = add i32 %i.ail, %.014.lcssa.i
  %i.ain = add i32 %i.aim, %reass.mul             ; 5 uses
  %i.aio = icmp eq i32 %1, 0
  br i1 %i.aio, label %bb.ce, label %bb.cz

bb.ce:                                            ; preds = %bb.cd
  %i.aip = ashr i32 %i.ain, 8                     ; 13 uses
  %i.aiq = ashr i32 %i.yy, 8                      ; 14 uses
  %i.air = icmp slt i32 %i.aiq, 65
  %i.ais = icmp slt i32 %i.aiq, %i.aip
  %or.cond469 = select i1 %i.air, i1 true, i1 %i.ais
  br i1 %or.cond469, label %bb.cf, label %bb.cy

bb.cf:                                            ; preds = %bb.ce
  %i.ait = icmp ult i32 %i.aiq, 255
  br i1 %i.ait, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.aiu = zext nneg i32 %i.aiq to i64
  %i.aiv = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.aiu
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 1
  %i.aix = load i8, ptr %i.aiw, align 1, !tbaa !86
  %i.aiy = zext i8 %i.aix to i32
  %i.aiz = add nsw i32 %i.aiy, -1
  %i.aja = ashr i32 %i.aiz, 4
  br label %ff_sqrt.exit

bb.ch:                                            ; preds = %bb.cf
  %i.ajb = icmp ult i32 %i.aiq, 4096
  br i1 %i.ajb, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ajc = lshr i32 %i.aiq, 4
  %i.ajd = zext nneg i32 %i.ajc to i64
  %i.aje = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.ajd
  %i.ajf = load i8, ptr %i.aje, align 1, !tbaa !86
  %i.ajg = lshr i8 %i.ajf, 2
  %i.ajh = zext nneg i8 %i.ajg to i32
  br label %bb.co

bb.cj:                                            ; preds = %bb.ch
  %i.aji = icmp ult i32 %i.aiq, 16384
  br i1 %i.aji, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.ajj = lshr i32 %i.aiq, 6
  %i.ajk = zext nneg i32 %i.ajj to i64
  %i.ajl = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.ajk
  %i.ajm = load i8, ptr %i.ajl, align 1, !tbaa !86
  %i.ajn = lshr i8 %i.ajm, 1
  %i.ajo = zext nneg i8 %i.ajn to i32
  br label %bb.co

bb.cl:                                            ; preds = %bb.cj
  %i.ajp = icmp ult i32 %i.aiq, 65536
  br i1 %i.ajp, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ajq = lshr i32 %i.aiq, 8
  %i.ajr = zext nneg i32 %i.ajq to i64
  %i.ajs = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.ajr
  %i.ajt = load i8, ptr %i.ajs, align 1, !tbaa !86
  %i.aju = zext i8 %i.ajt to i32
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %.not.i.i588 = icmp ult i32 %i.aiq, 16777216    ; 2 uses
  %spec.select.i.v.i = select i1 %.not.i.i588, i32 16, i32 24
  %spec.select.i.i589 = lshr i32 %i.aiq, %spec.select.i.v.i
  %spec.select7.i.i = select i1 %.not.i.i588, i32 0, i32 8
  %i.ajv = zext nneg i32 %spec.select.i.i589 to i64
  %i.ajw = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ajv
  %i.ajx = load i8, ptr %i.ajw, align 1, !tbaa !86
  %i.ajy = zext i8 %i.ajx to i32
  %i.ajz = add nuw nsw i32 %spec.select7.i.i, %i.ajy
  %i.aka = lshr i32 %i.ajz, 1                     ; 3 uses
  %i.akb = add nuw nsw i32 %i.aka, 2
  %i.akc = lshr i32 %i.aiq, %i.akb                ; 2 uses
  %i.akd = add nuw nsw i32 %i.aka, 8
  %i.ake = lshr i32 %i.akc, %i.akd
  %i.akf = zext nneg i32 %i.ake to i64
  %i.akg = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.akf
  %i.akh = load i8, ptr %i.akg, align 1, !tbaa !86 ; 2 uses
  %i.aki = zext i8 %i.akh to i32
  %i.akj = zext i8 %i.akh to i64
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.akj
  %i.akl = load i32, ptr %i.akk, align 4, !tbaa !87
  %6 = call i32 @llvm.umulh.i32(i32 %i.akc, i32 %i.akl)
  %i.akm = shl i32 %i.aki, %i.aka
  %i.akn = add i32 %6, %i.akm
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %bb.ck, %bb.ci
  %.022.i = phi i32 [ %i.ajh, %bb.ci ], [ %i.ajo, %bb.ck ], [ %i.aju, %bb.cm ], [ %i.akn, %bb.cn ] ; 3 uses
  %i.ako = mul i32 %.022.i, %.022.i
  %i.akp = icmp ult i32 %i.aiq, %i.ako
  %.neg.i = sext i1 %i.akp to i32
  %i.akq = add i32 %.022.i, %.neg.i
  br label %ff_sqrt.exit

ff_sqrt.exit:                                     ; preds = %bb.cg, %bb.co
  %.0.i590 = phi i32 [ %i.aja, %bb.cg ], [ %i.akq, %bb.co ]
  %i.akr = icmp ult i32 %i.aip, 255
  br i1 %i.akr, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %ff_sqrt.exit
  %i.aks = zext nneg i32 %i.aip to i64
  %i.akt = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.aks
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 1
  %i.akv = load i8, ptr %i.aku, align 1, !tbaa !86
  %i.akw = zext i8 %i.akv to i32
  %i.akx = add nsw i32 %i.akw, -1
  %i.aky = ashr i32 %i.akx, 4
  br label %ff_sqrt.exit598

bb.cq:                                            ; preds = %ff_sqrt.exit
  %i.akz = icmp ult i32 %i.aip, 4096
  br i1 %i.akz, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.ala = lshr i32 %i.aip, 4
  %i.alb = zext nneg i32 %i.ala to i64
  %i.alc = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.alb
  %i.ald = load i8, ptr %i.alc, align 1, !tbaa !86
  %i.ale = lshr i8 %i.ald, 2
  %i.alf = zext nneg i8 %i.ale to i32
  br label %bb.cx

bb.cs:                                            ; preds = %bb.cq
  %i.alg = icmp ult i32 %i.aip, 16384
  br i1 %i.alg, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.alh = lshr i32 %i.aip, 6
  %i.ali = zext nneg i32 %i.alh to i64
  %i.alj = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.ali
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !86
  %i.all = lshr i8 %i.alk, 1
  %i.alm = zext nneg i8 %i.all to i32
  br label %bb.cx

bb.cu:                                            ; preds = %bb.cs
  %i.aln = icmp ult i32 %i.aip, 65536
  br i1 %i.aln, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.alo = lshr i32 %i.aip, 8
  %i.alp = zext nneg i32 %i.alo to i64
  %i.alq = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.alp
  %i.alr = load i8, ptr %i.alq, align 1, !tbaa !86
  %i.als = zext i8 %i.alr to i32
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %.not.i.i591 = icmp ult i32 %i.aip, 16777216    ; 2 uses
  %spec.select.i.v.i592 = select i1 %.not.i.i591, i32 16, i32 24
  %spec.select.i.i593 = lshr i32 %i.aip, %spec.select.i.v.i592
  %spec.select7.i.i594 = select i1 %.not.i.i591, i32 0, i32 8
  %i.alt = zext nneg i32 %spec.select.i.i593 to i64
  %i.alu = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.alt
  %i.alv = load i8, ptr %i.alu, align 1, !tbaa !86
  %i.alw = zext i8 %i.alv to i32
  %i.alx = add nuw nsw i32 %spec.select7.i.i594, %i.alw
  %i.aly = lshr i32 %i.alx, 1                     ; 3 uses
  %i.alz = add nuw nsw i32 %i.aly, 2
  %i.ama = lshr i32 %i.aip, %i.alz                ; 2 uses
  %i.amb = add nuw nsw i32 %i.aly, 8
  %i.amc = lshr i32 %i.ama, %i.amb
  %i.amd = zext nneg i32 %i.amc to i64
  %i.ame = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.amd
  %i.amf = load i8, ptr %i.ame, align 1, !tbaa !86 ; 2 uses
  %i.amg = zext i8 %i.amf to i32
  %i.amh = zext i8 %i.amf to i64
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.amh
  %i.amj = load i32, ptr %i.ami, align 4, !tbaa !87
  %7 = call i32 @llvm.umulh.i32(i32 %i.ama, i32 %i.amj)
  %i.amk = shl i32 %i.amg, %i.aly
  %i.aml = add i32 %7, %i.amk
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.ct, %bb.cr
  %.022.i595 = phi i32 [ %i.alf, %bb.cr ], [ %i.alm, %bb.ct ], [ %i.als, %bb.cv ], [ %i.aml, %bb.cw ] ; 3 uses
  %i.amm = mul i32 %.022.i595, %.022.i595
  %i.amn = icmp ult i32 %i.aip, %i.amm
  %.neg.i596 = sext i1 %i.amn to i32
  %i.amo = add i32 %.022.i595, %.neg.i596
  br label %ff_sqrt.exit598

ff_sqrt.exit598:                                  ; preds = %bb.cp, %bb.cx
  %.0.i597 = phi i32 [ %i.aky, %bb.cp ], [ %i.amo, %bb.cx ]
  %i.amp = sub i32 %.0.i590, %.0.i597
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 161840 ; 2 uses
  %i.amr = load i32, ptr %i.amq, align 16, !tbaa !574
  %i.ams = add i32 %i.amp, %i.amr
  store i32 %i.ams, ptr %i.amq, align 16, !tbaa !574
  br label %bb.cz

bb.cy:                                            ; preds = %bb.ce
  %i.amt = getelementptr inbounds nuw i8, ptr %0, i64 158056
  %i.amu = load i32, ptr %i.amt, align 8, !tbaa !575
  %i.amv = getelementptr inbounds nuw i8, ptr %0, i64 161840 ; 2 uses
  %i.amw = load i32, ptr %i.amv, align 16, !tbaa !574
  %i.amx = add nsw i32 %i.amw, %i.amu
  store i32 %i.amx, ptr %i.amv, align 16, !tbaa !574
  br label %bb.cz

bb.cz:                                            ; preds = %ff_sqrt.exit598, %bb.cy, %bb.cd
  %i.amy = load i32, ptr %i.r, align 8, !tbaa !83
  %.not464 = icmp eq i32 %1, %i.amy
  br i1 %.not464, label %bb.df, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.amz = zext nneg i32 %i.gx to i64
  %i.ana = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.amz
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 4 ; 2 uses
  %i.anc = load i32, ptr %i.qq, align 4, !tbaa !141 ; 2 uses
  %i.and = load i8, ptr %i.anb, align 1, !tbaa !86 ; 2 uses
  %i.ane = zext i8 %i.and to i32
  %i.anf = mul nsw i32 %i.anc, %i.ane
  %i.ang = ashr i32 %i.anf, 8
  %i.anh = sub i32 %i.anc, %i.ang                 ; 3 uses
  store i32 %i.anh, ptr %i.qq, align 4, !tbaa !141
  %i.ani = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.anj = zext i8 %i.and to i64
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ani, i64 %i.anj
  %storemerge.i599 = load i8, ptr %i.ank, align 1, !tbaa !86
  store i8 %storemerge.i599, ptr %i.anb, align 1, !tbaa !86
  %i.anl = icmp slt i32 %i.anh, 256
  br i1 %i.anl, label %bb.db, label %put_rac.exit606

bb.db:                                            ; preds = %bb.da
  %i.anm = load i32, ptr %i.k, align 16, !tbaa !142 ; 2 uses
  %i.ann = add nsw i32 %i.anm, -65281             ; 2 uses
  %i.ano = icmp ugt i32 %i.ann, 254
  br i1 %i.ano, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.anp = ashr i32 %i.ann, 31                    ; 2 uses
  %i.anq = load i32, ptr %i.ql, align 4, !tbaa !144
  %i.anr = add nsw i32 %i.anp, 1
  %i.ans = add i32 %i.anr, %i.anq
  %i.ant = trunc i32 %i.ans to i8
  %i.anu = load ptr, ptr %i.l, align 8, !tbaa !145
  store i8 %i.ant, ptr %i.anu, align 1, !tbaa !86
  %i.anv = load i32, ptr %i.ql, align 4, !tbaa !144
  %i.anw = icmp sgt i32 %i.anv, -1
  %i.anx = load ptr, ptr %i.l, align 8, !tbaa !145
  %i.any = zext i1 %i.anw to i64
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anx, i64 %i.any
  store ptr %i.anz, ptr %i.l, align 8, !tbaa !145
  %i.aoa = load i32, ptr %i.qh, align 8, !tbaa !143
  %.not16.i.i601 = icmp eq i32 %i.aoa, 0
  br i1 %.not16.i.i601, label %._crit_edge.i.i604, label %.lr.ph.i.i602

.lr.ph.i.i602:                                    ; preds = %bb.dc
  %i.aob = trunc nsw i32 %i.anp to i8
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dd, %.lr.ph.i.i602
  %i.aoc = load ptr, ptr %i.l, align 8, !tbaa !145 ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 1
  store ptr %i.aod, ptr %i.l, align 8, !tbaa !145
  store i8 %i.aob, ptr %i.aoc, align 1, !tbaa !86
  %i.aoe = load i32, ptr %i.qh, align 8, !tbaa !143
  %i.aof = add nsw i32 %i.aoe, -1                 ; 2 uses
  store i32 %i.aof, ptr %i.qh, align 8, !tbaa !143
  %.not.i.i603 = icmp eq i32 %i.aof, 0
  br i1 %.not.i.i603, label %._crit_edge.i.i604, label %bb.dd, !llvm.loop !2

._crit_edge.i.i604:                               ; preds = %bb.dd, %bb.dc
  %i.aog = load i32, ptr %i.k, align 16, !tbaa !142 ; 2 uses
  %i.aoh = ashr i32 %i.aog, 8
  store i32 %i.aoh, ptr %i.ql, align 4, !tbaa !144
  %.pre.i605 = load i32, ptr %i.qq, align 4, !tbaa !141
  br label %renorm_encoder.exit.i600

bb.de:                                            ; preds = %bb.db
  %i.aoi = load i32, ptr %i.qh, align 8, !tbaa !143
  %i.aoj = add nsw i32 %i.aoi, 1
  store i32 %i.aoj, ptr %i.qh, align 8, !tbaa !143
  br label %renorm_encoder.exit.i600

renorm_encoder.exit.i600:                         ; preds = %bb.de, %._crit_edge.i.i604
  %i.aok = phi i32 [ %i.anh, %bb.de ], [ %.pre.i605, %._crit_edge.i.i604 ]
  %i.aol = phi i32 [ %i.anm, %bb.de ], [ %i.aog, %._crit_edge.i.i604 ]
  %i.aom = shl i32 %i.aol, 8
  %i.aon = and i32 %i.aom, 65280
  store i32 %i.aon, ptr %i.k, align 16, !tbaa !142
  %i.aoo = shl i32 %i.aok, 8
  store i32 %i.aoo, ptr %i.qq, align 4, !tbaa !141
  br label %put_rac.exit606

put_rac.exit606:                                  ; preds = %bb.da, %renorm_encoder.exit.i600
  %i.aop = add nsw i32 %1, 1                      ; 4 uses
  %i.aoq = shl nsw i32 %2, 1                      ; 3 uses
  %i.aor = shl nsw i32 %3, 1                      ; 3 uses
  %i.aos = call fastcc i32 @encode_q_branch(ptr noundef nonnull %0, i32 noundef %i.aop, i32 noundef %i.aoq, i32 noundef %i.aor)
  %i.aot = or disjoint i32 %i.aoq, 1              ; 2 uses
  %i.aou = call fastcc i32 @encode_q_branch(ptr noundef nonnull %0, i32 noundef %i.aop, i32 noundef %i.aot, i32 noundef %i.aor)
  %i.aov = add nsw i32 %i.aou, %i.aos
  %i.aow = or disjoint i32 %i.aor, 1              ; 2 uses
  %i.aox = call fastcc i32 @encode_q_branch(ptr noundef nonnull %0, i32 noundef %i.aop, i32 noundef %i.aoq, i32 noundef %i.aow)
  %i.aoy = add nsw i32 %i.aov, %i.aox
  %i.aoz = call fastcc i32 @encode_q_branch(ptr noundef nonnull %0, i32 noundef %i.aop, i32 noundef %i.aot, i32 noundef %i.aow)
  %i.apa = add nsw i32 %i.aoy, %i.aoz
  %i.apb = load i32, ptr %i.js, align 4, !tbaa !116
  %i.apc = ashr i32 %i.apb, 7
  %i.apd = add nsw i32 %i.apa, %i.apc             ; 3 uses
  %i.ape = icmp slt i32 %i.apd, %i.yy
  %i.apf = icmp slt i32 %i.apd, %i.ain
  %or.cond470 = select i1 %i.ape, i1 %i.apf, i1 false
  br i1 %or.cond470, label %set_blocks.exit, label %bb.df

bb.df:                                            ; preds = %put_rac.exit606, %bb.cz
  %i.apg = icmp slt i32 %i.ain, %i.yy
  br i1 %i.apg, label %bb.dg, label %bb.dk

bb.dg:                                            ; preds = %bb.df
  %.val = load i32, ptr %i.na, align 8, !tbaa !155
  %i.aph = icmp eq i32 %.val, 1
  %i.api = load i16, ptr %i.an, align 2, !tbaa !137
  %i.apj = sext i16 %i.api to i32                 ; 3 uses
  br i1 %i.aph, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.apk = load i16, ptr %i.au, align 2, !tbaa !137
  %i.apl = sext i16 %i.apk to i32                 ; 2 uses
  %i.apm = load i16, ptr %i.ca, align 2, !tbaa !137
  %i.apn = sext i16 %i.apm to i32
  %..i.i612 = call i32 @llvm.smax.i32(i32 %i.apj, i32 %i.apl)
  %.20.i.i613 = call i32 @llvm.smin.i32(i32 %i.apj, i32 %i.apl)
  %i.apo = call i32 @llvm.smin.i32(i32 %i.apn, i32 %..i.i612)
  %i.app = call noundef i32 @llvm.smax.i32(i32 %i.apo, i32 %.20.i.i613)
  %i.apq = load i16, ptr %i.fr, align 2, !tbaa !138
  %i.apr = sext i16 %i.apq to i32                 ; 2 uses
  %i.aps = load i16, ptr %i.fu, align 2, !tbaa !138
  %i.apt = sext i16 %i.aps to i32                 ; 2 uses
  %i.apu = load i16, ptr %i.iq, align 2, !tbaa !138
  %i.apv = sext i16 %i.apu to i32
  %..i29.i614 = call i32 @llvm.smax.i32(i32 %i.apr, i32 %i.apt)
  %.20.i30.i615 = call i32 @llvm.smin.i32(i32 %i.apr, i32 %i.apt)
  %i.apw = call i32 @llvm.smin.i32(i32 %i.apv, i32 %..i29.i614)
  %i.apx = call noundef i32 @llvm.smax.i32(i32 %i.apw, i32 %.20.i30.i615)
  br label %pred_mv.exit616

bb.di:                                            ; preds = %bb.dg
  %i.apy = load i8, ptr %i.ej, align 2, !tbaa !139
  %i.apz = zext i8 %i.apy to i64
  %i.aqa = getelementptr inbounds nuw [4 x i8], ptr @ff_scale_mv_ref, i64 %i.apz
  %i.aqb = load i32, ptr %i.aqa, align 4, !tbaa !87 ; 2 uses
  %i.aqc = mul nsw i32 %i.aqb, %i.apj
  %i.aqd = add nsw i32 %i.aqc, 128
  %i.aqe = ashr i32 %i.aqd, 8                     ; 2 uses
  %i.aqf = load i16, ptr %i.au, align 2, !tbaa !137
  %i.aqg = sext i16 %i.aqf to i32
  %i.aqh = load i8, ptr %i.er, align 2, !tbaa !139
  %i.aqi = zext i8 %i.aqh to i64
  %i.aqj = getelementptr inbounds nuw [4 x i8], ptr @ff_scale_mv_ref, i64 %i.aqi
  %i.aqk = load i32, ptr %i.aqj, align 4, !tbaa !87 ; 2 uses
  %i.aql = mul nsw i32 %i.aqk, %i.aqg
  %i.aqm = add nsw i32 %i.aql, 128
  %i.aqn = ashr i32 %i.aqm, 8                     ; 2 uses
  %i.aqo = load i16, ptr %i.ca, align 2, !tbaa !137
  %i.aqp = sext i16 %i.aqo to i32
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.aqr = load i8, ptr %i.aqq, align 2, !tbaa !139
  %i.aqs = zext i8 %i.aqr to i64
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr @ff_scale_mv_ref, i64 %i.aqs
  %i.aqu = load i32, ptr %i.aqt, align 4, !tbaa !87 ; 2 uses
  %i.aqv = mul nsw i32 %i.aqu, %i.aqp
  %i.aqw = add nsw i32 %i.aqv, 128
  %i.aqx = ashr i32 %i.aqw, 8
  %..i31.i607 = call i32 @llvm.smax.i32(i32 %i.aqe, i32 %i.aqn)
  %.20.i32.i608 = call i32 @llvm.smin.i32(i32 %i.aqe, i32 %i.aqn)
  %i.aqy = call i32 @llvm.smin.i32(i32 %i.aqx, i32 %..i31.i607)
  %i.aqz = call noundef i32 @llvm.smax.i32(i32 %i.aqy, i32 %.20.i32.i608)
  %i.ara = load i16, ptr %i.fr, align 2, !tbaa !138
  %i.arb = sext i16 %i.ara to i32
end_hunk_0
begin_hunk_1_@put_symbol2:bb.a
  %i.cd = add i32 %i.cc, %i.cb
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 5 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !145
  store i8 %i.ce, ptr %i.cg, align 1, !tbaa !86
  %i.ch = load i32, ptr %i.ca, align 4, !tbaa !144
  %i.ci = icmp sgt i32 %i.ch, -1
  %i.cj = load ptr, ptr %i.cf, align 8, !tbaa !145
  %i.ck = zext i1 %i.ci to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck
  store ptr %i.cl, ptr %i.cf, align 8, !tbaa !145
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !143
  %.not16.i.i28 = icmp eq i32 %i.cn, 0
  br i1 %.not16.i.i28, label %._crit_edge.i.i31, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %bb.h
  %i.co = trunc nsw i32 %i.bz to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i29
  %i.cp = load ptr, ptr %i.cf, align 8, !tbaa !145 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  store ptr %i.cq, ptr %i.cf, align 8, !tbaa !145
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !86
  %i.cr = load i32, ptr %i.cm, align 8, !tbaa !143
  %i.cs = add nsw i32 %i.cr, -1                   ; 2 uses
  store i32 %i.cs, ptr %i.cm, align 8, !tbaa !143
  %.not.i.i30 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i30, label %._crit_edge.i.i31, label %bb.i, !llvm.loop !2

._crit_edge.i.i31:                                ; preds = %bb.i, %bb.h
  %i.ct = load i32, ptr %0, align 8, !tbaa !142   ; 2 uses
  %i.cu = ashr i32 %i.ct, 8
  store i32 %i.cu, ptr %i.ca, align 4, !tbaa !144
  %.pre.i32 = load i32, ptr %i.bk, align 4, !tbaa !141
  br label %renorm_encoder.exit.i27

bb.j:                                             ; preds = %bb.g
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !143
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 8, !tbaa !143
  br label %renorm_encoder.exit.i27

renorm_encoder.exit.i27:                          ; preds = %bb.j, %._crit_edge.i.i31
  %i.cy = phi i32 [ %i.bu, %bb.j ], [ %.pre.i32, %._crit_edge.i.i31 ]
  %i.cz = phi i32 [ %i.bw, %bb.j ], [ %i.ct, %._crit_edge.i.i31 ]
  %i.da = shl i32 %i.cz, 8
  %i.db = and i32 %i.da, 65280
  store i32 %i.db, ptr %0, align 8, !tbaa !142
  %i.dc = shl i32 %i.cy, 8                        ; 2 uses
  store i32 %i.dc, ptr %i.bk, align 4, !tbaa !141
  br label %put_rac.exit33

put_rac.exit33:                                   ; preds = %._crit_edge, %renorm_encoder.exit.i27
  %i.dd = phi i32 [ %i.bu, %._crit_edge ], [ %i.dc, %renorm_encoder.exit.i27 ]
  %i.de = icmp sgt i32 %.024.lcssa, 0
  br i1 %i.de, label %.lr.ph48, label %._crit_edge49

.lr.ph48:                                         ; preds = %put_rac.exit33
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 5 uses
  %i.dj = zext nneg i32 %.024.lcssa to i64
  br label %bb.k

._crit_edge49:                                    ; preds = %put_rac.exit41, %put_rac.exit33
  ret void

bb.k:                                             ; preds = %.lr.ph48, %put_rac.exit41
  %i.dk = phi i32 [ %i.dd, %.lr.ph48 ], [ %i.fg, %put_rac.exit41 ] ; 2 uses
  %indvars.iv52 = phi i64 [ %i.dj, %.lr.ph48 ], [ %indvars.iv.next53, %put_rac.exit41 ] ; 3 uses
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, -1 ; 2 uses
  %i.dl = sub nsw i64 1, %indvars.iv52
  %i.dm = getelementptr inbounds i8, ptr %i.df, i64 %i.dl ; 3 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !86
  %i.do = zext i8 %i.dn to i32
  %i.dp = mul nsw i32 %i.dk, %i.do
  %i.dq = ashr i32 %i.dp, 8                       ; 2 uses
  %i.dr = trunc nuw nsw i64 %indvars.iv.next53 to i32
  %i.ds = shl nuw i32 1, %i.dr
  %i.dt = and i32 %i.ds, %.025.lcssa
  %.not.i = icmp eq i32 %i.dt, 0
  %i.du = sub i32 %i.dk, %i.dq                    ; 2 uses
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dv = load i32, ptr %0, align 8, !tbaa !142
  %i.dw = add nsw i32 %i.dv, %i.du
  store i32 %i.dw, ptr %0, align 8, !tbaa !142
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink.i = phi i32 [ %i.dq, %bb.l ], [ %i.du, %bb.k ]
  %.sink20.i = phi i64 [ 272, %bb.l ], [ 16, %bb.k ]
  store i32 %.sink.i, ptr %i.bk, align 4, !tbaa !141
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink20.i
  %i.dy = load i8, ptr %i.dm, align 1, !tbaa !86
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dz
  %storemerge.i34 = load i8, ptr %i.ea, align 1, !tbaa !86
  store i8 %storemerge.i34, ptr %i.dm, align 1, !tbaa !86
  %i.eb = load i32, ptr %i.bk, align 4, !tbaa !141 ; 3 uses
  %i.ec = icmp slt i32 %i.eb, 256
  br i1 %i.ec, label %bb.n, label %put_rac.exit41

bb.n:                                             ; preds = %bb.m
  %i.ed = load i32, ptr %0, align 8, !tbaa !142   ; 2 uses
  %i.ee = add nsw i32 %i.ed, -65281               ; 2 uses
  %i.ef = icmp ugt i32 %i.ee, 254
  br i1 %i.ef, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.eg = ashr i32 %i.ee, 31                      ; 2 uses
  %i.eh = load i32, ptr %i.dh, align 4, !tbaa !144
  %i.ei = add nsw i32 %i.eg, 1
  %i.ej = add i32 %i.ei, %i.eh
  %i.ek = trunc i32 %i.ej to i8
  %i.el = load ptr, ptr %i.di, align 8, !tbaa !145
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !86
  %i.em = load i32, ptr %i.dh, align 4, !tbaa !144
  %i.en = icmp sgt i32 %i.em, -1
  %i.eo = load ptr, ptr %i.di, align 8, !tbaa !145
  %i.ep = zext i1 %i.en to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ep
  store ptr %i.eq, ptr %i.di, align 8, !tbaa !145
  %i.er = load i32, ptr %i.dg, align 8, !tbaa !143
  %.not16.i.i36 = icmp eq i32 %i.er, 0
  br i1 %.not16.i.i36, label %._crit_edge.i.i39, label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %bb.o
  %i.es = trunc nsw i32 %i.eg to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i37
  %i.et = load ptr, ptr %i.di, align 8, !tbaa !145 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  store ptr %i.eu, ptr %i.di, align 8, !tbaa !145
  store i8 %i.es, ptr %i.et, align 1, !tbaa !86
  %i.ev = load i32, ptr %i.dg, align 8, !tbaa !143
  %i.ew = add nsw i32 %i.ev, -1                   ; 2 uses
  store i32 %i.ew, ptr %i.dg, align 8, !tbaa !143
  %.not.i.i38 = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i38, label %._crit_edge.i.i39, label %bb.p, !llvm.loop !2

._crit_edge.i.i39:                                ; preds = %bb.p, %bb.o
  %i.ex = load i32, ptr %0, align 8, !tbaa !142   ; 2 uses
  %i.ey = ashr i32 %i.ex, 8
  store i32 %i.ey, ptr %i.dh, align 4, !tbaa !144
  %.pre.i40 = load i32, ptr %i.bk, align 4, !tbaa !141
  br label %renorm_encoder.exit.i35

bb.q:                                             ; preds = %bb.n
  %i.ez = load i32, ptr %i.dg, align 8, !tbaa !143
  %i.fa = add nsw i32 %i.ez, 1
  store i32 %i.fa, ptr %i.dg, align 8, !tbaa !143
  br label %renorm_encoder.exit.i35

renorm_encoder.exit.i35:                          ; preds = %bb.q, %._crit_edge.i.i39
  %i.fb = phi i32 [ %i.eb, %bb.q ], [ %.pre.i40, %._crit_edge.i.i39 ]
  %i.fc = phi i32 [ %i.ed, %bb.q ], [ %i.ex, %._crit_edge.i.i39 ]
  %i.fd = shl i32 %i.fc, 8
  %i.fe = and i32 %i.fd, 65280
  store i32 %i.fe, ptr %0, align 8, !tbaa !142
  %i.ff = shl i32 %i.fb, 8                        ; 2 uses
  store i32 %i.ff, ptr %i.bk, align 4, !tbaa !141
  br label %put_rac.exit41

put_rac.exit41:                                   ; preds = %bb.m, %renorm_encoder.exit.i35
  %i.fg = phi i32 [ %i.eb, %bb.m ], [ %i.ff, %renorm_encoder.exit.i35 ]
  %i.fh = icmp samesign ugt i64 %indvars.iv52, 1
  br i1 %i.fh, label %bb.k, label %._crit_edge49, !llvm.loop !622
}

declare void @ff_snow_common_end(ptr noundef) local_unnamed_addr #2

declare void @ff_rate_control_uninit(ptr noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.abs.v4i16(<4 x i16>, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !88, !103}
!1 = distinct !{!1, !88}
!2 = distinct !{!2, !88}
!3 = distinct !{!3, !88}
!4 = distinct !{!4, !88}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 1, !"override-stack-alignment", i32 16}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 _ZTS7AVClass", !14, i64 0}
!16 = !{!"p1 _ZTS7AVCodec", !14, i64 0}
!17 = !{!"p1 _ZTS15AVCodecInternal", !14, i64 0}
!18 = !{!"long", !10, i64 0}
!19 = !{!"p1 omnipotent char", !14, i64 0}
!20 = !{!"AVRational", !11, i64 0, !11, i64 4}
!21 = !{!"float", !10, i64 0}
!22 = !{!"p1 short", !14, i64 0}
!23 = !{!"AVChannelLayout", !11, i64 0, !11, i64 4, !10, i64 8, !14, i64 16}
!24 = !{!"p1 _ZTS10RcOverride", !14, i64 0}
!25 = !{!"p1 _ZTS9AVHWAccel", !14, i64 0}
!26 = !{!"p1 _ZTS11AVBufferRef", !14, i64 0}
!27 = !{!"p1 _ZTS17AVCodecDescriptor", !14, i64 0}
!28 = !{!"p1 _ZTS16AVPacketSideData", !14, i64 0}
!29 = !{!"p1 int", !14, i64 0}
!30 = !{!"any p2 pointer", !14, i64 0}
!31 = !{!"p2 _ZTS15AVFrameSideData", !30, i64 0}
!32 = !{!"AVCodecContext", !15, i64 0, !11, i64 8, !11, i64 12, !16, i64 16, !11, i64 24, !11, i64 28, !14, i64 32, !17, i64 40, !14, i64 48, !18, i64 56, !11, i64 64, !11, i64 68, !19, i64 72, !11, i64 80, !20, i64 84, !20, i64 92, !20, i64 100, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !20, i64 128, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !14, i64 184, !14, i64 192, !11, i64 200, !21, i64 204, !21, i64 208, !21, i64 212, !21, i64 216, !21, i64 220, !21, i64 224, !21, i64 228, !21, i64 232, !21, i64 236, !11, i64 240, !11, i64 244, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !22, i64 288, !22, i64 296, !22, i64 304, !11, i64 312, !11, i64 316, !11, i64 320, !11, i64 324, !11, i64 328, !11, i64 332, !11, i64 336, !11, i64 340, !11, i64 344, !11, i64 348, !23, i64 352, !11, i64 376, !11, i64 380, !11, i64 384, !11, i64 388, !11, i64 392, !11, i64 396, !11, i64 400, !11, i64 404, !14, i64 408, !11, i64 416, !11, i64 420, !11, i64 424, !21, i64 428, !21, i64 432, !11, i64 436, !11, i64 440, !11, i64 444, !11, i64 448, !11, i64 452, !24, i64 456, !18, i64 464, !18, i64 472, !21, i64 480, !21, i64 484, !11, i64 488, !11, i64 492, !19, i64 496, !19, i64 504, !11, i64 512, !11, i64 516, !11, i64 520, !11, i64 524, !11, i64 528, !25, i64 536, !14, i64 544, !26, i64 552, !26, i64 560, !11, i64 568, !11, i64 572, !10, i64 576, !11, i64 640, !11, i64 644, !11, i64 648, !11, i64 652, !11, i64 656, !11, i64 660, !11, i64 664, !14, i64 672, !14, i64 680, !11, i64 688, !11, i64 692, !11, i64 696, !11, i64 700, !11, i64 704, !11, i64 708, !11, i64 712, !11, i64 716, !11, i64 720, !27, i64 728, !19, i64 736, !11, i64 744, !11, i64 748, !19, i64 752, !19, i64 760, !19, i64 768, !28, i64 776, !11, i64 784, !11, i64 788, !18, i64 792, !11, i64 800, !11, i64 804, !18, i64 808, !14, i64 816, !18, i64 824, !29, i64 832, !11, i64 840, !31, i64 848, !11, i64 856, !11, i64 860}
!33 = !{!32, !14, i64 32}
!34 = !{!"p1 _ZTS14AVCodecContext", !14, i64 0}
!35 = !{!"RangeCoder", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !10, i64 16, !10, i64 272, !19, i64 528, !19, i64 536, !19, i64 544, !11, i64 552}
!36 = !{!"HpelDSPContext", !10, i64 0, !10, i64 128, !10, i64 256, !10, i64 352}
!37 = !{!"VideoDSPContext", !14, i64 0, !14, i64 8}
!38 = !{!"SnowDWTContext", !14, i64 0, !14, i64 8, !14, i64 16}
!39 = !{!"p1 _ZTS7AVFrame", !14, i64 0}
!40 = !{!"p1 _ZTS9BlockNode", !14, i64 0}
!41 = !{!"p2 short", !30, i64 0}
!42 = !{!"slice_buffer_s", !41, i64 0, !41, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !22, i64 32}
!43 = !{!"p1 _ZTS14AVMotionVector", !14, i64 0}
!44 = !{!"SnowContext", !15, i64 0, !34, i64 8, !35, i64 16, !36, i64 576, !37, i64 960, !10, i64 976, !38, i64 1744, !39, i64 1768, !39, i64 1776, !10, i64 1784, !39, i64 1848, !10, i64 1856, !10, i64 1888, !11, i64 6112, !11, i64 6116, !11, i64 6120, !11, i64 6124, !11, i64 6128, !11, i64 6132, !11, i64 6136, !11, i64 6140, !11, i64 6144, !11, i64 6148, !11, i64 6152, !10, i64 6160, !10, i64 6224, !29, i64 6288, !29, i64 6296, !22, i64 6304, !22, i64 6312, !29, i64 6320, !11, i64 6328, !11, i64 6332, !11, i64 6336, !11, i64 6340, !11, i64 6344, !11, i64 6348, !11, i64 6352, !11, i64 6356, !11, i64 6360, !11, i64 6364, !11, i64 6368, !11, i64 6372, !11, i64 6376, !11, i64 6380, !11, i64 6384, !10, i64 6392, !40, i64 155032, !42, i64 155040, !19, i64 155080, !43, i64 155088, !11, i64 155096, !11, i64 155100}
!45 = !{!"QpelDSPContext", !10, i64 0, !10, i64 256, !10, i64 512}
!46 = !{!"MpegvideoEncDSPContext", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !10, i64 40, !14, i64 72}
!47 = !{!"MECmpContext", !14, i64 0, !10, i64 8, !10, i64 56, !10, i64 104, !10, i64 152, !10, i64 200, !10, i64 248, !10, i64 296, !10, i64 344, !10, i64 392, !10, i64 440, !10, i64 488, !10, i64 536, !10, i64 584, !10, i64 632, !10, i64 680, !10, i64 744}
!48 = !{!"ScanTable", !19, i64 0, !10, i64 8, !10, i64 72}
!49 = !{!"p1 _ZTS15AVRefStructPool", !14, i64 0}
!50 = !{!"BufferPoolContext", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !11, i64 40, !11, i64 44, !11, i64 48}
!51 = !{!"p1 _ZTS10MPVPicture", !14, i64 0}
!52 = !{!"MPVWorkPicture", !10, i64 0, !10, i64 24, !51, i64 48, !19, i64 56, !10, i64 64, !29, i64 80, !19, i64 88, !10, i64 96, !11, i64 112}
!53 = !{!"ScratchpadContext", !19, i64 0, !19, i64 8, !10, i64 16, !11, i64 24}
!54 = !{!"BlockDSPContext", !14, i64 0, !14, i64 8, !10, i64 16}
!55 = !{!"H264ChromaContext", !10, i64 0, !10, i64 32}
!56 = !{!"IDCTDSPContext", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !10, i64 48, !11, i64 112, !11, i64 116}
!57 = !{!"H263DSPContext", !14, i64 0, !14, i64 8}
!58 = !{!"short", !10, i64 0}
!59 = !{!"p1 _ZTS11ThreadFrame", !14, i64 0}
!60 = !{!"p1 _ZTS14ThreadProgress", !14, i64 0}
!61 = !{!"ERPicture", !39, i64 0, !59, i64 8, !60, i64 16, !10, i64 24, !10, i64 40, !29, i64 56, !11, i64 64}
!62 = !{!"ERContext", !34, i64 0, !14, i64 8, !29, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !18, i64 40, !18, i64 48, !10, i64 56, !11, i64 60, !19, i64 64, !19, i64 72, !10, i64 80, !19, i64 104, !19, i64 112, !10, i64 120, !61, i64 184, !61, i64 256, !61, i64 328, !10, i64 400, !10, i64 416, !58, i64 432, !58, i64 434, !11, i64 436, !11, i64 440, !14, i64 448, !14, i64 456}
!63 = !{!"MpegEncContext", !15, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !10, i64 20, !11, i64 68, !48, i64 72, !48, i64 208, !34, i64 344, !11, i64 352, !11, i64 356, !11, i64 360, !11, i64 364, !11, i64 368, !11, i64 372, !11, i64 376, !11, i64 380, !11, i64 384, !11, i64 388, !11, i64 392, !11, i64 396, !11, i64 400, !11, i64 404, !11, i64 408, !11, i64 412, !18, i64 416, !18, i64 424, !49, i64 432, !50, i64 440, !11, i64 496, !11, i64 500, !10, i64 504, !11, i64 760, !52, i64 768, !52, i64 888, !52, i64 1008, !22, i64 1128, !19, i64 1136, !19, i64 1144, !19, i64 1152, !19, i64 1160, !19, i64 1168, !22, i64 1176, !22, i64 1184, !22, i64 1192, !11, i64 1200, !19, i64 1208, !19, i64 1216, !19, i64 1224, !19, i64 1232, !53, i64 1240, !11, i64 1272, !11, i64 1276, !11, i64 1280, !11, i64 1284, !54, i64 1288, !55, i64 1320, !36, i64 1384, !56, i64 1768, !45, i64 1888, !37, i64 2656, !57, i64 2672, !22, i64 2688, !10, i64 2696, !11, i64 2728, !11, i64 2732, !10, i64 2736, !10, i64 2800, !10, i64 2816, !10, i64 2848, !11, i64 3104, !11, i64 3108, !11, i64 3112, !11, i64 3116, !10, i64 3120, !10, i64 3144, !10, i64 3168, !29, i64 3192, !10, i64 3200, !10, i64 3328, !10, i64 3456, !10, i64 3584, !11, i64 3712, !11, i64 3716, !11, i64 3720, !11, i64 3724, !11, i64 3728, !11, i64 3732, !11, i64 3736, !11, i64 3740, !18, i64 3744, !18, i64 3752, !58, i64 3760, !58, i64 3762, !58, i64 3764, !58, i64 3766, !11, i64 3768, !11, i64 3772, !11, i64 3776, !11, i64 3780, !11, i64 3784, !11, i64 3788, !11, i64 3792, !11, i64 3796, !10, i64 3800, !11, i64 3816, !11, i64 3820, !11, i64 3824, !11, i64 3828, !11, i64 3832, !11, i64 3836, !11, i64 3840, !11, i64 3844, !11, i64 3848, !11, i64 3852, !11, i64 3856, !11, i64 3860, !11, i64 3864, !11, i64 3868, !10, i64 3872, !11, i64 3880, !11, i64 3884, !14, i64 3888, !14, i64 3896, !11, i64 3904, !11, i64 3908, !62, i64 3912}
!64 = !{!"PutBitContext", !11, i64 0, !11, i64 4, !19, i64 8, !19, i64 16, !19, i64 24}
!65 = !{!"p1 _ZTS17MPVMainEncContext", !14, i64 0}
!66 = !{!"FDCTDSPContext", !14, i64 0, !14, i64 8}
!67 = !{!"PixblockDSPContext", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!68 = !{!"MotionEstContext", !34, i64 0, !11, i64 8, !11, i64 12, !10, i64 16, !10, i64 48, !19, i64 80, !19, i64 88, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !11, i64 160, !10, i64 168, !10, i64 296, !11, i64 424, !11, i64 428, !18, i64 432, !18, i64 440, !11, i64 448, !10, i64 456, !10, i64 504, !10, i64 552, !10, i64 600, !10, i64 648, !14, i64 712, !30, i64 720, !30, i64 728, !30, i64 736, !30, i64 744, !19, i64 752, !19, i64 760, !14, i64 768, !10, i64 776, !10, i64 1032}
!69 = !{!"p1 _ZTS12MJpegContext", !14, i64 0}
!70 = !{!"MPVEncContext", !63, i64 0, !64, i64 4384, !11, i64 4416, !11, i64 4420, !29, i64 4424, !11, i64 4432, !11, i64 4436, !11, i64 4440, !11, i64 4444, !11, i64 4448, !11, i64 4452, !11, i64 4456, !11, i64 4460, !39, i64 4464, !65, i64 4472, !66, i64 4480, !46, i64 4496, !67, i64 4576, !68, i64 4608, !11, i64 5896, !11, i64 5900, !22, i64 5904, !22, i64 5912, !22, i64 5920, !22, i64 5928, !22, i64 5936, !22, i64 5944, !10, i64 5952, !10, i64 6016, !10, i64 6032, !22, i64 6064, !22, i64 6072, !22, i64 6080, !19, i64 6088, !10, i64 6096, !11, i64 6120, !11, i64 6124, !11, i64 6128, !11, i64 6132, !11, i64 6136, !19, i64 6144, !19, i64 6152, !19, i64 6160, !19, i64 6168, !19, i64 6176, !19, i64 6184, !19, i64 6192, !10, i64 6200, !22, i64 6248, !29, i64 6256, !29, i64 6264, !29, i64 6272, !22, i64 6280, !22, i64 6288, !22, i64 6296, !29, i64 6304, !10, i64 6312, !22, i64 6320, !11, i64 6328, !11, i64 6332, !11, i64 6336, !11, i64 6340, !11, i64 6344, !11, i64 6348, !11, i64 6352, !11, i64 6356, !10, i64 6360, !11, i64 6372, !11, i64 6376, !11, i64 6380, !11, i64 6384, !11, i64 6388, !19, i64 6392, !11, i64 6400, !11, i64 6404, !11, i64 6408, !11, i64 6412, !11, i64 6416, !69, i64 6424, !11, i64 6432, !11, i64 6436, !11, i64 6440, !11, i64 6444, !11, i64 6448, !64, i64 6456, !64, i64 6488, !11, i64 6520, !11, i64 6524, !11, i64 6528, !11, i64 6532, !11, i64 6536, !11, i64 6540, !19, i64 6544, !14, i64 6552, !14, i64 6560, !10, i64 6568, !10, i64 6584, !10, i64 6600, !10, i64 6616, !14, i64 6632, !11, i64 6640, !10, i64 6644, !10, i64 6708, !10, i64 6784}
!71 = !{!"p1 _ZTS16RateControlEntry", !14, i64 0}
!72 = !{!"double", !10, i64 0}
!73 = !{!"p1 _ZTS6AVExpr", !14, i64 0}
!74 = !{!"p1 float", !14, i64 0}
!75 = !{!"RateControlContext", !11, i64 0, !71, i64 8, !72, i64 16, !10, i64 24, !72, i64 144, !72, i64 152, !72, i64 160, !72, i64 168, !72, i64 176, !10, i64 184, !18, i64 224, !18, i64 232, !10, i64 240, !10, i64 280, !10, i64 320, !10, i64 360, !10, i64 400, !11, i64 420, !21, i64 424, !21, i64 428, !11, i64 432, !21, i64 436, !21, i64 440, !19, i64 448, !73, i64 456, !74, i64 464, !74, i64 472}
!76 = !{!"MPVMainEncContext", !70, i64 0, !11, i64 9856, !11, i64 9860, !11, i64 9864, !11, i64 9868, !11, i64 9872, !11, i64 9876, !10, i64 9880, !10, i64 10016, !18, i64 10152, !18, i64 10160, !18, i64 10168, !10, i64 10176, !11, i64 10320, !11, i64 10324, !11, i64 10328, !11, i64 10332, !11, i64 10336, !21, i64 10340, !11, i64 10344, !11, i64 10348, !11, i64 10352, !11, i64 10356, !19, i64 10360, !11, i64 10368, !11, i64 10372, !11, i64 10376, !11, i64 10380, !14, i64 10384, !14, i64 10392, !18, i64 10400, !18, i64 10408, !11, i64 10416, !11, i64 10420, !11, i64 10424, !11, i64 10428, !11, i64 10432, !10, i64 10436, !11, i64 10456, !11, i64 10460, !75, i64 10464, !11, i64 10944, !11, i64 10948, !18, i64 10952, !18, i64 10960, !19, i64 10968, !19, i64 10976, !22, i64 10984}
!77 = !{!"ThreadProgress", !10, i64 0, !11, i64 4, !10, i64 8, !10, i64 48}
!78 = !{!"MPVPicture", !39, i64 0, !19, i64 8, !19, i64 16, !10, i64 24, !10, i64 40, !29, i64 56, !29, i64 64, !19, i64 72, !10, i64 80, !14, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !77, i64 144}
!79 = !{!"SnowEncContext", !44, i64 0, !45, i64 155104, !46, i64 155872, !11, i64 155952, !11, i64 155956, !11, i64 155960, !11, i64 155964, !11, i64 155968, !11, i64 155972, !11, i64 155976, !11, i64 155980, !11, i64 155984, !11, i64 155988, !47, i64 155992, !76, i64 156784, !78, i64 167776, !78, i64 168016, !10, i64 168256, !11, i64 172352, !10, i64 172360, !19, i64 172392, !10, i64 172400}
!80 = !{!32, !11, i64 64}
!81 = !{!44, !11, i64 6124}
!82 = !{!44, !11, i64 6352}
!83 = !{!44, !11, i64 6376}
!84 = !{!"Plane", !11, i64 0, !11, i64 4, !10, i64 8, !11, i64 37128, !10, i64 37132, !11, i64 37136, !11, i64 37140, !11, i64 37144, !10, i64 37148, !11, i64 37152}
!85 = !{!84, !11, i64 37128}
!86 = !{!10, !10, i64 0}
!87 = !{!11, !11, i64 0}
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!14, !14, i64 0}
!90 = !{!44, !11, i64 6120}
!91 = !{!70, !34, i64 344}
!92 = !{!32, !11, i64 112}
!93 = !{!32, !11, i64 116}
!94 = !{!44, !11, i64 6148}
!95 = !{!79, !11, i64 155960}
!96 = !{!44, !11, i64 6384}
!97 = !{!44, !11, i64 6328}
!98 = !{!44, !39, i64 1768}
!99 = !{!44, !34, i64 8}
!100 = !{!19, !19, i64 0}
!101 = !{!44, !11, i64 6332}
!102 = !{!44, !11, i64 6336}
!103 = !{!"llvm.loop.peeled.count", i32 1}
!104 = !{!79, !19, i64 172392}
!105 = !{!79, !11, i64 155980}
!106 = !{!44, !11, i64 6372}
!107 = !{!44, !11, i64 6368}
!108 = !{!22, !22, i64 0}
!109 = !{!29, !29, i64 0}
!110 = !{!44, !11, i64 6112}
!111 = !{!44, !11, i64 6344}
!112 = !{!79, !11, i64 155952}
!113 = !{!44, !39, i64 1776}
!114 = !{!39, !39, i64 0}
!115 = !{!32, !11, i64 260}
!116 = !{!79, !11, i64 155956}
!117 = !{!44, !11, i64 6136}
!118 = !{!44, !11, i64 6360}
!119 = !{!44, !11, i64 6140}
!120 = !{!84, !11, i64 0}
!121 = !{!84, !11, i64 4}
!122 = !{!"p1 _ZTS11x_and_coeff", !14, i64 0}
!123 = !{!"p1 _ZTS7SubBand", !14, i64 0}
!124 = !{!"SubBand", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !29, i64 24, !22, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !122, i64 56, !123, i64 64, !10, i64 72}
!125 = !{!58, !58, i64 0}
!126 = !{!"llvm.loop.unroll.disable"}
!127 = !{!124, !11, i64 16}
!128 = !{!44, !19, i64 552}
!129 = !{!44, !19, i64 544}
!130 = !{!"llvm.loop.isvectorized", i32 1}
!131 = !{!"llvm.loop.unroll.runtime.disable"}
!132 = !{!"branch_weights", i32 4, i32 12}
!133 = !{!44, !40, i64 155032}
!134 = !{!44, !19, i64 155080}
!135 = !{!"BlockNode", !58, i64 0, !58, i64 2, !10, i64 4, !10, i64 5, !10, i64 8, !10, i64 9}
!136 = !{!135, !10, i64 8}
!137 = !{!135, !58, i64 0}
!138 = !{!135, !58, i64 2}
!139 = !{!135, !10, i64 4}
!140 = !{!44, !19, i64 560}
!141 = !{!35, !11, i64 4}
!142 = !{!35, !11, i64 0}
!143 = !{!35, !11, i64 8}
!144 = !{!35, !11, i64 12}
!145 = !{!35, !19, i64 536}
end_hunk_1
