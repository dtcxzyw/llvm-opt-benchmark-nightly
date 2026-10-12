Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@start_decoder:bb.a
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
  %i.air = getelementptr inbounds nuw i8, ptr %i.acc, i64 16 ; 6 uses
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
  %indvars.iv1615 = phi i64 [ %indvars.iv.next1616, %._crit_edge1426 ], [ 0, %bb.gy ] ; 7 uses
  %i.ajh = phi ptr [ %i.alb, %._crit_edge1426 ], [ %i.ajd, %bb.gy ]
  %i.aji = load i32, ptr %i.ajh, align 8          ; 4 uses
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
  %i.ajq = zext nneg i32 %i.aji to i64            ; 3 uses
  %i.ajr = trunc nuw nsw i64 %indvars.iv1615 to i32 ; 3 uses
  %.pre1662 = load i8, ptr %i.act, align 4        ; 2 uses
  %xtraiter = and i64 %i.ajq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1425.prol.loopexit, label %.lr.ph1425.prol

.lr.ph1425.prol:                                  ; preds = %.lr.ph1425.preheader
  %indvars.iv.next1613.prol = add nsw i64 %i.ajq, -1 ; 2 uses
  %i.ajs = zext i8 %.pre1662 to i32
  %2 = urem i32 %i.ajr, %i.ajs
  %i.ajt = trunc nuw i32 %2 to i8
  %i.aju = load ptr, ptr %i.air, align 8
  %i.ajv = getelementptr inbounds nuw [8 x i8], ptr %i.aju, i64 %indvars.iv1615
  %i.ajw = load ptr, ptr %i.ajv, align 8
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %indvars.iv.next1613.prol
  store i8 %i.ajt, ptr %i.ajx, align 1
  %i.ajy = load i8, ptr %i.act, align 4           ; 2 uses
  %i.ajz = zext i8 %i.ajy to i32
  %3 = udiv i32 %i.ajr, %i.ajz
  br label %.lr.ph1425.prol.loopexit

.lr.ph1425.prol.loopexit:                         ; preds = %.lr.ph1425.prol, %.lr.ph1425.preheader
  %.unr = phi i8 [ %.pre1662, %.lr.ph1425.preheader ], [ %i.ajy, %.lr.ph1425.prol ]
  %indvars.iv1612.unr = phi i64 [ %i.ajq, %.lr.ph1425.preheader ], [ %indvars.iv.next1613.prol, %.lr.ph1425.prol ]
  %.09391424.unr = phi i32 [ %i.ajr, %.lr.ph1425.preheader ], [ %3, %.lr.ph1425.prol ]
  %i.aka = icmp eq i32 %i.aji, 1
  br i1 %i.aka, label %._crit_edge1426, label %.lr.ph1425

.lr.ph1425:                                       ; preds = %.lr.ph1425.prol.loopexit, %.lr.ph1425
  %i.akb = phi i8 [ %i.aku, %.lr.ph1425 ], [ %.unr, %.lr.ph1425.prol.loopexit ]
  %indvars.iv1612 = phi i64 [ %indvars.iv.next1613.1, %.lr.ph1425 ], [ %indvars.iv1612.unr, %.lr.ph1425.prol.loopexit ] ; 3 uses
  %.09391424 = phi i32 [ %i.akw, %.lr.ph1425 ], [ %.09391424.unr, %.lr.ph1425.prol.loopexit ] ; 2 uses
  %i.akc = zext i8 %i.akb to i32
  %i.akd = srem i32 %.09391424, %i.akc
  %i.ake = trunc i32 %i.akd to i8
  %i.akf = load ptr, ptr %i.air, align 8
  %i.akg = getelementptr inbounds nuw [8 x i8], ptr %i.akf, i64 %indvars.iv1615
  %i.akh = load ptr, ptr %i.akg, align 8
  %i.aki = getelementptr i8, ptr %i.akh, i64 %indvars.iv1612
  %i.akj = getelementptr i8, ptr %i.aki, i64 -1
  store i8 %i.ake, ptr %i.akj, align 1
  %i.akk = load i8, ptr %i.act, align 4           ; 2 uses
  %i.akl = zext i8 %i.akk to i32
  %i.akm = sdiv i32 %.09391424, %i.akl            ; 2 uses
  %indvars.iv.next1613.1 = add nsw i64 %indvars.iv1612, -2 ; 2 uses
  %i.akn = zext i8 %i.akk to i32
  %i.ako = srem i32 %i.akm, %i.akn
  %i.akp = trunc i32 %i.ako to i8
  %i.akq = load ptr, ptr %i.air, align 8
  %i.akr = getelementptr inbounds nuw [8 x i8], ptr %i.akq, i64 %indvars.iv1615
  %i.aks = load ptr, ptr %i.akr, align 8
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 %indvars.iv.next1613.1
  store i8 %i.akp, ptr %i.akt, align 1
  %i.aku = load i8, ptr %i.act, align 4           ; 2 uses
  %i.akv = zext i8 %i.aku to i32
  %i.akw = sdiv i32 %i.akm, %i.akv
  %i.akx = icmp sgt i64 %indvars.iv1612, 2
  br i1 %i.akx, label %.lr.ph1425, label %._crit_edge1426

._crit_edge1426:                                  ; preds = %.lr.ph1425.prol.loopexit, %.lr.ph1425, %.preheader1251
  %indvars.iv.next1616 = add nuw nsw i64 %indvars.iv1615, 1 ; 2 uses
  %i.aky = load ptr, ptr %i.hd, align 8
  %i.akz = load i8, ptr %i.acw, align 1
  %i.ala = zext i8 %i.akz to i64
  %i.alb = getelementptr inbounds nuw [2120 x i8], ptr %i.aky, i64 %i.ala ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 4
  %i.ald = load i32, ptr %i.alc, align 4
  %i.ale = sext i32 %i.ald to i64
  %i.alf = icmp slt i64 %indvars.iv.next1616, %i.ale
  br i1 %i.alf, label %.lr.ph1429, label %._crit_edge1430

._crit_edge1430:                                  ; preds = %._crit_edge1426, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  %indvars.iv.next1619 = add nuw nsw i64 %indvars.iv1618, 1 ; 2 uses
  %i.alg = load i32, ptr %i.abp, align 8
  %i.alh = sext i32 %i.alg to i64
  %i.ali = icmp slt i64 %indvars.iv.next1619, %i.alh
  br i1 %i.ali, label %bb.fv, label %._crit_edge1434

._crit_edge1434:                                  ; preds = %._crit_edge1430, %bb.fu
  %i.alj = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6)
  %i.alk = add i32 %i.alj, 1                      ; 2 uses
  %i.all = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 5 uses
  store i32 %i.alk, ptr %i.all, align 8
  %i.alm = mul i32 %i.alk, 48
  %i.aln = call fastcc ptr @setup_malloc(ptr noundef %0, i32 noundef %i.alm) ; 3 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  store ptr %i.aln, ptr %i.alo, align 8
  %i.alp = icmp eq ptr %i.aln, null
  br i1 %i.alp, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %._crit_edge1434
  %i.alq = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 3, ptr %i.alq, align 4
  br label %.critedge

bb.ha:                                            ; preds = %._crit_edge1434
  %i.alr = load i32, ptr %i.all, align 8
  %i.als = sext i32 %i.alr to i64
  %i.alt = mul nsw i64 %i.als, 48
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aln, i8 0, i64 %i.alt, i1 false)
  %i.alu = load i32, ptr %i.all, align 8
  %i.alv = icmp sgt i32 %i.alu, 0
  br i1 %i.alv, label %.lr.ph1448, label %._crit_edge1449

.lr.ph1448:                                       ; preds = %bb.ha, %._crit_edge1444
  %indvars.iv1633 = phi i64 [ %indvars.iv.next1634, %._crit_edge1444 ], [ 0, %bb.ha ] ; 2 uses
  %i.alw = load ptr, ptr %i.alo, align 8
  %i.alx = getelementptr inbounds nuw [48 x i8], ptr %i.alw, i64 %indvars.iv1633 ; 7 uses
  %i.aly = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16)
  %.not1107 = icmp eq i32 %i.aly, 0
  br i1 %.not1107, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %.lr.ph1448
  %i.alz = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.alz, align 4
  br label %.critedge

bb.hc:                                            ; preds = %.lr.ph1448
  %i.ama = load i32, ptr %i.be, align 4
  %i.amb = mul i32 %i.ama, 3
  %i.amc = call fastcc ptr @setup_malloc(ptr noundef %0, i32 noundef %i.amb) ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alx, i64 8 ; 7 uses
  store ptr %i.amc, ptr %i.amd, align 8
  %i.ame = icmp eq ptr %i.amc, null
  br i1 %i.ame, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.amf = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 3, ptr %i.amf, align 4
  br label %.critedge

bb.he:                                            ; preds = %bb.hc
  %i.amg = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 1)
  %.not1108 = icmp eq i32 %i.amg, 0
  br i1 %.not1108, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.amh = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 4)
  %i.ami = trunc i32 %i.amh to i8
  %i.amj = add i8 %i.ami, 1
  br label %bb.hg

bb.hg:                                            ; preds = %bb.he, %bb.hf
  %.sink = phi i8 [ %i.amj, %bb.hf ], [ 1, %bb.he ]
  %i.amk = getelementptr inbounds nuw i8, ptr %i.alx, i64 16 ; 5 uses
  store i8 %.sink, ptr %i.amk, align 8
  %i.aml = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 1)
  %.not1109 = icmp eq i32 %i.aml, 0
  br i1 %.not1109, label %bb.hp, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.amm = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %i.amn = trunc i32 %i.amm to i16
  %i.amo = add i16 %i.amn, 1                      ; 3 uses
  store i16 %i.amo, ptr %i.alx, align 8
  %i.amp = zext i16 %i.amo to i32
  %i.amq = load i32, ptr %i.be, align 4           ; 2 uses
  %i.amr = icmp slt i32 %i.amq, %i.amp
  br i1 %i.amr, label %bb.hi, label %.preheader1249

.preheader1249:                                   ; preds = %bb.hh
  %.not1473 = icmp eq i16 %i.amo, 0
  br i1 %.not1473, label %.loopexit1250, label %.lr.ph1436

bb.hi:                                            ; preds = %bb.hh
  %i.ams = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.ams, align 4
  br label %.critedge

bb.hj:                                            ; preds = %bb.hn
  %indvars.iv.next1622 = add nuw nsw i64 %indvars.iv1621, 1 ; 2 uses
  %i.amt = load i16, ptr %i.alx, align 8
  %i.amu = zext i16 %i.amt to i64
  %i.amv = icmp samesign ult i64 %indvars.iv.next1622, %i.amu
  br i1 %i.amv, label %.lr.ph1436, label %.loopexit1250

.lr.ph1436:                                       ; preds = %.preheader1249, %bb.hj
  %i.amw = phi i32 [ %i.anp, %bb.hj ], [ %i.amq, %.preheader1249 ]
  %indvars.iv1621 = phi i64 [ %indvars.iv.next1622, %bb.hj ], [ 0, %.preheader1249 ] ; 4 uses
  %i.amx = add nsw i32 %i.amw, -1
  %i.amy = call fastcc i32 @ilog(i32 noundef %i.amx)
  %i.amz = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef %i.amy)
  %i.ana = trunc i32 %i.amz to i8
  %i.anb = load ptr, ptr %i.amd, align 8
  %i.anc = getelementptr inbounds nuw [3 x i8], ptr %i.anb, i64 %indvars.iv1621
  store i8 %i.ana, ptr %i.anc, align 1
  %i.and = load i32, ptr %i.be, align 4
  %i.ane = add nsw i32 %i.and, -1
  %i.anf = call fastcc i32 @ilog(i32 noundef %i.ane)
  %i.ang = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef %i.anf)
  %i.anh = trunc i32 %i.ang to i8
  %i.ani = load ptr, ptr %i.amd, align 8
  %i.anj = getelementptr inbounds nuw [3 x i8], ptr %i.ani, i64 %indvars.iv1621
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 1
  store i8 %i.anh, ptr %i.ank, align 1
  %i.anl = load ptr, ptr %i.amd, align 8
  %i.anm = getelementptr inbounds nuw [3 x i8], ptr %i.anl, i64 %indvars.iv1621 ; 2 uses
  %i.ann = load i8, ptr %i.anm, align 1           ; 2 uses
  %i.ano = zext i8 %i.ann to i32
  %i.anp = load i32, ptr %i.be, align 4           ; 3 uses
  %.not1114 = icmp sgt i32 %i.anp, %i.ano
  br i1 %.not1114, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %.lr.ph1436
  %i.anq = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.anq, align 4
  br label %.critedge

bb.hl:                                            ; preds = %.lr.ph1436
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anm, i64 1
  %i.ans = load i8, ptr %i.anr, align 1           ; 2 uses
  %i.ant = zext i8 %i.ans to i32
  %.not1115 = icmp samesign ugt i32 %i.anp, %i.ant
  br i1 %.not1115, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.anu = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.anu, align 4
end_hunk_0
begin_hunk_1_@ma_device__cork_stream__pulse:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.aw(ptr noundef %i.ay, i32 noundef 1, ptr noundef nonnull @.str.413) #61, !inline_history !31
  %.pre.i30 = load i32, ptr %i.as, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i27
  %i.az = phi i32 [ %i.au, %.lr.ph.i27 ], [ %.pre.i30, %bb.i ] ; 2 uses
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i28, 1 ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = icmp samesign ult i64 %indvars.iv.next.i31, %i.ba
  br i1 %i.bb, label %.lr.ph.i27, label %._crit_edge.i32

._crit_edge.i32:                                  ; preds = %bb.j, %bb.h
  %i.bc = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.aq) #61 ; 0 uses
  br label %ma_log_post.exit

bb.k:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 664
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull %i.g) #61, !inline_history !18
  %i.bf = load i32, ptr %i.a, align 4
  %.not21 = icmp eq i32 %i.bf, 0
  br i1 %.not21, label %ma_device_get_context.exit.i35, label %ma_log_post.exit

ma_device_get_context.exit.i35:                   ; preds = %bb.k
  %i.bg = load ptr, ptr %0, align 8               ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %ma_device_get_log.exit37, label %bb.l

bb.l:                                             ; preds = %ma_device_get_context.exit.i35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  %i.bj = load ptr, ptr %i.bi, align 8
  br label %ma_device_get_log.exit37

ma_device_get_log.exit37:                         ; preds = %ma_device_get_context.exit.i35, %bb.l
  %.0.i1.i36 = phi ptr [ %i.bj, %bb.l ], [ null, %ma_device_get_context.exit.i35 ]
  %.not22 = icmp eq i32 %2, 0
  %i.bk = select i1 %.not22, ptr @.str.416, ptr @.str.415
  %i.bl = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %.0.i1.i36, i32 noundef 1, ptr noundef nonnull @.str.414, ptr noundef nonnull %i.bk) ; 0 uses
  br label %ma_log_post.exit

ma_log_post.exit:                                 ; preds = %ma_device_get_context.exit.i23, %ma_device_get_context.exit.i, %._crit_edge.i32, %ma_device_get_log.exit25, %._crit_edge.i, %ma_device_get_log.exit, %bb.k, %ma_device_get_log.exit37
  %.0 = phi i32 [ -1, %ma_device_get_log.exit37 ], [ 0, %bb.k ], [ -1, %._crit_edge.i ], [ -1, %._crit_edge.i32 ], [ -1, %ma_device_get_log.exit ], [ -1, %ma_device_get_context.exit.i ], [ -1, %ma_device_get_log.exit25 ], [ -1, %ma_device_get_context.exit.i23 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @ma_pulse_operation_complete_callback(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) #0 {
bb.a:
  store i32 %1, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ma_context_uninit__alsa(ptr noundef %0) #8 {
ma_context_get_log.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 %i.c() #61                 ; 0 uses
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = tail call i32 @dlclose(ptr noundef %i.e) #61 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.h = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.g) #61 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -51, 1) i32 @ma_context_enumerate_devices__alsa(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #8 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca [256 x i8], align 16              ; 17 uses
  %3 = alloca %struct.ma_device_info, align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 3 uses
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #61 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call i32 %i.g(i32 noundef -1, ptr noundef nonnull @.str.487, ptr noundef nonnull %i.b) #61 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.d) #61 ; 0 uses
  %i.k = sub nsw i32 0, %i.h
  %i.l = call fastcc i32 @ma_result_from_errno(i32 noundef %i.k)
  br label %bb.at

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %ma_does_id_exist_in_list__alsa.exit, %bb.c
  %.089 = phi i32 [ 1, %bb.c ], [ %.392, %ma_does_id_exist_in_list__alsa.exit ] ; 4 uses
  %.084 = phi ptr [ null, %bb.c ], [ %.387, %ma_does_id_exist_in_list__alsa.exit ] ; 8 uses
  %.082 = phi i32 [ 0, %bb.c ], [ %.3, %ma_does_id_exist_in_list__alsa.exit ] ; 9 uses
  %.080 = phi ptr [ %i.m, %bb.c ], [ %i.eg, %ma_does_id_exist_in_list__alsa.exit ] ; 4 uses
  %i.x = load ptr, ptr %.080, align 8             ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.aq, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.n, align 8
  %i.z = call ptr %i.y(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.488) #61 ; 17 uses
  %i.aa = load ptr, ptr %i.n, align 8
  %i.ab = load ptr, ptr %.080, align 8
  %i.ac = call ptr %i.aa(ptr noundef %i.ab, ptr noundef nonnull @.str.489) #61 ; 8 uses
  %i.ad = load ptr, ptr %i.n, align 8
  %i.ae = load ptr, ptr %.080, align 8
  %i.af = call ptr %i.ad(ptr noundef %i.ae, ptr noundef nonnull @.str.490) #61 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #61
  %i.ag = icmp eq ptr %i.af, null                 ; 2 uses
  br i1 %i.ag, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = call i32 @ma_strcmp(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.491) ; 0 uses
  %i.ai = call i32 @ma_strcmp(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.492)
  %.not195 = icmp eq i32 %i.ai, 0                 ; 2 uses
  %spec.select116 = select i1 %.not195, i32 2, i32 1
  %i.aj = select i1 %.not195, i32 1, i32 2
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %. = phi i32 [ %i.aj, %bb.f ], [ 2, %bb.e ]
  %.1 = phi i32 [ %spec.select116, %bb.f ], [ 1, %bb.e ]
  %.not104 = icmp eq ptr %i.z, null
  br i1 %.not104, label %bb.ab, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.ak = load i32, ptr %i.o, align 8
  %.not105 = icmp eq i32 %i.ak, 0
  br i1 %.not105, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = call i32 @ma_strncpy_s(ptr noundef nonnull %i.c, i64 noundef 256, ptr noundef nonnull %i.z, i64 noundef -1) ; 0 uses
  br label %bb.ac

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  store i8 0, ptr %i.c, align 16
  %i.am = load i8, ptr %i.z, align 1              ; 2 uses
  switch i8 %i.am, label %.lr.ph.i38.i.preheader [
    i8 104, label %bb.j
    i8 0, label %ma_convert_device_name_to_hw_format__alsa.exit.thread
  ]

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ao = load i8, ptr %i.an, align 1
  %.not26.i.i = icmp eq i8 %i.ao, 119
  br i1 %.not26.i.i, label %bb.k, label %.lr.ph.i38.i.preheader

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.aq = load i8, ptr %i.ap, align 1
  %.not27.i.i = icmp eq i8 %i.aq, 58
  br i1 %.not27.i.i, label %bb.l, label %.lr.ph.i38.i.preheader

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 3 ; 4 uses
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %.lr.ph.i38.i.preheader, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %bb.m
  %indvars.iv46.i.i = phi i32 [ %indvars.iv.next47.i.i, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.au = phi i8 [ %i.ax, %bb.m ], [ %i.as, %bb.l ]
  %i.av = icmp eq i8 %i.au, 44
  br i1 %i.av, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.next.i.i.i
  %i.ax = load i8, ptr %i.aw, align 1             ; 2 uses
  %i.ay = icmp eq i8 %i.ax, 0
  %indvars.iv.next47.i.i = add i32 %indvars.iv46.i.i, 1
  br i1 %i.ay, label %.lr.ph.i38.i.preheader, label %.lr.ph.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  %.not41.i.i = icmp eq i64 %indvars.iv.i.i.i, 0
  br i1 %.not41.i.i, label %.preheader.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.n
  %smax.i.i = call i32 @llvm.umax.i32(i32 %indvars.iv46.i.i, i32 1)
  %wide.trip.count.i.i = zext i32 %smax.i.i to i64
  br label %.lr.ph.i.i

bb.o:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.o, %bb.n
  %i.bb = load i8, ptr %i.ba, align 1             ; 2 uses
  %.not2836.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not2836.i.i, label %ma_convert_device_name_to_hw_format__alsa.exit, label %.lr.ph38.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.o ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.i.i
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = add i8 %i.bd, -58
  %or.cond.i.i = icmp ult i8 %i.be, -10
  br i1 %or.cond.i.i, label %.lr.ph.i38.i.preheader, label %bb.o

bb.p:                                             ; preds = %.lr.ph38.i.i
  %indvars.iv.next50.i.i = add nuw nsw i64 %indvars.iv49.i.i, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv.next50.i.i
  %i.bg = load i8, ptr %i.bf, align 1             ; 2 uses
  %.not28.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not28.i.i, label %ma_convert_device_name_to_hw_format__alsa.exit, label %.lr.ph38.i.i

.lr.ph38.i.i:                                     ; preds = %.preheader.i.i, %bb.p
  %indvars.iv49.i.i = phi i64 [ %indvars.iv.next50.i.i, %bb.p ], [ 0, %.preheader.i.i ]
  %i.bh = phi i8 [ %i.bg, %bb.p ], [ %i.bb, %.preheader.i.i ]
  %i.bi = add i8 %i.bh, -58
  %or.cond29.i.i = icmp ult i8 %i.bi, -10
  br i1 %or.cond29.i.i, label %.lr.ph.i38.i.preheader, label %bb.p

.lr.ph.i38.i.preheader:                           ; preds = %bb.m, %.lr.ph.i.i, %.lr.ph38.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i.preheader, %bb.q
  %indvars.iv.i39.i = phi i64 [ %indvars.iv.next.i40.i, %bb.q ], [ 0, %.lr.ph.i38.i.preheader ] ; 2 uses
  %i.bj = phi i8 [ %i.bm, %bb.q ], [ %i.am, %.lr.ph.i38.i.preheader ]
  %i.bk = icmp eq i8 %i.bj, 58
  br i1 %i.bk, label %.lr.ph.i41.preheader.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i38.i
  %indvars.iv.next.i40.i = add nuw nsw i64 %indvars.iv.i39.i, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.next.i40.i
  %i.bm = load i8, ptr %i.bl, align 1             ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %ma_convert_device_name_to_hw_format__alsa.exit.thread, label %.lr.ph.i38.i

.lr.ph.i41.preheader.i:                           ; preds = %.lr.ph.i38.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.i39.i ; 4 uses
  br label %.lr.ph.i41.i

.lr.ph.i41.i:                                     ; preds = %bb.r, %.lr.ph.i41.preheader.i
  %indvars.iv.i42.i = phi i64 [ %indvars.iv.next.i43.i, %bb.r ], [ 0, %.lr.ph.i41.preheader.i ] ; 3 uses
  %i.bp = phi i8 [ %i.bs, %bb.r ], [ 58, %.lr.ph.i41.preheader.i ]
  %i.bq = icmp eq i8 %i.bp, 44
  br i1 %i.bq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i41.i
  %indvars.iv.next.i43.i = add nuw nsw i64 %indvars.iv.i42.i, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv.next.i43.i
  %i.bs = load i8, ptr %i.br, align 1             ; 2 uses
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %.loopexit.i, label %.lr.ph.i41.i

.loopexit.i:                                      ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.bv = call i32 @ma_strncpy_s(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef nonnull readonly %i.bu, i64 noundef -1) ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i41.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv.i42.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 5
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.bz = shl i64 %indvars.iv.i42.i, 32
  %sext.i = add i64 %i.bz, -25769803776
  %i.ca = ashr exact i64 %sext.i, 32
  %i.cb = call i32 @ma_strncpy_s(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef nonnull readonly %i.by, i64 noundef %i.ca) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit.i
  %.0.i = phi ptr [ @.str.206, %.loopexit.i ], [ %i.bx, %bb.s ]
  %i.cc = load ptr, ptr %i.p, align 8
  %i.cd = call i32 %i.cc(ptr noundef nonnull %i.a) #61, !inline_history !1206 ; 2 uses
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %ma_convert_device_name_to_hw_format__alsa.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 104, ptr %i.c, align 16
  store i8 119, ptr %i.q, align 1
  store i8 58, ptr %i.r, align 2
  %i.cf = call i32 @ma_itoa_s(i32 noundef %i.cd, ptr noundef nonnull %i.s, i64 noundef 253, i32 noundef 10)
  %.not35.i = icmp eq i32 %i.cf, 0
  br i1 %.not35.i, label %bb.v, label %ma_convert_device_name_to_hw_format__alsa.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cg = call i32 @ma_strcat_s(ptr noundef nonnull %i.c, i64 noundef 256, ptr noundef nonnull @.str.496)
  %.not36.i = icmp eq i32 %i.cg, 0
  br i1 %.not36.i, label %bb.w, label %ma_convert_device_name_to_hw_format__alsa.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.ch = call i32 @ma_strcat_s(ptr noundef nonnull %i.c, i64 noundef 256, ptr noundef nonnull %.0.i)
  %.not37.i = icmp eq i32 %i.ch, 0
  br i1 %.not37.i, label %ma_convert_device_name_to_hw_format__alsa.exit.thread130, label %ma_convert_device_name_to_hw_format__alsa.exit.thread

ma_convert_device_name_to_hw_format__alsa.exit.thread130: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %.preheader

ma_convert_device_name_to_hw_format__alsa.exit.thread: ; preds = %bb.q, %bb.v, %bb.w, %bb.u, %bb.t, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %bb.y

ma_convert_device_name_to_hw_format__alsa.exit:   ; preds = %bb.p, %.preheader.i.i
  %i.ci = call i32 @ma_strcpy_s(ptr noundef nonnull %i.c, i64 noundef 256, ptr noundef nonnull readonly %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %.preheader, label %bb.y

.preheader:                                       ; preds = %ma_convert_device_name_to_hw_format__alsa.exit.thread130, %ma_convert_device_name_to_hw_format__alsa.exit
  br label %bb.x

bb.x:                                             ; preds = %.preheader, %bb.x
  %.075 = phi ptr [ %i.cm, %bb.x ], [ %i.c, %.preheader ] ; 2 uses
  %.0 = phi ptr [ %i.ck, %bb.x ], [ %i.r, %.preheader ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.cl = load i8, ptr %.0, align 1               ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.075, i64 1
  store i8 %i.cl, ptr %.075, align 1
  %.not106 = icmp eq i8 %i.cl, 0
  br i1 %.not106, label %.loopexit156, label %bb.x

bb.y:                                             ; preds = %ma_convert_device_name_to_hw_format__alsa.exit.thread, %ma_convert_device_name_to_hw_format__alsa.exit
  %i.cn = call i32 @ma_strncpy_s(ptr noundef nonnull %i.c, i64 noundef 256, ptr noundef nonnull %i.z, i64 noundef -1) ; 0 uses
  br label %.loopexit156

.loopexit156:                                     ; preds = %bb.x, %bb.y
  %.not.i = icmp eq i32 %.082, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit156
  %wide.trip.count.i = zext i32 %.082 to i64
  br label %.lr.ph.i

bb.z:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.z ] ; 2 uses
  %i.co = getelementptr inbounds nuw [256 x i8], ptr %.084, i64 %indvars.iv.i
  %i.cp = call i32 @ma_strcmp(ptr noundef readonly %i.co, ptr noundef nonnull readonly %i.c)
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %ma_does_id_exist_in_list__alsa.exit, label %bb.z

.loopexit:                                        ; preds = %bb.z, %.loopexit156
  %i.cr = add i32 %.082, 1                        ; 2 uses
  %i.cs = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not10.i = icmp eq ptr %i.cs, null
  br i1 %.not10.i, label %ma_does_id_exist_in_list__alsa.exit, label %ma_realloc.exit

ma_realloc.exit:                                  ; preds = %.loopexit
  %i.ct = zext i32 %i.cr to i64
  %i.cu = shl nuw nsw i64 %i.ct, 8
  %i.cv = load ptr, ptr %i.u, align 8
  %i.cw = call ptr %i.cs(ptr noundef %.084, i64 noundef %i.cu, ptr noundef %i.cv) #61, !inline_history !33 ; 3 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %ma_does_id_exist_in_list__alsa.exit, label %bb.aa

bb.aa:                                            ; preds = %ma_realloc.exit
  %i.cy = zext i32 %.082 to i64
  %i.cz = getelementptr inbounds nuw [256 x i8], ptr %i.cw, i64 %i.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.cz, ptr noundef nonnull align 16 dereferenceable(256) %i.c, i64 256, i1 false)
  br label %bb.ac

bb.ab:                                            ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.h, %bb.ab
  %.286 = phi ptr [ %.084, %bb.h ], [ %i.cw, %bb.aa ], [ %.084, %bb.ab ] ; 4 uses
  %.2 = phi i32 [ %.082, %bb.h ], [ %i.cr, %bb.aa ], [ %.082, %bb.ab ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %3, i8 0, i64 1544, i1 false)
  %i.da = call i32 @ma_strncpy_s(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull %i.c, i64 noundef -1) ; 0 uses
  %i.db = call i32 @ma_strcmp(ptr noundef nonnull %3, ptr noundef nonnull @.str.493)
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 1, ptr %i.v, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.not108 = icmp eq ptr %i.ac, null
  br i1 %.not108, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
end_hunk_1
begin_hunk_2_@decode_residue:bb.a
  %i.x = load i32, ptr %i.w, align 4
  %i.y = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %i.u)
  %i.z = sub i32 %i.y, %.
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 9 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = udiv i32 %i.z, %i.ab                    ; 17 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = load i32, ptr %i.ah, align 4            ; 5 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = shl i32 %i.ac, 3
  %i.ak = add i32 %i.aj, 8
  %i.al = mul i32 %i.ai, %i.ak
  %i.am = sub nsw i32 %i.ae, %i.al                ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = icmp slt i32 %i.am, %i.ao
  br i1 %i.ap, label %setup_temp_malloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.am, ptr %i.ad, align 4
  %i.aq = sext i32 %i.am to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ag, i64 %i.aq
  br label %setup_temp_malloc.exit

bb.d:                                             ; preds = %bb.a
  %i.as = sext i32 %i.ai to i64
  %i.at = sext i32 %i.ac to i64
  %i.au = shl nsw i64 %i.at, 3
  %i.av = add nsw i64 %i.au, 8
  %i.aw = mul i64 %i.av, %i.as
  %i.ax = alloca i8, i64 %i.aw, align 16
  br label %setup_temp_malloc.exit

setup_temp_malloc.exit:                           ; preds = %bb.c, %bb.b, %bb.d
  %i.ay = phi ptr [ %i.ax, %bb.d ], [ null, %bb.b ], [ %i.ar, %bb.c ] ; 19 uses
  %i.az = icmp sgt i32 %i.ai, 0
  br i1 %i.az, label %.lr.ph.i, label %make_block_array.exit

.lr.ph.i:                                         ; preds = %setup_temp_malloc.exit
  %i.ba = shl i32 %i.ac, 3
  %i.bb = zext nneg i32 %i.ai to i64              ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb ; 2 uses
  %i.bd = sext i32 %i.ba to i64                   ; 9 uses
  %xtraiter = and i64 %i.bb, 7                    ; 3 uses
  %i.be = icmp ult i32 %i.ai, 8
  br i1 %i.be, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.bb, 2147483640
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.e ] ; 9 uses
  %.013.i = phi ptr [ %i.bc, %.lr.ph.i.new ], [ %i.cb, %bb.e ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.e ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  store ptr %.013.i, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds i8, ptr %.013.i, i64 %i.bd ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bg, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 %i.bd ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr %i.bj, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds i8, ptr %i.bj, i64 %i.bd ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr %i.bm, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds i8, ptr %i.bm, i64 %i.bd ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store ptr %i.bp, ptr %i.br, align 8
  %i.bs = getelementptr inbounds i8, ptr %i.bp, i64 %i.bd ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  store ptr %i.bs, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds i8, ptr %i.bs, i64 %i.bd ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  store ptr %i.bv, ptr %i.bx, align 8
  %i.by = getelementptr inbounds i8, ptr %i.bv, i64 %i.bd ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  store ptr %i.by, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds i8, ptr %i.by, i64 %i.bd ; 2 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %make_block_array.exit.loopexit.unr-lcssa, label %bb.e

make_block_array.exit.loopexit.unr-lcssa:         ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %make_block_array.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %make_block_array.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %make_block_array.exit.loopexit.unr-lcssa ]
  %.013.i.epil.init = phi ptr [ %i.bc, %.lr.ph.i ], [ %i.cb, %make_block_array.exit.loopexit.unr-lcssa ]
  %lcmp.mod990 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod990)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.f ] ; 2 uses
  %.013.i.epil = phi ptr [ %.013.i.epil.init, %.epil.preheader ], [ %i.cd, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i.epil
  store ptr %.013.i.epil, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds i8, ptr %.013.i.epil, i64 %i.bd
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %make_block_array.exit, label %bb.f, !llvm.loop !1237

make_block_array.exit:                            ; preds = %make_block_array.exit.loopexit.unr-lcssa, %bb.f, %setup_temp_malloc.exit
  %i.ce = icmp sgt i32 %2, 0                      ; 2 uses
  br i1 %i.ce, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %make_block_array.exit
  %i.cf = sext i32 %3 to i64
  %i.cg = shl nsw i64 %i.cf, 2                    ; 3 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter992 = and i64 %wide.trip.count, 1
  %i.ch = icmp eq i32 %2, 1
  br i1 %i.ch, label %.epil.preheader991, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter996 = and i64 %wide.trip.count, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.k ] ; 4 uses
  %niter997 = phi i64 [ 0, %.lr.ph.new ], [ %niter997.next.1, %bb.k ]
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.cj = load i8, ptr %i.ci, align 1
  %.not337 = icmp eq i8 %i.cj, 0
  br i1 %.not337, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.cl = load ptr, ptr %i.ck, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %i.cl, i8 0, i64 %i.cg, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next
  %i.cn = load i8, ptr %i.cm, align 1
  %.not337.1 = icmp eq i8 %i.cn, 0
  br i1 %.not337.1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.cp = load ptr, ptr %i.co, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %i.cp, i8 0, i64 %i.cg, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter997.next.1 = add i64 %niter997, 2         ; 2 uses
  %niter997.ncmp.1 = icmp eq i64 %niter997.next.1, %unroll_iter996
  br i1 %niter997.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.g

._crit_edge.unr-lcssa:                            ; preds = %bb.k
  %lcmp.mod994.not = icmp eq i64 %xtraiter992, 0
  br i1 %lcmp.mod994.not, label %._crit_edge, label %.epil.preheader991

.epil.preheader991:                               ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod995 = trunc i32 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod995)
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.epil.init
  %i.cr = load i8, ptr %i.cq, align 1
  %.not337.epil = icmp eq i8 %i.cr, 0
  br i1 %.not337.epil, label %bb.l, label %._crit_edge

bb.l:                                             ; preds = %.epil.preheader991
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.ct = load ptr, ptr %i.cs, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %i.ct, i8 0, i64 %i.cg, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader991, %bb.l, %._crit_edge.unr-lcssa
  %i.cu = icmp ne i32 %2, 1
  %or.cond = and i1 %i.cu, %i.s
  br i1 %or.cond, label %.lr.ph704.preheader, label %.preheader642

._crit_edge.thread:                               ; preds = %make_block_array.exit
  br i1 %i.s, label %._crit_edge705, label %.preheader642

.preheader642:                                    ; preds = %._crit_edge.thread, %._crit_edge
  %i.cv = icmp sgt i32 %i.ac, 0
  %i.cw = icmp slt i32 %2, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 31 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 29 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1764 ; 17 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1772 ; 17 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1768 ; 20 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 10 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 10 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1763 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1508 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1788 ; 10 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 34 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 17 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 13 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 17 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 12 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dn = icmp sgt i32 %i.r, 0
  %i.do = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.dp = icmp eq i16 %.fr735, 0
  br i1 %i.cv, label %.preheader641.preheader, label %.thread618

.preheader641.preheader:                          ; preds = %.preheader642
  %i.dq = sext i32 %i.r to i64                    ; 2 uses
  %wide.trip.count760 = zext nneg i32 %2 to i64
  %wide.trip.count765 = zext nneg i32 %2 to i64
  %wide.trip.count773 = zext nneg i32 %2 to i64
  br label %.preheader641

.lr.ph704.preheader:                              ; preds = %._crit_edge
  %wide.trip.count788 = zext nneg i32 %2 to i64
  br label %.lr.ph704

.lr.ph704:                                        ; preds = %.lr.ph704.preheader, %bb.m
  %indvars.iv785 = phi i64 [ 0, %.lr.ph704.preheader ], [ %indvars.iv.next786, %bb.m ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv785
  %i.ds = load i8, ptr %i.dr, align 1
  %.not328 = icmp eq i8 %i.ds, 0
  br i1 %.not328, label %._crit_edge705.loopexit, label %bb.m

bb.m:                                             ; preds = %.lr.ph704
  %indvars.iv.next786 = add nuw nsw i64 %indvars.iv785, 1 ; 2 uses
  %exitcond789.not = icmp eq i64 %indvars.iv.next786, %wide.trip.count788
  br i1 %exitcond789.not, label %.thread618, label %.lr.ph704

._crit_edge705.loopexit:                          ; preds = %.lr.ph704
  %i.dt = trunc nuw nsw i64 %indvars.iv785 to i32
  br label %._crit_edge705

._crit_edge705:                                   ; preds = %._crit_edge705.loopexit, %._crit_edge.thread
  %.0302.lcssa = phi i32 [ %i.dt, %._crit_edge705.loopexit ], [ 0, %._crit_edge.thread ]
  %i.du = icmp eq i32 %.0302.lcssa, %2
  br i1 %i.du, label %.thread618, label %.preheader628

.preheader628:                                    ; preds = %._crit_edge705
  %i.dv = icmp eq i32 %2, 2
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 10 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 10 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1764 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1772 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.eb = icmp sgt i32 %i.r, 0                    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 4 uses
  br i1 %i.dv, label %.preheader628.split.us, label %.preheader628.split

.preheader628.split.us:                           ; preds = %.preheader628
  %i.ed = icmp sgt i32 %i.ac, 0
  br i1 %i.ed, label %.preheader.us.preheader, label %.thread618

.preheader.us.preheader:                          ; preds = %.preheader628.split.us
  %i.ee = sext i32 %i.r to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv806 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next807, %..loopexit_crit_edge.us ] ; 3 uses
  %i.ef = icmp eq i64 %indvars.iv806, 0
  br label %bb.n

bb.n:                                             ; preds = %.preheader.us, %._crit_edge722.us
  %indvars.iv803 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next804, %._crit_edge722.us ] ; 3 uses
  %.0294724.us = phi i32 [ 0, %.preheader.us ], [ %.1295.lcssa.us, %._crit_edge722.us ] ; 4 uses
  %i.eg = load i32, ptr %i.h, align 8
  %i.eh = load i32, ptr %i.aa, align 8
  %i.ei = mul i32 %i.eh, %.0294724.us
  %i.ej = add i32 %i.ei, %i.eg                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.ek = and i32 %i.ej, 1
  store i32 %i.ek, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  %i.el = ashr i32 %i.ej, 1
  store i32 %i.el, ptr %i.b, align 4
  br i1 %i.ef, label %bb.o, label %bb.ab

bb.o:                                             ; preds = %bb.n
  %i.em = load ptr, ptr %i.n, align 8
  %i.en = load i8, ptr %i.l, align 1
  %i.eo = zext i8 %i.en to i64
  %i.ep = getelementptr inbounds nuw [2120 x i8], ptr %i.em, i64 %i.eo ; 5 uses
  %i.eq = load i32, ptr %i.dw, align 8            ; 2 uses
  %i.er = icmp slt i32 %i.eq, 10
  br i1 %i.er, label %bb.p, label %prep_huffman.exit.us

bb.p:                                             ; preds = %bb.o
  %i.es = icmp eq i32 %i.eq, 0
  br i1 %i.es, label %bb.q, label %.preheader

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.dx, align 4
  br label %.preheader

.preheader:                                       ; preds = %bb.q, %bb.p
  br label %bb.r

bb.r:                                             ; preds = %.preheader, %bb.u
  %i.et = load i32, ptr %i.dz, align 4
  %.not.i346.us = icmp eq i32 %i.et, 0
  br i1 %.not.i346.us, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = load i8, ptr %i.dy, align 4
  %.not14.i.us = icmp eq i8 %i.eu, 0
  br i1 %.not14.i.us, label %prep_huffman.exit.us, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ev = call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0) ; 2 uses
  %i.ew = icmp eq i32 %i.ev, -1
  br i1 %i.ew, label %prep_huffman.exit.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ex = load i32, ptr %i.dw, align 8            ; 3 uses
  %i.ey = shl i32 %i.ev, %i.ex
  %i.ez = load i32, ptr %i.dx, align 4
  %i.fa = add i32 %i.ez, %i.ey
  store i32 %i.fa, ptr %i.dx, align 4
  %i.fb = add nsw i32 %i.ex, 8
  store i32 %i.fb, ptr %i.dw, align 8
  %i.fc = icmp slt i32 %i.ex, 17
  br i1 %i.fc, label %bb.r, label %prep_huffman.exit.us

prep_huffman.exit.us:                             ; preds = %bb.s, %bb.t, %bb.u, %bb.o
  %i.fd = load i32, ptr %i.dx, align 4            ; 2 uses
  %i.fe = and i32 %i.fd, 1023
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.fg = zext nneg i32 %i.fe to i64
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.ff, i64 %i.fg
  %i.fi = load i16, ptr %i.fh, align 2            ; 3 uses
  %i.fj = icmp sgt i16 %i.fi, -1
  br i1 %i.fj, label %bb.w, label %bb.v

bb.v:                                             ; preds = %prep_huffman.exit.us
  %i.fk = call fastcc i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %i.ep)
  br label %bb.x

bb.w:                                             ; preds = %prep_huffman.exit.us
  %i.fl = zext nneg i16 %i.fi to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = zext nneg i16 %i.fi to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = zext i8 %i.fq to i32                    ; 2 uses
  %i.fs = lshr i32 %i.fd, %i.fr
  store i32 %i.fs, ptr %i.dx, align 4
  %i.ft = load i32, ptr %i.dw, align 8
  %i.fu = sub nsw i32 %i.ft, %i.fr                ; 2 uses
  %spec.select.us = call i32 @llvm.smax.i32(i32 %i.fu, i32 0)
  %.inv621.us = icmp sgt i32 %i.fu, -1
  %spec.select338.us = select i1 %.inv621.us, i32 %i.fl, i32 -1
  store i32 %spec.select.us, ptr %i.dw, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1288.us = phi i32 [ %spec.select338.us, %bb.w ], [ %i.fk, %bb.v ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ep, i64 27
  %i.fw = load i8, ptr %i.fv, align 1
  %.not334.us = icmp eq i8 %i.fw, 0
  br i1 %.not334.us, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ep, i64 2104
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = sext i32 %.1288.us to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.2289.us = phi i32 [ %i.gb, %bb.y ], [ %.1288.us, %bb.x ] ; 2 uses
  %.not335.us = icmp eq i32 %.2289.us, -1
  br i1 %.not335.us, label %.thread535, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gc = load ptr, ptr %i.ea, align 8
  %i.gd = sext i32 %.2289.us to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.gd
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = load ptr, ptr %i.ay, align 8
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv803
  store ptr %i.gf, ptr %i.gh, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.n
end_hunk_2
begin_hunk_3_@decode_residue:bb.a
  br i1 %i.sn, label %bb.dt, label %.preheader970

bb.dt:                                            ; preds = %bb.ds
  store i32 0, ptr %i.cy, align 4
  br label %.preheader970

.preheader970:                                    ; preds = %bb.dt, %bb.ds
  br label %bb.du

bb.du:                                            ; preds = %.preheader970, %get8_packet_raw.exit482.thread578.us.us.us
  %i.so = load i32, ptr %i.da, align 4
  %.not.i.i430.us.us.us = icmp eq i32 %i.so, 0
  %.pr573.us.us.us = load i8, ptr %i.cz, align 4  ; 3 uses
  %.not.i467.us.us.us = icmp eq i8 %.pr573.us.us.us, 0 ; 2 uses
  br i1 %.not.i.i430.us.us.us, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  br i1 %.not.i467.us.us.us, label %prep_huffman.exit.i400.us.us.us, label %.thread574.us.us.us

bb.dw:                                            ; preds = %bb.du
  br i1 %.not.i467.us.us.us, label %bb.dx, label %.thread574.us.us.us

bb.dx:                                            ; preds = %bb.dw
  %i.sp = load i32, ptr %i.db, align 8            ; 2 uses
  %i.sq = icmp eq i32 %i.sp, -1
  br i1 %i.sq, label %bb.dy, label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  %i.sr = load i32, ptr %i.dc, align 8
  %i.ss = add nsw i32 %i.sr, -1
  store i32 %i.ss, ptr %i.dd, align 8
  %i.st = call fastcc i32 @start_page(ptr noundef nonnull %0)
  %.not20.i.i478.us.us.us = icmp eq i32 %i.st, 0
  br i1 %.not20.i.i478.us.us.us, label %bb.el, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.su = load i8, ptr %i.de, align 1
  %i.sv = and i8 %i.su, 1
  %.not21.i.i479.us.us.us = icmp eq i8 %i.sv, 0
  br i1 %.not21.i.i479.us.us.us, label %bb.ek, label %._crit_edge.i.i480.us.us.us

._crit_edge.i.i480.us.us.us:                      ; preds = %bb.dz
  %.pre.i.i481.us.us.us = load i32, ptr %i.db, align 8
  br label %bb.ea

bb.ea:                                            ; preds = %._crit_edge.i.i480.us.us.us, %bb.dx
  %i.sw = phi i32 [ %.pre.i.i481.us.us.us, %._crit_edge.i.i480.us.us.us ], [ %i.sp, %bb.dx ] ; 3 uses
  %i.sx = add nsw i32 %i.sw, 1                    ; 2 uses
  store i32 %i.sx, ptr %i.db, align 8
  %i.sy = sext i32 %i.sw to i64
  %i.sz = getelementptr inbounds i8, ptr %i.df, i64 %i.sy
  %i.ta = load i8, ptr %i.sz, align 1             ; 4 uses
  %.not22.i.i474.us.us.us = icmp eq i8 %i.ta, -1
  br i1 %.not22.i.i474.us.us.us, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  store i32 1, ptr %i.da, align 4
  store i32 %i.sw, ptr %i.dd, align 8
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.tb = load i32, ptr %i.dc, align 8
  %.not23.i.i475.us.us.us = icmp slt i32 %i.sx, %i.tb
  br i1 %.not23.i.i475.us.us.us, label %next_segment.exit.i476.us.us.us, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  store i32 -1, ptr %i.db, align 8
  br label %next_segment.exit.i476.us.us.us

next_segment.exit.i476.us.us.us:                  ; preds = %bb.ed, %bb.ec
  store i8 %i.ta, ptr %i.cz, align 4
  %.not7.i477.us.us.us = icmp eq i8 %i.ta, 0
  br i1 %.not7.i477.us.us.us, label %prep_huffman.exit.i400.us.us.us, label %.thread574.us.us.us

.thread574.us.us.us:                              ; preds = %next_segment.exit.i476.us.us.us, %bb.dw, %bb.dv
  %i.tc = phi i8 [ %i.ta, %next_segment.exit.i476.us.us.us ], [ %.pr573.us.us.us, %bb.dw ], [ %.pr573.us.us.us, %bb.dv ]
  %i.td = add i8 %i.tc, -1
  store i8 %i.td, ptr %i.cz, align 4
  %i.te = load i32, ptr %i.dg, align 4
  %i.tf = add nsw i32 %i.te, 1
  store i32 %i.tf, ptr %i.dg, align 4
  %i.tg = load ptr, ptr %i.dh, align 8            ; 4 uses
  %.not.i8.i468.us.us.us = icmp eq ptr %i.tg, null
  br i1 %.not.i8.i468.us.us.us, label %bb.eh, label %bb.ee

bb.ee:                                            ; preds = %.thread574.us.us.us
  %i.th = load ptr, ptr %i.di, align 8
  %.not11.i.i469.us.us.us = icmp ult ptr %i.tg, %i.th
  br i1 %.not11.i.i469.us.us.us, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  store i32 1, ptr %i.dj, align 8
  br label %get8_packet_raw.exit482.thread578.us.us.us

bb.eg:                                            ; preds = %bb.ee
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 1
  store ptr %i.ti, ptr %i.dh, align 8
  %i.tj = load i8, ptr %i.tg, align 1
  br label %get8_packet_raw.exit482.us.us.us

bb.eh:                                            ; preds = %.thread574.us.us.us
  %i.tk = load ptr, ptr %i.dk, align 8
  %i.tl = call i32 @fgetc(ptr noundef %i.tk)      ; 2 uses
  %i.tm = icmp eq i32 %i.tl, -1
  br i1 %i.tm, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.tn = trunc i32 %i.tl to i8
  br label %get8_packet_raw.exit482.us.us.us

get8_packet_raw.exit482.us.us.us:                 ; preds = %bb.ei, %bb.eg
  %.1.i.i471.us.us.us = phi i8 [ %i.tn, %bb.ei ], [ %i.tj, %bb.eg ]
  %i.to = zext i8 %.1.i.i471.us.us.us to i32
  br label %get8_packet_raw.exit482.thread578.us.us.us

bb.ej:                                            ; preds = %bb.eh
  store i32 1, ptr %i.dj, align 8
  br label %get8_packet_raw.exit482.thread578.us.us.us

get8_packet_raw.exit482.thread578.us.us.us:       ; preds = %bb.ej, %get8_packet_raw.exit482.us.us.us, %bb.ef
  %i.tp = phi i32 [ %i.to, %get8_packet_raw.exit482.us.us.us ], [ 0, %bb.ef ], [ 0, %bb.ej ]
  %i.tq = load i32, ptr %i.cx, align 8            ; 3 uses
  %i.tr = shl i32 %i.tp, %i.tq
  %i.ts = load i32, ptr %i.cy, align 4
  %i.tt = add i32 %i.ts, %i.tr
  store i32 %i.tt, ptr %i.cy, align 4
  %i.tu = add nsw i32 %i.tq, 8
  store i32 %i.tu, ptr %i.cx, align 8
  %i.tv = icmp slt i32 %i.tq, 17
  br i1 %i.tv, label %bb.du, label %prep_huffman.exit.i400.us.us.us

bb.ek:                                            ; preds = %bb.dz
  store i32 32, ptr %i.dl, align 4
  br label %prep_huffman.exit.i400.us.us.us

bb.el:                                            ; preds = %bb.dy
  store i32 1, ptr %i.da, align 4
  br label %prep_huffman.exit.i400.us.us.us

prep_huffman.exit.i400.us.us.us:                  ; preds = %bb.dv, %next_segment.exit.i476.us.us.us, %get8_packet_raw.exit482.thread578.us.us.us, %bb.el, %bb.ek, %bb.dr
  %i.tw = load ptr, ptr %i.pe, align 8            ; 2 uses
  %i.tx = icmp eq ptr %i.tw, null
  br i1 %i.tx, label %bb.es, label %.thread.i401.us.us.us

.thread.i401.us.us.us:                            ; preds = %prep_huffman.exit.i400.us.us.us
  %i.ty = load i32, ptr %i.pf, align 4            ; 3 uses
  %i.tz = icmp sgt i32 %i.ty, 8
  br i1 %i.tz, label %bb.em, label %.thread66.i402.us.us.us

.thread66.i402.us.us.us:                          ; preds = %.thread.i401.us.us.us
  %i.ua = icmp sgt i32 %i.ty, 0
  br i1 %i.ua, label %.lr.ph75.i408.us.us.us, label %._crit_edge76.i403

bb.em:                                            ; preds = %.thread.i401.us.us.us
  %.pre.i416.us.us.us = load ptr, ptr %.phi.trans.insert.i415.us.us.us, align 8 ; 2 uses
  %.not61.i417.us.us.us = icmp eq ptr %.pre.i416.us.us.us, null
  br i1 %.not61.i417.us.us.us, label %.lr.ph75.i408.us.us.us, label %.thread95.i418.us.us.us

.lr.ph75.i408.us.us.us:                           ; preds = %bb.em, %.thread66.i402.us.us.us
  %i.ub = load ptr, ptr %i.pg, align 8
  %wide.trip.count.i409.us.us.us = zext nneg i32 %i.ty to i64
  br label %bb.en

bb.en:                                            ; preds = %bb.ep, %.lr.ph75.i408.us.us.us
  %indvars.iv.i410.us.us.us = phi i64 [ 0, %.lr.ph75.i408.us.us.us ], [ %indvars.iv.next.i412.us.us.us, %bb.ep ] ; 5 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 %indvars.iv.i410.us.us.us
  %i.ud = load i8, ptr %i.uc, align 1             ; 2 uses
  %i.ue = icmp eq i8 %i.ud, -1
  br i1 %i.ue, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.uf = zext i8 %i.ud to i32                    ; 3 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %indvars.iv.i410.us.us.us
  %i.uh = load i32, ptr %i.ug, align 4
  %i.ui = load i32, ptr %i.cy, align 4            ; 2 uses
  %notmask.i411.us.us.us = shl nsw i32 -1, %i.uf
  %i.uj = xor i32 %notmask.i411.us.us.us, -1
  %i.uk = and i32 %i.ui, %i.uj
  %i.ul = icmp eq i32 %i.uh, %i.uk
  br i1 %i.ul, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %indvars.iv.next.i412.us.us.us = add nuw nsw i64 %indvars.iv.i410.us.us.us, 1 ; 2 uses
  %exitcond.not.i413.us.us.us = icmp eq i64 %indvars.iv.next.i412.us.us.us, %wide.trip.count.i409.us.us.us
  br i1 %exitcond.not.i413.us.us.us, label %._crit_edge76.i403, label %bb.en

bb.eq:                                            ; preds = %bb.eo
  %i.um = load i32, ptr %i.cx, align 8            ; 2 uses
  %.not62.i414.us.us.us = icmp slt i32 %i.um, %i.uf
  br i1 %.not62.i414.us.us.us, label %codebook_decode_scalar_raw.exit432.thread581, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.un = trunc nuw nsw i64 %indvars.iv.i410.us.us.us to i32
  %i.uo = lshr i32 %i.ui, %i.uf
  store i32 %i.uo, ptr %i.cy, align 4
  %i.up = load ptr, ptr %i.pg, align 8
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 %indvars.iv.i410.us.us.us
  %i.ur = load i8, ptr %i.uq, align 1
  %i.us = zext i8 %i.ur to i32
  %i.ut = sub nsw i32 %i.um, %i.us
  store i32 %i.ut, ptr %i.cx, align 8
  br label %codebook_decode_start.exit374.us.us.us

bb.es:                                            ; preds = %prep_huffman.exit.i400.us.us.us
  %i.uu = load ptr, ptr %.phi.trans.insert.i415.us.us.us, align 8 ; 2 uses
  %i.uv = icmp eq ptr %i.uu, null
  br i1 %i.uv, label %.thread.i365, label %.thread95.i418.us.us.us

.thread95.i418.us.us.us:                          ; preds = %bb.es, %bb.em
  %i.uw = phi ptr [ %.pre.i416.us.us.us, %bb.em ], [ %i.uu, %bb.es ]
  %i.ux = load i32, ptr %i.cy, align 4            ; 2 uses
  %i.uy = call noundef i32 @llvm.bitreverse.i32(i32 %i.ux)
  %i.uz = load i32, ptr %i.ph, align 8            ; 2 uses
  %i.va = icmp sgt i32 %i.uz, 1
  br i1 %i.va, label %.lr.ph.i424.us.us.us, label %._crit_edge.i419.us.us.us

.lr.ph.i424.us.us.us:                             ; preds = %.thread95.i418.us.us.us, %.lr.ph.i424.us.us.us
  %.073.i425.us.us.us = phi i32 [ %.1.i429.us.us.us, %.lr.ph.i424.us.us.us ], [ %i.uz, %.thread95.i418.us.us.us ] ; 2 uses
  %.05472.i426.us.us.us = phi i32 [ %.155.i428.us.us.us, %.lr.ph.i424.us.us.us ], [ 0, %.thread95.i418.us.us.us ] ; 2 uses
  %i.vb = lshr i32 %.073.i425.us.us.us, 1         ; 3 uses
  %i.vc = add nsw i32 %i.vb, %.05472.i426.us.us.us ; 2 uses
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.vd
  %i.vf = load i32, ptr %i.ve, align 4
  %.not65.i427.us.us.us = icmp ugt i32 %i.vf, %i.uy ; 2 uses
  %i.vg = sub nuw nsw i32 %.073.i425.us.us.us, %i.vb
  %.155.i428.us.us.us = select i1 %.not65.i427.us.us.us, i32 %.05472.i426.us.us.us, i32 %i.vc ; 2 uses
  %.1.i429.us.us.us = select i1 %.not65.i427.us.us.us, i32 %i.vb, i32 %i.vg ; 2 uses
  %i.vh = icmp samesign ugt i32 %.1.i429.us.us.us, 1
  br i1 %i.vh, label %.lr.ph.i424.us.us.us, label %._crit_edge.i419.us.us.us

._crit_edge.i419.us.us.us:                        ; preds = %.lr.ph.i424.us.us.us, %.thread95.i418.us.us.us
  %.054.lcssa.i420.us.us.us = phi i32 [ 0, %.thread95.i418.us.us.us ], [ %.155.i428.us.us.us, %.lr.ph.i424.us.us.us ] ; 2 uses
  %i.vi = load i8, ptr %i.pi, align 1
  %.not63.i421.us.us.us = icmp eq i8 %i.vi, 0
  br i1 %.not63.i421.us.us.us, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %._crit_edge.i419.us.us.us
  %i.vj = load ptr, ptr %i.pj, align 8
  %i.vk = sext i32 %.054.lcssa.i420.us.us.us to i64
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.vj, i64 %i.vk
  %i.vm = load i32, ptr %i.vl, align 4
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %._crit_edge.i419.us.us.us
  %.2.i422.us.us.us = phi i32 [ %.054.lcssa.i420.us.us.us, %._crit_edge.i419.us.us.us ], [ %i.vm, %bb.et ] ; 3 uses
  %i.vn = load ptr, ptr %i.pg, align 8
  %i.vo = sext i32 %.2.i422.us.us.us to i64
  %i.vp = getelementptr inbounds i8, ptr %i.vn, i64 %i.vo
  %i.vq = load i8, ptr %i.vp, align 1
  %i.vr = zext i8 %i.vq to i32                    ; 3 uses
  %i.vs = load i32, ptr %i.cx, align 8            ; 2 uses
  %.not64.i423.us.us.us = icmp slt i32 %i.vs, %i.vr
  br i1 %.not64.i423.us.us.us, label %codebook_decode_scalar_raw.exit432.thread581, label %codebook_decode_scalar_raw.exit432.us.us.us

codebook_decode_scalar_raw.exit432.us.us.us:      ; preds = %bb.eu
  %6 = lshr i32 %i.ux, %i.vr
  store i32 %6, ptr %i.cy, align 4
  %7 = sub nuw nsw i32 %i.vs, %i.vr
  store i32 %7, ptr %i.cx, align 8
  %i.vt = icmp slt i32 %.2.i422.us.us.us, 0
  br i1 %i.vt, label %.thread.i365, label %codebook_decode_start.exit374.us.us.us

bb.ev:                                            ; preds = %prep_huffman.exit.i363.us.us.us
  %i.vu = zext nneg i16 %i.sj to i32
  %i.vv = load ptr, ptr %i.pg, align 8
  %i.vw = zext nneg i16 %i.sj to i64
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 %i.vw
  %i.vy = load i8, ptr %i.vx, align 1
  %i.vz = zext i8 %i.vy to i32                    ; 2 uses
  %i.wa = lshr i32 %i.sf, %i.vz
  store i32 %i.wa, ptr %i.cy, align 4
  %i.wb = load i32, ptr %i.cx, align 8
  %i.wc = sub nsw i32 %i.wb, %i.vz                ; 2 uses
  %i.wd = icmp slt i32 %i.wc, 0
  %spec.select.i371.us.us.us = call i32 @llvm.smax.i32(i32 %i.wc, i32 0)
  store i32 %spec.select.i371.us.us.us, ptr %i.cx, align 8
  br i1 %i.wd, label %.thread.i365, label %codebook_decode_start.exit374.us.us.us

codebook_decode_start.exit374.us.us.us:           ; preds = %bb.ev, %codebook_decode_scalar_raw.exit432.us.us.us, %bb.er
  %.025.i364.ph.us.us.us = phi i32 [ %i.un, %bb.er ], [ %i.vu, %bb.ev ], [ %.2.i422.us.us.us, %codebook_decode_scalar_raw.exit432.us.us.us ]
  %i.we = trunc nuw nsw i64 %indvars.iv.i354.us.us.us to i32
  %i.wf = add i32 %i.os, %i.we
  %i.wg = sub i32 %i.oq, %i.wf
  %i.wh = load i32, ptr %i.ou, align 8            ; 2 uses
  %spec.select.i.i.us.us.us = call i32 @llvm.smin.i32(i32 %i.wg, i32 %i.wh) ; 2 uses
  %i.wi = icmp sgt i32 %spec.select.i.i.us.us.us, 0
  br i1 %i.wi, label %.lr.ph.i.i.us.us.us, label %.loopexit.i.us.us.us

.lr.ph.i.i.us.us.us:                              ; preds = %codebook_decode_start.exit374.us.us.us
  %i.wj = mul nuw nsw i32 %i.wh, %.025.i364.ph.us.us.us
  %i.wk = sext i32 %i.wj to i64
  %wide.trip.count.i.i.us.us.us = zext nneg i32 %spec.select.i.i.us.us.us to i64
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ew, %.lr.ph.i.i.us.us.us
  %indvars.iv.i.i.us.us.us = phi i64 [ 0, %.lr.ph.i.i.us.us.us ], [ %indvars.iv.next.i.i.us.us.us, %bb.ew ] ; 3 uses
  %.028.i.i.us.us.us = phi float [ 0.000000e+00, %.lr.ph.i.i.us.us.us ], [ %.1.i.i.us.us.us, %bb.ew ] ; 2 uses
  %i.wl = load ptr, ptr %i.oz, align 8
  %i.wm = getelementptr [4 x i8], ptr %i.wl, i64 %indvars.iv.i.i.us.us.us
  %i.wn = getelementptr [4 x i8], ptr %i.wm, i64 %i.wk
  %i.wo = load float, ptr %i.wn, align 4
  %i.wp = fadd float %.028.i.i.us.us.us, %i.wo    ; 2 uses
  %i.wq = mul nuw nsw i64 %indvars.iv.i.i.us.us.us, %i.pb
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.wq ; 2 uses
  %i.ws = load float, ptr %i.wr, align 4
  %i.wt = fadd float %i.ws, %i.wp
  store float %i.wt, ptr %i.wr, align 4
  %i.wu = load i8, ptr %i.pa, align 2
  %.not.i.i.us.us.us = icmp eq i8 %i.wu, 0
  %.1.i.i.us.us.us = select i1 %.not.i.i.us.us.us, float %.028.i.i.us.us.us, float %i.wp
  %indvars.iv.next.i.i.us.us.us = add nuw nsw i64 %indvars.iv.i.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i.i.us.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us.us, %wide.trip.count.i.i.us.us.us
  br i1 %exitcond.not.i.i.us.us.us, label %.loopexit.i.us.us.us, label %bb.ew

.loopexit.i.us.us.us:                             ; preds = %bb.ew, %codebook_decode_start.exit374.us.us.us
  %indvars.iv.next.i355.us.us.us = add nuw nsw i64 %indvars.iv.i354.us.us.us, 1 ; 2 uses
  %exitcond.not.i356.us.us.us = icmp eq i64 %indvars.iv.next.i355.us.us.us, %i.pb
  br i1 %exitcond.not.i356.us.us.us, label %.thread614.us.us.us, label %bb.cd

.thread614.us.us.us:                              ; preds = %.loopexit.i.us.us.us, %bb.cc, %bb.cb, %bb.ca
  %indvars.iv.next771.a = add nuw nsw i64 %indvars.iv770.a, 1 ; 2 uses
  %exitcond774.not.a = icmp eq i64 %indvars.iv.next771.a, %wide.trip.count773
  br i1 %exitcond774.not.a, label %._crit_edge676.split.us.us.us, label %bb.ca

._crit_edge676.split.us.us.us:                    ; preds = %.thread614.us.us.us
  %indvars.iv.next776.a = add nuw nsw i64 %indvars.iv775.a, 1 ; 2 uses
  %i.wv = add nsw i32 %.1280680.us.us, 1          ; 3 uses
  %i.ww = icmp slt i64 %indvars.iv.next776.a, %i.dq
  %i.wx = icmp slt i32 %i.wv, %i.ac
  %i.wy = select i1 %i.ww, i1 %i.wx, i1 false
  br i1 %i.wy, label %.preheader637.us.us, label %._crit_edge682

.preheader637.us:                                 ; preds = %.preheader637.lr.ph.split.us, %._crit_edge676.split.us687
  %indvars.iv767 = phi i64 [ %indvars.iv.next768, %._crit_edge676.split.us687 ], [ 0, %.preheader637.lr.ph.split.us ] ; 2 uses
  %.1280680.us = phi i32 [ %i.aix, %._crit_edge676.split.us687 ], [ %.0279697, %.preheader637.lr.ph.split.us ] ; 2 uses
  br label %bb.ex

bb.ex:                                            ; preds = %.thread614.us686, %.preheader637.us
  %indvars.iv762 = phi i64 [ %indvars.iv.next763, %.thread614.us686 ], [ 0, %.preheader637.us ] ; 4 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv762
  %i.xa = load i8, ptr %i.wz, align 1
  %.not323.us685 = icmp eq i8 %i.xa, 0
  br i1 %.not323.us685, label %bb.ey, label %.thread614.us686

bb.ey:                                            ; preds = %bb.ex
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv762
  %i.xc = load ptr, ptr %i.xb, align 8
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %indvars.iv778.a
  %i.xe = load ptr, ptr %i.xd, align 8
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 %indvars.iv767
  %i.xg = load i8, ptr %i.xf, align 1
  %i.xh = load ptr, ptr %i.do, align 8
  %i.xi = zext i8 %i.xg to i64
  %i.xj = getelementptr inbounds nuw [16 x i8], ptr %i.xh, i64 %i.xi
  %i.xk = getelementptr inbounds nuw [2 x i8], ptr %i.xj, i64 %indvars.iv781
  %i.xl = load i16, ptr %i.xk, align 2            ; 2 uses
  %i.xm = icmp sgt i16 %i.xl, -1
  br i1 %i.xm, label %.preheader.i.us, label %.thread614.us686

.preheader.i.us:                                  ; preds = %bb.ey
  %i.xn = zext nneg i16 %i.xl to i64
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv762
  %i.xp = load ptr, ptr %i.xo, align 8
  %i.xq = load i32, ptr %i.aa, align 8            ; 4 uses
  %i.xr = load ptr, ptr %i.n, align 8
  %i.xs = getelementptr inbounds nuw [2120 x i8], ptr %i.xr, i64 %i.xn ; 14 uses
  %i.xt = icmp sgt i32 %i.xq, 0
  br i1 %i.xt, label %.lr.ph.i353.us, label %.thread614.us686

.lr.ph.i353.us:                                   ; preds = %.preheader.i.us
  %i.xu = mul i32 %i.xq, %.1280680.us
  %i.xv = load i32, ptr %i.h, align 8
  %i.xw = add i32 %i.xu, %i.xv
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xs, i64 26
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xs, i64 32 ; 6 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xs, i64 16 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xs, i64 25
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xs, i64 48
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xs, i64 40
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xs, i64 4
  %.phi.trans.insert.i.us = getelementptr inbounds nuw i8, ptr %i.xs, i64 2096 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xs, i64 8 ; 4 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xs, i64 2112
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xs, i64 27
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xs, i64 2104
  br label %bb.ez

bb.ez:                                            ; preds = %.loopexit48.i.us, %.lr.ph.i353.us
  %.153.i.us = phi i32 [ 0, %.lr.ph.i353.us ], [ %i.aiu, %.loopexit48.i.us ] ; 2 uses
  %.03152.i.us = phi i32 [ %i.xw, %.lr.ph.i353.us ], [ %i.aiv, %.loopexit48.i.us ] ; 2 uses
  %i.yi = sext i32 %.03152.i.us to i64
  %i.yj = getelementptr inbounds [4 x i8], ptr %i.xp, i64 %i.yi ; 6 uses
  %i.yk = load i8, ptr %i.ya, align 1
  %i.yl = icmp eq i8 %i.yk, 0
  br i1 %i.yl, label %.thread31.sink.split.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ym = load i32, ptr %i.cx, align 8            ; 2 uses
  %i.yn = icmp slt i32 %i.ym, 10
  br i1 %i.yn, label %bb.fb, label %prep_huffman.exit.i.us

bb.fb:                                            ; preds = %bb.fa
  %i.yo = icmp eq i32 %i.ym, 0
  br i1 %i.yo, label %bb.fc, label %.preheader974

bb.fc:                                            ; preds = %bb.fb
  store i32 0, ptr %i.cy, align 4
  br label %.preheader974

.preheader974:                                    ; preds = %bb.fc, %bb.fb
  br label %bb.fd

bb.fd:                                            ; preds = %.preheader974, %get8_packet_raw.exit399.thread593.us
  %i.yp = load i32, ptr %i.da, align 4
  %.not.i.i362.us = icmp eq i32 %i.yp, 0
  %.pr586.us = load i8, ptr %i.cz, align 4        ; 3 uses
  %.not.i384.us = icmp eq i8 %.pr586.us, 0        ; 2 uses
  br i1 %.not.i.i362.us, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  br i1 %.not.i384.us, label %prep_huffman.exit.i.us, label %.thread587.us

bb.ff:                                            ; preds = %bb.fd
  br i1 %.not.i384.us, label %bb.fg, label %.thread587.us

bb.fg:                                            ; preds = %bb.ff
  %i.yq = load i32, ptr %i.db, align 8            ; 2 uses
  %i.yr = icmp eq i32 %i.yq, -1
  br i1 %i.yr, label %bb.fh, label %bb.gc

bb.fh:                                            ; preds = %bb.fg
  %i.ys = load i32, ptr %i.dc, align 8
  %i.yt = add nsw i32 %i.ys, -1
  store i32 %i.yt, ptr %i.dd, align 8
  %i.yu = load ptr, ptr %i.dh, align 8            ; 4 uses
  %.not.i.i.i.us = icmp eq ptr %i.yu, null
  br i1 %.not.i.i.i.us, label %bb.fk, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.yv = load ptr, ptr %i.di, align 8
  %.not11.i.i.i.us = icmp ult ptr %i.yu, %i.yv
  br i1 %.not11.i.i.i.us, label %bb.fj, label %capture_pattern.exit.thread.sink.split.i.us

bb.fj:                                            ; preds = %bb.fi
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 1
  store ptr %i.yw, ptr %i.dh, align 8
  %i.yx = load i8, ptr %i.yu, align 1
  br label %get8.exit.i.i.us

bb.fk:                                            ; preds = %bb.fh
  %i.yy = load ptr, ptr %i.dk, align 8
  %i.yz = call i32 @fgetc(ptr noundef %i.yy)      ; 2 uses
  %i.za = icmp eq i32 %i.yz, -1
  br i1 %i.za, label %capture_pattern.exit.thread.sink.split.i.us, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.zb = trunc i32 %i.yz to i8
  br label %get8.exit.i.i.us

get8.exit.i.i.us:                                 ; preds = %bb.fl, %bb.fj
  %.1.i.i.i.us = phi i8 [ %i.zb, %bb.fl ], [ %i.yx, %bb.fj ]
  %.not.i.i466.us = icmp eq i8 %.1.i.i.i.us, 79
  br i1 %.not.i.i466.us, label %bb.fm, label %start_page.exit.thread.us

bb.fm:                                            ; preds = %get8.exit.i.i.us
  %i.zc = load ptr, ptr %i.dh, align 8            ; 4 uses
  %.not.i7.i.i.us = icmp eq ptr %i.zc, null
  br i1 %.not.i7.i.i.us, label %bb.fp, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.zd = load ptr, ptr %i.di, align 8
  %.not11.i8.i.i.us = icmp ult ptr %i.zc, %i.zd
  br i1 %.not11.i8.i.i.us, label %bb.fo, label %capture_pattern.exit.thread.sink.split.i.us

bb.fo:                                            ; preds = %bb.fn
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zc, i64 1
  store ptr %i.ze, ptr %i.dh, align 8
  %i.zf = load i8, ptr %i.zc, align 1
  br label %get8.exit10.i.i.us

bb.fp:                                            ; preds = %bb.fm
  %i.zg = load ptr, ptr %i.dk, align 8
  %i.zh = call i32 @fgetc(ptr noundef %i.zg)      ; 2 uses
  %i.zi = icmp eq i32 %i.zh, -1
  br i1 %i.zi, label %capture_pattern.exit.thread.sink.split.i.us, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.zj = trunc i32 %i.zh to i8
  br label %get8.exit10.i.i.us

end_hunk_3
begin_hunk_4_@decode_residue:bb.a
bb.hl:                                            ; preds = %bb.hk
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acq, i64 1
  store ptr %i.acs, ptr %i.dh, align 8
  %i.act = load i8, ptr %i.acq, align 1
  %i.acu = freeze i8 %i.act
  br label %capture_pattern.exit.i527.us

bb.hm:                                            ; preds = %bb.hj
  %i.acv = load ptr, ptr %i.dk, align 8
  %i.acw = call i32 @fgetc(ptr noundef %i.acv)    ; 2 uses
  %i.acx = icmp eq i32 %i.acw, -1
  br i1 %i.acx, label %capture_pattern.exit.thread.sink.split.i509.us, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.acy = trunc i32 %i.acw to i8
  br label %capture_pattern.exit.i527.us

capture_pattern.exit.i527.us:                     ; preds = %bb.hn, %bb.hl
  %.1.i17.i.i528.us = phi i8 [ %i.acy, %bb.hn ], [ %i.acu, %bb.hl ]
  %.not6.i.not.i529.us = icmp eq i8 %.1.i17.i.i528.us, 83
  br i1 %.not6.i.not.i529.us, label %start_page.exit530.us, label %start_page.exit530.thread.us

start_page.exit530.us:                            ; preds = %capture_pattern.exit.i527.us
  %i.acz = call fastcc i32 @start_page_no_capturepattern(ptr noundef nonnull %0)
  %.not20.i.i460.us = icmp eq i32 %i.acz, 0
  br i1 %.not20.i.i460.us, label %.loopexit632.us, label %bb.ho

bb.ho:                                            ; preds = %start_page.exit530.us
  %i.ada = load i8, ptr %i.de, align 1
  %i.adb = and i8 %i.ada, 1
  %.not21.i.i461.us = icmp eq i8 %i.adb, 0
  br i1 %.not21.i.i461.us, label %bb.hz, label %._crit_edge.i.i462.us

._crit_edge.i.i462.us:                            ; preds = %bb.ho
  %.pre.i.i463.us = load i32, ptr %i.db, align 8
  br label %bb.hp

bb.hp:                                            ; preds = %._crit_edge.i.i462.us, %bb.gt
  %i.adc = phi i32 [ %.pre.i.i463.us, %._crit_edge.i.i462.us ], [ %i.abo, %bb.gt ] ; 3 uses
  %i.add = add nsw i32 %i.adc, 1                  ; 2 uses
  store i32 %i.add, ptr %i.db, align 8
  %i.ade = sext i32 %i.adc to i64
  %i.adf = getelementptr inbounds i8, ptr %i.df, i64 %i.ade
  %i.adg = load i8, ptr %i.adf, align 1           ; 4 uses
  %.not22.i.i456.us = icmp eq i8 %i.adg, -1
  br i1 %.not22.i.i456.us, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  store i32 1, ptr %i.da, align 4
  store i32 %i.adc, ptr %i.dd, align 8
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %i.adh = load i32, ptr %i.dc, align 8
  %.not23.i.i457.us = icmp slt i32 %i.add, %i.adh
  br i1 %.not23.i.i457.us, label %next_segment.exit.i458.us, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  store i32 -1, ptr %i.db, align 8
  br label %next_segment.exit.i458.us

next_segment.exit.i458.us:                        ; preds = %bb.hs, %bb.hr
  store i8 %i.adg, ptr %i.cz, align 4
  %.not7.i459.us = icmp eq i8 %i.adg, 0
  br i1 %.not7.i459.us, label %prep_huffman.exit.i375.us, label %.thread597.us

.thread597.us:                                    ; preds = %next_segment.exit.i458.us, %bb.gs, %bb.gr
  %i.adi = phi i8 [ %i.adg, %next_segment.exit.i458.us ], [ %.pr596.us, %bb.gs ], [ %.pr596.us, %bb.gr ]
  %i.adj = add i8 %i.adi, -1
  store i8 %i.adj, ptr %i.cz, align 4
  %i.adk = load i32, ptr %i.dg, align 4
  %i.adl = add nsw i32 %i.adk, 1
  store i32 %i.adl, ptr %i.dg, align 4
  %i.adm = load ptr, ptr %i.dh, align 8           ; 4 uses
  %.not.i8.i450.us = icmp eq ptr %i.adm, null
  br i1 %.not.i8.i450.us, label %bb.hw, label %bb.ht

bb.ht:                                            ; preds = %.thread597.us
  %i.adn = load ptr, ptr %i.di, align 8
  %.not11.i.i451.us = icmp ult ptr %i.adm, %i.adn
  br i1 %.not11.i.i451.us, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  store i32 1, ptr %i.dj, align 8
  br label %get8_packet_raw.exit464.thread603.us

bb.hv:                                            ; preds = %bb.ht
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adm, i64 1
  store ptr %i.ado, ptr %i.dh, align 8
  %i.adp = load i8, ptr %i.adm, align 1
  br label %get8_packet_raw.exit464.us

bb.hw:                                            ; preds = %.thread597.us
  %i.adq = load ptr, ptr %i.dk, align 8
  %i.adr = call i32 @fgetc(ptr noundef %i.adq)    ; 2 uses
  %i.ads = icmp eq i32 %i.adr, -1
  br i1 %i.ads, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.adt = trunc i32 %i.adr to i8
  br label %get8_packet_raw.exit464.us

get8_packet_raw.exit464.us:                       ; preds = %bb.hx, %bb.hv
  %.1.i.i453.us = phi i8 [ %i.adt, %bb.hx ], [ %i.adp, %bb.hv ]
  %i.adu = zext i8 %.1.i.i453.us to i32
  br label %get8_packet_raw.exit464.thread603.us

bb.hy:                                            ; preds = %bb.hw
  store i32 1, ptr %i.dj, align 8
  br label %get8_packet_raw.exit464.thread603.us

get8_packet_raw.exit464.thread603.us:             ; preds = %bb.hy, %get8_packet_raw.exit464.us, %bb.hu
  %i.adv = phi i32 [ %i.adu, %get8_packet_raw.exit464.us ], [ 0, %bb.hu ], [ 0, %bb.hy ]
  %i.adw = load i32, ptr %i.cx, align 8           ; 3 uses
  %i.adx = shl i32 %i.adv, %i.adw
  %i.ady = load i32, ptr %i.cy, align 4
  %i.adz = add i32 %i.ady, %i.adx
  store i32 %i.adz, ptr %i.cy, align 4
  %i.aea = add nsw i32 %i.adw, 8
  store i32 %i.aea, ptr %i.cx, align 8
  %i.aeb = icmp slt i32 %i.adw, 17
  br i1 %i.aeb, label %bb.gq, label %prep_huffman.exit.i375.us

bb.hz:                                            ; preds = %bb.ho
  store i32 32, ptr %i.dl, align 4
  br label %prep_huffman.exit.i375.us

capture_pattern.exit.thread.sink.split.i509.us:   ; preds = %bb.hm, %bb.hk, %bb.hh, %bb.hf, %bb.hc, %bb.ha, %bb.gx, %bb.gv
  store i32 1, ptr %i.dj, align 8
  br label %start_page.exit530.thread.us

start_page.exit530.thread.us:                     ; preds = %get8.exit.i.i512.us, %get8.exit10.i.i517.us, %get8.exit14.i.i522.us, %capture_pattern.exit.i527.us, %capture_pattern.exit.thread.sink.split.i509.us
  store i32 30, ptr %i.dl, align 4
  br label %.loopexit632.us

.loopexit632.us:                                  ; preds = %start_page.exit530.us, %start_page.exit530.thread.us
  store i32 1, ptr %i.da, align 4
  br label %prep_huffman.exit.i375.us

prep_huffman.exit.i375.us:                        ; preds = %bb.gr, %next_segment.exit.i458.us, %get8_packet_raw.exit464.thread603.us, %.loopexit632.us, %bb.hz, %bb.gn
  %i.aec = load ptr, ptr %i.yc, align 8           ; 2 uses
  %i.aed = icmp eq ptr %i.aec, null
  br i1 %i.aed, label %bb.ig, label %.thread.i376.us

.thread.i376.us:                                  ; preds = %prep_huffman.exit.i375.us
  %i.aee = load i32, ptr %i.yd, align 4           ; 3 uses
  %i.aef = icmp sgt i32 %i.aee, 8
  br i1 %i.aef, label %bb.ia, label %.thread66.i.us

.thread66.i.us:                                   ; preds = %.thread.i376.us
  %i.aeg = icmp sgt i32 %i.aee, 0
  br i1 %i.aeg, label %.lr.ph75.i.us, label %._crit_edge76.i

bb.ia:                                            ; preds = %.thread.i376.us
  %.pre.i.us = load ptr, ptr %.phi.trans.insert.i.us, align 8 ; 2 uses
  %.not61.i.us = icmp eq ptr %.pre.i.us, null
  br i1 %.not61.i.us, label %.lr.ph75.i.us, label %.thread95.i.us

.lr.ph75.i.us:                                    ; preds = %bb.ia, %.thread66.i.us
  %i.aeh = load ptr, ptr %i.ye, align 8
  %wide.trip.count.i377.us = zext nneg i32 %i.aee to i64
  br label %bb.ib

bb.ib:                                            ; preds = %bb.id, %.lr.ph75.i.us
  %indvars.iv.i378.us = phi i64 [ 0, %.lr.ph75.i.us ], [ %indvars.iv.next.i379.us, %bb.id ] ; 5 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %indvars.iv.i378.us
  %i.aej = load i8, ptr %i.aei, align 1           ; 2 uses
  %i.aek = icmp eq i8 %i.aej, -1
  br i1 %i.aek, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.ael = zext i8 %i.aej to i32                  ; 3 uses
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.aec, i64 %indvars.iv.i378.us
  %i.aen = load i32, ptr %i.aem, align 4
  %i.aeo = load i32, ptr %i.cy, align 4           ; 2 uses
  %notmask.i.us = shl nsw i32 -1, %i.ael
  %i.aep = xor i32 %notmask.i.us, -1
  %i.aeq = and i32 %i.aeo, %i.aep
  %i.aer = icmp eq i32 %i.aen, %i.aeq
  br i1 %i.aer, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %indvars.iv.next.i379.us = add nuw nsw i64 %indvars.iv.i378.us, 1 ; 2 uses
  %exitcond.not.i380.us = icmp eq i64 %indvars.iv.next.i379.us, %wide.trip.count.i377.us
  br i1 %exitcond.not.i380.us, label %._crit_edge76.i, label %bb.ib

bb.ie:                                            ; preds = %bb.ic
  %i.aes = load i32, ptr %i.cx, align 8           ; 2 uses
  %.not62.i.us = icmp slt i32 %i.aes, %i.ael
  br i1 %.not62.i.us, label %codebook_decode_scalar_raw.exit.thread606, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.aet = trunc nuw nsw i64 %indvars.iv.i378.us to i32
  %i.aeu = lshr i32 %i.aeo, %i.ael
  store i32 %i.aeu, ptr %i.cy, align 4
  %i.aev = load ptr, ptr %i.ye, align 8
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 %indvars.iv.i378.us
  %i.aex = load i8, ptr %i.aew, align 1
  %i.aey = zext i8 %i.aex to i32
  %i.aez = sub nsw i32 %i.aes, %i.aey
  store i32 %i.aez, ptr %i.cx, align 8
  br label %codebook_decode_start.exit.us

bb.ig:                                            ; preds = %prep_huffman.exit.i375.us
  %i.afa = load ptr, ptr %.phi.trans.insert.i.us, align 8 ; 2 uses
  %i.afb = icmp eq ptr %i.afa, null
  br i1 %i.afb, label %.thread.i, label %.thread95.i.us

.thread95.i.us:                                   ; preds = %bb.ig, %bb.ia
  %i.afc = phi ptr [ %.pre.i.us, %bb.ia ], [ %i.afa, %bb.ig ]
  %i.afd = load i32, ptr %i.cy, align 4           ; 2 uses
  %i.afe = call noundef i32 @llvm.bitreverse.i32(i32 %i.afd)
  %i.aff = load i32, ptr %i.yf, align 8           ; 2 uses
  %i.afg = icmp sgt i32 %i.aff, 1
  br i1 %i.afg, label %.lr.ph.i381.us, label %._crit_edge.i.us

.lr.ph.i381.us:                                   ; preds = %.thread95.i.us, %.lr.ph.i381.us
  %.073.i.us = phi i32 [ %.1.i.us, %.lr.ph.i381.us ], [ %i.aff, %.thread95.i.us ] ; 2 uses
  %.05472.i.us = phi i32 [ %.155.i.us, %.lr.ph.i381.us ], [ 0, %.thread95.i.us ] ; 2 uses
  %i.afh = lshr i32 %.073.i.us, 1                 ; 3 uses
  %i.afi = add nsw i32 %i.afh, %.05472.i.us       ; 2 uses
  %i.afj = sext i32 %i.afi to i64
  %i.afk = getelementptr inbounds [4 x i8], ptr %i.afc, i64 %i.afj
  %i.afl = load i32, ptr %i.afk, align 4
  %.not65.i.us = icmp ugt i32 %i.afl, %i.afe      ; 2 uses
  %i.afm = sub nuw nsw i32 %.073.i.us, %i.afh
  %.155.i.us = select i1 %.not65.i.us, i32 %.05472.i.us, i32 %i.afi ; 2 uses
  %.1.i.us = select i1 %.not65.i.us, i32 %i.afh, i32 %i.afm ; 2 uses
  %i.afn = icmp samesign ugt i32 %.1.i.us, 1
  br i1 %i.afn, label %.lr.ph.i381.us, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %.lr.ph.i381.us, %.thread95.i.us
  %.054.lcssa.i.us = phi i32 [ 0, %.thread95.i.us ], [ %.155.i.us, %.lr.ph.i381.us ] ; 2 uses
  %i.afo = load i8, ptr %i.yg, align 1
  %.not63.i.us = icmp eq i8 %i.afo, 0
  br i1 %.not63.i.us, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %._crit_edge.i.us
  %i.afp = load ptr, ptr %i.yh, align 8
  %i.afq = sext i32 %.054.lcssa.i.us to i64
  %i.afr = getelementptr inbounds [4 x i8], ptr %i.afp, i64 %i.afq
  %i.afs = load i32, ptr %i.afr, align 4
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %._crit_edge.i.us
  %.2.i.us = phi i32 [ %.054.lcssa.i.us, %._crit_edge.i.us ], [ %i.afs, %bb.ih ] ; 3 uses
  %i.aft = load ptr, ptr %i.ye, align 8
  %i.afu = sext i32 %.2.i.us to i64
  %i.afv = getelementptr inbounds i8, ptr %i.aft, i64 %i.afu
  %i.afw = load i8, ptr %i.afv, align 1
  %i.afx = zext i8 %i.afw to i32                  ; 3 uses
  %i.afy = load i32, ptr %i.cx, align 8           ; 2 uses
  %.not64.i.us = icmp slt i32 %i.afy, %i.afx
  br i1 %.not64.i.us, label %codebook_decode_scalar_raw.exit.thread606, label %codebook_decode_scalar_raw.exit.us

codebook_decode_scalar_raw.exit.us:               ; preds = %bb.ii
  %8 = lshr i32 %i.afd, %i.afx
  store i32 %8, ptr %i.cy, align 4
  %9 = sub nuw nsw i32 %i.afy, %i.afx
  store i32 %9, ptr %i.cx, align 8
  %i.afz = icmp slt i32 %.2.i.us, 0
  br i1 %i.afz, label %.thread.i, label %codebook_decode_start.exit.us

bb.ij:                                            ; preds = %prep_huffman.exit.i.us
  %i.aga = zext nneg i16 %i.abi to i32
  %i.agb = load ptr, ptr %i.ye, align 8
  %i.agc = zext nneg i16 %i.abi to i64
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agb, i64 %i.agc
  %i.age = load i8, ptr %i.agd, align 1
  %i.agf = zext i8 %i.age to i32                  ; 2 uses
  %i.agg = lshr i32 %i.abe, %i.agf
  store i32 %i.agg, ptr %i.cy, align 4
  %i.agh = load i32, ptr %i.cx, align 8
  %i.agi = sub nsw i32 %i.agh, %i.agf             ; 2 uses
  %i.agj = icmp slt i32 %i.agi, 0
  %spec.select.i.us = call i32 @llvm.smax.i32(i32 %i.agi, i32 0)
  store i32 %spec.select.i.us, ptr %i.cx, align 8
  br i1 %i.agj, label %.thread.i, label %codebook_decode_start.exit.us

codebook_decode_start.exit.us:                    ; preds = %bb.ij, %codebook_decode_scalar_raw.exit.us, %bb.if
  %.025.i.ph.us = phi i32 [ %i.aet, %bb.if ], [ %i.aga, %bb.ij ], [ %.2.i.us, %codebook_decode_scalar_raw.exit.us ]
  %i.agk = sub nsw i32 %i.xq, %.153.i.us
  %i.agl = load i32, ptr %i.xs, align 8           ; 2 uses
  %spec.select.i36.i.us = call i32 @llvm.smin.i32(i32 %i.agk, i32 %i.agl) ; 7 uses
  %i.agm = mul nsw i32 %i.agl, %.025.i.ph.us      ; 2 uses
  %i.agn = load i8, ptr %i.xx, align 2
  %.not.i37.i.us = icmp eq i8 %i.agn, 0
  %i.ago = icmp sgt i32 %spec.select.i36.i.us, 0  ; 2 uses
  br i1 %.not.i37.i.us, label %.preheader.i.i.us, label %.preheader36.i.i.us

.preheader36.i.i.us:                              ; preds = %codebook_decode_start.exit.us
  br i1 %i.ago, label %.lr.ph.i38.i.us, label %.loopexit48.i.us

.lr.ph.i38.i.us:                                  ; preds = %.preheader36.i.i.us
  %i.agp = sext i32 %i.agm to i64                 ; 3 uses
  %wide.trip.count.i39.i.us = zext nneg i32 %spec.select.i36.i.us to i64 ; 2 uses
  %xtraiter999 = and i64 %wide.trip.count.i39.i.us, 1
  %i.agq = icmp eq i32 %spec.select.i36.i.us, 1
  br i1 %i.agq, label %.epil.preheader998, label %.lr.ph.i38.i.us.new

.lr.ph.i38.i.us.new:                              ; preds = %.lr.ph.i38.i.us
  %unroll_iter1003 = and i64 %wide.trip.count.i39.i.us, 2147483646
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ik, %.lr.ph.i38.i.us.new
  %indvars.iv.i40.i.us = phi i64 [ 0, %.lr.ph.i38.i.us.new ], [ %indvars.iv.next.i41.i.us.1, %bb.ik ] ; 4 uses
  %.03039.i.i.us = phi float [ 0.000000e+00, %.lr.ph.i38.i.us.new ], [ %i.ahk, %bb.ik ]
  %niter1004 = phi i64 [ 0, %.lr.ph.i38.i.us.new ], [ %niter1004.next.1, %bb.ik ]
  %i.agr = load ptr, ptr %i.xy, align 8
  %i.ags = getelementptr [4 x i8], ptr %i.agr, i64 %indvars.iv.i40.i.us
  %i.agt = getelementptr [4 x i8], ptr %i.ags, i64 %i.agp
  %i.agu = load float, ptr %i.agt, align 4
  %i.agv = fadd float %.03039.i.i.us, %i.agu      ; 2 uses
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %indvars.iv.i40.i.us ; 2 uses
  %i.agx = load float, ptr %i.agw, align 4
  %i.agy = fadd float %i.agx, %i.agv
  store float %i.agy, ptr %i.agw, align 4
  %i.agz = load float, ptr %i.xz, align 8
  %i.aha = fadd float %i.agv, %i.agz
  %indvars.iv.next.i41.i.us = or disjoint i64 %indvars.iv.i40.i.us, 1 ; 2 uses
  %i.ahb = load ptr, ptr %i.xy, align 8
  %i.ahc = getelementptr [4 x i8], ptr %i.ahb, i64 %indvars.iv.next.i41.i.us
  %i.ahd = getelementptr [4 x i8], ptr %i.ahc, i64 %i.agp
  %i.ahe = load float, ptr %i.ahd, align 4
  %i.ahf = fadd float %i.aha, %i.ahe              ; 2 uses
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %indvars.iv.next.i41.i.us ; 2 uses
  %i.ahh = load float, ptr %i.ahg, align 4
  %i.ahi = fadd float %i.ahh, %i.ahf
  store float %i.ahi, ptr %i.ahg, align 4
  %i.ahj = load float, ptr %i.xz, align 8
  %i.ahk = fadd float %i.ahf, %i.ahj              ; 2 uses
  %indvars.iv.next.i41.i.us.1 = add nuw nsw i64 %indvars.iv.i40.i.us, 2 ; 2 uses
  %niter1004.next.1 = add i64 %niter1004, 2       ; 2 uses
  %niter1004.ncmp.1 = icmp eq i64 %niter1004.next.1, %unroll_iter1003
  br i1 %niter1004.ncmp.1, label %.loopexit48.i.us.loopexit972.unr-lcssa, label %bb.ik

.preheader.i.i.us:                                ; preds = %codebook_decode_start.exit.us
  br i1 %i.ago, label %.lr.ph41.i.i.us, label %.loopexit48.i.us

.lr.ph41.i.i.us:                                  ; preds = %.preheader.i.i.us
  %i.ahl = sext i32 %i.agm to i64                 ; 3 uses
  %wide.trip.count47.i.i.us = zext nneg i32 %spec.select.i36.i.us to i64 ; 2 uses
  %xtraiter1006 = and i64 %wide.trip.count47.i.i.us, 1
  %i.ahm = icmp eq i32 %spec.select.i36.i.us, 1
  br i1 %i.ahm, label %.epil.preheader1005, label %.lr.ph41.i.i.us.new

.lr.ph41.i.i.us.new:                              ; preds = %.lr.ph41.i.i.us
  %unroll_iter1010 = and i64 %wide.trip.count47.i.i.us, 2147483646
  br label %bb.il

bb.il:                                            ; preds = %bb.il, %.lr.ph41.i.i.us.new
  %indvars.iv44.i.i.us = phi i64 [ 0, %.lr.ph41.i.i.us.new ], [ %indvars.iv.next45.i.i.us.1, %bb.il ] ; 4 uses
  %niter1011 = phi i64 [ 0, %.lr.ph41.i.i.us.new ], [ %niter1011.next.1, %bb.il ]
  %i.ahn = load ptr, ptr %i.xy, align 8
  %i.aho = getelementptr [4 x i8], ptr %i.ahn, i64 %indvars.iv44.i.i.us
  %i.ahp = getelementptr [4 x i8], ptr %i.aho, i64 %i.ahl
  %i.ahq = load float, ptr %i.ahp, align 4
  %i.ahr = fadd float %i.ahq, 0.000000e+00
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %indvars.iv44.i.i.us ; 2 uses
  %i.aht = load float, ptr %i.ahs, align 4
  %i.ahu = fadd float %i.aht, %i.ahr
  store float %i.ahu, ptr %i.ahs, align 4
  %indvars.iv.next45.i.i.us = or disjoint i64 %indvars.iv44.i.i.us, 1 ; 2 uses
  %i.ahv = load ptr, ptr %i.xy, align 8
  %i.ahw = getelementptr [4 x i8], ptr %i.ahv, i64 %indvars.iv.next45.i.i.us
  %i.ahx = getelementptr [4 x i8], ptr %i.ahw, i64 %i.ahl
  %i.ahy = load float, ptr %i.ahx, align 4
  %i.ahz = fadd float %i.ahy, 0.000000e+00
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %indvars.iv.next45.i.i.us ; 2 uses
  %i.aib = load float, ptr %i.aia, align 4
  %i.aic = fadd float %i.aib, %i.ahz
  store float %i.aic, ptr %i.aia, align 4
  %indvars.iv.next45.i.i.us.1 = add nuw nsw i64 %indvars.iv44.i.i.us, 2 ; 2 uses
  %niter1011.next.1 = add i64 %niter1011, 2       ; 2 uses
  %niter1011.ncmp.1 = icmp eq i64 %niter1011.next.1, %unroll_iter1010
  br i1 %niter1011.ncmp.1, label %.loopexit48.i.us.loopexit.unr-lcssa, label %bb.il

.loopexit48.i.us.loopexit.unr-lcssa:              ; preds = %bb.il
  %lcmp.mod1008.not = icmp eq i64 %xtraiter1006, 0
  br i1 %lcmp.mod1008.not, label %.loopexit48.i.us, label %.epil.preheader1005

.epil.preheader1005:                              ; preds = %.loopexit48.i.us.loopexit.unr-lcssa, %.lr.ph41.i.i.us
  %indvars.iv44.i.i.us.epil.init = phi i64 [ 0, %.lr.ph41.i.i.us ], [ %indvars.iv.next45.i.i.us.1, %.loopexit48.i.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1009 = trunc i32 %spec.select.i36.i.us to i1
  call void @llvm.assume(i1 %lcmp.mod1009)
  %i.aid = load ptr, ptr %i.xy, align 8
  %i.aie = getelementptr [4 x i8], ptr %i.aid, i64 %indvars.iv44.i.i.us.epil.init
  %i.aif = getelementptr [4 x i8], ptr %i.aie, i64 %i.ahl
  %i.aig = load float, ptr %i.aif, align 4
  %i.aih = fadd float %i.aig, 0.000000e+00
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %indvars.iv44.i.i.us.epil.init ; 2 uses
  %i.aij = load float, ptr %i.aii, align 4
  %i.aik = fadd float %i.aij, %i.aih
  store float %i.aik, ptr %i.aii, align 4
  br label %.loopexit48.i.us

.loopexit48.i.us.loopexit972.unr-lcssa:           ; preds = %bb.ik
  %lcmp.mod1001.not = icmp eq i64 %xtraiter999, 0
  br i1 %lcmp.mod1001.not, label %.loopexit48.i.us, label %.epil.preheader998

.epil.preheader998:                               ; preds = %.loopexit48.i.us.loopexit972.unr-lcssa, %.lr.ph.i38.i.us
  %indvars.iv.i40.i.us.epil.init = phi i64 [ 0, %.lr.ph.i38.i.us ], [ %indvars.iv.next.i41.i.us.1, %.loopexit48.i.us.loopexit972.unr-lcssa ] ; 2 uses
  %.03039.i.i.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.i38.i.us ], [ %i.ahk, %.loopexit48.i.us.loopexit972.unr-lcssa ]
  %lcmp.mod1002 = trunc i32 %spec.select.i36.i.us to i1
  call void @llvm.assume(i1 %lcmp.mod1002)
  %i.ail = load ptr, ptr %i.xy, align 8
  %i.aim = getelementptr [4 x i8], ptr %i.ail, i64 %indvars.iv.i40.i.us.epil.init
  %i.ain = getelementptr [4 x i8], ptr %i.aim, i64 %i.agp
  %i.aio = load float, ptr %i.ain, align 4
  %i.aip = fadd float %.03039.i.i.us.epil.init, %i.aio
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %indvars.iv.i40.i.us.epil.init ; 2 uses
  %i.air = load float, ptr %i.aiq, align 4
  %i.ais = fadd float %i.air, %i.aip
  store float %i.ais, ptr %i.aiq, align 4
  br label %.loopexit48.i.us

.loopexit48.i.us:                                 ; preds = %.epil.preheader998, %.loopexit48.i.us.loopexit972.unr-lcssa, %.epil.preheader1005, %.loopexit48.i.us.loopexit.unr-lcssa, %.preheader.i.i.us, %.preheader36.i.i.us
  %i.ait = load i32, ptr %i.xs, align 8           ; 2 uses
  %i.aiu = add nsw i32 %i.ait, %.153.i.us         ; 2 uses
  %i.aiv = add nsw i32 %i.ait, %.03152.i.us
  %i.aiw = icmp slt i32 %i.aiu, %i.xq
  br i1 %i.aiw, label %bb.ez, label %.thread614.us686

.thread614.us686:                                 ; preds = %.loopexit48.i.us, %.preheader.i.us, %bb.ey, %bb.ex
  %indvars.iv.next763 = add nuw nsw i64 %indvars.iv762, 1 ; 2 uses
  %exitcond766.not = icmp eq i64 %indvars.iv.next763, %wide.trip.count765
  br i1 %exitcond766.not, label %._crit_edge676.split.us687, label %bb.ex

._crit_edge676.split.us687:                       ; preds = %.thread614.us686
  %indvars.iv.next768 = add nuw nsw i64 %indvars.iv767, 1 ; 2 uses
  %i.aix = add nsw i32 %.1280680.us, 1            ; 3 uses
  %i.aiy = icmp slt i64 %indvars.iv.next768, %i.dq
  %i.aiz = icmp slt i32 %i.aix, %i.ac
  %i.aja = select i1 %i.aiy, i1 %i.aiz, i1 false
  br i1 %i.aja, label %.preheader637.us, label %._crit_edge682

.preheader637:                                    ; preds = %.preheader637.lr.ph, %.preheader637
  %.1280680 = phi i32 [ %i.ajc, %.preheader637 ], [ %.0279697, %.preheader637.lr.ph ]
  %.3308679 = phi i32 [ %i.ajb, %.preheader637 ], [ 0, %.preheader637.lr.ph ]
  %i.ajb = add nuw nsw i32 %.3308679, 1           ; 2 uses
  %i.ajc = add nsw i32 %.1280680, 1               ; 3 uses
  %i.ajd = icmp slt i32 %i.ajb, %i.r
  %i.aje = icmp slt i32 %i.ajc, %i.ac
  %i.ajf = select i1 %i.ajd, i1 %i.aje, i1 false
  br i1 %i.ajf, label %.preheader637, label %._crit_edge682

._crit_edge76.i403:                               ; preds = %.thread66.i402.us.us.us, %bb.ep
  store i32 21, ptr %i.dl, align 4
  br label %codebook_decode_scalar_raw.exit432.thread581

codebook_decode_scalar_raw.exit432.thread581:     ; preds = %bb.eu, %bb.eq, %._crit_edge76.i403
  store i32 0, ptr %i.cx, align 8
  br label %.thread.i365

.thread.i365:                                     ; preds = %bb.ev, %codebook_decode_scalar_raw.exit432.us.us.us, %bb.es, %codebook_decode_scalar_raw.exit432.thread581
  %i.ajg = load i8, ptr %i.cz, align 4
  %.not.i367 = icmp eq i8 %i.ajg, 0
  br i1 %.not.i367, label %bb.im, label %.thread31.sink.split.i368

bb.im:                                            ; preds = %.thread.i365
  %i.ajh = load i32, ptr %i.da, align 4
  %.not27.i370 = icmp eq i32 %i.ajh, 0
  br i1 %.not27.i370, label %.thread31.sink.split.i368, label %.thread618

.thread31.sink.split.i368:                        ; preds = %bb.cd, %bb.im, %.thread.i365
  store i32 21, ptr %i.dl, align 4
  br label %.thread618

._crit_edge76.i:                                  ; preds = %.thread66.i.us, %bb.id
  store i32 21, ptr %i.dl, align 4
  br label %codebook_decode_scalar_raw.exit.thread606

codebook_decode_scalar_raw.exit.thread606:        ; preds = %bb.ii, %bb.ie, %._crit_edge76.i
  store i32 0, ptr %i.cx, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ij, %codebook_decode_scalar_raw.exit.us, %bb.ig, %codebook_decode_scalar_raw.exit.thread606
  %i.aji = load i8, ptr %i.cz, align 4
  %.not.i361 = icmp eq i8 %i.aji, 0
  br i1 %.not.i361, label %bb.in, label %.thread31.sink.split.i

bb.in:                                            ; preds = %.thread.i
  %i.ajj = load i32, ptr %i.da, align 4
  %.not27.i = icmp eq i32 %i.ajj, 0
  br i1 %.not27.i, label %.thread31.sink.split.i, label %.thread618

.thread31.sink.split.i:                           ; preds = %bb.ez, %bb.in, %.thread.i
  store i32 21, ptr %i.dl, align 4
  br label %.thread618

._crit_edge682:                                   ; preds = %.preheader637, %._crit_edge676.split.us687, %._crit_edge676.split.us.us.us, %.loopexit639
  %.1280.lcssa = phi i32 [ %.0279697, %.loopexit639 ], [ %i.aix, %._crit_edge676.split.us687 ], [ %i.wv, %._crit_edge676.split.us.us.us ], [ %i.ajc, %.preheader637 ] ; 2 uses
  %indvars.iv.next779 = add nuw nsw i64 %indvars.iv778.a, 1
  %i.ajk = icmp slt i32 %.1280.lcssa, %i.ac
  br i1 %i.ajk, label %bb.ax, label %._crit_edge701

._crit_edge701:                                   ; preds = %._crit_edge682
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1 ; 2 uses
  %exitcond784.not = icmp eq i64 %indvars.iv.next782, 8
  br i1 %exitcond784.not, label %.thread618, label %.preheader641

.thread618:                                       ; preds = %._crit_edge701, %bb.bx, %bb.m, %..loopexit626_crit_edge, %..loopexit_crit_edge.us, %.preheader628.split, %.preheader642, %.preheader628.split.us, %.thread31.sink.split.i, %bb.in, %bb.im, %.thread31.sink.split.i368, %.thread535, %.thread546, %._crit_edge705
  store i32 %i.ae, ptr %i.ad, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @inverse_mdct(ptr nofree noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 0, 256) %3) unnamed_addr #23 {
bb.a:
  %i.a = ashr i32 %1, 1                           ; 6 uses
  %i.b = ashr i32 %1, 2                           ; 2 uses
  %i.c = ashr i32 %1, 3                           ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 148 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl i32 %i.a, 2
  %i.i = add nsw i32 %i.h, 4
  %i.j = and i32 %i.i, -8
  %i.k = sub nsw i32 %i.e, %i.j                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %setup_temp_malloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.k, ptr %i.d, align 4
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds i8, ptr %i.g, i64 %i.o
  br label %setup_temp_malloc.exit

bb.d:                                             ; preds = %bb.a
  %i.q = sext i32 %i.a to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = alloca i8, i64 %i.r, align 16
  br label %setup_temp_malloc.exit

setup_temp_malloc.exit:                           ; preds = %bb.c, %bb.b, %bb.d
  %i.t = phi ptr [ %i.s, %bb.d ], [ null, %bb.b ], [ %i.p, %bb.c ] ; 13 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1416
  %i.v = zext nneg i32 %3 to i64                  ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8              ; 19 uses
  %i.y = sext i32 %i.a to i64                     ; 5 uses
  %i.z = getelementptr [4 x i8], ptr %i.t, i64 %i.y ; 10 uses
  %.idx = shl nsw i64 %i.y, 2                     ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %.idx ; 3 uses
  %.0388424 = getelementptr i8, ptr %i.z, i64 -8  ; 5 uses
  %.not409425 = icmp eq i32 %i.a, 0
  br i1 %.not409425, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %setup_temp_malloc.exit
  %i.ab = add nsw i64 %.idx, -16                  ; 4 uses
  %i.ac = lshr i64 %i.ab, 4
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 128
  br i1 %min.iters.check, label %.lr.ph.preheader537, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ae = lshr exact i64 %i.ab, 1
  %i.af = and i64 %i.ae, 9223372036854775800      ; 2 uses
  %i.ag = add nsw i64 %.idx, -8
  %i.ah = sub i64 %i.ag, %i.af
  %i.ai = getelementptr i8, ptr %i.t, i64 %i.ah   ; 2 uses
  %i.aj = or i64 %i.ab, 12
  %i.ak = getelementptr i8, ptr %0, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.x, i64 %i.af
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %bound0 = icmp ult ptr %i.ai, %i.ak
  %bound1 = icmp ult ptr %0, %i.z
  %found.conflict = and i1 %bound0, %bound1
  %bound0518 = icmp ult ptr %i.ai, %i.am
  %bound1519 = icmp ult ptr %i.x, %i.z
  %found.conflict520 = and i1 %bound0518, %bound1519
  %conflict.rdx = or i1 %found.conflict, %found.conflict520
  br i1 %conflict.rdx, label %.lr.ph.preheader537, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.an = and i64 %i.ad, 3                        ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = select i1 %i.ao, i64 4, i64 %i.an
  %n.vec = sub nsw i64 %i.ad, %i.ap               ; 4 uses
  %i.aq = mul i64 %n.vec, -8                      ; 2 uses
  %i.ar = getelementptr i8, ptr %.0388424, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  %i.at = shl i64 %n.vec, 4
  %i.au = getelementptr i8, ptr %0, i64 %i.at
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.x, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ax = mul i64 %index, -8
  %next.gep = getelementptr i8, ptr %.0388424, i64 %i.ax
  %i.ay = shl i64 %index, 4                       ; 4 uses
  %next.gep521 = getelementptr i8, ptr %0, i64 %i.ay ; 3 uses
  %i.az = getelementptr i8, ptr %0, i64 %i.ay     ; 2 uses
  %next.gep522 = getelementptr i8, ptr %i.az, i64 16 ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 %i.ay     ; 2 uses
  %next.gep523 = getelementptr i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bb = getelementptr i8, ptr %0, i64 %i.ay     ; 2 uses
  %next.gep524 = getelementptr i8, ptr %i.bb, i64 48 ; 2 uses
  %i.bc = shl i64 %index, 3
  %next.gep525 = getelementptr i8, ptr %i.x, i64 %i.bc ; 2 uses
  %i.bd = load float, ptr %next.gep521, align 4, !alias.scope !1244
  %i.be = load float, ptr %next.gep522, align 4, !alias.scope !1244
  %i.bf = load float, ptr %next.gep523, align 4, !alias.scope !1244
  %i.bg = load float, ptr %next.gep524, align 4, !alias.scope !1244
  %i.bh = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 2
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 3
  %wide.vec = load <8 x float>, ptr %next.gep525, align 4, !alias.scope !1245 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bl = getelementptr inbounds nuw i8, ptr %next.gep521, i64 8 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.az, i64 24     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.ba, i64 40     ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bb, i64 56     ; 2 uses
  %i.bp = load float, ptr %i.bl, align 4, !alias.scope !1244
  %i.bq = load float, ptr %i.bm, align 4, !alias.scope !1244
  %i.br = load float, ptr %i.bn, align 4, !alias.scope !1244
  %i.bs = load float, ptr %i.bo, align 4, !alias.scope !1244
  %i.bt = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 1
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 2
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 3
  %i.bx = fneg <8 x float> %wide.vec
  %i.by = shufflevector <8 x float> %i.bx, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bz = fmul <4 x float> %i.bw, %i.by
  %i.ca = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %strided.vec, <4 x float> %i.bz)
  %i.cb = load float, ptr %next.gep521, align 4, !alias.scope !1244
  %i.cc = load float, ptr %next.gep522, align 4, !alias.scope !1244
  %i.cd = load float, ptr %next.gep523, align 4, !alias.scope !1244
  %i.ce = load float, ptr %next.gep524, align 4, !alias.scope !1244
  %i.cf = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 1
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 2
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 3
  %wide.vec527 = load <8 x float>, ptr %next.gep525, align 4, !alias.scope !1245 ; 2 uses
  %strided.vec528 = shufflevector <8 x float> %wide.vec527, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec529 = shufflevector <8 x float> %wide.vec527, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cj = load float, ptr %i.bl, align 4, !alias.scope !1244
  %i.ck = load float, ptr %i.bm, align 4, !alias.scope !1244
  %i.cl = load float, ptr %i.bn, align 4, !alias.scope !1244
  %i.cm = load float, ptr %i.bo, align 4, !alias.scope !1244
  %i.cn = insertelement <4 x float> poison, float %i.cj, i64 0
  %i.co = insertelement <4 x float> %i.cn, float %i.ck, i64 1
  %i.cp = insertelement <4 x float> %i.co, float %i.cl, i64 2
  %i.cq = insertelement <4 x float> %i.cp, float %i.cm, i64 3
  %i.cr = fmul <4 x float> %i.cq, %strided.vec528
  %i.cs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %strided.vec529, <4 x float> %i.cr)
  %i.ct = getelementptr i8, ptr %next.gep, i64 -24
  %interleaved.vec = shufflevector <4 x float> %i.cs, <4 x float> %i.ca, <8 x i32> <i32 3, i32 7, i32 2, i32 6, i32 1, i32 5, i32 0, i32 4>
  store <8 x float> %interleaved.vec, ptr %i.ct, align 4, !alias.scope !1246, !noalias !1247
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %.lr.ph.preheader537, label %vector.body, !llvm.loop !1242

.lr.ph.preheader537:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.0388429.ph = phi ptr [ %.0388424, %vector.memcheck ], [ %.0388424, %.lr.ph.preheader ], [ %i.ar, %vector.body ]
  %.pn419428.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.preheader ], [ %i.as, %vector.body ]
  %.0397427.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.au, %vector.body ]
  %.0399426.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.preheader ], [ %i.aw, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader537, %.lr.ph
  %.0388429 = phi ptr [ %.0388, %.lr.ph ], [ %.0388429.ph, %.lr.ph.preheader537 ] ; 3 uses
  %.pn419428 = phi ptr [ %.0388429, %.lr.ph ], [ %.pn419428.ph, %.lr.ph.preheader537 ]
  %.0397427 = phi ptr [ %i.dm, %.lr.ph ], [ %.0397427.ph, %.lr.ph.preheader537 ] ; 4 uses
  %.0399426 = phi ptr [ %i.dl, %.lr.ph ], [ %.0399426.ph, %.lr.ph.preheader537 ] ; 4 uses
  %i.cv = load float, ptr %.0397427, align 4
  %i.cw = load float, ptr %.0399426, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %.0397427, i64 8 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.0399426, i64 4 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4
  %i.db = fneg float %i.da
  %i.dc = fmul float %i.cy, %i.db
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cw, float %i.dc)
  %i.de = getelementptr i8, ptr %.pn419428, i64 -4
  store float %i.dd, ptr %i.de, align 4
  %i.df = load float, ptr %.0397427, align 4
  %i.dg = load float, ptr %i.cz, align 4
  %i.dh = load float, ptr %i.cx, align 4
  %i.di = load float, ptr %.0399426, align 4
  %i.dj = fmul float %i.dh, %i.di
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.df, float %i.dg, float %i.dj)
  store float %i.dk, ptr %.0388429, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %.0399426, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0397427, i64 16 ; 2 uses
  %.0388 = getelementptr i8, ptr %.0388429, i64 -8 ; 2 uses
  %.not409 = icmp eq ptr %i.dm, %i.aa
  br i1 %.not409, label %._crit_edge, label %.lr.ph, !llvm.loop !1243

._crit_edge:                                      ; preds = %.lr.ph, %setup_temp_malloc.exit
  %.0399.lcssa = phi ptr [ %i.x, %setup_temp_malloc.exit ], [ %i.dl, %.lr.ph ]
  %.0388.lcssa = phi ptr [ %.0388424, %setup_temp_malloc.exit ], [ %.0388, %.lr.ph ] ; 2 uses
end_hunk_4
