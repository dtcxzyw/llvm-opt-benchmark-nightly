inline.NumInlined: 29
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 172
loop-unroll.NumUnrolled: 172
begin_hunk_0_@SetModesAndRefframeForBlocks:bb.a
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !46
  switch i8 %i.afk, label %bb.bu [
    i8 0, label %bb.bt
    i8 2, label %bb.bt
  ]

bb.bt:                                            ; preds = %bb.bs, %bb.bs
  %i.afl = getelementptr inbounds nuw i8, ptr %i.ik, i64 3
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !46
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.afn = phi i8 [ %i.afm, %bb.bt ], [ -1, %bb.bs ]
  %i.afo = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 6488
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !135
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !44
  %i.afs = getelementptr inbounds [8 x i8], ptr %i.afr, i64 %i.aea
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !45
  %i.afu = sext i32 %i.afi to i64
  %i.afv = getelementptr i8, ptr %i.aft, i64 %i.afu
  %i.afw = getelementptr i8, ptr %i.afv, i64 2
  store i8 %i.afn, ptr %i.afw, align 1, !tbaa !46
  %i.afx = load ptr, ptr @img, align 8, !tbaa !16
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 168
  %i.afz = load i32, ptr %i.afy, align 8, !tbaa !57
  %i.aga = load i8, ptr %i.afj, align 1, !tbaa !46
  switch i8 %i.aga, label %bb.bw [
    i8 0, label %bb.bv
    i8 2, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu, %bb.bu
  %i.agb = getelementptr inbounds nuw i8, ptr %i.ik, i64 3
  %i.agc = load i8, ptr %i.agb, align 1, !tbaa !46
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.agd = phi i8 [ %i.agc, %bb.bv ], [ -1, %bb.bu ]
  %i.age = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 6488
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !135
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !44
  %i.agi = getelementptr inbounds [8 x i8], ptr %i.agh, i64 %i.aea
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !45
  %i.agk = sext i32 %i.afz to i64
  %i.agl = getelementptr i8, ptr %i.agj, i64 %i.agk
  %i.agm = getelementptr i8, ptr %i.agl, i64 3
  store i8 %i.agd, ptr %i.agm, align 1, !tbaa !46
  %i.agn = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 172
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !56
  %i.agq = add nsw i32 %i.agp, 3
  %i.agr = sext i32 %i.agq to i64                 ; 4 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agn, i64 168
  %i.agt = load i32, ptr %i.ags, align 8, !tbaa !57
  %i.agu = load i8, ptr %i.aed, align 2, !tbaa !46
  switch i8 %i.agu, label %bb.by [
    i8 0, label %bb.bx
    i8 2, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw, %bb.bw
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ik, i64 2
  %i.agw = load i8, ptr %i.agv, align 2, !tbaa !46
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.agx = phi i8 [ %i.agw, %bb.bx ], [ -1, %bb.bw ]
  %i.agy = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 6488
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !135
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !44
  %i.ahc = getelementptr inbounds [8 x i8], ptr %i.ahb, i64 %i.agr
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !45
  %i.ahe = sext i32 %i.agt to i64
  %i.ahf = getelementptr inbounds i8, ptr %i.ahd, i64 %i.ahe
  store i8 %i.agx, ptr %i.ahf, align 1, !tbaa !46
  %i.ahg = load ptr, ptr @img, align 8, !tbaa !16
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 168
  %i.ahi = load i32, ptr %i.ahh, align 8, !tbaa !57
  %i.ahj = load i8, ptr %i.aed, align 2, !tbaa !46
  switch i8 %i.ahj, label %bb.ca [
    i8 0, label %bb.bz
    i8 2, label %bb.bz
  ]

bb.bz:                                            ; preds = %bb.by, %bb.by
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ik, i64 2
  %i.ahl = load i8, ptr %i.ahk, align 2, !tbaa !46
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.ahm = phi i8 [ %i.ahl, %bb.bz ], [ -1, %bb.by ]
  %i.ahn = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 6488
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !135
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !44
  %i.ahr = getelementptr inbounds [8 x i8], ptr %i.ahq, i64 %i.agr
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !45
  %i.aht = sext i32 %i.ahi to i64
  %i.ahu = getelementptr i8, ptr %i.ahs, i64 %i.aht
  %i.ahv = getelementptr i8, ptr %i.ahu, i64 1
  store i8 %i.ahm, ptr %i.ahv, align 1, !tbaa !46
  %i.ahw = load ptr, ptr @img, align 8, !tbaa !16
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 168
  %i.ahy = load i32, ptr %i.ahx, align 8, !tbaa !57
  %i.ahz = load i8, ptr %i.afj, align 1, !tbaa !46
  switch i8 %i.ahz, label %bb.cc [
    i8 0, label %bb.cb
    i8 2, label %bb.cb
  ]

bb.cb:                                            ; preds = %bb.ca, %bb.ca
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ik, i64 3
  %i.aib = load i8, ptr %i.aia, align 1, !tbaa !46
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.aic = phi i8 [ %i.aib, %bb.cb ], [ -1, %bb.ca ]
  %i.aid = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 6488
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !135
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !44
  %i.aih = getelementptr inbounds [8 x i8], ptr %i.aig, i64 %i.agr
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !45
  %i.aij = sext i32 %i.ahy to i64
  %i.aik = getelementptr i8, ptr %i.aii, i64 %i.aij
  %i.ail = getelementptr i8, ptr %i.aik, i64 2
  store i8 %i.aic, ptr %i.ail, align 1, !tbaa !46
  %i.aim = load ptr, ptr @img, align 8, !tbaa !16
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 168
  %i.aio = load i32, ptr %i.ain, align 8, !tbaa !57
  %i.aip = load i8, ptr %i.afj, align 1, !tbaa !46
  switch i8 %i.aip, label %.loopexit233.loopexit277 [
    i8 0, label %bb.cd
    i8 2, label %bb.cd
  ]

bb.cd:                                            ; preds = %bb.cc, %bb.cc
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.ik, i64 3
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !46
  br label %.loopexit233.loopexit277

.loopexit233.loopexit277:                         ; preds = %bb.cd, %bb.cc
  %i.ais = phi i8 [ %i.air, %bb.cd ], [ -1, %bb.cc ]
  %i.ait = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 6488
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !135
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !44
  %i.aix = getelementptr inbounds [8 x i8], ptr %i.aiw, i64 %i.agr
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !45
  %i.aiz = sext i32 %i.aio to i64
  %i.aja = getelementptr i8, ptr %i.aiy, i64 %i.aiz
  %i.ajb = getelementptr i8, ptr %i.aja, i64 3
  store i8 %i.ais, ptr %i.ajb, align 1, !tbaa !46
  br label %.loopexit233.thread

.loopexit233.thread355:                           ; preds = %.lr.ph262, %.lr.ph264, %.split269.us
  %i.ajc = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 172
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !56 ; 2 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ajc, i64 168
  %i.ajg = load i32, ptr %i.ajf, align 8, !tbaa !57
  %i.ajh = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 7 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 6488
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !135 ; 2 uses
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !44
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajj, i64 8
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !44
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajh, i64 6496
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !141 ; 2 uses
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !142
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !142
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajh, i64 24 ; 4 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.g, i64 432 ; 8 uses
  %i.aju = sext i32 %i.ajg to i64                 ; 7 uses
  %i.ajv = sext i32 %i.aje to i64
  %indvars.iv.next312 = add nsw i64 %i.aju, 1     ; 4 uses
  %indvars.iv.next312.1 = add nsw i64 %i.aju, 2   ; 4 uses
  %indvars.iv.next312.2 = add nsw i64 %i.aju, 3   ; 4 uses
  %i.ajw = add nsw i32 %i.aje, 3
  %i.ajx = sext i32 %i.ajw to i64
  br label %bb.ce

bb.ce:                                            ; preds = %.loopexit233.thread355, %bb.cu
  %indvars.iv314 = phi i64 [ %i.ajv, %.loopexit233.thread355 ], [ %indvars.iv.next315, %bb.cu ] ; 6 uses
  %i.ajy = getelementptr inbounds [8 x i8], ptr %i.ajk, i64 %indvars.iv314
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !45 ; 4 uses
  %i.aka = getelementptr inbounds [8 x i8], ptr %i.ajm, i64 %indvars.iv314
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !45 ; 4 uses
  %i.akc = getelementptr inbounds [8 x i8], ptr %i.ajp, i64 %indvars.iv314
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !144 ; 4 uses
  %i.ake = getelementptr inbounds [8 x i8], ptr %i.ajr, i64 %indvars.iv314
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !144 ; 4 uses
  %i.akg = getelementptr inbounds i8, ptr %i.ajz, i64 %i.aju
  %i.akh = load i8, ptr %i.akg, align 1, !tbaa !46 ; 2 uses
  %i.aki = getelementptr inbounds i8, ptr %i.akb, i64 %i.aju
  %i.akj = load i8, ptr %i.aki, align 1, !tbaa !46 ; 2 uses
  %1 = sext i8 %i.akj to i64
  %i.akk = icmp sgt i8 %i.akh, -1
  br i1 %i.akk, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.akl = zext nneg i8 %i.akh to i64
  %i.akm = load i32, ptr %i.ajt, align 8, !tbaa !146
  %i.akn = sext i32 %i.akm to i64
  %i.ako = getelementptr inbounds [264 x i8], ptr %i.ajs, i64 %i.akn
  %i.akp = getelementptr inbounds nuw [8 x i8], ptr %i.ako, i64 %i.akl
  %i.akq = load i64, ptr %i.akp, align 8, !tbaa !147
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf
  %i.akr = phi i64 [ %i.akq, %bb.cf ], [ -1, %bb.ce ]
  %i.aks = getelementptr inbounds [8 x i8], ptr %i.akd, i64 %i.aju
  store i64 %i.akr, ptr %i.aks, align 8, !tbaa !147
  %i.akt = icmp sgt i8 %i.akj, -1
  br i1 %i.akt, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.aku = load i32, ptr %i.ajt, align 8, !tbaa !146
  %i.akv = sext i32 %i.aku to i64
  %i.akw = getelementptr [264 x i8], ptr %i.ajh, i64 %i.akv
  %i.akx = getelementptr i8, ptr %i.akw, i64 288
  %i.aky = getelementptr inbounds nuw [8 x i8], ptr %i.akx, i64 %1
  %i.akz = load i64, ptr %i.aky, align 8, !tbaa !147
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ala = phi i64 [ %i.akz, %bb.ch ], [ -1, %bb.cg ]
  %i.alb = getelementptr inbounds [8 x i8], ptr %i.akf, i64 %i.aju
  store i64 %i.ala, ptr %i.alb, align 8, !tbaa !147
  %i.alc = getelementptr inbounds i8, ptr %i.ajz, i64 %indvars.iv.next312
  %i.ald = load i8, ptr %i.alc, align 1, !tbaa !46 ; 2 uses
  %i.ale = getelementptr inbounds i8, ptr %i.akb, i64 %indvars.iv.next312
  %i.alf = load i8, ptr %i.ale, align 1, !tbaa !46 ; 2 uses
  %2 = sext i8 %i.alf to i64
  %i.alg = icmp sgt i8 %i.ald, -1
  br i1 %i.alg, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.alh = zext nneg i8 %i.ald to i64
  %i.ali = load i32, ptr %i.ajt, align 8, !tbaa !146
  %i.alj = sext i32 %i.ali to i64
  %i.alk = getelementptr inbounds [264 x i8], ptr %i.ajs, i64 %i.alj
  %i.all = getelementptr inbounds nuw [8 x i8], ptr %i.alk, i64 %i.alh
  %i.alm = load i64, ptr %i.all, align 8, !tbaa !147
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.aln = phi i64 [ %i.alm, %bb.cj ], [ -1, %bb.ci ]
  %i.alo = getelementptr inbounds [8 x i8], ptr %i.akd, i64 %indvars.iv.next312
  store i64 %i.aln, ptr %i.alo, align 8, !tbaa !147
  %i.alp = icmp sgt i8 %i.alf, -1
  br i1 %i.alp, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.alq = load i32, ptr %i.ajt, align 8, !tbaa !146
  %i.alr = sext i32 %i.alq to i64
  %i.als = getelementptr [264 x i8], ptr %i.ajh, i64 %i.alr
  %i.alt = getelementptr i8, ptr %i.als, i64 288
  %i.alu = getelementptr inbounds nuw [8 x i8], ptr %i.alt, i64 %2
  %i.alv = load i64, ptr %i.alu, align 8, !tbaa !147
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.alw = phi i64 [ %i.alv, %bb.cl ], [ -1, %bb.ck ]
  %i.alx = getelementptr inbounds [8 x i8], ptr %i.akf, i64 %indvars.iv.next312
  store i64 %i.alw, ptr %i.alx, align 8, !tbaa !147
  %i.aly = getelementptr inbounds i8, ptr %i.ajz, i64 %indvars.iv.next312.1
  %i.alz = load i8, ptr %i.aly, align 1, !tbaa !46 ; 2 uses
  %i.ama = getelementptr inbounds i8, ptr %i.akb, i64 %indvars.iv.next312.1
  %i.amb = load i8, ptr %i.ama, align 1, !tbaa !46 ; 2 uses
  %3 = sext i8 %i.amb to i64
  %i.amc = icmp sgt i8 %i.alz, -1
  br i1 %i.amc, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.amd = zext nneg i8 %i.alz to i64
  %i.ame = load i32, ptr %i.ajt, align 8, !tbaa !146
  %i.amf = sext i32 %i.ame to i64
  %i.amg = getelementptr inbounds [264 x i8], ptr %i.ajs, i64 %i.amf
  %i.amh = getelementptr inbounds nuw [8 x i8], ptr %i.amg, i64 %i.amd
  %i.ami = load i64, ptr %i.amh, align 8, !tbaa !147
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.amj = phi i64 [ %i.ami, %bb.cn ], [ -1, %bb.cm ]
  %i.amk = getelementptr inbounds [8 x i8], ptr %i.akd, i64 %indvars.iv.next312.1
  store i64 %i.amj, ptr %i.amk, align 8, !tbaa !147
  %i.aml = icmp sgt i8 %i.amb, -1
  br i1 %i.aml, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.amm = load i32, ptr %i.ajt, align 8, !tbaa !146
  %i.amn = sext i32 %i.amm to i64
  %i.amo = getelementptr [264 x i8], ptr %i.ajh, i64 %i.amn
  %i.amp = getelementptr i8, ptr %i.amo, i64 288
  %i.amq = getelementptr inbounds nuw [8 x i8], ptr %i.amp, i64 %3
  %i.amr = load i64, ptr %i.amq, align 8, !tbaa !147
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.ams = phi i64 [ %i.amr, %bb.cp ], [ -1, %bb.co ]
  %i.amt = getelementptr inbounds [8 x i8], ptr %i.akf, i64 %indvars.iv.next312.1
  store i64 %i.ams, ptr %i.amt, align 8, !tbaa !147
  %i.amu = getelementptr inbounds i8, ptr %i.ajz, i64 %indvars.iv.next312.2
  %i.amv = load i8, ptr %i.amu, align 1, !tbaa !46 ; 2 uses
  %i.amw = getelementptr inbounds i8, ptr %i.akb, i64 %indvars.iv.next312.2
  %i.amx = load i8, ptr %i.amw, align 1, !tbaa !46 ; 2 uses
  %4 = sext i8 %i.amx to i64
  %i.amy = icmp sgt i8 %i.amv, -1
  br i1 %i.amy, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.amz = zext nneg i8 %i.amv to i64
  %i.ana = load i32, ptr %i.ajt, align 8, !tbaa !146
  %i.anb = sext i32 %i.ana to i64
  %i.anc = getelementptr inbounds [264 x i8], ptr %i.ajs, i64 %i.anb
  %i.and = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %i.amz
  %i.ane = load i64, ptr %i.and, align 8, !tbaa !147
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.anf = phi i64 [ %i.ane, %bb.cr ], [ -1, %bb.cq ]
  %i.ang = getelementptr inbounds [8 x i8], ptr %i.akd, i64 %indvars.iv.next312.2
  store i64 %i.anf, ptr %i.ang, align 8, !tbaa !147
  %i.anh = icmp sgt i8 %i.amx, -1
  br i1 %i.anh, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.ani = load i32, ptr %i.ajt, align 8, !tbaa !146
  %i.anj = sext i32 %i.ani to i64
  %i.ank = getelementptr [264 x i8], ptr %i.ajh, i64 %i.anj
  %i.anl = getelementptr i8, ptr %i.ank, i64 288
  %i.anm = getelementptr inbounds nuw [8 x i8], ptr %i.anl, i64 %4
  %i.ann = load i64, ptr %i.anm, align 8, !tbaa !147
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %i.ano = phi i64 [ %i.ann, %bb.ct ], [ -1, %bb.cs ]
  %i.anp = getelementptr inbounds [8 x i8], ptr %i.akf, i64 %indvars.iv.next312.2
  store i64 %i.ano, ptr %i.anp, align 8, !tbaa !147
  %indvars.iv.next315 = add nsw i64 %indvars.iv314, 1
  %i.anq = icmp slt i64 %indvars.iv314, %i.ajx
  br i1 %i.anq, label %bb.ce, label %.loopexit, !llvm.loop !148

.loopexit233.thread:                              ; preds = %.lr.ph, %.lr.ph260, %.loopexit233.loopexit277
  %i.anr = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 172
  %i.ant = load i32, ptr %i.ans, align 4, !tbaa !56
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anr, i64 168
  %i.anv = load i32, ptr %i.anu, align 8, !tbaa !57
  %i.anw = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 6488
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !135
  %i.anz = load ptr, ptr %i.any, align 8, !tbaa !44 ; 4 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anw, i64 6496
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !141
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !142 ; 4 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %i.anw, i64 24 ; 16 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.g, i64 432 ; 16 uses
  %i.aof = sext i32 %i.anv to i64                 ; 17 uses
  %i.aog = sext i32 %i.ant to i64                 ; 5 uses
  %i.aoh = getelementptr inbounds [8 x i8], ptr %i.anz, i64 %i.aog
  %i.aoi = load ptr, ptr %i.aoh, align 8, !tbaa !45 ; 4 uses
  %i.aoj = getelementptr inbounds [8 x i8], ptr %i.aoc, i64 %i.aog
  %i.aok = load ptr, ptr %i.aoj, align 8, !tbaa !144 ; 4 uses
  %i.aol = getelementptr inbounds i8, ptr %i.aoi, i64 %i.aof
  %i.aom = load i8, ptr %i.aol, align 1, !tbaa !46 ; 2 uses
  %i.aon = icmp sgt i8 %i.aom, -1
  br i1 %i.aon, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %.loopexit233.thread
  %i.aoo = zext nneg i8 %i.aom to i64
  %i.aop = load i32, ptr %i.aoe, align 8, !tbaa !146
  %i.aoq = sext i32 %i.aop to i64
  %i.aor = getelementptr inbounds [264 x i8], ptr %i.aod, i64 %i.aoq
  %i.aos = getelementptr inbounds nuw [8 x i8], ptr %i.aor, i64 %i.aoo
  %i.aot = load i64, ptr %i.aos, align 8, !tbaa !147
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.loopexit233.thread
  %i.aou = phi i64 [ %i.aot, %bb.cv ], [ -1, %.loopexit233.thread ]
  %i.aov = getelementptr inbounds [8 x i8], ptr %i.aok, i64 %i.aof
  store i64 %i.aou, ptr %i.aov, align 8, !tbaa !147
  %indvars.iv.next304 = add nsw i64 %i.aof, 1     ; 8 uses
  %i.aow = getelementptr inbounds i8, ptr %i.aoi, i64 %indvars.iv.next304
  %i.aox = load i8, ptr %i.aow, align 1, !tbaa !46 ; 2 uses
  %i.aoy = icmp sgt i8 %i.aox, -1
  br i1 %i.aoy, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.aoz = zext nneg i8 %i.aox to i64
  %i.apa = load i32, ptr %i.aoe, align 8, !tbaa !146
  %i.apb = sext i32 %i.apa to i64
  %i.apc = getelementptr inbounds [264 x i8], ptr %i.aod, i64 %i.apb
  %i.apd = getelementptr inbounds nuw [8 x i8], ptr %i.apc, i64 %i.aoz
  %i.ape = load i64, ptr %i.apd, align 8, !tbaa !147
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.apf = phi i64 [ %i.ape, %bb.cx ], [ -1, %bb.cw ]
  %i.apg = getelementptr inbounds [8 x i8], ptr %i.aok, i64 %indvars.iv.next304
  store i64 %i.apf, ptr %i.apg, align 8, !tbaa !147
  %indvars.iv.next304.1 = add nsw i64 %i.aof, 2   ; 2 uses
  %i.aph = getelementptr inbounds i8, ptr %i.aoi, i64 %indvars.iv.next304.1
  %i.api = load i8, ptr %i.aph, align 1, !tbaa !46 ; 2 uses
  %i.apj = icmp sgt i8 %i.api, -1
  br i1 %i.apj, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.apk = zext nneg i8 %i.api to i64
  %i.apl = load i32, ptr %i.aoe, align 8, !tbaa !146
  %i.apm = sext i32 %i.apl to i64
  %i.apn = getelementptr inbounds [264 x i8], ptr %i.aod, i64 %i.apm
  %i.apo = getelementptr inbounds nuw [8 x i8], ptr %i.apn, i64 %i.apk
  %i.app = load i64, ptr %i.apo, align 8, !tbaa !147
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.apq = phi i64 [ %i.app, %bb.cz ], [ -1, %bb.cy ]
  %i.apr = getelementptr inbounds [8 x i8], ptr %i.aok, i64 %indvars.iv.next304.1
  store i64 %i.apq, ptr %i.apr, align 8, !tbaa !147
  %indvars.iv.next304.2 = add nsw i64 %i.aof, 3   ; 2 uses
  %i.aps = getelementptr inbounds i8, ptr %i.aoi, i64 %indvars.iv.next304.2
  %i.apt = load i8, ptr %i.aps, align 1, !tbaa !46 ; 2 uses
  %i.apu = icmp sgt i8 %i.apt, -1
  br i1 %i.apu, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.apv = zext nneg i8 %i.apt to i64
  %i.apw = load i32, ptr %i.aoe, align 8, !tbaa !146
  %i.apx = sext i32 %i.apw to i64
  %i.apy = getelementptr inbounds [264 x i8], ptr %i.aod, i64 %i.apx
  %i.apz = getelementptr inbounds nuw [8 x i8], ptr %i.apy, i64 %i.apv
  %i.aqa = load i64, ptr %i.apz, align 8, !tbaa !147
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.aqb = phi i64 [ %i.aqa, %bb.db ], [ -1, %bb.da ]
  %i.aqc = getelementptr inbounds [8 x i8], ptr %i.aok, i64 %indvars.iv.next304.2
  store i64 %i.aqb, ptr %i.aqc, align 8, !tbaa !147
  %indvars.iv.next307 = add nsw i64 %i.aog, 1     ; 2 uses
  %i.aqd = getelementptr inbounds [8 x i8], ptr %i.anz, i64 %indvars.iv.next307
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !45 ; 4 uses
  %i.aqf = getelementptr inbounds [8 x i8], ptr %i.aoc, i64 %indvars.iv.next307
  %i.aqg = load ptr, ptr %i.aqf, align 8, !tbaa !144 ; 4 uses
  %i.aqh = getelementptr inbounds i8, ptr %i.aqe, i64 %i.aof
  %i.aqi = load i8, ptr %i.aqh, align 1, !tbaa !46 ; 2 uses
  %i.aqj = icmp sgt i8 %i.aqi, -1
  br i1 %i.aqj, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.aqk = zext nneg i8 %i.aqi to i64
  %i.aql = load i32, ptr %i.aoe, align 8, !tbaa !146
  %i.aqm = sext i32 %i.aql to i64
  %i.aqn = getelementptr inbounds [264 x i8], ptr %i.aod, i64 %i.aqm
  %i.aqo = getelementptr inbounds nuw [8 x i8], ptr %i.aqn, i64 %i.aqk
  %i.aqp = load i64, ptr %i.aqo, align 8, !tbaa !147
  br label %bb.de

bb.de:                                            ; preds = %bb.dc, %bb.dd
  %i.aqq = phi i64 [ %i.aqp, %bb.dd ], [ -1, %bb.dc ]
  %i.aqr = getelementptr inbounds [8 x i8], ptr %i.aqg, i64 %i.aof
  store i64 %i.aqq, ptr %i.aqr, align 8, !tbaa !147
  %i.aqs = getelementptr inbounds i8, ptr %i.aqe, i64 %indvars.iv.next304
  %i.aqt = load i8, ptr %i.aqs, align 1, !tbaa !46 ; 2 uses
  %i.aqu = icmp sgt i8 %i.aqt, -1
  br i1 %i.aqu, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.aqv = zext nneg i8 %i.aqt to i64
  %i.aqw = load i32, ptr %i.aoe, align 8, !tbaa !146
  %i.aqx = sext i32 %i.aqw to i64
  %i.aqy = getelementptr inbounds [264 x i8], ptr %i.aod, i64 %i.aqx
  %i.aqz = getelementptr inbounds nuw [8 x i8], ptr %i.aqy, i64 %i.aqv
  %i.ara = load i64, ptr %i.aqz, align 8, !tbaa !147
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.arb = phi i64 [ %i.ara, %bb.df ], [ -1, %bb.de ]
  %i.arc = getelementptr inbounds [8 x i8], ptr %i.aqg, i64 %indvars.iv.next304
  store i64 %i.arb, ptr %i.arc, align 8, !tbaa !147
  %indvars.iv.next304.1.1 = add nsw i64 %i.aof, 2 ; 2 uses
  %i.ard = getelementptr inbounds i8, ptr %i.aqe, i64 %indvars.iv.next304.1.1
  %i.are = load i8, ptr %i.ard, align 1, !tbaa !46 ; 2 uses
  %i.arf = icmp sgt i8 %i.are, -1
  br i1 %i.arf, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.arg = zext nneg i8 %i.are to i64
  %i.arh = load i32, ptr %i.aoe, align 8, !tbaa !146
  %i.ari = sext i32 %i.arh to i64
  %i.arj = getelementptr inbounds [264 x i8], ptr %i.aod, i64 %i.ari
  %i.ark = getelementptr inbounds nuw [8 x i8], ptr %i.arj, i64 %i.arg
  %i.arl = load i64, ptr %i.ark, align 8, !tbaa !147
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.arm = phi i64 [ %i.arl, %bb.dh ], [ -1, %bb.dg ]
  %i.arn = getelementptr inbounds [8 x i8], ptr %i.aqg, i64 %indvars.iv.next304.1.1
  store i64 %i.arm, ptr %i.arn, align 8, !tbaa !147
  %indvars.iv.next304.2.1 = add nsw i64 %i.aof, 3 ; 2 uses
  %i.aro = getelementptr inbounds i8, ptr %i.aqe, i64 %indvars.iv.next304.2.1
  %i.arp = load i8, ptr %i.aro, align 1, !tbaa !46 ; 2 uses
  %i.arq = icmp sgt i8 %i.arp, -1
  br i1 %i.arq, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.arr = zext nneg i8 %i.arp to i64
end_hunk_0
