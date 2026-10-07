Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/slice_x86_fma?download=true
inline.NumInlined: 110
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4ncnn13Slice_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  br i1 %.not.i1088, label %_ZN4ncnn3Mat6addrefEv.exit1089, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge1514
  %i.ahn = atomicrmw add ptr %i.agx, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit1089

_ZN4ncnn3Mat6addrefEv.exit1089:                   ; preds = %._crit_edge1514, %bb.bq
  %i.aho = load i32, ptr %i.b, align 4, !tbaa !28
  %i.ahp = icmp sgt i32 %i.aho, %.01405.lcssa
  br i1 %i.ahp, label %bb.br, label %bb.bu

.lr.ph1513:                                       ; preds = %.lr.ph1513.preheader, %.lr.ph1513
  %.07011512 = phi i64 [ %i.aht, %.lr.ph1513 ], [ %.07011512.ph, %.lr.ph1513.preheader ] ; 2 uses
  %.014051510 = phi i32 [ %.sroa.speculated, %.lr.ph1513 ], [ %.014051510.ph, %.lr.ph1513.preheader ]
  %i.ahq = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %.07011512
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 24
  %i.ahs = load i32, ptr %i.ahr, align 4, !tbaa !28
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ahs, i32 %.014051510) ; 2 uses
  %i.aht = add nuw i64 %.07011512, 1              ; 2 uses
  %exitcond1642.not = icmp eq i64 %i.aht, %i.adf
  br i1 %exitcond1642.not, label %._crit_edge1514, label %.lr.ph1513, !llvm.loop !96

bb.br:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit1089
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %.01405.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ahu = load ptr, ptr %5, align 16, !tbaa !19
  %i.ahv = icmp eq ptr %i.ahu, null
  br i1 %i.ahv, label %.critedge848.critedge877, label %_ZNK4ncnn3Mat5emptyEv.exit1046

_ZNK4ncnn3Mat5emptyEv.exit1046:                   ; preds = %bb.bs
  %i.ahw = load i64, ptr %i.ahk, align 16, !tbaa !20
  %i.ahx = load i32, ptr %i.ahi, align 8, !tbaa !50
  %i.ahy = sext i32 %i.ahx to i64
  %i.ahz = mul i64 %i.ahw, %i.ahy
  %i.aia = icmp eq i64 %i.ahz, 0
  br i1 %i.aia, label %.critedge848.critedge877, label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.aib = landingpad { ptr, i32 }
          cleanup
  %i.aic = load ptr, ptr %i.agv, align 8, !tbaa !17 ; 2 uses
  %.not.i984 = icmp eq ptr %i.aic, null
  br i1 %.not.i984, label %_ZN4ncnn3MatD2Ev.exit882, label %bb.ci

bb.bu:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1046, %_ZN4ncnn3Mat6addrefEv.exit1089
  %i.aid = load ptr, ptr %i.aat, align 8, !tbaa !44 ; 2 uses
  %i.aie = load ptr, ptr %2, align 8, !tbaa !23   ; 2 uses
  %.not1608 = icmp eq ptr %i.aid, %i.aie
  br i1 %.not1608, label %._crit_edge1589, label %.lr.ph1588

.lr.ph1588:                                       ; preds = %bb.bu
  %i.aif = icmp eq i32 %.01405.lcssa, 4
  %i.aig = icmp eq i32 %.01405.lcssa, 1
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph1588, %bb.cb
  %i.aih = phi ptr [ %i.aie, %.lr.ph1588 ], [ %i.axz, %bb.cb ] ; 2 uses
  %i.aii = phi ptr [ %i.aid, %.lr.ph1588 ], [ %i.aya, %bb.cb ]
  %.06921586 = phi i64 [ 0, %.lr.ph1588 ], [ %i.ayb, %bb.cb ] ; 2 uses
  %.06931585 = phi i32 [ 0, %.lr.ph1588 ], [ %.7700, %bb.cb ] ; 4 uses
  %i.aij = getelementptr inbounds nuw [72 x i8], ptr %i.aih, i64 %.06921586 ; 26 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 24 ; 3 uses
  %i.ail = load i32, ptr %i.aik, align 8          ; 2 uses
  %i.aim = icmp eq i32 %i.ail, 8
  %or.cond857 = select i1 %i.aif, i1 %i.aim, i1 false
  br i1 %or.cond857, label %bb.bw, label %.loopexit

bb.bw:                                            ; preds = %bb.bv
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aij, i64 44
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !43
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aij, i64 48
  %i.aiq = load i32, ptr %i.aip, align 8, !tbaa !52
  %i.air = mul i32 %i.aiq, %i.aio
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aij, i64 52
  %i.ait = load i32, ptr %i.ais, align 4, !tbaa !58
  %i.aiu = mul i32 %i.air, %i.ait                 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aij, i64 56
  %i.aiw = load i32, ptr %i.aiv, align 8, !tbaa !50 ; 3 uses
  %i.aix = icmp sgt i32 %i.aiw, 0
  br i1 %i.aix, label %.noexc1085.lr.ph, label %.thread1419

.noexc1085.lr.ph:                                 ; preds = %bb.bw
  %i.aiy = load ptr, ptr %5, align 16, !tbaa !19, !noalias !157 ; 2 uses
  %i.aiz = load i64, ptr %i.ahk, align 16, !tbaa !20, !noalias !157
  %i.aja = load i64, ptr %i.agz, align 16, !tbaa !25, !noalias !157
  %factor.op.mul1525 = mul i64 %i.aiz, %i.aja     ; 2 uses
  %i.ajb = load ptr, ptr %i.aij, align 8, !tbaa !19, !noalias !158
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aij, i64 64
  %i.ajd = load i64, ptr %i.ajc, align 8, !tbaa !20, !noalias !158
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aij, i64 16
  %i.ajf = load i64, ptr %i.aje, align 8, !tbaa !25, !noalias !158
  %factor.op.mul1528 = mul i64 %i.ajd, %i.ajf
  %i.ajg = icmp sgt i32 %i.aiu, 0
  br i1 %i.ajg, label %.noexc1085.us.preheader, label %.noexc1085.preheader

.noexc1085.preheader:                             ; preds = %.noexc1085.lr.ph
  %i.ajh = shl nuw i32 %i.aiw, 1
  %i.aji = add i32 %.06931585, %i.ajh
  br label %.thread1419

.noexc1085.us.preheader:                          ; preds = %.noexc1085.lr.ph
  %i.ajj = sext i32 %.06931585 to i64
  %wide.trip.count1651 = zext nneg i32 %i.aiw to i64
  br label %.noexc1085.us

.noexc1085.us:                                    ; preds = %.noexc1085.us.preheader, %._crit_edge1521.us
  %indvars.iv1646 = phi i64 [ %i.ajj, %.noexc1085.us.preheader ], [ %indvars.iv.next1647, %._crit_edge1521.us ] ; 3 uses
  %indvars.iv1644 = phi i64 [ 0, %.noexc1085.us.preheader ], [ %indvars.iv.next1645, %._crit_edge1521.us ] ; 2 uses
  %.reass.us1530 = mul i64 %factor.op.mul1525, %indvars.iv1646
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aiy, i64 %.reass.us1530
  %i.ajl = add nsw i64 %indvars.iv1646, 1
  %.reass1527.us = mul i64 %factor.op.mul1525, %i.ajl
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aiy, i64 %.reass1527.us
  %.reass1529.us = mul i64 %factor.op.mul1528, %indvars.iv1644
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajb, i64 %.reass1529.us
  br label %bb.bx

bb.bx:                                            ; preds = %.noexc1085.us, %bb.bx
  %.06871519.us = phi i32 [ 0, %.noexc1085.us ], [ %i.akm, %bb.bx ]
  %.06881518.us = phi ptr [ %i.ajn, %.noexc1085.us ], [ %i.akl, %bb.bx ] ; 9 uses
  %.06891517.us = phi ptr [ %i.ajm, %.noexc1085.us ], [ %i.akk, %bb.bx ] ; 5 uses
  %.06901516.us = phi ptr [ %i.ajk, %.noexc1085.us ], [ %i.akj, %bb.bx ] ; 5 uses
  %i.ajo = load float, ptr %.06901516.us, align 4, !tbaa !140
  store float %i.ajo, ptr %.06881518.us, align 4, !tbaa !140
  %i.ajp = getelementptr inbounds nuw i8, ptr %.06901516.us, i64 4
  %i.ajq = load float, ptr %i.ajp, align 4, !tbaa !140
  %i.ajr = getelementptr inbounds nuw i8, ptr %.06881518.us, i64 4
  store float %i.ajq, ptr %i.ajr, align 4, !tbaa !140
  %i.ajs = getelementptr inbounds nuw i8, ptr %.06901516.us, i64 8
  %i.ajt = load float, ptr %i.ajs, align 4, !tbaa !140
  %i.aju = getelementptr inbounds nuw i8, ptr %.06881518.us, i64 8
  store float %i.ajt, ptr %i.aju, align 4, !tbaa !140
  %i.ajv = getelementptr inbounds nuw i8, ptr %.06901516.us, i64 12
  %i.ajw = load float, ptr %i.ajv, align 4, !tbaa !140
  %i.ajx = getelementptr inbounds nuw i8, ptr %.06881518.us, i64 12
  store float %i.ajw, ptr %i.ajx, align 4, !tbaa !140
  %i.ajy = load float, ptr %.06891517.us, align 4, !tbaa !140
  %i.ajz = getelementptr inbounds nuw i8, ptr %.06881518.us, i64 16
  store float %i.ajy, ptr %i.ajz, align 4, !tbaa !140
  %i.aka = getelementptr inbounds nuw i8, ptr %.06891517.us, i64 4
  %i.akb = load float, ptr %i.aka, align 4, !tbaa !140
  %i.akc = getelementptr inbounds nuw i8, ptr %.06881518.us, i64 20
  store float %i.akb, ptr %i.akc, align 4, !tbaa !140
  %i.akd = getelementptr inbounds nuw i8, ptr %.06891517.us, i64 8
  %i.ake = load float, ptr %i.akd, align 4, !tbaa !140
  %i.akf = getelementptr inbounds nuw i8, ptr %.06881518.us, i64 24
  store float %i.ake, ptr %i.akf, align 4, !tbaa !140
  %i.akg = getelementptr inbounds nuw i8, ptr %.06891517.us, i64 12
  %i.akh = load float, ptr %i.akg, align 4, !tbaa !140
  %i.aki = getelementptr inbounds nuw i8, ptr %.06881518.us, i64 28
  store float %i.akh, ptr %i.aki, align 4, !tbaa !140
  %i.akj = getelementptr inbounds nuw i8, ptr %.06901516.us, i64 16
  %i.akk = getelementptr inbounds nuw i8, ptr %.06891517.us, i64 16
  %i.akl = getelementptr inbounds nuw i8, ptr %.06881518.us, i64 32
  %i.akm = add nuw nsw i32 %.06871519.us, 1       ; 2 uses
  %exitcond1643.not = icmp eq i32 %i.akm, %i.aiu
  br i1 %exitcond1643.not, label %._crit_edge1521.us, label %bb.bx, !llvm.loop !101

._crit_edge1521.us:                               ; preds = %bb.bx
  %indvars.iv.next1647 = add nsw i64 %indvars.iv1646, 2 ; 2 uses
  %indvars.iv.next1645 = add nuw nsw i64 %indvars.iv1644, 1 ; 2 uses
  %exitcond1652.not = icmp eq i64 %indvars.iv.next1645, %wide.trip.count1651
  br i1 %exitcond1652.not, label %.loopexit.loopexit, label %.noexc1085.us, !llvm.loop !102

.loopexit.loopexit:                               ; preds = %._crit_edge1521.us
  %i.akn = trunc nsw i64 %indvars.iv.next1647 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bv
  %.2695 = phi i32 [ %.06931585, %bb.bv ], [ %i.akn, %.loopexit.loopexit ] ; 4 uses
  br i1 %i.aig, label %bb.by, label %.thread1419

bb.by:                                            ; preds = %.loopexit
  %i.ako = load i32, ptr %i.aik, align 8, !tbaa !27 ; 2 uses
  %i.akp = icmp eq i32 %i.ako, 8
  br i1 %i.akp, label %bb.bz, label %.thread1416

bb.bz:                                            ; preds = %bb.by
  %i.akq = getelementptr inbounds nuw i8, ptr %i.aij, i64 44
  %i.akr = load i32, ptr %i.akq, align 4, !tbaa !43
  %i.aks = getelementptr inbounds nuw i8, ptr %i.aij, i64 48
  %i.akt = load i32, ptr %i.aks, align 8, !tbaa !52
  %i.aku = mul i32 %i.akt, %i.akr
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aij, i64 52
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !58
  %i.akx = mul i32 %i.aku, %i.akw                 ; 5 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %i.aij, i64 56
  %i.akz = load i32, ptr %i.aky, align 8, !tbaa !50 ; 2 uses
  %i.ala = icmp sgt i32 %i.akz, 0
  br i1 %i.ala, label %.noexc1079.lr.ph, label %.thread1419

.noexc1079.lr.ph:                                 ; preds = %bb.bz
  %i.alb = load ptr, ptr %5, align 16, !tbaa !19, !noalias !159 ; 24 uses
  %i.alc = load i64, ptr %i.ahk, align 16, !tbaa !20, !noalias !159 ; 10 uses
  %i.ald = load i64, ptr %i.agz, align 16, !tbaa !25, !noalias !159 ; 10 uses
  %factor.op.mul1547 = mul i64 %i.alc, %i.ald     ; 8 uses
  %i.ale = load ptr, ptr %i.aij, align 8, !tbaa !19, !noalias !160 ; 3 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.aij, i64 64
  %i.alg = load i64, ptr %i.alf, align 8, !tbaa !20, !noalias !160 ; 3 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %i.aij, i64 16
  %i.ali = load i64, ptr %i.alh, align 8, !tbaa !25, !noalias !160 ; 3 uses
  %factor.op.mul1562 = mul i64 %i.alg, %i.ali
  %i.alj = icmp sgt i32 %i.akx, 0
  %i.alk = sext i32 %.2695 to i64                 ; 17 uses
  %wide.trip.count1661 = zext nneg i32 %i.akz to i64 ; 3 uses
  %scevgep2085 = getelementptr i8, ptr %i.ale, i64 32
  %6 = mul i64 %i.ali, %i.alg
  %i.all = add nsw i64 %wide.trip.count1661, -1
  %i.alm = mul i64 %6, %i.all
  %i.aln = add i32 %i.akx, -1
  %i.alo = zext i32 %i.aln to i64                 ; 2 uses
  %i.alp = shl nuw nsw i64 %i.alo, 5
  %i.alq = getelementptr i8, ptr %scevgep2085, i64 %i.alm
  %scevgep2086 = getelementptr i8, ptr %i.alq, i64 %i.alp
  %i.alr = mul i64 %i.ali, %i.alg
  %i.als = mul i64 %i.ald, %i.alc                 ; 2 uses
  %i.alt = add nsw i64 %i.alk, 7
  %i.alu = mul i64 %i.als, %i.alt
  %scevgep2087 = getelementptr i8, ptr %i.alb, i64 %i.alu
  %scevgep2088 = getelementptr i8, ptr %i.alb, i64 4
  %i.alv = shl nuw nsw i64 %wide.trip.count1661, 3 ; 8 uses
  %i.alw = add nsw i64 %i.alv, -1
  %i.alx = add nsw i64 %i.alw, %i.alk
  %i.aly = mul i64 %i.als, %i.alx
  %i.alz = shl nuw nsw i64 %i.alo, 2              ; 8 uses
  %i.ama = getelementptr i8, ptr %scevgep2088, i64 %i.aly
  %scevgep2089 = getelementptr i8, ptr %i.ama, i64 %i.alz
  %i.amb = shl i64 %i.ald, 3
  %i.amc = mul i64 %i.amb, %i.alc
  %i.amd = mul i64 %i.ald, %i.alc                 ; 2 uses
  %i.ame = add nsw i64 %i.alk, 6
  %i.amf = mul i64 %i.amd, %i.ame
  %scevgep2090 = getelementptr i8, ptr %i.alb, i64 %i.amf
  %scevgep2091 = getelementptr i8, ptr %i.alb, i64 4
  %i.amg = add nsw i64 %i.alv, -2
  %i.amh = add nsw i64 %i.amg, %i.alk
  %i.ami = mul i64 %i.amd, %i.amh
  %i.amj = getelementptr i8, ptr %scevgep2091, i64 %i.ami
  %scevgep2092 = getelementptr i8, ptr %i.amj, i64 %i.alz
  %i.amk = mul i64 %i.ald, %i.alc                 ; 2 uses
  %i.aml = add nsw i64 %i.alk, 5
  %i.amm = mul i64 %i.amk, %i.aml
  %scevgep2093 = getelementptr i8, ptr %i.alb, i64 %i.amm
  %scevgep2094 = getelementptr i8, ptr %i.alb, i64 4
  %i.amn = add nsw i64 %i.alv, -3
  %i.amo = add nsw i64 %i.amn, %i.alk
  %i.amp = mul i64 %i.amk, %i.amo
  %i.amq = getelementptr i8, ptr %scevgep2094, i64 %i.amp
  %scevgep2095 = getelementptr i8, ptr %i.amq, i64 %i.alz
  %i.amr = mul i64 %i.ald, %i.alc                 ; 2 uses
  %i.ams = add nsw i64 %i.alk, 4
  %i.amt = mul i64 %i.amr, %i.ams
  %scevgep2096 = getelementptr i8, ptr %i.alb, i64 %i.amt
  %scevgep2097 = getelementptr i8, ptr %i.alb, i64 4
  %i.amu = add nsw i64 %i.alv, -4
  %i.amv = add nsw i64 %i.amu, %i.alk
  %i.amw = mul i64 %i.amr, %i.amv
  %i.amx = getelementptr i8, ptr %scevgep2097, i64 %i.amw
  %scevgep2098 = getelementptr i8, ptr %i.amx, i64 %i.alz
  %i.amy = mul i64 %i.ald, %i.alc                 ; 2 uses
  %i.amz = add nsw i64 %i.alk, 3
  %i.ana = mul i64 %i.amy, %i.amz
  %scevgep2099 = getelementptr i8, ptr %i.alb, i64 %i.ana
  %scevgep2100 = getelementptr i8, ptr %i.alb, i64 4
  %i.anb = add nsw i64 %i.alv, -5
  %i.anc = add nsw i64 %i.anb, %i.alk
  %i.and = mul i64 %i.amy, %i.anc
  %i.ane = getelementptr i8, ptr %scevgep2100, i64 %i.and
  %scevgep2101 = getelementptr i8, ptr %i.ane, i64 %i.alz
  %i.anf = mul i64 %i.ald, %i.alc                 ; 2 uses
  %i.ang = add nsw i64 %i.alk, 2
  %i.anh = mul i64 %i.anf, %i.ang
  %scevgep2102 = getelementptr i8, ptr %i.alb, i64 %i.anh
  %scevgep2103 = getelementptr i8, ptr %i.alb, i64 4
  %i.ani = add nsw i64 %i.alv, -6
  %i.anj = add nsw i64 %i.ani, %i.alk
  %i.ank = mul i64 %i.anf, %i.anj
  %i.anl = getelementptr i8, ptr %scevgep2103, i64 %i.ank
  %scevgep2104 = getelementptr i8, ptr %i.anl, i64 %i.alz
  %i.anm = mul i64 %i.ald, %i.alc                 ; 2 uses
  %i.ann = add nsw i64 %i.alk, 1
  %i.ano = mul i64 %i.anm, %i.ann
  %scevgep2105 = getelementptr i8, ptr %i.alb, i64 %i.ano
  %scevgep2106 = getelementptr i8, ptr %i.alb, i64 4
  %i.anp = add nsw i64 %i.alv, -7
  %i.anq = add nsw i64 %i.anp, %i.alk
  %i.anr = mul i64 %i.anm, %i.anq
  %i.ans = getelementptr i8, ptr %scevgep2106, i64 %i.anr
  %scevgep2107 = getelementptr i8, ptr %i.ans, i64 %i.alz
  %i.ant = mul i64 %i.ald, %i.alc                 ; 2 uses
  %i.anu = mul i64 %i.ant, %i.alk
  %scevgep2108 = getelementptr i8, ptr %i.alb, i64 %i.anu
  %scevgep2109 = getelementptr i8, ptr %i.alb, i64 4
  %i.anv = add nsw i64 %i.alv, -8
  %i.anw = add nsw i64 %i.anv, %i.alk
  %i.anx = mul i64 %i.ant, %i.anw
  %i.any = getelementptr i8, ptr %scevgep2109, i64 %i.anx
  %scevgep2110 = getelementptr i8, ptr %i.any, i64 %i.alz
  %i.anz = insertelement <8 x i64> poison, i64 %i.amc, i64 0
  %i.aoa = insertelement <8 x i64> poison, i64 %i.alr, i64 0
  %i.aob = insertelement <8 x ptr> poison, ptr %i.ale, i64 0
  %i.aoc = shufflevector <8 x ptr> %i.aob, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.aod = insertelement <8 x ptr> poison, ptr %scevgep2089, i64 0
  %i.aoe = insertelement <8 x ptr> %i.aod, ptr %scevgep2092, i64 1
  %i.aof = insertelement <8 x ptr> %i.aoe, ptr %scevgep2095, i64 2
  %i.aog = insertelement <8 x ptr> %i.aof, ptr %scevgep2098, i64 3
  %i.aoh = insertelement <8 x ptr> %i.aog, ptr %scevgep2101, i64 4
  %i.aoi = insertelement <8 x ptr> %i.aoh, ptr %scevgep2104, i64 5
  %i.aoj = insertelement <8 x ptr> %i.aoi, ptr %scevgep2107, i64 6
  %i.aok = insertelement <8 x ptr> %i.aoj, ptr %scevgep2110, i64 7
  %i.aol = insertelement <8 x ptr> poison, ptr %scevgep2087, i64 0
  %i.aom = insertelement <8 x ptr> %i.aol, ptr %scevgep2090, i64 1
  %i.aon = insertelement <8 x ptr> %i.aom, ptr %scevgep2093, i64 2
  %i.aoo = insertelement <8 x ptr> %i.aon, ptr %scevgep2096, i64 3
  %i.aop = insertelement <8 x ptr> %i.aoo, ptr %scevgep2099, i64 4
  %i.aoq = insertelement <8 x ptr> %i.aop, ptr %scevgep2102, i64 5
  %i.aor = insertelement <8 x ptr> %i.aoq, ptr %scevgep2105, i64 6
  %i.aos = insertelement <8 x ptr> %i.aor, ptr %scevgep2108, i64 7
  %i.aot = insertelement <8 x ptr> poison, ptr %scevgep2086, i64 0
  %i.aou = shufflevector <8 x ptr> %i.aot, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.aov = zext nneg i32 %i.akx to i64            ; 2 uses
  %min.iters.check2159 = icmp ult i32 %i.akx, 56
  %i.aow = icmp ult <8 x ptr> %i.aoc, %i.aok
  %i.aox = icmp ult <8 x ptr> %i.aos, %i.aou
  %i.aoy = or <8 x i64> %i.anz, %i.aoa
  %i.aoz = and <8 x i1> %i.aow, %i.aox
  %i.apa = icmp slt <8 x i64> %i.aoy, zeroinitializer
  %i.apb = shufflevector <8 x i1> %i.apa, <8 x i1> poison, <8 x i32> zeroinitializer
  %rdx.op2195 = or <8 x i1> %i.apb, %i.aoz
  %i.apc = bitcast <8 x i1> %rdx.op2195 to i8
  %.not2199 = icmp eq i8 %i.apc, 0
  %n.vec2161 = and i64 %i.aov, 2147483640         ; 5 uses
  %i.apd = trunc nuw nsw i64 %n.vec2161 to i32
  %i.ape = shl nuw nsw i64 %n.vec2161, 5
  %i.apf = shl nuw nsw i64 %n.vec2161, 2          ; 8 uses
  %cmp.n2184 = icmp eq i64 %n.vec2161, %i.aov
  br label %.noexc1079

.noexc1079:                                       ; preds = %.noexc1079.lr.ph, %._crit_edge1543
  %indvars.iv1656 = phi i64 [ %i.alk, %.noexc1079.lr.ph ], [ %indvars.iv.next1657, %._crit_edge1543 ] ; 9 uses
  %indvars.iv1654 = phi i64 [ 0, %.noexc1079.lr.ph ], [ %indvars.iv.next1655, %._crit_edge1543 ] ; 2 uses
  br i1 %i.alj, label %.lr.ph1542.preheader, label %._crit_edge1543

.lr.ph1542.preheader:                             ; preds = %.noexc1079
  %.reass1563 = mul i64 %factor.op.mul1562, %indvars.iv1654
  %i.apg = getelementptr inbounds nuw i8, ptr %i.ale, i64 %.reass1563 ; 4 uses
  %i.aph = add nsw i64 %indvars.iv1656, 7
  %.reass1561 = mul i64 %factor.op.mul1547, %i.aph
  %i.api = getelementptr inbounds nuw i8, ptr %i.alb, i64 %.reass1561 ; 4 uses
  %i.apj = add nsw i64 %indvars.iv1656, 6
  %.reass1559 = mul i64 %factor.op.mul1547, %i.apj
  %i.apk = getelementptr inbounds nuw i8, ptr %i.alb, i64 %.reass1559 ; 4 uses
  %i.apl = add nsw i64 %indvars.iv1656, 5
  %.reass1557 = mul i64 %factor.op.mul1547, %i.apl
  %i.apm = getelementptr inbounds nuw i8, ptr %i.alb, i64 %.reass1557 ; 4 uses
  %i.apn = add nsw i64 %indvars.iv1656, 4
  %.reass1555 = mul i64 %factor.op.mul1547, %i.apn
  %i.apo = getelementptr inbounds nuw i8, ptr %i.alb, i64 %.reass1555 ; 4 uses
  %i.app = add nsw i64 %indvars.iv1656, 3
  %.reass1553 = mul i64 %factor.op.mul1547, %i.app
  %i.apq = getelementptr inbounds nuw i8, ptr %i.alb, i64 %.reass1553 ; 4 uses
  %i.apr = add nsw i64 %indvars.iv1656, 2
  %.reass1551 = mul i64 %factor.op.mul1547, %i.apr
  %i.aps = getelementptr inbounds nuw i8, ptr %i.alb, i64 %.reass1551 ; 4 uses
  %i.apt = add nsw i64 %indvars.iv1656, 1
  %.reass1549 = mul i64 %factor.op.mul1547, %i.apt
  %i.apu = getelementptr inbounds nuw i8, ptr %i.alb, i64 %.reass1549 ; 4 uses
  %.reass = mul i64 %factor.op.mul1547, %indvars.iv1656
  %i.apv = getelementptr inbounds nuw i8, ptr %i.alb, i64 %.reass ; 4 uses
  br i1 %min.iters.check2159, label %.lr.ph1542.preheader2202, label %vector.memcheck2084

vector.memcheck2084:                              ; preds = %.lr.ph1542.preheader
  br i1 %.not2199, label %vector.ph2160, label %.lr.ph1542.preheader2202

vector.ph2160:                                    ; preds = %vector.memcheck2084
  %i.apw = getelementptr i8, ptr %i.apg, i64 %i.ape
  %i.apx = getelementptr i8, ptr %i.api, i64 %i.apf
  %i.apy = getelementptr i8, ptr %i.apk, i64 %i.apf
  %i.apz = getelementptr i8, ptr %i.apm, i64 %i.apf
  %i.aqa = getelementptr i8, ptr %i.apo, i64 %i.apf
  %i.aqb = getelementptr i8, ptr %i.apq, i64 %i.apf
  %i.aqc = getelementptr i8, ptr %i.aps, i64 %i.apf
  %i.aqd = getelementptr i8, ptr %i.apu, i64 %i.apf
  %i.aqe = getelementptr i8, ptr %i.apv, i64 %i.apf
  br label %vector.body2162

vector.body2162:                                  ; preds = %vector.body2162, %vector.ph2160
  %index2163 = phi i64 [ 0, %vector.ph2160 ], [ %index.next2182, %vector.body2162 ] ; 3 uses
  %i.aqf = shl i64 %index2163, 5
  %next.gep2164 = getelementptr i8, ptr %i.apg, i64 %i.aqf
  %i.aqg = shl i64 %index2163, 2                  ; 8 uses
  %next.gep2165 = getelementptr i8, ptr %i.api, i64 %i.aqg
  %next.gep2166 = getelementptr i8, ptr %i.apk, i64 %i.aqg
  %next.gep2167 = getelementptr i8, ptr %i.apm, i64 %i.aqg
  %next.gep2168 = getelementptr i8, ptr %i.apo, i64 %i.aqg
  %next.gep2169 = getelementptr i8, ptr %i.apq, i64 %i.aqg
  %next.gep2170 = getelementptr i8, ptr %i.aps, i64 %i.aqg
  %next.gep2171 = getelementptr i8, ptr %i.apu, i64 %i.aqg
  %next.gep2172 = getelementptr i8, ptr %i.apv, i64 %i.aqg
  %wide.load2173 = load <8 x float>, ptr %next.gep2172, align 4, !tbaa !140, !alias.scope !161
  %wide.load2174 = load <8 x float>, ptr %next.gep2171, align 4, !tbaa !140, !alias.scope !162
  %wide.load2175 = load <8 x float>, ptr %next.gep2170, align 4, !tbaa !140, !alias.scope !163
  %wide.load2176 = load <8 x float>, ptr %next.gep2169, align 4, !tbaa !140, !alias.scope !164
  %wide.load2177 = load <8 x float>, ptr %next.gep2168, align 4, !tbaa !140, !alias.scope !165
  %wide.load2178 = load <8 x float>, ptr %next.gep2167, align 4, !tbaa !140, !alias.scope !166
  %wide.load2179 = load <8 x float>, ptr %next.gep2166, align 4, !tbaa !140, !alias.scope !167
  %wide.load2180 = load <8 x float>, ptr %next.gep2165, align 4, !tbaa !140, !alias.scope !168
  %i.aqh = shufflevector <8 x float> %wide.load2173, <8 x float> %wide.load2174, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aqi = shufflevector <8 x float> %wide.load2175, <8 x float> %wide.load2176, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aqj = shufflevector <8 x float> %wide.load2177, <8 x float> %wide.load2178, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aqk = shufflevector <8 x float> %wide.load2179, <8 x float> %wide.load2180, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aql = shufflevector <16 x float> %i.aqh, <16 x float> %i.aqi, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aqm = shufflevector <16 x float> %i.aqj, <16 x float> %i.aqk, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec2181 = shufflevector <32 x float> %i.aql, <32 x float> %i.aqm, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec2181, ptr %next.gep2164, align 4, !tbaa !140, !alias.scope !169, !noalias !170
  %index.next2182 = add nuw i64 %index2163, 8     ; 2 uses
  %i.aqn = icmp eq i64 %index.next2182, %n.vec2161
  br i1 %i.aqn, label %middle.block2183, label %vector.body2162, !llvm.loop !117

middle.block2183:                                 ; preds = %vector.body2162
  br i1 %cmp.n2184, label %._crit_edge1543, label %.lr.ph1542.preheader2202

.lr.ph1542.preheader2202:                         ; preds = %vector.memcheck2084, %.lr.ph1542.preheader, %middle.block2183
  %.06761541.ph = phi i32 [ 0, %vector.memcheck2084 ], [ 0, %.lr.ph1542.preheader ], [ %i.apd, %middle.block2183 ]
  %.06771540.ph = phi ptr [ %i.apg, %vector.memcheck2084 ], [ %i.apg, %.lr.ph1542.preheader ], [ %i.apw, %middle.block2183 ]
  %.06781539.ph = phi ptr [ %i.api, %vector.memcheck2084 ], [ %i.api, %.lr.ph1542.preheader ], [ %i.apx, %middle.block2183 ]
  %.06791538.ph = phi ptr [ %i.apk, %vector.memcheck2084 ], [ %i.apk, %.lr.ph1542.preheader ], [ %i.apy, %middle.block2183 ]
  %.06801537.ph = phi ptr [ %i.apm, %vector.memcheck2084 ], [ %i.apm, %.lr.ph1542.preheader ], [ %i.apz, %middle.block2183 ]
  %.06811536.ph = phi ptr [ %i.apo, %vector.memcheck2084 ], [ %i.apo, %.lr.ph1542.preheader ], [ %i.aqa, %middle.block2183 ]
  %.06821535.ph = phi ptr [ %i.apq, %vector.memcheck2084 ], [ %i.apq, %.lr.ph1542.preheader ], [ %i.aqb, %middle.block2183 ]
  %.06831534.ph = phi ptr [ %i.aps, %vector.memcheck2084 ], [ %i.aps, %.lr.ph1542.preheader ], [ %i.aqc, %middle.block2183 ]
  %.06841533.ph = phi ptr [ %i.apu, %vector.memcheck2084 ], [ %i.apu, %.lr.ph1542.preheader ], [ %i.aqd, %middle.block2183 ]
  %.06851532.ph = phi ptr [ %i.apv, %vector.memcheck2084 ], [ %i.apv, %.lr.ph1542.preheader ], [ %i.aqe, %middle.block2183 ]
  br label %.lr.ph1542

._crit_edge1543:                                  ; preds = %.lr.ph1542, %middle.block2183, %.noexc1079
  %indvars.iv.next1657 = add nsw i64 %indvars.iv1656, 8 ; 2 uses
  %indvars.iv.next1655 = add nuw nsw i64 %indvars.iv1654, 1 ; 2 uses
  %exitcond1662.not = icmp eq i64 %indvars.iv.next1655, %wide.trip.count1661
  br i1 %exitcond1662.not, label %thread-pre-split.loopexit, label %.noexc1079, !llvm.loop !118

.lr.ph1542:                                       ; preds = %.lr.ph1542.preheader2202, %.lr.ph1542
  %.06761541 = phi i32 [ %i.arm, %.lr.ph1542 ], [ %.06761541.ph, %.lr.ph1542.preheader2202 ]
  %.06771540 = phi ptr [ %i.arl, %.lr.ph1542 ], [ %.06771540.ph, %.lr.ph1542.preheader2202 ] ; 9 uses
  %.06781539 = phi ptr [ %i.ari, %.lr.ph1542 ], [ %.06781539.ph, %.lr.ph1542.preheader2202 ] ; 2 uses
  %.06791538 = phi ptr [ %i.arf, %.lr.ph1542 ], [ %.06791538.ph, %.lr.ph1542.preheader2202 ] ; 2 uses
  %.06801537 = phi ptr [ %i.arc, %.lr.ph1542 ], [ %.06801537.ph, %.lr.ph1542.preheader2202 ] ; 2 uses
  %.06811536 = phi ptr [ %i.aqz, %.lr.ph1542 ], [ %.06811536.ph, %.lr.ph1542.preheader2202 ] ; 2 uses
  %.06821535 = phi ptr [ %i.aqw, %.lr.ph1542 ], [ %.06821535.ph, %.lr.ph1542.preheader2202 ] ; 2 uses
  %.06831534 = phi ptr [ %i.aqt, %.lr.ph1542 ], [ %.06831534.ph, %.lr.ph1542.preheader2202 ] ; 2 uses
  %.06841533 = phi ptr [ %i.aqq, %.lr.ph1542 ], [ %.06841533.ph, %.lr.ph1542.preheader2202 ] ; 2 uses
  %.06851532 = phi ptr [ %i.aqo, %.lr.ph1542 ], [ %.06851532.ph, %.lr.ph1542.preheader2202 ] ; 2 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %.06851532, i64 4
  %i.aqp = load float, ptr %.06851532, align 4, !tbaa !140
  store float %i.aqp, ptr %.06771540, align 4, !tbaa !140
  %i.aqq = getelementptr inbounds nuw i8, ptr %.06841533, i64 4
  %i.aqr = load float, ptr %.06841533, align 4, !tbaa !140
  %i.aqs = getelementptr inbounds nuw i8, ptr %.06771540, i64 4
  store float %i.aqr, ptr %i.aqs, align 4, !tbaa !140
  %i.aqt = getelementptr inbounds nuw i8, ptr %.06831534, i64 4
  %i.aqu = load float, ptr %.06831534, align 4, !tbaa !140
  %i.aqv = getelementptr inbounds nuw i8, ptr %.06771540, i64 8
  store float %i.aqu, ptr %i.aqv, align 4, !tbaa !140
  %i.aqw = getelementptr inbounds nuw i8, ptr %.06821535, i64 4
  %i.aqx = load float, ptr %.06821535, align 4, !tbaa !140
  %i.aqy = getelementptr inbounds nuw i8, ptr %.06771540, i64 12
  store float %i.aqx, ptr %i.aqy, align 4, !tbaa !140
  %i.aqz = getelementptr inbounds nuw i8, ptr %.06811536, i64 4
  %i.ara = load float, ptr %.06811536, align 4, !tbaa !140
  %i.arb = getelementptr inbounds nuw i8, ptr %.06771540, i64 16
  store float %i.ara, ptr %i.arb, align 4, !tbaa !140
  %i.arc = getelementptr inbounds nuw i8, ptr %.06801537, i64 4
  %i.ard = load float, ptr %.06801537, align 4, !tbaa !140
  %i.are = getelementptr inbounds nuw i8, ptr %.06771540, i64 20
  store float %i.ard, ptr %i.are, align 4, !tbaa !140
  %i.arf = getelementptr inbounds nuw i8, ptr %.06791538, i64 4
  %i.arg = load float, ptr %.06791538, align 4, !tbaa !140
  %i.arh = getelementptr inbounds nuw i8, ptr %.06771540, i64 24
  store float %i.arg, ptr %i.arh, align 4, !tbaa !140
  %i.ari = getelementptr inbounds nuw i8, ptr %.06781539, i64 4
  %i.arj = load float, ptr %.06781539, align 4, !tbaa !140
  %i.ark = getelementptr inbounds nuw i8, ptr %.06771540, i64 28
  store float %i.arj, ptr %i.ark, align 4, !tbaa !140
  %i.arl = getelementptr inbounds nuw i8, ptr %.06771540, i64 32
  %i.arm = add nuw nsw i32 %.06761541, 1          ; 2 uses
  %exitcond1653.not = icmp eq i32 %i.arm, %i.akx
  br i1 %exitcond1653.not, label %._crit_edge1543, label %.lr.ph1542, !llvm.loop !119

thread-pre-split.loopexit:                        ; preds = %._crit_edge1543
  %i.arn = trunc nsw i64 %indvars.iv.next1657 to i32
  %.pr.pre = load i32, ptr %i.aik, align 8, !tbaa !27
  br label %.thread1416

.thread1416:                                      ; preds = %thread-pre-split.loopexit, %bb.by
  %i.aro = phi i32 [ %i.ako, %bb.by ], [ %.pr.pre, %thread-pre-split.loopexit ] ; 2 uses
  %.46971418 = phi i32 [ %.2695, %bb.by ], [ %i.arn, %thread-pre-split.loopexit ] ; 3 uses
  %i.arp = icmp eq i32 %i.aro, 4
  br i1 %i.arp, label %bb.ca, label %.thread1419

bb.ca:                                            ; preds = %.thread1416
  %i.arq = getelementptr inbounds nuw i8, ptr %i.aij, i64 44
  %i.arr = load i32, ptr %i.arq, align 4, !tbaa !43
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aij, i64 48
  %i.art = load i32, ptr %i.ars, align 8, !tbaa !52
  %i.aru = mul i32 %i.art, %i.arr
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aij, i64 52
  %i.arw = load i32, ptr %i.arv, align 4, !tbaa !58
  %i.arx = mul i32 %i.aru, %i.arw                 ; 7 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aij, i64 56
  %i.arz = load i32, ptr %i.ary, align 8, !tbaa !50 ; 2 uses
  %i.asa = icmp sgt i32 %i.arz, 0
  br i1 %i.asa, label %.noexc1061.lr.ph, label %.thread1419

.noexc1061.lr.ph:                                 ; preds = %bb.ca
  %i.asb = load ptr, ptr %5, align 16, !tbaa !19, !noalias !171 ; 12 uses
  %i.asc = load i64, ptr %i.ahk, align 16, !tbaa !20, !noalias !171 ; 6 uses
  %i.asd = load i64, ptr %i.agz, align 16, !tbaa !25, !noalias !171 ; 6 uses
  %factor.op.mul1575 = mul i64 %i.asc, %i.asd     ; 4 uses
  %i.ase = load ptr, ptr %i.aij, align 8, !tbaa !19, !noalias !172 ; 3 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.aij, i64 64
  %i.asg = load i64, ptr %i.asf, align 8, !tbaa !20, !noalias !172 ; 3 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.aij, i64 16
  %i.asi = load i64, ptr %i.ash, align 8, !tbaa !25, !noalias !172 ; 3 uses
  %factor.op.mul1583 = mul i64 %i.asg, %i.asi
  %i.asj = icmp sgt i32 %i.arx, 0
  %i.ask = sext i32 %.46971418 to i64             ; 9 uses
  %wide.trip.count1671 = zext nneg i32 %i.arz to i64 ; 3 uses
  %scevgep2022 = getelementptr i8, ptr %i.ase, i64 16
  %7 = mul i64 %i.asi, %i.asg
  %i.asl = add nsw i64 %wide.trip.count1671, -1
  %i.asm = mul i64 %7, %i.asl
  %i.asn = add i32 %i.arx, -1
  %i.aso = zext i32 %i.asn to i64                 ; 2 uses
  %i.asp = shl nuw nsw i64 %i.aso, 4
  %i.asq = getelementptr i8, ptr %scevgep2022, i64 %i.asm
  %scevgep2023 = getelementptr i8, ptr %i.asq, i64 %i.asp
  %i.asr = mul i64 %i.asi, %i.asg
  %i.ass = mul i64 %i.asd, %i.asc                 ; 2 uses
  %i.ast = add nsw i64 %i.ask, 3
  %i.asu = mul i64 %i.ass, %i.ast
  %scevgep2024 = getelementptr i8, ptr %i.asb, i64 %i.asu
  %scevgep2025 = getelementptr i8, ptr %i.asb, i64 4
  %i.asv = shl nuw nsw i64 %wide.trip.count1671, 2 ; 4 uses
  %i.asw = add nsw i64 %i.asv, -1
  %i.asx = add nsw i64 %i.asw, %i.ask
  %i.asy = mul i64 %i.ass, %i.asx
  %i.asz = shl nuw nsw i64 %i.aso, 2              ; 4 uses
  %i.ata = getelementptr i8, ptr %scevgep2025, i64 %i.asy
  %scevgep2026 = getelementptr i8, ptr %i.ata, i64 %i.asz
  %i.atb = shl i64 %i.asd, 2
  %i.atc = mul i64 %i.atb, %i.asc
  %i.atd = mul i64 %i.asd, %i.asc                 ; 2 uses
  %i.ate = add nsw i64 %i.ask, 2
  %i.atf = mul i64 %i.atd, %i.ate
  %scevgep2027 = getelementptr i8, ptr %i.asb, i64 %i.atf
  %scevgep2028 = getelementptr i8, ptr %i.asb, i64 4
  %i.atg = add nsw i64 %i.asv, -2
  %i.ath = add nsw i64 %i.atg, %i.ask
  %i.ati = mul i64 %i.atd, %i.ath
  %i.atj = getelementptr i8, ptr %scevgep2028, i64 %i.ati
  %scevgep2029 = getelementptr i8, ptr %i.atj, i64 %i.asz
  %i.atk = mul i64 %i.asd, %i.asc                 ; 2 uses
  %i.atl = add nsw i64 %i.ask, 1
  %i.atm = mul i64 %i.atk, %i.atl
  %scevgep2030 = getelementptr i8, ptr %i.asb, i64 %i.atm
  %scevgep2031 = getelementptr i8, ptr %i.asb, i64 4
  %i.atn = add nsw i64 %i.asv, -3
  %i.ato = add nsw i64 %i.atn, %i.ask
  %i.atp = mul i64 %i.atk, %i.ato
  %i.atq = getelementptr i8, ptr %scevgep2031, i64 %i.atp
  %scevgep2032 = getelementptr i8, ptr %i.atq, i64 %i.asz
  %i.atr = mul i64 %i.asd, %i.asc                 ; 2 uses
  %i.ats = mul i64 %i.atr, %i.ask
  %scevgep2033 = getelementptr i8, ptr %i.asb, i64 %i.ats
  %scevgep2034 = getelementptr i8, ptr %i.asb, i64 4
  %i.att = add nsw i64 %i.asv, -4
  %i.atu = add nsw i64 %i.att, %i.ask
  %i.atv = mul i64 %i.atr, %i.atu
  %i.atw = getelementptr i8, ptr %scevgep2034, i64 %i.atv
  %scevgep2035 = getelementptr i8, ptr %i.atw, i64 %i.asz
  %i.atx = insertelement <4 x i64> poison, i64 %i.atc, i64 0
  %i.aty = insertelement <4 x i64> poison, i64 %i.asr, i64 0
  %i.atz = insertelement <4 x ptr> poison, ptr %i.ase, i64 0
  %i.aua = shufflevector <4 x ptr> %i.atz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.aub = insertelement <4 x ptr> poison, ptr %scevgep2026, i64 0
  %i.auc = insertelement <4 x ptr> %i.aub, ptr %scevgep2029, i64 1
  %i.aud = insertelement <4 x ptr> %i.auc, ptr %scevgep2032, i64 2
  %i.aue = insertelement <4 x ptr> %i.aud, ptr %scevgep2035, i64 3
  %i.auf = insertelement <4 x ptr> poison, ptr %scevgep2024, i64 0
  %i.aug = insertelement <4 x ptr> %i.auf, ptr %scevgep2027, i64 1
  %i.auh = insertelement <4 x ptr> %i.aug, ptr %scevgep2030, i64 2
  %i.aui = insertelement <4 x ptr> %i.auh, ptr %scevgep2033, i64 3
  %i.auj = insertelement <4 x ptr> poison, ptr %scevgep2023, i64 0
  %i.auk = shufflevector <4 x ptr> %i.auj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.aul = zext nneg i32 %i.arx to i64            ; 2 uses
  %min.iters.check2060 = icmp ult i32 %i.arx, 16
  %i.aum = icmp ult <4 x ptr> %i.aua, %i.aue
  %i.aun = icmp ult <4 x ptr> %i.aui, %i.auk
  %i.auo = or <4 x i64> %i.atx, %i.aty
  %i.aup = and <4 x i1> %i.aum, %i.aun
  %i.auq = icmp slt <4 x i64> %i.auo, zeroinitializer
  %i.aur = shufflevector <4 x i1> %i.auq, <4 x i1> poison, <4 x i32> zeroinitializer
  %rdx.op = or <4 x i1> %i.aur, %i.aup
  %i.aus = bitcast <4 x i1> %rdx.op to i4
  %.not2200 = icmp eq i4 %i.aus, 0
  %n.vec2062 = and i64 %i.aul, 2147483640         ; 5 uses
  %i.aut = trunc nuw nsw i64 %n.vec2062 to i32
  %i.auu = shl nuw nsw i64 %n.vec2062, 4
  %i.auv = shl nuw nsw i64 %n.vec2062, 2          ; 4 uses
  %cmp.n2077 = icmp eq i64 %n.vec2062, %i.aul
  br label %.noexc1061

.noexc1061:                                       ; preds = %.noexc1061.lr.ph, %._crit_edge1571
  %indvars.iv1666 = phi i64 [ %i.ask, %.noexc1061.lr.ph ], [ %indvars.iv.next1667, %._crit_edge1571 ] ; 5 uses
  %indvars.iv1664 = phi i64 [ 0, %.noexc1061.lr.ph ], [ %indvars.iv.next1665, %._crit_edge1571 ] ; 2 uses
  br i1 %i.asj, label %.lr.ph1570.preheader, label %._crit_edge1571

.lr.ph1570.preheader:                             ; preds = %.noexc1061
  %.reass1584 = mul i64 %factor.op.mul1583, %indvars.iv1664
  %i.auw = getelementptr inbounds nuw i8, ptr %i.ase, i64 %.reass1584 ; 4 uses
  %i.aux = add nsw i64 %indvars.iv1666, 3
  %.reass1582 = mul i64 %factor.op.mul1575, %i.aux
  %i.auy = getelementptr inbounds nuw i8, ptr %i.asb, i64 %.reass1582 ; 4 uses
  %i.auz = add nsw i64 %indvars.iv1666, 2
  %.reass1580 = mul i64 %factor.op.mul1575, %i.auz
  %i.ava = getelementptr inbounds nuw i8, ptr %i.asb, i64 %.reass1580 ; 4 uses
  %i.avb = add nsw i64 %indvars.iv1666, 1
  %.reass1578 = mul i64 %factor.op.mul1575, %i.avb
  %i.avc = getelementptr inbounds nuw i8, ptr %i.asb, i64 %.reass1578 ; 4 uses
  %.reass1576 = mul i64 %factor.op.mul1575, %indvars.iv1666
  %i.avd = getelementptr inbounds nuw i8, ptr %i.asb, i64 %.reass1576 ; 4 uses
  br i1 %min.iters.check2060, label %.lr.ph1570.preheader2201, label %vector.memcheck2021

vector.memcheck2021:                              ; preds = %.lr.ph1570.preheader
  br i1 %.not2200, label %vector.ph2061, label %.lr.ph1570.preheader2201

vector.ph2061:                                    ; preds = %vector.memcheck2021
  %i.ave = getelementptr i8, ptr %i.auw, i64 %i.auu
  %i.avf = getelementptr i8, ptr %i.auy, i64 %i.auv
  %i.avg = getelementptr i8, ptr %i.ava, i64 %i.auv
  %i.avh = getelementptr i8, ptr %i.avc, i64 %i.auv
  %i.avi = getelementptr i8, ptr %i.avd, i64 %i.auv
  br label %vector.body2063

vector.body2063:                                  ; preds = %vector.body2063, %vector.ph2061
  %index2064 = phi i64 [ 0, %vector.ph2061 ], [ %index.next2075, %vector.body2063 ] ; 3 uses
  %i.avj = shl i64 %index2064, 4
  %next.gep2065 = getelementptr i8, ptr %i.auw, i64 %i.avj
  %i.avk = shl i64 %index2064, 2                  ; 4 uses
  %next.gep2066 = getelementptr i8, ptr %i.auy, i64 %i.avk
  %next.gep2067 = getelementptr i8, ptr %i.ava, i64 %i.avk
  %next.gep2068 = getelementptr i8, ptr %i.avc, i64 %i.avk
  %next.gep2069 = getelementptr i8, ptr %i.avd, i64 %i.avk
  %wide.load2070 = load <8 x float>, ptr %next.gep2069, align 4, !tbaa !140, !alias.scope !173
  %wide.load2071 = load <8 x float>, ptr %next.gep2068, align 4, !tbaa !140, !alias.scope !174
  %wide.load2072 = load <8 x float>, ptr %next.gep2067, align 4, !tbaa !140, !alias.scope !175
  %wide.load2073 = load <8 x float>, ptr %next.gep2066, align 4, !tbaa !140, !alias.scope !176
  %i.avl = shufflevector <8 x float> %wide.load2070, <8 x float> %wide.load2071, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.avm = shufflevector <8 x float> %wide.load2072, <8 x float> %wide.load2073, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec2074 = shufflevector <16 x float> %i.avl, <16 x float> %i.avm, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec2074, ptr %next.gep2065, align 4, !tbaa !140, !alias.scope !177, !noalias !178
  %index.next2075 = add nuw i64 %index2064, 8     ; 2 uses
  %i.avn = icmp eq i64 %index.next2075, %n.vec2062
  br i1 %i.avn, label %middle.block2076, label %vector.body2063, !llvm.loop !130

middle.block2076:                                 ; preds = %vector.body2063
  br i1 %cmp.n2077, label %._crit_edge1571, label %.lr.ph1570.preheader2201

.lr.ph1570.preheader2201:                         ; preds = %vector.memcheck2021, %.lr.ph1570.preheader, %middle.block2076
  %.06691569.ph = phi i32 [ 0, %vector.memcheck2021 ], [ 0, %.lr.ph1570.preheader ], [ %i.aut, %middle.block2076 ] ; 4 uses
  %.06701568.ph = phi ptr [ %i.auw, %vector.memcheck2021 ], [ %i.auw, %.lr.ph1570.preheader ], [ %i.ave, %middle.block2076 ] ; 6 uses
  %.06711567.ph = phi ptr [ %i.auy, %vector.memcheck2021 ], [ %i.auy, %.lr.ph1570.preheader ], [ %i.avf, %middle.block2076 ] ; 3 uses
  %.06721566.ph = phi ptr [ %i.ava, %vector.memcheck2021 ], [ %i.ava, %.lr.ph1570.preheader ], [ %i.avg, %middle.block2076 ] ; 3 uses
  %.06731565.ph = phi ptr [ %i.avc, %vector.memcheck2021 ], [ %i.avc, %.lr.ph1570.preheader ], [ %i.avh, %middle.block2076 ] ; 3 uses
  %.06741564.ph = phi ptr [ %i.avd, %vector.memcheck2021 ], [ %i.avd, %.lr.ph1570.preheader ], [ %i.avi, %middle.block2076 ] ; 3 uses
  %i.avo = sub i32 %i.arx, %.06691569.ph
  %.neg2225 = add i32 %.06691569.ph, 1
  %xtraiter2223 = and i32 %i.avo, 1
  %lcmp.mod2224.not = icmp eq i32 %xtraiter2223, 0
  br i1 %lcmp.mod2224.not, label %.lr.ph1570.prol.loopexit, label %.lr.ph1570.prol

.lr.ph1570.prol:                                  ; preds = %.lr.ph1570.preheader2201
  %i.avp = getelementptr inbounds nuw i8, ptr %.06741564.ph, i64 4
  %i.avq = load float, ptr %.06741564.ph, align 4, !tbaa !140
  store float %i.avq, ptr %.06701568.ph, align 4, !tbaa !140
  %i.avr = getelementptr inbounds nuw i8, ptr %.06731565.ph, i64 4
  %i.avs = load float, ptr %.06731565.ph, align 4, !tbaa !140
  %i.avt = getelementptr inbounds nuw i8, ptr %.06701568.ph, i64 4
  store float %i.avs, ptr %i.avt, align 4, !tbaa !140
  %i.avu = getelementptr inbounds nuw i8, ptr %.06721566.ph, i64 4
  %i.avv = load float, ptr %.06721566.ph, align 4, !tbaa !140
  %i.avw = getelementptr inbounds nuw i8, ptr %.06701568.ph, i64 8
  store float %i.avv, ptr %i.avw, align 4, !tbaa !140
  %i.avx = getelementptr inbounds nuw i8, ptr %.06711567.ph, i64 4
  %i.avy = load float, ptr %.06711567.ph, align 4, !tbaa !140
  %i.avz = getelementptr inbounds nuw i8, ptr %.06701568.ph, i64 12
  store float %i.avy, ptr %i.avz, align 4, !tbaa !140
  %i.awa = getelementptr inbounds nuw i8, ptr %.06701568.ph, i64 16
  %i.awb = add nuw nsw i32 %.06691569.ph, 1
  br label %.lr.ph1570.prol.loopexit

.lr.ph1570.prol.loopexit:                         ; preds = %.lr.ph1570.prol, %.lr.ph1570.preheader2201
  %.06691569.unr = phi i32 [ %.06691569.ph, %.lr.ph1570.preheader2201 ], [ %i.awb, %.lr.ph1570.prol ]
  %.06701568.unr = phi ptr [ %.06701568.ph, %.lr.ph1570.preheader2201 ], [ %i.awa, %.lr.ph1570.prol ]
  %.06711567.unr = phi ptr [ %.06711567.ph, %.lr.ph1570.preheader2201 ], [ %i.avx, %.lr.ph1570.prol ]
  %.06721566.unr = phi ptr [ %.06721566.ph, %.lr.ph1570.preheader2201 ], [ %i.avu, %.lr.ph1570.prol ]
  %.06731565.unr = phi ptr [ %.06731565.ph, %.lr.ph1570.preheader2201 ], [ %i.avr, %.lr.ph1570.prol ]
  %.06741564.unr = phi ptr [ %.06741564.ph, %.lr.ph1570.preheader2201 ], [ %i.avp, %.lr.ph1570.prol ]
  %i.awc = icmp eq i32 %i.arx, %.neg2225
  br i1 %i.awc, label %._crit_edge1571, label %.lr.ph1570

._crit_edge1571:                                  ; preds = %.lr.ph1570.prol.loopexit, %.lr.ph1570, %middle.block2076, %.noexc1061
  %indvars.iv.next1667 = add nsw i64 %indvars.iv1666, 4 ; 2 uses
  %indvars.iv.next1665 = add nuw nsw i64 %indvars.iv1664, 1 ; 2 uses
  %exitcond1672.not = icmp eq i64 %indvars.iv.next1665, %wide.trip.count1671
  br i1 %exitcond1672.not, label %.thread1419.loopexit, label %.noexc1061, !llvm.loop !131

.lr.ph1570:                                       ; preds = %.lr.ph1570.prol.loopexit, %.lr.ph1570
  %.06691569 = phi i32 [ %i.axb, %.lr.ph1570 ], [ %.06691569.unr, %.lr.ph1570.prol.loopexit ]
  %.06701568 = phi ptr [ %i.axa, %.lr.ph1570 ], [ %.06701568.unr, %.lr.ph1570.prol.loopexit ] ; 9 uses
  %.06711567 = phi ptr [ %i.awx, %.lr.ph1570 ], [ %.06711567.unr, %.lr.ph1570.prol.loopexit ] ; 3 uses
  %.06721566 = phi ptr [ %i.awu, %.lr.ph1570 ], [ %.06721566.unr, %.lr.ph1570.prol.loopexit ] ; 3 uses
  %.06731565 = phi ptr [ %i.awr, %.lr.ph1570 ], [ %.06731565.unr, %.lr.ph1570.prol.loopexit ] ; 3 uses
  %.06741564 = phi ptr [ %i.awp, %.lr.ph1570 ], [ %.06741564.unr, %.lr.ph1570.prol.loopexit ] ; 3 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %.06741564, i64 4
  %i.awe = load float, ptr %.06741564, align 4, !tbaa !140
  store float %i.awe, ptr %.06701568, align 4, !tbaa !140
  %i.awf = getelementptr inbounds nuw i8, ptr %.06731565, i64 4
  %i.awg = load float, ptr %.06731565, align 4, !tbaa !140
  %i.awh = getelementptr inbounds nuw i8, ptr %.06701568, i64 4
  store float %i.awg, ptr %i.awh, align 4, !tbaa !140
  %i.awi = getelementptr inbounds nuw i8, ptr %.06721566, i64 4
  %i.awj = load float, ptr %.06721566, align 4, !tbaa !140
  %i.awk = getelementptr inbounds nuw i8, ptr %.06701568, i64 8
  store float %i.awj, ptr %i.awk, align 4, !tbaa !140
  %i.awl = getelementptr inbounds nuw i8, ptr %.06711567, i64 4
  %i.awm = load float, ptr %.06711567, align 4, !tbaa !140
  %i.awn = getelementptr inbounds nuw i8, ptr %.06701568, i64 12
  store float %i.awm, ptr %i.awn, align 4, !tbaa !140
  %i.awo = getelementptr inbounds nuw i8, ptr %.06701568, i64 16
  %i.awp = getelementptr inbounds nuw i8, ptr %.06741564, i64 8
  %i.awq = load float, ptr %i.awd, align 4, !tbaa !140
  store float %i.awq, ptr %i.awo, align 4, !tbaa !140
  %i.awr = getelementptr inbounds nuw i8, ptr %.06731565, i64 8
  %i.aws = load float, ptr %i.awf, align 4, !tbaa !140
  %i.awt = getelementptr inbounds nuw i8, ptr %.06701568, i64 20
  store float %i.aws, ptr %i.awt, align 4, !tbaa !140
  %i.awu = getelementptr inbounds nuw i8, ptr %.06721566, i64 8
  %i.awv = load float, ptr %i.awi, align 4, !tbaa !140
  %i.aww = getelementptr inbounds nuw i8, ptr %.06701568, i64 24
  store float %i.awv, ptr %i.aww, align 4, !tbaa !140
  %i.awx = getelementptr inbounds nuw i8, ptr %.06711567, i64 8
  %i.awy = load float, ptr %i.awl, align 4, !tbaa !140
  %i.awz = getelementptr inbounds nuw i8, ptr %.06701568, i64 28
  store float %i.awy, ptr %i.awz, align 4, !tbaa !140
  %i.axa = getelementptr inbounds nuw i8, ptr %.06701568, i64 32
  %i.axb = add nuw nsw i32 %.06691569, 2          ; 2 uses
  %exitcond1663.not.1 = icmp eq i32 %i.axb, %i.arx
  br i1 %exitcond1663.not.1, label %._crit_edge1571, label %.lr.ph1570, !llvm.loop !132

.thread1419.loopexit:                             ; preds = %._crit_edge1571
  %i.axc = trunc nsw i64 %indvars.iv.next1667 to i32
  br label %.thread1419

.thread1419:                                      ; preds = %bb.bz, %bb.bw, %.noexc1085.preheader, %.thread1419.loopexit, %bb.ca, %.loopexit, %.thread1416
  %i.axd = phi i32 [ %i.ail, %.loopexit ], [ %i.aro, %.thread1416 ], [ 4, %bb.ca ], [ 4, %.thread1419.loopexit ], [ 8, %bb.bw ], [ 8, %.noexc1085.preheader ], [ 8, %bb.bz ]
  %.6699 = phi i32 [ %.2695, %.loopexit ], [ %.46971418, %.thread1416 ], [ %.46971418, %bb.ca ], [ %i.axc, %.thread1419.loopexit ], [ %.06931585, %bb.bw ], [ %i.aji, %.noexc1085.preheader ], [ %.2695, %bb.bz ] ; 3 uses
  %i.axe = icmp eq i32 %.01405.lcssa, %i.axd
  br i1 %i.axe, label %.noexc1052, label %bb.cb

.noexc1052:                                       ; preds = %.thread1419
  %i.axf = getelementptr inbounds nuw i8, ptr %i.aij, i64 64
end_hunk_0
begin_hunk_1_@_ZNK4ncnn13Slice_x86_fma19forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.agy = load i16, ptr %i.agx, align 2, !tbaa !241
  %i.agz = getelementptr inbounds nuw i8, ptr %.06621513.us, i64 2
  store i16 %i.agy, ptr %i.agz, align 2, !tbaa !241
  %i.aha = getelementptr inbounds nuw i8, ptr %.06641511.us, i64 4
  %i.ahb = load i16, ptr %i.aha, align 2, !tbaa !241
  %i.ahc = getelementptr inbounds nuw i8, ptr %.06621513.us, i64 4
  store i16 %i.ahb, ptr %i.ahc, align 2, !tbaa !241
  %i.ahd = getelementptr inbounds nuw i8, ptr %.06641511.us, i64 6
  %i.ahe = load i16, ptr %i.ahd, align 2, !tbaa !241
  %i.ahf = getelementptr inbounds nuw i8, ptr %.06621513.us, i64 6
  store i16 %i.ahe, ptr %i.ahf, align 2, !tbaa !241
  %i.ahg = load i16, ptr %.06631512.us, align 2, !tbaa !241
  %i.ahh = getelementptr inbounds nuw i8, ptr %.06621513.us, i64 8
  store i16 %i.ahg, ptr %i.ahh, align 2, !tbaa !241
  %i.ahi = getelementptr inbounds nuw i8, ptr %.06631512.us, i64 2
  %i.ahj = load i16, ptr %i.ahi, align 2, !tbaa !241
  %i.ahk = getelementptr inbounds nuw i8, ptr %.06621513.us, i64 10
  store i16 %i.ahj, ptr %i.ahk, align 2, !tbaa !241
  %i.ahl = getelementptr inbounds nuw i8, ptr %.06631512.us, i64 4
  %i.ahm = load i16, ptr %i.ahl, align 2, !tbaa !241
  %i.ahn = getelementptr inbounds nuw i8, ptr %.06621513.us, i64 12
  store i16 %i.ahm, ptr %i.ahn, align 2, !tbaa !241
  %i.aho = getelementptr inbounds nuw i8, ptr %.06631512.us, i64 6
  %i.ahp = load i16, ptr %i.aho, align 2, !tbaa !241
  %i.ahq = getelementptr inbounds nuw i8, ptr %.06621513.us, i64 14
  store i16 %i.ahp, ptr %i.ahq, align 2, !tbaa !241
  %i.ahr = getelementptr inbounds nuw i8, ptr %.06641511.us, i64 8
  %i.ahs = getelementptr inbounds nuw i8, ptr %.06631512.us, i64 8
  %i.aht = getelementptr inbounds nuw i8, ptr %.06621513.us, i64 16
  %i.ahu = add nuw nsw i32 %.06611514.us, 1       ; 2 uses
  %exitcond1638.not = icmp eq i32 %i.ahu, %i.agc
  br i1 %exitcond1638.not, label %._crit_edge1516.us, label %bb.bx, !llvm.loop !212

._crit_edge1516.us:                               ; preds = %bb.bx
  %indvars.iv.next1642 = add nsw i64 %indvars.iv1641, 2 ; 2 uses
  %indvars.iv.next1640 = add nuw nsw i64 %indvars.iv1639, 1 ; 2 uses
  %exitcond1647.not = icmp eq i64 %indvars.iv.next1640, %wide.trip.count1646
  br i1 %exitcond1647.not, label %.loopexit.loopexit, label %.noexc1080.us, !llvm.loop !213

.loopexit.loopexit:                               ; preds = %._crit_edge1516.us
  %i.ahv = trunc nsw i64 %indvars.iv.next1642 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bv
  %.2669 = phi i32 [ %.06671580, %bb.bv ], [ %i.ahv, %.loopexit.loopexit ] ; 4 uses
  br i1 %i.afo, label %bb.by, label %.thread1414

bb.by:                                            ; preds = %.loopexit
  %i.ahw = load i32, ptr %i.afs, align 8, !tbaa !27 ; 2 uses
  %i.ahx = icmp eq i32 %i.ahw, 8
  br i1 %i.ahx, label %bb.bz, label %.thread1411

bb.bz:                                            ; preds = %bb.by
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.afr, i64 44
  %i.ahz = load i32, ptr %i.ahy, align 4, !tbaa !43
  %i.aia = getelementptr inbounds nuw i8, ptr %i.afr, i64 48
  %i.aib = load i32, ptr %i.aia, align 8, !tbaa !52
  %i.aic = mul i32 %i.aib, %i.ahz
  %i.aid = getelementptr inbounds nuw i8, ptr %i.afr, i64 52
  %i.aie = load i32, ptr %i.aid, align 4, !tbaa !58
  %i.aif = mul i32 %i.aic, %i.aie                 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.afr, i64 56
  %i.aih = load i32, ptr %i.aig, align 8, !tbaa !50 ; 2 uses
  %i.aii = icmp sgt i32 %i.aih, 0
  br i1 %i.aii, label %.noexc1074.lr.ph, label %.thread1414

.noexc1074.lr.ph:                                 ; preds = %bb.bz
  %i.aij = load ptr, ptr %5, align 16, !tbaa !19, !noalias !251 ; 8 uses
  %i.aik = load i64, ptr %i.aes, align 16, !tbaa !20, !noalias !251
  %i.ail = load i64, ptr %i.aeh, align 16, !tbaa !25, !noalias !251
  %factor.op.mul1542 = mul i64 %i.aik, %i.ail     ; 8 uses
  %i.aim = load ptr, ptr %i.afr, align 8, !tbaa !19, !noalias !252
  %i.ain = getelementptr inbounds nuw i8, ptr %i.afr, i64 64
  %i.aio = load i64, ptr %i.ain, align 8, !tbaa !20, !noalias !252
  %i.aip = getelementptr inbounds nuw i8, ptr %i.afr, i64 16
  %i.aiq = load i64, ptr %i.aip, align 8, !tbaa !25, !noalias !252
  %factor.op.mul1557 = mul i64 %i.aio, %i.aiq
  %i.air = icmp sgt i32 %i.aif, 0
  %i.ais = sext i32 %.2669 to i64
  %wide.trip.count1656 = zext nneg i32 %i.aih to i64
  br label %.noexc1074

.noexc1074:                                       ; preds = %.noexc1074.lr.ph, %._crit_edge1538
  %indvars.iv1651 = phi i64 [ %i.ais, %.noexc1074.lr.ph ], [ %indvars.iv.next1652, %._crit_edge1538 ] ; 9 uses
  %indvars.iv1649 = phi i64 [ 0, %.noexc1074.lr.ph ], [ %indvars.iv.next1650, %._crit_edge1538 ] ; 2 uses
  br i1 %i.air, label %.lr.ph1537.preheader, label %._crit_edge1538

.lr.ph1537.preheader:                             ; preds = %.noexc1074
  %.reass1558 = mul i64 %factor.op.mul1557, %indvars.iv1649
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aim, i64 %.reass1558
  %i.aiu = add nsw i64 %indvars.iv1651, 7
  %.reass1556 = mul i64 %factor.op.mul1542, %i.aiu
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aij, i64 %.reass1556
  %i.aiw = add nsw i64 %indvars.iv1651, 6
  %.reass1554 = mul i64 %factor.op.mul1542, %i.aiw
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aij, i64 %.reass1554
  %i.aiy = add nsw i64 %indvars.iv1651, 5
  %.reass1552 = mul i64 %factor.op.mul1542, %i.aiy
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aij, i64 %.reass1552
  %i.aja = add nsw i64 %indvars.iv1651, 4
  %.reass1550 = mul i64 %factor.op.mul1542, %i.aja
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aij, i64 %.reass1550
  %i.ajc = add nsw i64 %indvars.iv1651, 3
  %.reass1548 = mul i64 %factor.op.mul1542, %i.ajc
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aij, i64 %.reass1548
  %i.aje = add nsw i64 %indvars.iv1651, 2
  %.reass1546 = mul i64 %factor.op.mul1542, %i.aje
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aij, i64 %.reass1546
  %i.ajg = add nsw i64 %indvars.iv1651, 1
  %.reass1544 = mul i64 %factor.op.mul1542, %i.ajg
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aij, i64 %.reass1544
  %.reass = mul i64 %factor.op.mul1542, %indvars.iv1651
  %i.aji = getelementptr inbounds nuw i8, ptr %i.aij, i64 %.reass
  br label %.lr.ph1537

._crit_edge1538:                                  ; preds = %.lr.ph1537, %.noexc1074
  %indvars.iv.next1652 = add nsw i64 %indvars.iv1651, 8 ; 2 uses
  %indvars.iv.next1650 = add nuw nsw i64 %indvars.iv1649, 1 ; 2 uses
  %exitcond1657.not = icmp eq i64 %indvars.iv.next1650, %wide.trip.count1656
  br i1 %exitcond1657.not, label %thread-pre-split.loopexit, label %.noexc1074, !llvm.loop !218

.lr.ph1537:                                       ; preds = %.lr.ph1537.preheader, %.lr.ph1537
  %.06501536 = phi i32 [ %i.akh, %.lr.ph1537 ], [ 0, %.lr.ph1537.preheader ]
  %.06511535 = phi ptr [ %i.akg, %.lr.ph1537 ], [ %i.ait, %.lr.ph1537.preheader ] ; 9 uses
  %.06521534 = phi ptr [ %i.akd, %.lr.ph1537 ], [ %i.aiv, %.lr.ph1537.preheader ] ; 2 uses
  %.06531533 = phi ptr [ %i.aka, %.lr.ph1537 ], [ %i.aix, %.lr.ph1537.preheader ] ; 2 uses
  %.06541532 = phi ptr [ %i.ajx, %.lr.ph1537 ], [ %i.aiz, %.lr.ph1537.preheader ] ; 2 uses
  %.06551531 = phi ptr [ %i.aju, %.lr.ph1537 ], [ %i.ajb, %.lr.ph1537.preheader ] ; 2 uses
  %.06561530 = phi ptr [ %i.ajr, %.lr.ph1537 ], [ %i.ajd, %.lr.ph1537.preheader ] ; 2 uses
  %.06571529 = phi ptr [ %i.ajo, %.lr.ph1537 ], [ %i.ajf, %.lr.ph1537.preheader ] ; 2 uses
  %.06581528 = phi ptr [ %i.ajl, %.lr.ph1537 ], [ %i.ajh, %.lr.ph1537.preheader ] ; 2 uses
  %.06591527 = phi ptr [ %i.ajj, %.lr.ph1537 ], [ %i.aji, %.lr.ph1537.preheader ] ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %.06591527, i64 2
  %i.ajk = load i16, ptr %.06591527, align 2, !tbaa !241
  store i16 %i.ajk, ptr %.06511535, align 2, !tbaa !241
  %i.ajl = getelementptr inbounds nuw i8, ptr %.06581528, i64 2
  %i.ajm = load i16, ptr %.06581528, align 2, !tbaa !241
  %i.ajn = getelementptr inbounds nuw i8, ptr %.06511535, i64 2
  store i16 %i.ajm, ptr %i.ajn, align 2, !tbaa !241
  %i.ajo = getelementptr inbounds nuw i8, ptr %.06571529, i64 2
  %i.ajp = load i16, ptr %.06571529, align 2, !tbaa !241
  %i.ajq = getelementptr inbounds nuw i8, ptr %.06511535, i64 4
  store i16 %i.ajp, ptr %i.ajq, align 2, !tbaa !241
  %i.ajr = getelementptr inbounds nuw i8, ptr %.06561530, i64 2
  %i.ajs = load i16, ptr %.06561530, align 2, !tbaa !241
  %i.ajt = getelementptr inbounds nuw i8, ptr %.06511535, i64 6
  store i16 %i.ajs, ptr %i.ajt, align 2, !tbaa !241
  %i.aju = getelementptr inbounds nuw i8, ptr %.06551531, i64 2
  %i.ajv = load i16, ptr %.06551531, align 2, !tbaa !241
  %i.ajw = getelementptr inbounds nuw i8, ptr %.06511535, i64 8
  store i16 %i.ajv, ptr %i.ajw, align 2, !tbaa !241
  %i.ajx = getelementptr inbounds nuw i8, ptr %.06541532, i64 2
  %i.ajy = load i16, ptr %.06541532, align 2, !tbaa !241
  %i.ajz = getelementptr inbounds nuw i8, ptr %.06511535, i64 10
  store i16 %i.ajy, ptr %i.ajz, align 2, !tbaa !241
  %i.aka = getelementptr inbounds nuw i8, ptr %.06531533, i64 2
  %i.akb = load i16, ptr %.06531533, align 2, !tbaa !241
  %i.akc = getelementptr inbounds nuw i8, ptr %.06511535, i64 12
  store i16 %i.akb, ptr %i.akc, align 2, !tbaa !241
  %i.akd = getelementptr inbounds nuw i8, ptr %.06521534, i64 2
  %i.ake = load i16, ptr %.06521534, align 2, !tbaa !241
  %i.akf = getelementptr inbounds nuw i8, ptr %.06511535, i64 14
  store i16 %i.ake, ptr %i.akf, align 2, !tbaa !241
  %i.akg = getelementptr inbounds nuw i8, ptr %.06511535, i64 16
  %i.akh = add nuw nsw i32 %.06501536, 1          ; 2 uses
  %exitcond1648.not = icmp eq i32 %i.akh, %i.aif
  br i1 %exitcond1648.not, label %._crit_edge1538, label %.lr.ph1537, !llvm.loop !219

thread-pre-split.loopexit:                        ; preds = %._crit_edge1538
  %i.aki = trunc nsw i64 %indvars.iv.next1652 to i32
  %.pr.pre = load i32, ptr %i.afs, align 8, !tbaa !27
  br label %.thread1411

.thread1411:                                      ; preds = %thread-pre-split.loopexit, %bb.by
  %i.akj = phi i32 [ %i.ahw, %bb.by ], [ %.pr.pre, %thread-pre-split.loopexit ] ; 2 uses
  %.46711413 = phi i32 [ %.2669, %bb.by ], [ %i.aki, %thread-pre-split.loopexit ] ; 3 uses
  %i.akk = icmp eq i32 %i.akj, 4
  br i1 %i.akk, label %bb.ca, label %.thread1414

bb.ca:                                            ; preds = %.thread1411
  %i.akl = getelementptr inbounds nuw i8, ptr %i.afr, i64 44
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !43
  %i.akn = getelementptr inbounds nuw i8, ptr %i.afr, i64 48
  %i.ako = load i32, ptr %i.akn, align 8, !tbaa !52
  %i.akp = mul i32 %i.ako, %i.akm
  %i.akq = getelementptr inbounds nuw i8, ptr %i.afr, i64 52
  %i.akr = load i32, ptr %i.akq, align 4, !tbaa !58
  %i.aks = mul i32 %i.akp, %i.akr                 ; 8 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.afr, i64 56
  %i.aku = load i32, ptr %i.akt, align 8, !tbaa !50 ; 2 uses
  %i.akv = icmp sgt i32 %i.aku, 0
  br i1 %i.akv, label %.noexc1056.lr.ph, label %.thread1414

.noexc1056.lr.ph:                                 ; preds = %bb.ca
  %i.akw = load ptr, ptr %5, align 16, !tbaa !19, !noalias !253 ; 12 uses
  %i.akx = load i64, ptr %i.aes, align 16, !tbaa !20, !noalias !253 ; 6 uses
  %i.aky = load i64, ptr %i.aeh, align 16, !tbaa !25, !noalias !253 ; 6 uses
  %factor.op.mul1570 = mul i64 %i.akx, %i.aky     ; 4 uses
  %i.akz = load ptr, ptr %i.afr, align 8, !tbaa !19, !noalias !254 ; 3 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %i.afr, i64 64
  %i.alb = load i64, ptr %i.ala, align 8, !tbaa !20, !noalias !254 ; 3 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.afr, i64 16
  %i.ald = load i64, ptr %i.alc, align 8, !tbaa !25, !noalias !254 ; 3 uses
  %factor.op.mul1578 = mul i64 %i.alb, %i.ald
  %i.ale = icmp sgt i32 %i.aks, 0
  %i.alf = sext i32 %.46711413 to i64             ; 9 uses
  %wide.trip.count1666 = zext nneg i32 %i.aku to i64 ; 3 uses
  %scevgep1935 = getelementptr i8, ptr %i.akz, i64 8
  %6 = mul i64 %i.ald, %i.alb
  %i.alg = add nsw i64 %wide.trip.count1666, -1
  %i.alh = mul i64 %6, %i.alg
  %i.ali = add i32 %i.aks, -1
  %i.alj = zext i32 %i.ali to i64                 ; 2 uses
  %i.alk = shl nuw nsw i64 %i.alj, 3
  %i.all = getelementptr i8, ptr %scevgep1935, i64 %i.alh
  %scevgep1936 = getelementptr i8, ptr %i.all, i64 %i.alk
  %i.alm = mul i64 %i.ald, %i.alb
  %i.aln = mul i64 %i.aky, %i.akx                 ; 2 uses
  %i.alo = add nsw i64 %i.alf, 3
  %i.alp = mul i64 %i.aln, %i.alo
  %scevgep1937 = getelementptr i8, ptr %i.akw, i64 %i.alp
  %scevgep1938 = getelementptr i8, ptr %i.akw, i64 2
  %i.alq = shl nuw nsw i64 %wide.trip.count1666, 2 ; 4 uses
  %i.alr = add nsw i64 %i.alq, -1
  %i.als = add nsw i64 %i.alr, %i.alf
  %i.alt = mul i64 %i.aln, %i.als
  %i.alu = shl nuw nsw i64 %i.alj, 1              ; 4 uses
  %i.alv = getelementptr i8, ptr %scevgep1938, i64 %i.alt
  %scevgep1939 = getelementptr i8, ptr %i.alv, i64 %i.alu
  %i.alw = shl i64 %i.aky, 2
  %i.alx = mul i64 %i.alw, %i.akx
  %i.aly = mul i64 %i.aky, %i.akx                 ; 2 uses
  %i.alz = add nsw i64 %i.alf, 2
  %i.ama = mul i64 %i.aly, %i.alz
  %scevgep1940 = getelementptr i8, ptr %i.akw, i64 %i.ama
  %scevgep1941 = getelementptr i8, ptr %i.akw, i64 2
  %i.amb = add nsw i64 %i.alq, -2
  %i.amc = add nsw i64 %i.amb, %i.alf
  %i.amd = mul i64 %i.aly, %i.amc
  %i.ame = getelementptr i8, ptr %scevgep1941, i64 %i.amd
  %scevgep1942 = getelementptr i8, ptr %i.ame, i64 %i.alu
  %i.amf = mul i64 %i.aky, %i.akx                 ; 2 uses
  %i.amg = add nsw i64 %i.alf, 1
  %i.amh = mul i64 %i.amf, %i.amg
  %scevgep1943 = getelementptr i8, ptr %i.akw, i64 %i.amh
  %scevgep1944 = getelementptr i8, ptr %i.akw, i64 2
  %i.ami = add nsw i64 %i.alq, -3
  %i.amj = add nsw i64 %i.ami, %i.alf
  %i.amk = mul i64 %i.amf, %i.amj
  %i.aml = getelementptr i8, ptr %scevgep1944, i64 %i.amk
  %scevgep1945 = getelementptr i8, ptr %i.aml, i64 %i.alu
  %i.amm = mul i64 %i.aky, %i.akx                 ; 2 uses
  %i.amn = mul i64 %i.amm, %i.alf
  %scevgep1946 = getelementptr i8, ptr %i.akw, i64 %i.amn
  %scevgep1947 = getelementptr i8, ptr %i.akw, i64 2
  %i.amo = add nsw i64 %i.alq, -4
  %i.amp = add nsw i64 %i.amo, %i.alf
  %i.amq = mul i64 %i.amm, %i.amp
  %i.amr = getelementptr i8, ptr %scevgep1947, i64 %i.amq
  %scevgep1948 = getelementptr i8, ptr %i.amr, i64 %i.alu
  %i.ams = zext i32 %i.aks to i64                 ; 5 uses
  %i.amt = insertelement <4 x i64> poison, i64 %i.alx, i64 0
  %i.amu = insertelement <4 x i64> poison, i64 %i.alm, i64 0
  %i.amv = insertelement <4 x ptr> poison, ptr %i.akz, i64 0
  %i.amw = shufflevector <4 x ptr> %i.amv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.amx = insertelement <4 x ptr> poison, ptr %scevgep1939, i64 0
  %i.amy = insertelement <4 x ptr> %i.amx, ptr %scevgep1942, i64 1
  %i.amz = insertelement <4 x ptr> %i.amy, ptr %scevgep1945, i64 2
  %i.ana = insertelement <4 x ptr> %i.amz, ptr %scevgep1948, i64 3
  %i.anb = insertelement <4 x ptr> poison, ptr %scevgep1937, i64 0
  %i.anc = insertelement <4 x ptr> %i.anb, ptr %scevgep1940, i64 1
  %i.and = insertelement <4 x ptr> %i.anc, ptr %scevgep1943, i64 2
  %i.ane = insertelement <4 x ptr> %i.and, ptr %scevgep1946, i64 3
  %i.anf = insertelement <4 x ptr> poison, ptr %scevgep1936, i64 0
  %i.ang = shufflevector <4 x ptr> %i.anf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check1972 = icmp ult i32 %i.aks, 8
  %i.anh = icmp ult <4 x ptr> %i.amw, %i.ana
  %i.ani = icmp ult <4 x ptr> %i.ane, %i.ang
  %i.anj = or <4 x i64> %i.amt, %i.amu
  %i.ank = and <4 x i1> %i.anh, %i.ani
  %i.anl = icmp slt <4 x i64> %i.anj, zeroinitializer
  %i.anm = shufflevector <4 x i1> %i.anl, <4 x i1> poison, <4 x i32> zeroinitializer
  %rdx.op = or <4 x i1> %i.anm, %i.ank
  %i.ann = bitcast <4 x i1> %rdx.op to i4
  %.not2027 = icmp eq i4 %i.ann, 0
  %min.iters.check1974 = icmp ult i32 %i.aks, 16
  %i.ano = and i64 %i.ams, 8
  %n.vec1976 = and i64 %i.ams, 2147483632         ; 6 uses
  %i.anp = trunc nuw nsw i64 %n.vec1976 to i32
  %i.anq = shl nuw nsw i64 %n.vec1976, 3
  %i.anr = shl nuw nsw i64 %n.vec1976, 1          ; 4 uses
  %cmp.n1991 = icmp eq i64 %n.vec1976, %i.ams
  %min.epilog.iters.check2002.not.not = icmp eq i64 %i.ano, 0
  %n.vec2004 = and i64 %i.ams, 2147483640         ; 5 uses
  %i.ans = trunc nuw nsw i64 %n.vec2004 to i32
  %i.ant = shl nuw nsw i64 %n.vec2004, 3
  %i.anu = shl nuw nsw i64 %n.vec2004, 1          ; 4 uses
  %cmp.n2019 = icmp eq i64 %n.vec2004, %i.ams
  br label %.noexc1056

.noexc1056:                                       ; preds = %.noexc1056.lr.ph, %._crit_edge1566
  %indvars.iv1661 = phi i64 [ %i.alf, %.noexc1056.lr.ph ], [ %indvars.iv.next1662, %._crit_edge1566 ] ; 5 uses
  %indvars.iv1659 = phi i64 [ 0, %.noexc1056.lr.ph ], [ %indvars.iv.next1660, %._crit_edge1566 ] ; 2 uses
  br i1 %i.ale, label %iter.check1999, label %._crit_edge1566

iter.check1999:                                   ; preds = %.noexc1056
  %.reass1579 = mul i64 %factor.op.mul1578, %indvars.iv1659
  %i.anv = getelementptr inbounds nuw i8, ptr %i.akz, i64 %.reass1579 ; 6 uses
  %i.anw = add nsw i64 %indvars.iv1661, 3
  %.reass1577 = mul i64 %factor.op.mul1570, %i.anw
  %i.anx = getelementptr inbounds nuw i8, ptr %i.akw, i64 %.reass1577 ; 6 uses
  %i.any = add nsw i64 %indvars.iv1661, 2
  %.reass1575 = mul i64 %factor.op.mul1570, %i.any
  %i.anz = getelementptr inbounds nuw i8, ptr %i.akw, i64 %.reass1575 ; 6 uses
  %i.aoa = add nsw i64 %indvars.iv1661, 1
  %.reass1573 = mul i64 %factor.op.mul1570, %i.aoa
  %i.aob = getelementptr inbounds nuw i8, ptr %i.akw, i64 %.reass1573 ; 6 uses
  %.reass1571 = mul i64 %factor.op.mul1570, %indvars.iv1661
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.akw, i64 %.reass1571 ; 6 uses
  br i1 %min.iters.check1972, label %.lr.ph1565.preheader, label %vector.memcheck1934

vector.memcheck1934:                              ; preds = %iter.check1999
  br i1 %.not2027, label %vector.main.loop.iter.check1973, label %.lr.ph1565.preheader

vector.main.loop.iter.check1973:                  ; preds = %vector.memcheck1934
  br i1 %min.iters.check1974, label %vec.epilog.ph2003, label %vector.ph1975

vector.ph1975:                                    ; preds = %vector.main.loop.iter.check1973
  %i.aod = getelementptr i8, ptr %i.anv, i64 %i.anq
  %i.aoe = getelementptr i8, ptr %i.anx, i64 %i.anr
  %i.aof = getelementptr i8, ptr %i.anz, i64 %i.anr
  %i.aog = getelementptr i8, ptr %i.aob, i64 %i.anr
  %i.aoh = getelementptr i8, ptr %i.aoc, i64 %i.anr
  br label %vector.body1977

vector.body1977:                                  ; preds = %vector.ph1975, %vector.body1977
  %index1978 = phi i64 [ 0, %vector.ph1975 ], [ %index.next1989, %vector.body1977 ] ; 3 uses
  %i.aoi = shl i64 %index1978, 3
  %next.gep1979 = getelementptr i8, ptr %i.anv, i64 %i.aoi
  %i.aoj = shl i64 %index1978, 1                  ; 4 uses
  %next.gep1980 = getelementptr i8, ptr %i.anx, i64 %i.aoj
  %next.gep1981 = getelementptr i8, ptr %i.anz, i64 %i.aoj
  %next.gep1982 = getelementptr i8, ptr %i.aob, i64 %i.aoj
  %next.gep1983 = getelementptr i8, ptr %i.aoc, i64 %i.aoj
  %wide.load1984 = load <16 x i16>, ptr %next.gep1983, align 2, !tbaa !241, !alias.scope !255
  %wide.load1985 = load <16 x i16>, ptr %next.gep1982, align 2, !tbaa !241, !alias.scope !256
  %wide.load1986 = load <16 x i16>, ptr %next.gep1981, align 2, !tbaa !241, !alias.scope !257
  %wide.load1987 = load <16 x i16>, ptr %next.gep1980, align 2, !tbaa !241, !alias.scope !258
  %i.aok = shufflevector <16 x i16> %wide.load1984, <16 x i16> %wide.load1985, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aol = shufflevector <16 x i16> %wide.load1986, <16 x i16> %wide.load1987, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec1988 = shufflevector <32 x i16> %i.aok, <32 x i16> %i.aol, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i16> %interleaved.vec1988, ptr %next.gep1979, align 2, !tbaa !241, !alias.scope !259, !noalias !260
  %index.next1989 = add nuw i64 %index1978, 16    ; 2 uses
  %i.aom = icmp eq i64 %index.next1989, %n.vec1976
  br i1 %i.aom, label %middle.block1990, label %vector.body1977, !llvm.loop !230

middle.block1990:                                 ; preds = %vector.body1977
  br i1 %cmp.n1991, label %._crit_edge1566, label %vec.epilog.iter.check2001

vec.epilog.iter.check2001:                        ; preds = %middle.block1990
  br i1 %min.epilog.iters.check2002.not.not, label %.lr.ph1565.preheader, label %vec.epilog.ph2003, !prof !248

vec.epilog.ph2003:                                ; preds = %vector.main.loop.iter.check1973, %vec.epilog.iter.check2001
  %vec.epilog.resume.val1992 = phi i64 [ %n.vec1976, %vec.epilog.iter.check2001 ], [ 0, %vector.main.loop.iter.check1973 ]
  %i.aon = getelementptr i8, ptr %i.anv, i64 %i.ant
  %i.aoo = getelementptr i8, ptr %i.anx, i64 %i.anu
  %i.aop = getelementptr i8, ptr %i.anz, i64 %i.anu
  %i.aoq = getelementptr i8, ptr %i.aob, i64 %i.anu
  %i.aor = getelementptr i8, ptr %i.aoc, i64 %i.anu
  br label %vec.epilog.vector.body2005

vec.epilog.vector.body2005:                       ; preds = %vec.epilog.vector.body2005, %vec.epilog.ph2003
  %index2006 = phi i64 [ %vec.epilog.resume.val1992, %vec.epilog.ph2003 ], [ %index.next2017, %vec.epilog.vector.body2005 ] ; 3 uses
  %i.aos = shl i64 %index2006, 3
  %next.gep2007 = getelementptr i8, ptr %i.anv, i64 %i.aos
  %i.aot = shl i64 %index2006, 1                  ; 4 uses
  %next.gep2008 = getelementptr i8, ptr %i.anx, i64 %i.aot
  %next.gep2009 = getelementptr i8, ptr %i.anz, i64 %i.aot
  %next.gep2010 = getelementptr i8, ptr %i.aob, i64 %i.aot
  %next.gep2011 = getelementptr i8, ptr %i.aoc, i64 %i.aot
  %wide.load2012 = load <8 x i16>, ptr %next.gep2011, align 2, !tbaa !241, !alias.scope !255
  %wide.load2013 = load <8 x i16>, ptr %next.gep2010, align 2, !tbaa !241, !alias.scope !256
  %wide.load2014 = load <8 x i16>, ptr %next.gep2009, align 2, !tbaa !241, !alias.scope !257
  %wide.load2015 = load <8 x i16>, ptr %next.gep2008, align 2, !tbaa !241, !alias.scope !258
  %i.aou = shufflevector <8 x i16> %wide.load2012, <8 x i16> %wide.load2013, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aov = shufflevector <8 x i16> %wide.load2014, <8 x i16> %wide.load2015, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec2016 = shufflevector <16 x i16> %i.aou, <16 x i16> %i.aov, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec2016, ptr %next.gep2007, align 2, !tbaa !241, !alias.scope !259, !noalias !260
  %index.next2017 = add nuw i64 %index2006, 8     ; 2 uses
  %i.aow = icmp eq i64 %index.next2017, %n.vec2004
  br i1 %i.aow, label %vec.epilog.middle.block2018, label %vec.epilog.vector.body2005, !llvm.loop !231

vec.epilog.middle.block2018:                      ; preds = %vec.epilog.vector.body2005
  br i1 %cmp.n2019, label %._crit_edge1566, label %.lr.ph1565.preheader

.lr.ph1565.preheader:                             ; preds = %iter.check1999, %vector.memcheck1934, %vec.epilog.iter.check2001, %vec.epilog.middle.block2018
  %.06431564.ph = phi i32 [ 0, %iter.check1999 ], [ 0, %vector.memcheck1934 ], [ %i.anp, %vec.epilog.iter.check2001 ], [ %i.ans, %vec.epilog.middle.block2018 ] ; 4 uses
  %.06441563.ph = phi ptr [ %i.anv, %iter.check1999 ], [ %i.anv, %vector.memcheck1934 ], [ %i.aod, %vec.epilog.iter.check2001 ], [ %i.aon, %vec.epilog.middle.block2018 ] ; 6 uses
  %.06451562.ph = phi ptr [ %i.anx, %iter.check1999 ], [ %i.anx, %vector.memcheck1934 ], [ %i.aoe, %vec.epilog.iter.check2001 ], [ %i.aoo, %vec.epilog.middle.block2018 ] ; 3 uses
  %.06461561.ph = phi ptr [ %i.anz, %iter.check1999 ], [ %i.anz, %vector.memcheck1934 ], [ %i.aof, %vec.epilog.iter.check2001 ], [ %i.aop, %vec.epilog.middle.block2018 ] ; 3 uses
  %.06471560.ph = phi ptr [ %i.aob, %iter.check1999 ], [ %i.aob, %vector.memcheck1934 ], [ %i.aog, %vec.epilog.iter.check2001 ], [ %i.aoq, %vec.epilog.middle.block2018 ] ; 3 uses
  %.06481559.ph = phi ptr [ %i.aoc, %iter.check1999 ], [ %i.aoc, %vector.memcheck1934 ], [ %i.aoh, %vec.epilog.iter.check2001 ], [ %i.aor, %vec.epilog.middle.block2018 ] ; 3 uses
  %i.aox = sub i32 %i.aks, %.06431564.ph
  %.neg2050 = add i32 %.06431564.ph, 1
  %xtraiter2048 = and i32 %i.aox, 1
  %lcmp.mod2049.not = icmp eq i32 %xtraiter2048, 0
  br i1 %lcmp.mod2049.not, label %.lr.ph1565.prol.loopexit, label %.lr.ph1565.prol

.lr.ph1565.prol:                                  ; preds = %.lr.ph1565.preheader
  %i.aoy = getelementptr inbounds nuw i8, ptr %.06481559.ph, i64 2
  %i.aoz = load i16, ptr %.06481559.ph, align 2, !tbaa !241
  store i16 %i.aoz, ptr %.06441563.ph, align 2, !tbaa !241
  %i.apa = getelementptr inbounds nuw i8, ptr %.06471560.ph, i64 2
  %i.apb = load i16, ptr %.06471560.ph, align 2, !tbaa !241
  %i.apc = getelementptr inbounds nuw i8, ptr %.06441563.ph, i64 2
  store i16 %i.apb, ptr %i.apc, align 2, !tbaa !241
  %i.apd = getelementptr inbounds nuw i8, ptr %.06461561.ph, i64 2
  %i.ape = load i16, ptr %.06461561.ph, align 2, !tbaa !241
  %i.apf = getelementptr inbounds nuw i8, ptr %.06441563.ph, i64 4
  store i16 %i.ape, ptr %i.apf, align 2, !tbaa !241
  %i.apg = getelementptr inbounds nuw i8, ptr %.06451562.ph, i64 2
  %i.aph = load i16, ptr %.06451562.ph, align 2, !tbaa !241
  %i.api = getelementptr inbounds nuw i8, ptr %.06441563.ph, i64 6
  store i16 %i.aph, ptr %i.api, align 2, !tbaa !241
  %i.apj = getelementptr inbounds nuw i8, ptr %.06441563.ph, i64 8
  %i.apk = add nuw nsw i32 %.06431564.ph, 1
  br label %.lr.ph1565.prol.loopexit

.lr.ph1565.prol.loopexit:                         ; preds = %.lr.ph1565.prol, %.lr.ph1565.preheader
  %.06431564.unr = phi i32 [ %.06431564.ph, %.lr.ph1565.preheader ], [ %i.apk, %.lr.ph1565.prol ]
  %.06441563.unr = phi ptr [ %.06441563.ph, %.lr.ph1565.preheader ], [ %i.apj, %.lr.ph1565.prol ]
  %.06451562.unr = phi ptr [ %.06451562.ph, %.lr.ph1565.preheader ], [ %i.apg, %.lr.ph1565.prol ]
  %.06461561.unr = phi ptr [ %.06461561.ph, %.lr.ph1565.preheader ], [ %i.apd, %.lr.ph1565.prol ]
  %.06471560.unr = phi ptr [ %.06471560.ph, %.lr.ph1565.preheader ], [ %i.apa, %.lr.ph1565.prol ]
  %.06481559.unr = phi ptr [ %.06481559.ph, %.lr.ph1565.preheader ], [ %i.aoy, %.lr.ph1565.prol ]
  %i.apl = icmp eq i32 %i.aks, %.neg2050
  br i1 %i.apl, label %._crit_edge1566, label %.lr.ph1565

._crit_edge1566:                                  ; preds = %.lr.ph1565.prol.loopexit, %.lr.ph1565, %middle.block1990, %vec.epilog.middle.block2018, %.noexc1056
  %indvars.iv.next1662 = add nsw i64 %indvars.iv1661, 4 ; 2 uses
  %indvars.iv.next1660 = add nuw nsw i64 %indvars.iv1659, 1 ; 2 uses
  %exitcond1667.not = icmp eq i64 %indvars.iv.next1660, %wide.trip.count1666
  br i1 %exitcond1667.not, label %.thread1414.loopexit, label %.noexc1056, !llvm.loop !232

.lr.ph1565:                                       ; preds = %.lr.ph1565.prol.loopexit, %.lr.ph1565
  %.06431564 = phi i32 [ %i.aqk, %.lr.ph1565 ], [ %.06431564.unr, %.lr.ph1565.prol.loopexit ]
  %.06441563 = phi ptr [ %i.aqj, %.lr.ph1565 ], [ %.06441563.unr, %.lr.ph1565.prol.loopexit ] ; 9 uses
  %.06451562 = phi ptr [ %i.aqg, %.lr.ph1565 ], [ %.06451562.unr, %.lr.ph1565.prol.loopexit ] ; 3 uses
  %.06461561 = phi ptr [ %i.aqd, %.lr.ph1565 ], [ %.06461561.unr, %.lr.ph1565.prol.loopexit ] ; 3 uses
  %.06471560 = phi ptr [ %i.aqa, %.lr.ph1565 ], [ %.06471560.unr, %.lr.ph1565.prol.loopexit ] ; 3 uses
  %.06481559 = phi ptr [ %i.apy, %.lr.ph1565 ], [ %.06481559.unr, %.lr.ph1565.prol.loopexit ] ; 3 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %.06481559, i64 2
end_hunk_1
