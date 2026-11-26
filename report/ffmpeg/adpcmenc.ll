Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/adpcmenc?download=true
inline.NumInlined: 61
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@adpcm_encode_frame:bb.a
  %i.akq = load i8, ptr %i.aju, align 1, !tbaa !46, !alias.scope !141
  %i.akr = load i8, ptr %i.ajw, align 1, !tbaa !46, !alias.scope !141
  %i.aks = load i8, ptr %i.ajy, align 1, !tbaa !46, !alias.scope !141
  %i.akt = load i8, ptr %i.aka, align 1, !tbaa !46, !alias.scope !141
  %i.aku = load i8, ptr %i.akc, align 1, !tbaa !46, !alias.scope !141
  %i.akv = load i8, ptr %i.ake, align 1, !tbaa !46, !alias.scope !141
  %i.akw = load i8, ptr %i.akg, align 1, !tbaa !46, !alias.scope !141
  %i.akx = insertelement <16 x i8> poison, i8 %i.akh, i64 0
  %i.aky = insertelement <16 x i8> %i.akx, i8 %i.aki, i64 1
  %i.akz = insertelement <16 x i8> %i.aky, i8 %i.akj, i64 2
  %i.ala = insertelement <16 x i8> %i.akz, i8 %i.akk, i64 3
  %i.alb = insertelement <16 x i8> %i.ala, i8 %i.akl, i64 4
  %i.alc = insertelement <16 x i8> %i.alb, i8 %i.akm, i64 5
  %i.ald = insertelement <16 x i8> %i.alc, i8 %i.akn, i64 6
  %i.ale = insertelement <16 x i8> %i.ald, i8 %i.ako, i64 7
  %i.alf = insertelement <16 x i8> %i.ale, i8 %i.akp, i64 8
  %i.alg = insertelement <16 x i8> %i.alf, i8 %i.akq, i64 9
  %i.alh = insertelement <16 x i8> %i.alg, i8 %i.akr, i64 10
  %i.ali = insertelement <16 x i8> %i.alh, i8 %i.aks, i64 11
  %i.alj = insertelement <16 x i8> %i.ali, i8 %i.akt, i64 12
  %i.alk = insertelement <16 x i8> %i.alj, i8 %i.aku, i64 13
  %i.all = insertelement <16 x i8> %i.alk, i8 %i.akv, i64 14
  %i.alm = insertelement <16 x i8> %i.all, i8 %i.akw, i64 15
  %i.aln = shl <16 x i8> %i.alm, splat (i8 4)
  %i.alo = getelementptr inbounds nuw i8, ptr %i.ajc, i64 1
  %i.alp = getelementptr inbounds nuw i8, ptr %i.ajd, i64 3
  %i.alq = getelementptr inbounds nuw i8, ptr %i.ajf, i64 5
  %i.alr = getelementptr inbounds nuw i8, ptr %i.ajh, i64 7
  %i.als = getelementptr inbounds nuw i8, ptr %i.ajj, i64 9
  %i.alt = getelementptr inbounds nuw i8, ptr %i.ajl, i64 11
  %i.alu = getelementptr inbounds nuw i8, ptr %i.ajn, i64 13
  %i.alv = getelementptr inbounds nuw i8, ptr %i.ajp, i64 15
  %i.alw = getelementptr inbounds nuw i8, ptr %i.ajr, i64 17
  %i.alx = getelementptr inbounds nuw i8, ptr %i.ajt, i64 19
  %i.aly = getelementptr inbounds nuw i8, ptr %i.ajv, i64 21
  %i.alz = getelementptr inbounds nuw i8, ptr %i.ajx, i64 23
  %i.ama = getelementptr inbounds nuw i8, ptr %i.ajz, i64 25
  %i.amb = getelementptr inbounds nuw i8, ptr %i.akb, i64 27
  %i.amc = getelementptr inbounds nuw i8, ptr %i.akd, i64 29
  %i.amd = getelementptr inbounds nuw i8, ptr %i.akf, i64 31
  %i.ame = load i8, ptr %i.alo, align 1, !tbaa !46, !alias.scope !141
  %i.amf = load i8, ptr %i.alp, align 1, !tbaa !46, !alias.scope !141
  %i.amg = load i8, ptr %i.alq, align 1, !tbaa !46, !alias.scope !141
  %i.amh = load i8, ptr %i.alr, align 1, !tbaa !46, !alias.scope !141
  %i.ami = load i8, ptr %i.als, align 1, !tbaa !46, !alias.scope !141
  %i.amj = load i8, ptr %i.alt, align 1, !tbaa !46, !alias.scope !141
  %i.amk = load i8, ptr %i.alu, align 1, !tbaa !46, !alias.scope !141
  %i.aml = load i8, ptr %i.alv, align 1, !tbaa !46, !alias.scope !141
  %i.amm = load i8, ptr %i.alw, align 1, !tbaa !46, !alias.scope !141
  %i.amn = load i8, ptr %i.alx, align 1, !tbaa !46, !alias.scope !141
  %i.amo = load i8, ptr %i.aly, align 1, !tbaa !46, !alias.scope !141
  %i.amp = load i8, ptr %i.alz, align 1, !tbaa !46, !alias.scope !141
  %i.amq = load i8, ptr %i.ama, align 1, !tbaa !46, !alias.scope !141
  %i.amr = load i8, ptr %i.amb, align 1, !tbaa !46, !alias.scope !141
  %i.ams = load i8, ptr %i.amc, align 1, !tbaa !46, !alias.scope !141
  %i.amt = load i8, ptr %i.amd, align 1, !tbaa !46, !alias.scope !141
  %i.amu = insertelement <16 x i8> poison, i8 %i.ame, i64 0
  %i.amv = insertelement <16 x i8> %i.amu, i8 %i.amf, i64 1
  %i.amw = insertelement <16 x i8> %i.amv, i8 %i.amg, i64 2
  %i.amx = insertelement <16 x i8> %i.amw, i8 %i.amh, i64 3
  %i.amy = insertelement <16 x i8> %i.amx, i8 %i.ami, i64 4
  %i.amz = insertelement <16 x i8> %i.amy, i8 %i.amj, i64 5
  %i.ana = insertelement <16 x i8> %i.amz, i8 %i.amk, i64 6
  %i.anb = insertelement <16 x i8> %i.ana, i8 %i.aml, i64 7
  %i.anc = insertelement <16 x i8> %i.anb, i8 %i.amm, i64 8
  %i.and = insertelement <16 x i8> %i.anc, i8 %i.amn, i64 9
  %i.ane = insertelement <16 x i8> %i.and, i8 %i.amo, i64 10
  %i.anf = insertelement <16 x i8> %i.ane, i8 %i.amp, i64 11
  %i.ang = insertelement <16 x i8> %i.anf, i8 %i.amq, i64 12
  %i.anh = insertelement <16 x i8> %i.ang, i8 %i.amr, i64 13
  %i.ani = insertelement <16 x i8> %i.anh, i8 %i.ams, i64 14
  %i.anj = insertelement <16 x i8> %i.ani, i8 %i.amt, i64 15
  %i.ank = or <16 x i8> %i.aln, %i.anj
  store <16 x i8> %i.ank, ptr %next.gep1604, align 1, !tbaa !46, !alias.scope !142, !noalias !141
  %index.next1605 = add nuw i64 %index1603, 16    ; 2 uses
  %i.anl = icmp eq i64 %index.next1605, %n.vec1601
  br i1 %i.anl, label %middle.block1606, label %vector.body1602, !llvm.loop !104

middle.block1606:                                 ; preds = %vector.body1602
  %cmp.n1607 = icmp eq i64 %i.aiq, %n.vec1601
  br i1 %cmp.n1607, label %.loopexit918, label %vec.epilog.iter.check1609

vec.epilog.iter.check1609:                        ; preds = %middle.block1606
  %min.epilog.iters.check1611.not.not = icmp eq i64 %i.aiy, 0
  br i1 %min.epilog.iters.check1611.not.not, label %.lr.ph1063.preheader, label %vec.epilog.ph1612, !prof !145

vec.epilog.ph1612:                                ; preds = %vector.main.loop.iter.check1598, %vec.epilog.iter.check1609
  %vec.epilog.resume.val1613 = phi i64 [ %n.vec1601, %vec.epilog.iter.check1609 ], [ 0, %vector.main.loop.iter.check1598 ]
  %n.vec1614 = and i64 %i.aiq, -8                 ; 4 uses
  %i.anm = shl i64 %n.vec1614, 1
  %i.ann = getelementptr i8, ptr %.10.lcssa, i64 %n.vec1614
  br label %vec.epilog.vector.body1615

vec.epilog.vector.body1615:                       ; preds = %vec.epilog.vector.body1615, %vec.epilog.ph1612
  %index1616 = phi i64 [ %vec.epilog.resume.val1613, %vec.epilog.ph1612 ], [ %index.next1618, %vec.epilog.vector.body1615 ] ; 3 uses
  %i.ano = shl nuw i64 %index1616, 1              ; 8 uses
  %next.gep1617 = getelementptr i8, ptr %.10.lcssa, i64 %index1616
  %i.anp = getelementptr inbounds nuw i8, ptr %i.aii, i64 %i.ano ; 2 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %i.aii, i64 %i.ano ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 2
  %i.ans = getelementptr inbounds nuw i8, ptr %i.aii, i64 %i.ano ; 2 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 4
  %i.anu = getelementptr inbounds nuw i8, ptr %i.aii, i64 %i.ano ; 2 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anu, i64 6
  %i.anw = getelementptr inbounds nuw i8, ptr %i.aii, i64 %i.ano ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 8
  %i.any = getelementptr inbounds nuw i8, ptr %i.aii, i64 %i.ano ; 2 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 10
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.aii, i64 %i.ano ; 2 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 12
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aii, i64 %i.ano ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 14
  %i.aoe = load i8, ptr %i.anp, align 1, !tbaa !46, !alias.scope !141
  %i.aof = load i8, ptr %i.anr, align 1, !tbaa !46, !alias.scope !141
  %i.aog = load i8, ptr %i.ant, align 1, !tbaa !46, !alias.scope !141
  %i.aoh = load i8, ptr %i.anv, align 1, !tbaa !46, !alias.scope !141
  %i.aoi = load i8, ptr %i.anx, align 1, !tbaa !46, !alias.scope !141
  %i.aoj = load i8, ptr %i.anz, align 1, !tbaa !46, !alias.scope !141
  %i.aok = load i8, ptr %i.aob, align 1, !tbaa !46, !alias.scope !141
  %i.aol = load i8, ptr %i.aod, align 1, !tbaa !46, !alias.scope !141
  %i.aom = insertelement <8 x i8> poison, i8 %i.aoe, i64 0
  %i.aon = insertelement <8 x i8> %i.aom, i8 %i.aof, i64 1
  %i.aoo = insertelement <8 x i8> %i.aon, i8 %i.aog, i64 2
  %i.aop = insertelement <8 x i8> %i.aoo, i8 %i.aoh, i64 3
  %i.aoq = insertelement <8 x i8> %i.aop, i8 %i.aoi, i64 4
  %i.aor = insertelement <8 x i8> %i.aoq, i8 %i.aoj, i64 5
  %i.aos = insertelement <8 x i8> %i.aor, i8 %i.aok, i64 6
  %i.aot = insertelement <8 x i8> %i.aos, i8 %i.aol, i64 7
  %i.aou = shl <8 x i8> %i.aot, splat (i8 4)
  %i.aov = getelementptr inbounds nuw i8, ptr %i.anp, i64 1
  %i.aow = getelementptr inbounds nuw i8, ptr %i.anq, i64 3
  %i.aox = getelementptr inbounds nuw i8, ptr %i.ans, i64 5
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.anu, i64 7
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.anw, i64 9
  %i.apa = getelementptr inbounds nuw i8, ptr %i.any, i64 11
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aoa, i64 13
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aoc, i64 15
  %i.apd = load i8, ptr %i.aov, align 1, !tbaa !46, !alias.scope !141
  %i.ape = load i8, ptr %i.aow, align 1, !tbaa !46, !alias.scope !141
  %i.apf = load i8, ptr %i.aox, align 1, !tbaa !46, !alias.scope !141
  %i.apg = load i8, ptr %i.aoy, align 1, !tbaa !46, !alias.scope !141
  %i.aph = load i8, ptr %i.aoz, align 1, !tbaa !46, !alias.scope !141
  %i.api = load i8, ptr %i.apa, align 1, !tbaa !46, !alias.scope !141
  %i.apj = load i8, ptr %i.apb, align 1, !tbaa !46, !alias.scope !141
  %i.apk = load i8, ptr %i.apc, align 1, !tbaa !46, !alias.scope !141
  %i.apl = insertelement <8 x i8> poison, i8 %i.apd, i64 0
  %i.apm = insertelement <8 x i8> %i.apl, i8 %i.ape, i64 1
  %i.apn = insertelement <8 x i8> %i.apm, i8 %i.apf, i64 2
  %i.apo = insertelement <8 x i8> %i.apn, i8 %i.apg, i64 3
  %i.app = insertelement <8 x i8> %i.apo, i8 %i.aph, i64 4
  %i.apq = insertelement <8 x i8> %i.app, i8 %i.api, i64 5
  %i.apr = insertelement <8 x i8> %i.apq, i8 %i.apj, i64 6
  %i.aps = insertelement <8 x i8> %i.apr, i8 %i.apk, i64 7
  %i.apt = or <8 x i8> %i.aou, %i.aps
  store <8 x i8> %i.apt, ptr %next.gep1617, align 1, !tbaa !46, !alias.scope !142, !noalias !141
  %index.next1618 = add nuw i64 %index1616, 8     ; 2 uses
  %i.apu = icmp eq i64 %index.next1618, %n.vec1614
  br i1 %i.apu, label %vec.epilog.middle.block1619, label %vec.epilog.vector.body1615, !llvm.loop !105

vec.epilog.middle.block1619:                      ; preds = %vec.epilog.vector.body1615
  %cmp.n1620 = icmp eq i64 %i.aiq, %n.vec1614
  br i1 %cmp.n1620, label %.loopexit918, label %.lr.ph1063.preheader

.lr.ph1063.preheader:                             ; preds = %iter.check1608, %vector.memcheck1597, %vec.epilog.iter.check1609, %vec.epilog.middle.block1619
  %indvars.iv1261.ph = phi i64 [ 0, %iter.check1608 ], [ 0, %vector.memcheck1597 ], [ %i.aiz, %vec.epilog.iter.check1609 ], [ %i.anm, %vec.epilog.middle.block1619 ]
  %.118991060.ph = phi ptr [ %.10.lcssa, %iter.check1608 ], [ %.10.lcssa, %vector.memcheck1597 ], [ %i.aja, %vec.epilog.iter.check1609 ], [ %i.ann, %vec.epilog.middle.block1619 ]
  br label %.lr.ph1063

.lr.ph1063:                                       ; preds = %.lr.ph1063.preheader, %.lr.ph1063
  %indvars.iv1261 = phi i64 [ %indvars.iv.next1262, %.lr.ph1063 ], [ %indvars.iv1261.ph, %.lr.ph1063.preheader ] ; 2 uses
  %.118991060 = phi ptr [ %i.aqb, %.lr.ph1063 ], [ %.118991060.ph, %.lr.ph1063.preheader ] ; 2 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %i.aii, i64 %indvars.iv1261 ; 2 uses
  %i.apw = load i8, ptr %i.apv, align 1, !tbaa !46
  %i.apx = shl i8 %i.apw, 4
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apv, i64 1
  %i.apz = load i8, ptr %i.apy, align 1, !tbaa !46
  %i.aqa = or i8 %i.apx, %i.apz
  %i.aqb = getelementptr inbounds nuw i8, ptr %.118991060, i64 1
  store i8 %i.aqa, ptr %.118991060, align 1, !tbaa !46
  %indvars.iv.next1262 = add nuw nsw i64 %indvars.iv1261, 2 ; 2 uses
  %i.aqc = icmp samesign ult i64 %indvars.iv.next1262, %i.ain
  br i1 %i.aqc, label %.lr.ph1063, label %.loopexit918, !llvm.loop !106

bb.dl:                                            ; preds = %bb.dj
  tail call fastcc void @adpcm_compress_trellis(ptr noundef nonnull %0, ptr noundef %.5492.lcssa1388, ptr noundef %i.aii, ptr noundef nonnull %i.ail, i32 noundef %i.aif, i32 noundef %i.f)
  %i.aqd = getelementptr inbounds nuw i8, ptr %.5492.lcssa1388, i64 2
  %i.aqe = sext i32 %i.aif to i64
  %i.aqf = getelementptr inbounds i8, ptr %i.aii, i64 %i.aqe
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  tail call fastcc void @adpcm_compress_trellis(ptr noundef nonnull %0, ptr noundef nonnull %i.aqd, ptr noundef %i.aqf, ptr noundef nonnull %i.aqg, i32 noundef %i.aif, i32 noundef %i.f)
  %i.aqh = icmp sgt i32 %i.aif, 0
  br i1 %i.aqh, label %iter.check1577, label %.loopexit918

iter.check1577:                                   ; preds = %bb.dl
  %i.aqi = zext nneg i32 %i.aif to i64            ; 10 uses
  %invariant.gep1437 = getelementptr inbounds nuw i8, ptr %i.aii, i64 %i.aqi ; 7 uses
  %min.iters.check1561 = icmp ult i32 %i.aif, 4
  br i1 %min.iters.check1561, label %.lr.ph1059.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check1577
  %5 = add i64 %i.aij, %i.aqi
  %6 = sub i64 %5, %.10.lcssa1560
  %diff.check = icmp ugt i64 %6, -32
  %i.aqj = sub i64 %i.aij, %.10.lcssa1560
  %diff.check1562 = icmp ugt i64 %i.aqj, -32
  %conflict.rdx = or i1 %diff.check, %diff.check1562
  br i1 %conflict.rdx, label %.lr.ph1059.preheader, label %vector.main.loop.iter.check1563

vector.main.loop.iter.check1563:                  ; preds = %vector.memcheck
  %min.iters.check1564 = icmp ult i32 %i.aif, 32
  br i1 %min.iters.check1564, label %vec.epilog.ph1581, label %vector.ph1565

vector.ph1565:                                    ; preds = %vector.main.loop.iter.check1563
  %i.aqk = and i64 %i.aqi, 28
  %n.vec1566 = and i64 %i.aqi, 2147483616         ; 5 uses
  %i.aql = getelementptr i8, ptr %.10.lcssa, i64 %n.vec1566
  br label %vector.body1567

vector.body1567:                                  ; preds = %vector.ph1565, %vector.body1567
  %index1568 = phi i64 [ 0, %vector.ph1565 ], [ %index.next1574, %vector.body1567 ] ; 4 uses
  %next.gep1569 = getelementptr i8, ptr %.10.lcssa, i64 %index1568 ; 2 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aii, i64 %index1568 ; 2 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 16
  %wide.load1570 = load <16 x i8>, ptr %i.aqm, align 1, !tbaa !46
  %wide.load1571 = load <16 x i8>, ptr %i.aqn, align 1, !tbaa !46
  %i.aqo = shl <16 x i8> %wide.load1570, splat (i8 4)
  %i.aqp = shl <16 x i8> %wide.load1571, splat (i8 4)
  %i.aqq = getelementptr inbounds nuw i8, ptr %invariant.gep1437, i64 %index1568 ; 2 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 16
  %wide.load1572 = load <16 x i8>, ptr %i.aqq, align 1, !tbaa !46
  %wide.load1573 = load <16 x i8>, ptr %i.aqr, align 1, !tbaa !46
  %i.aqs = or <16 x i8> %i.aqo, %wide.load1572
  %i.aqt = or <16 x i8> %i.aqp, %wide.load1573
  %i.aqu = getelementptr i8, ptr %next.gep1569, i64 16
  store <16 x i8> %i.aqs, ptr %next.gep1569, align 1, !tbaa !46
  store <16 x i8> %i.aqt, ptr %i.aqu, align 1, !tbaa !46
  %index.next1574 = add nuw i64 %index1568, 32    ; 2 uses
  %i.aqv = icmp eq i64 %index.next1574, %n.vec1566
  br i1 %i.aqv, label %middle.block1575, label %vector.body1567, !llvm.loop !107

middle.block1575:                                 ; preds = %vector.body1567
  %cmp.n1576 = icmp eq i64 %n.vec1566, %i.aqi
  br i1 %cmp.n1576, label %.loopexit918, label %vec.epilog.iter.check1578

vec.epilog.iter.check1578:                        ; preds = %middle.block1575
  %min.epilog.iters.check1580 = icmp eq i64 %i.aqk, 0
  br i1 %min.epilog.iters.check1580, label %.lr.ph1059.preheader, label %vec.epilog.ph1581, !prof !146

vec.epilog.ph1581:                                ; preds = %vector.main.loop.iter.check1563, %vec.epilog.iter.check1578
  %vec.epilog.resume.val1582 = phi i64 [ %n.vec1566, %vec.epilog.iter.check1578 ], [ 0, %vector.main.loop.iter.check1563 ]
  %n.vec1583 = and i64 %i.aqi, 2147483644         ; 4 uses
  %i.aqw = getelementptr i8, ptr %.10.lcssa, i64 %n.vec1583
  br label %vec.epilog.vector.body1584

vec.epilog.vector.body1584:                       ; preds = %vec.epilog.vector.body1584, %vec.epilog.ph1581
  %index1585 = phi i64 [ %vec.epilog.resume.val1582, %vec.epilog.ph1581 ], [ %index.next1589, %vec.epilog.vector.body1584 ] ; 4 uses
  %next.gep1586 = getelementptr i8, ptr %.10.lcssa, i64 %index1585
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aii, i64 %index1585
  %wide.load1587 = load <4 x i8>, ptr %i.aqx, align 1, !tbaa !46
  %i.aqy = shl <4 x i8> %wide.load1587, splat (i8 4)
  %i.aqz = getelementptr inbounds nuw i8, ptr %invariant.gep1437, i64 %index1585
  %wide.load1588 = load <4 x i8>, ptr %i.aqz, align 1, !tbaa !46
  %i.ara = or <4 x i8> %i.aqy, %wide.load1588
  store <4 x i8> %i.ara, ptr %next.gep1586, align 1, !tbaa !46
  %index.next1589 = add nuw i64 %index1585, 4     ; 2 uses
  %i.arb = icmp eq i64 %index.next1589, %n.vec1583
  br i1 %i.arb, label %vec.epilog.middle.block1590, label %vec.epilog.vector.body1584, !llvm.loop !108

vec.epilog.middle.block1590:                      ; preds = %vec.epilog.vector.body1584
  %cmp.n1591 = icmp eq i64 %n.vec1583, %i.aqi
  br i1 %cmp.n1591, label %.loopexit918, label %.lr.ph1059.preheader

.lr.ph1059.preheader:                             ; preds = %iter.check1577, %vector.memcheck, %vec.epilog.iter.check1578, %vec.epilog.middle.block1590
  %indvars.iv1256.ph = phi i64 [ 0, %iter.check1577 ], [ 0, %vector.memcheck ], [ %n.vec1566, %vec.epilog.iter.check1578 ], [ %n.vec1583, %vec.epilog.middle.block1590 ] ; 3 uses
  %.129001056.ph = phi ptr [ %.10.lcssa, %iter.check1577 ], [ %.10.lcssa, %vector.memcheck ], [ %i.aql, %vec.epilog.iter.check1578 ], [ %i.aqw, %vec.epilog.middle.block1590 ] ; 2 uses
  %xtraiter1693 = and i64 %i.aqi, 3               ; 2 uses
  %lcmp.mod1694.not = icmp eq i64 %xtraiter1693, 0
  br i1 %lcmp.mod1694.not, label %.lr.ph1059.prol.loopexit, label %.lr.ph1059.prol

.lr.ph1059.prol:                                  ; preds = %.lr.ph1059.preheader, %.lr.ph1059.prol
  %indvars.iv1256.prol = phi i64 [ %indvars.iv.next1257.prol, %.lr.ph1059.prol ], [ %indvars.iv1256.ph, %.lr.ph1059.preheader ] ; 3 uses
  %.129001056.prol = phi ptr [ %i.arh, %.lr.ph1059.prol ], [ %.129001056.ph, %.lr.ph1059.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1059.prol ], [ 0, %.lr.ph1059.preheader ]
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aii, i64 %indvars.iv1256.prol
  %i.ard = load i8, ptr %i.arc, align 1, !tbaa !46
  %i.are = shl i8 %i.ard, 4
  %gep1438.prol = getelementptr inbounds nuw i8, ptr %invariant.gep1437, i64 %indvars.iv1256.prol
  %i.arf = load i8, ptr %gep1438.prol, align 1, !tbaa !46
  %i.arg = or i8 %i.are, %i.arf
  %i.arh = getelementptr inbounds nuw i8, ptr %.129001056.prol, i64 1 ; 2 uses
  store i8 %i.arg, ptr %.129001056.prol, align 1, !tbaa !46
  %indvars.iv.next1257.prol = add nuw nsw i64 %indvars.iv1256.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1693
  br i1 %prol.iter.cmp.not, label %.lr.ph1059.prol.loopexit, label %.lr.ph1059.prol, !llvm.loop !109

.lr.ph1059.prol.loopexit:                         ; preds = %.lr.ph1059.prol, %.lr.ph1059.preheader
  %indvars.iv1256.unr = phi i64 [ %indvars.iv1256.ph, %.lr.ph1059.preheader ], [ %indvars.iv.next1257.prol, %.lr.ph1059.prol ]
  %.129001056.unr = phi ptr [ %.129001056.ph, %.lr.ph1059.preheader ], [ %i.arh, %.lr.ph1059.prol ]
  %i.ari = sub nsw i64 %indvars.iv1256.ph, %i.aqi
  %i.arj = icmp ugt i64 %i.ari, -4
  br i1 %i.arj, label %.loopexit918, label %.lr.ph1059

.lr.ph1059:                                       ; preds = %.lr.ph1059.prol.loopexit, %.lr.ph1059
  %indvars.iv1256 = phi i64 [ %indvars.iv.next1257.3, %.lr.ph1059 ], [ %indvars.iv1256.unr, %.lr.ph1059.prol.loopexit ] ; 6 uses
  %.129001056 = phi ptr [ %i.ash, %.lr.ph1059 ], [ %.129001056.unr, %.lr.ph1059.prol.loopexit ] ; 5 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aii, i64 %indvars.iv1256
  %i.arl = load i8, ptr %i.ark, align 1, !tbaa !46
  %i.arm = shl i8 %i.arl, 4
  %gep1438 = getelementptr inbounds nuw i8, ptr %invariant.gep1437, i64 %indvars.iv1256
  %i.arn = load i8, ptr %gep1438, align 1, !tbaa !46
  %i.aro = or i8 %i.arm, %i.arn
  %i.arp = getelementptr inbounds nuw i8, ptr %.129001056, i64 1
  store i8 %i.aro, ptr %.129001056, align 1, !tbaa !46
  %indvars.iv.next1257 = add nuw nsw i64 %indvars.iv1256, 1 ; 2 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %i.aii, i64 %indvars.iv.next1257
  %i.arr = load i8, ptr %i.arq, align 1, !tbaa !46
  %i.ars = shl i8 %i.arr, 4
  %gep1438.1 = getelementptr inbounds nuw i8, ptr %invariant.gep1437, i64 %indvars.iv.next1257
  %i.art = load i8, ptr %gep1438.1, align 1, !tbaa !46
  %i.aru = or i8 %i.ars, %i.art
  %i.arv = getelementptr inbounds nuw i8, ptr %.129001056, i64 2
  store i8 %i.aru, ptr %i.arp, align 1, !tbaa !46
  %indvars.iv.next1257.1 = add nuw nsw i64 %indvars.iv1256, 2 ; 2 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %i.aii, i64 %indvars.iv.next1257.1
  %i.arx = load i8, ptr %i.arw, align 1, !tbaa !46
  %i.ary = shl i8 %i.arx, 4
  %gep1438.2 = getelementptr inbounds nuw i8, ptr %invariant.gep1437, i64 %indvars.iv.next1257.1
  %i.arz = load i8, ptr %gep1438.2, align 1, !tbaa !46
  %i.asa = or i8 %i.ary, %i.arz
  %i.asb = getelementptr inbounds nuw i8, ptr %.129001056, i64 3
  store i8 %i.asa, ptr %i.arv, align 1, !tbaa !46
  %indvars.iv.next1257.2 = add nuw nsw i64 %indvars.iv1256, 3 ; 2 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %i.aii, i64 %indvars.iv.next1257.2
  %i.asd = load i8, ptr %i.asc, align 1, !tbaa !46
  %i.ase = shl i8 %i.asd, 4
  %gep1438.3 = getelementptr inbounds nuw i8, ptr %invariant.gep1437, i64 %indvars.iv.next1257.2
  %i.asf = load i8, ptr %gep1438.3, align 1, !tbaa !46
  %i.asg = or i8 %i.ase, %i.asf
  %i.ash = getelementptr inbounds nuw i8, ptr %.129001056, i64 4
  store i8 %i.asg, ptr %i.asb, align 1, !tbaa !46
  %indvars.iv.next1257.3 = add nuw nsw i64 %indvars.iv1256, 4 ; 2 uses
  %exitcond1260.not.3 = icmp eq i64 %indvars.iv.next1257.3, %i.aqi
  br i1 %exitcond1260.not.3, label %.loopexit918, label %.lr.ph1059, !llvm.loop !110

.loopexit918:                                     ; preds = %.lr.ph1059.prol.loopexit, %.lr.ph1059, %.lr.ph1063, %middle.block1575, %vec.epilog.middle.block1590, %middle.block1606, %vec.epilog.middle.block1619, %bb.dl, %bb.dk
  tail call void @av_free(ptr noundef nonnull %i.aii) #11
  br label %.critedge548

bb.dm:                                            ; preds = %._crit_edge1049
  %i.asi = mul nsw i32 %i.f, 7                    ; 2 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.ask = load i32, ptr %i.asj, align 4, !tbaa !45
  %i.asl = icmp slt i32 %i.asi, %i.ask
  br i1 %i.asl, label %.lr.ph1055, label %.critedge548

.lr.ph1055:                                       ; preds = %bb.dm
  %i.asm = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.asn = getelementptr inbounds nuw i8, ptr %i.d, i64 28 ; 2 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.asp = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.asr = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.ass = zext i1 %i.j to i64
  %i.ast = getelementptr inbounds nuw [36 x i8], ptr %i.asm, i64 %i.ass ; 5 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 16 ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ast, i64 24
  %i.asw = getelementptr inbounds nuw i8, ptr %i.ast, i64 20 ; 2 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %i.ast, i64 28
  %i.asy = getelementptr inbounds nuw i8, ptr %i.ast, i64 32 ; 2 uses
  br label %bb.dn

bb.dn:                                            ; preds = %.lr.ph1055, %adpcm_ms_compress_sample.exit662
  %.64931053 = phi ptr [ %.5492.lcssa1388, %.lr.ph1055 ], [ %i.auh, %adpcm_ms_compress_sample.exit662 ] ; 3 uses
  %.04991052 = phi i32 [ %i.asi, %.lr.ph1055 ], [ %i.avq, %adpcm_ms_compress_sample.exit662 ]
  %.139011051 = phi ptr [ %.10.lcssa, %.lr.ph1055 ], [ %i.avp, %adpcm_ms_compress_sample.exit662 ] ; 2 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %.64931053, i64 2
  %i.ata = load i16, ptr %.64931053, align 2, !tbaa !49
  %i.atb = load i32, ptr %i.asn, align 4, !tbaa !59 ; 2 uses
  %i.atc = load i32, ptr %i.aso, align 4, !tbaa !54
  %i.atd = mul nsw i32 %i.atc, %i.atb
  %i.ate = load i32, ptr %i.asp, align 4, !tbaa !58
  %i.atf = load i32, ptr %i.asq, align 4, !tbaa !55
  %i.atg = mul nsw i32 %i.atf, %i.ate
  %i.ath = add nsw i32 %i.atg, %i.atd
  %i.ati = sdiv i32 %i.ath, 64                    ; 2 uses
  %i.atj = sext i16 %i.ata to i32
  %i.atk = sub nsw i32 %i.atj, %i.ati             ; 2 uses
  %i.atl = icmp sgt i32 %i.atk, -1
  %i.atm = load i32, ptr %i.asr, align 4, !tbaa !57 ; 5 uses
  br i1 %i.atl, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.atn = sdiv i32 %i.atm, 2
  br label %adpcm_ms_compress_sample.exit

bb.dp:                                            ; preds = %bb.dn
  %i.ato = sdiv i32 %i.atm, -2
  br label %adpcm_ms_compress_sample.exit

adpcm_ms_compress_sample.exit:                    ; preds = %bb.do, %bb.dp
  %.0.i654 = phi i32 [ %i.atn, %bb.do ], [ %i.ato, %bb.dp ]
  %i.atp = add nsw i32 %.0.i654, %i.atk
  %i.atq = sdiv i32 %i.atp, %i.atm
end_hunk_0
