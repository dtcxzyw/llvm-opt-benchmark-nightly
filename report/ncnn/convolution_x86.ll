inline.NumInlined: 399
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZNK4ncnn15Convolution_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE:bb.a
  br i1 %i.ahi, label %.noexc1346.i, label %.preheader2858.i, !llvm.loop !579

.preheader2857.i:                                 ; preds = %._crit_edge3129.i, %.preheader2858.i
  %.11073.lcssa.i = phi i32 [ %.01072.lcssa.i, %.preheader2858.i ], [ %i.arn, %._crit_edge3129.i ] ; 2 uses
  %.11069.lcssa.i = phi ptr [ %.01068.lcssa.i, %.preheader2858.i ], [ %i.arm, %._crit_edge3129.i ]
  %.11066.lcssa.i = phi ptr [ %.01065.lcssa.i, %.preheader2858.i ], [ %i.arl, %._crit_edge3129.i ]
  %i.ahj = icmp slt i32 %.11073.lcssa.i, %i.ph
  br i1 %i.ahj, label %.noexc1306.lr.ph.i, label %._crit_edge3233.i

.noexc1306.lr.ph.i:                               ; preds = %.preheader2857.i
  %i.ahk = sdiv i32 %i.op, 4
  %i.ahl = srem i32 %i.op, 4
  %.lhs.trunc2842.i = trunc nsw i32 %i.ahl to i8
  %i.ahm = sdiv i8 %.lhs.trunc2842.i, 2
  %.sext2843.i = sext i8 %i.ahm to i32
  %i.ahn = add nsw i32 %i.ahk, %.sext2843.i
  %i.aho = load ptr, ptr %i.lp, align 8, !tbaa !18, !noalias !580
  %i.ahp = load i64, ptr %i.no, align 8, !tbaa !20, !noalias !580
  %i.ahq = sext i32 %i.ahn to i64
  %i.ahr = mul i64 %i.ahp, %i.ahq
  %i.ahs = load i64, ptr %i.np, align 8, !tbaa !65, !noalias !580
  %i.aht = mul i64 %i.ahr, %i.ahs
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aho, i64 %i.aht ; 3 uses
  %i.ahv = shl i64 %i.ov, 1
  %i.ahw = mul i64 %i.ov, 3
  %i.ahx = shl i64 %i.ov, 2
  %i.ahy = mul i64 %i.ov, 5
  %i.ahz = mul i64 %i.ov, 6
  %i.aia = mul i64 %i.ov, 7
  %i.aib = load ptr, ptr %8, align 8              ; 3 uses
  %i.aic = load i64, ptr %i.bp, align 8
  %i.aid = load i64, ptr %i.bj, align 8           ; 4 uses
  %factor.op.mul3172.i = mul i64 %i.aid, %i.aic   ; 3 uses
  br label %.noexc1306.i

.noexc1320.i:                                     ; preds = %._crit_edge3129.i, %.noexc1320.lr.ph.i
  %i.aie = phi i32 [ %i.qj, %.noexc1320.lr.ph.i ], [ %i.aro, %._crit_edge3129.i ] ; 2 uses
  %.110663150.i = phi ptr [ %.01065.lcssa.i, %.noexc1320.lr.ph.i ], [ %i.arl, %._crit_edge3129.i ] ; 3 uses
  %.110693149.i = phi ptr [ %.01068.lcssa.i, %.noexc1320.lr.ph.i ], [ %i.arm, %._crit_edge3129.i ] ; 3 uses
  %.110733148.i = phi i32 [ %.01072.lcssa.i, %.noexc1320.lr.ph.i ], [ %i.arn, %._crit_edge3129.i ] ; 3 uses
  %i.aif = sdiv i32 %.110733148.i, %i.oq          ; 3 uses
  %i.aig = sdiv i32 %i.aie, %i.oq                 ; 3 uses
  %i.aih = srem i32 %.110733148.i, %i.oq          ; 3 uses
  %i.aii = srem i32 %i.aie, %i.oq                 ; 3 uses
  %i.aij = load i32, ptr %i.d, align 4, !tbaa !67 ; 8 uses
  %i.aik = icmp sgt i32 %i.aij, 7
  br i1 %i.aik, label %.noexc1318.lr.ph.i, label %._crit_edge3052.i

.noexc1318.lr.ph.i:                               ; preds = %.noexc1320.i
  %i.ail = load i32, ptr %i.c, align 4, !tbaa !67 ; 3 uses
  %i.aim = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !583
  %i.ain = sext i32 %i.aim to i64
  %i.aio = load i32, ptr %i.b, align 4, !tbaa !67 ; 2 uses
  %i.aip = mul nsw i32 %i.aio, %i.aif
  %i.aiq = sext i32 %i.aip to i64
  %i.air = mul i64 %i.re, %i.ain                  ; 2 uses
  %i.ais = mul i64 %i.air, %i.aiq
  %invariant.gep3061.i = getelementptr i8, ptr %i.rc, i64 %i.ais
  %i.ait = load i32, ptr %i.a, align 4, !tbaa !67
  %i.aiu = mul i32 %i.ait, %i.ail                 ; 2 uses
  %i.aiv = mul i32 %i.aiu, %i.aih
  %i.aiw = sext i32 %i.aiv to i64
  %invariant.gep3062.i = getelementptr i8, ptr %invariant.gep3061.i, i64 %i.aiw
  %i.aix = mul nsw i32 %i.aio, %i.aig
  %i.aiy = sext i32 %i.aix to i64
  %i.aiz = mul i64 %i.air, %i.aiy
  %invariant.gep3066.i = getelementptr i8, ptr %i.rc, i64 %i.aiz
  %i.aja = mul i32 %i.aiu, %i.aii
  %i.ajb = sext i32 %i.aja to i64
  %invariant.gep3067.i = getelementptr i8, ptr %invariant.gep3066.i, i64 %i.ajb
  %i.ajc = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.ajd = icmp sgt i32 %i.ajc, 0
  %i.aje = load ptr, ptr %i.g, align 8
  %i.ajf = icmp eq i32 %i.ail, 8
  %i.ajg = add i32 %i.ajc, -1
  %i.ajh = zext i32 %i.ajg to i64
  %i.aji = shl nuw nsw i64 %i.ajh, 4
  %wide.trip.count3674.i = zext nneg i32 %i.ajc to i64
  br i1 %i.ajd, label %.noexc1318.i.us, label %._crit_edge3052.loopexit.i

.noexc1318.i.us:                                  ; preds = %.noexc1318.lr.ph.i, %._crit_edge3040.loopexit.i.us
  %.011223051.i.us = phi ptr [ %scevgep3672.i.us, %._crit_edge3040.loopexit.i.us ], [ %i.qv, %.noexc1318.lr.ph.i ] ; 2 uses
  %.011283050.i.us = phi i32 [ %i.amm, %._crit_edge3040.loopexit.i.us ], [ 0, %.noexc1318.lr.ph.i ] ; 2 uses
  %i.ajj = phi <4 x i32> [ %i.amk, %._crit_edge3040.loopexit.i.us ], [ zeroinitializer, %.noexc1318.lr.ph.i ]
  %i.ajk = phi <4 x i32> [ %i.ami, %._crit_edge3040.loopexit.i.us ], [ zeroinitializer, %.noexc1318.lr.ph.i ]
  %i.ajl = phi <4 x i32> [ %i.amf, %._crit_edge3040.loopexit.i.us ], [ zeroinitializer, %.noexc1318.lr.ph.i ]
  %i.ajm = phi <4 x i32> [ %i.amc, %._crit_edge3040.loopexit.i.us ], [ zeroinitializer, %.noexc1318.lr.ph.i ]
  %i.ajn = sdiv i32 %.011283050.i.us, %i.ail
  %i.ajo = sext i32 %i.ajn to i64
  %.reass3060.i.us = mul i64 %factor.op.mul3059.i, %i.ajo ; 2 uses
  %gep3063.i.us = getelementptr i8, ptr %invariant.gep3062.i, i64 %.reass3060.i.us
  %gep3068.i.us = getelementptr i8, ptr %invariant.gep3067.i, i64 %.reass3060.i.us
  br label %.lr.ph3039.i.us

.lr.ph3039.i.us:                                  ; preds = %bb.cc, %.noexc1318.i.us
  %indvars.iv3669.i.us = phi i64 [ 0, %.noexc1318.i.us ], [ %indvars.iv.next3670.i.us, %bb.cc ] ; 2 uses
  %.111233038.i.us = phi ptr [ %.011223051.i.us, %.noexc1318.i.us ], [ %i.aml, %bb.cc ] ; 2 uses
  %.128333036.i.us = phi <4 x i32> [ %i.ajj, %.noexc1318.i.us ], [ %i.amk, %bb.cc ]
  %.128353035.i.us = phi <4 x i32> [ %i.ajk, %.noexc1318.i.us ], [ %i.ami, %bb.cc ]
  %.128373034.i.us = phi <4 x i32> [ %i.ajl, %.noexc1318.i.us ], [ %i.amf, %bb.cc ]
  %.128393033.i.us = phi <4 x i32> [ %i.ajm, %.noexc1318.i.us ], [ %i.amc, %bb.cc ]
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %indvars.iv3669.i.us
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !67
  %i.ajr = sext i32 %i.ajq to i64                 ; 2 uses
  %i.ajs = getelementptr inbounds i8, ptr %gep3063.i.us, i64 %i.ajr ; 9 uses
  %i.ajt = getelementptr inbounds i8, ptr %gep3068.i.us, i64 %i.ajr ; 9 uses
  br i1 %i.ajf, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph3039.i.us
  %i.aju = load i8, ptr %i.ajs, align 1, !tbaa !254
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajs, i64 %i.ov
  %i.ajw = load i8, ptr %i.ajv, align 1, !tbaa !254
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajs, i64 %i.qw
  %i.ajy = load i8, ptr %i.ajx, align 1, !tbaa !254
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajs, i64 %i.qx
  %i.aka = load i8, ptr %i.ajz, align 1, !tbaa !254
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajs, i64 %i.qy
  %i.akc = load i8, ptr %i.akb, align 1, !tbaa !254
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajs, i64 %i.qz
  %i.ake = load i8, ptr %i.akd, align 1, !tbaa !254
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajs, i64 %i.ra
  %i.akg = load i8, ptr %i.akf, align 1, !tbaa !254
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ajs, i64 %i.rb
  %i.aki = load i8, ptr %i.akh, align 1, !tbaa !254
  %i.akj = insertelement <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %i.aju, i64 0
  %i.akk = insertelement <16 x i8> %i.akj, i8 %i.ajw, i64 1
  %i.akl = insertelement <16 x i8> %i.akk, i8 %i.ajy, i64 2
  %i.akm = insertelement <16 x i8> %i.akl, i8 %i.aka, i64 3
  %i.akn = insertelement <16 x i8> %i.akm, i8 %i.akc, i64 4
  %i.ako = insertelement <16 x i8> %i.akn, i8 %i.ake, i64 5
  %i.akp = insertelement <16 x i8> %i.ako, i8 %i.akg, i64 6
  %i.akq = insertelement <16 x i8> %i.akp, i8 %i.aki, i64 7
  %i.akr = load i8, ptr %i.ajt, align 1, !tbaa !254
  %i.aks = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %i.ov
  %i.akt = load i8, ptr %i.aks, align 1, !tbaa !254
  %i.aku = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %i.qw
  %i.akv = load i8, ptr %i.aku, align 1, !tbaa !254
  %i.akw = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %i.qx
  %i.akx = load i8, ptr %i.akw, align 1, !tbaa !254
  %i.aky = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %i.qy
  %i.akz = load i8, ptr %i.aky, align 1, !tbaa !254
  %i.ala = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %i.qz
  %i.alb = load i8, ptr %i.ala, align 1, !tbaa !254
  %i.alc = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %i.ra
  %i.ald = load i8, ptr %i.alc, align 1, !tbaa !254
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %i.rb
  %i.alf = load i8, ptr %i.ale, align 1, !tbaa !254
  %i.alg = insertelement <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %i.akr, i64 0
  %i.alh = insertelement <16 x i8> %i.alg, i8 %i.akt, i64 1
  %i.ali = insertelement <16 x i8> %i.alh, i8 %i.akv, i64 2
  %i.alj = insertelement <16 x i8> %i.ali, i8 %i.akx, i64 3
  %i.alk = insertelement <16 x i8> %i.alj, i8 %i.akz, i64 4
  %i.all = insertelement <16 x i8> %i.alk, i8 %i.alb, i64 5
  %i.alm = insertelement <16 x i8> %i.all, i8 %i.ald, i64 6
  %i.aln = insertelement <16 x i8> %i.alm, i8 %i.alf, i64 7
  br label %bb.cc

bb.cb:                                            ; preds = %.lr.ph3039.i.us
  %i.alo = load i64, ptr %i.ajs, align 1, !tbaa !254
  %i.alp = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.alo, i64 0
  %i.alq = load i64, ptr %i.ajt, align 1, !tbaa !254
  %i.alr = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.alq, i64 0
  %i.als = bitcast <2 x i64> %i.alp to <16 x i8>
  %i.alt = bitcast <2 x i64> %i.alr to <16 x i8>
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.02831.i.us = phi <16 x i8> [ %i.als, %bb.cb ], [ %i.akq, %bb.ca ] ; 2 uses
  %storemerge1224.i.us = phi <16 x i8> [ %i.alt, %bb.cb ], [ %i.aln, %bb.ca ] ; 2 uses
  %.lobit.i1715.i.us = ashr <16 x i8> %.02831.i.us, splat (i8 7)
  %i.alu = shufflevector <16 x i8> %.02831.i.us, <16 x i8> %.lobit.i1715.i.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %.lobit.i1714.i.us = ashr <16 x i8> %storemerge1224.i.us, splat (i8 7)
  %i.alv = shufflevector <16 x i8> %storemerge1224.i.us, <16 x i8> %.lobit.i1714.i.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.alw = load <16 x i8>, ptr %.111233038.i.us, align 16, !tbaa !254 ; 3 uses
  %.lobit.i1713.i.us = ashr <16 x i8> %i.alw, splat (i8 7) ; 2 uses
  %i.alx = shufflevector <16 x i8> %i.alw, <16 x i8> %.lobit.i1713.i.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.aly = shufflevector <16 x i8> %i.alw, <16 x i8> %.lobit.i1713.i.us, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.alz = bitcast <16 x i8> %i.alu to <8 x i16>  ; 2 uses
  %i.ama = bitcast <16 x i8> %i.alx to <8 x i16>  ; 2 uses
  %i.amb = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.alz, <8 x i16> %i.ama)
  %i.amc = add <4 x i32> %i.amb, %.128393033.i.us ; 3 uses
  %i.amd = bitcast <16 x i8> %i.aly to <8 x i16>  ; 2 uses
  %i.ame = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.alz, <8 x i16> %i.amd)
  %i.amf = add <4 x i32> %i.ame, %.128373034.i.us ; 3 uses
  %i.amg = bitcast <16 x i8> %i.alv to <8 x i16>  ; 2 uses
  %i.amh = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.amg, <8 x i16> %i.ama)
  %i.ami = add <4 x i32> %i.amh, %.128353035.i.us ; 3 uses
  %i.amj = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.amg, <8 x i16> %i.amd)
  %i.amk = add <4 x i32> %i.amj, %.128333036.i.us ; 3 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %.111233038.i.us, i64 16
  %indvars.iv.next3670.i.us = add nuw nsw i64 %indvars.iv3669.i.us, 1 ; 2 uses
  %exitcond3675.not.i.us = icmp eq i64 %indvars.iv.next3670.i.us, %wide.trip.count3674.i
  br i1 %exitcond3675.not.i.us, label %._crit_edge3040.loopexit.i.us, label %.lr.ph3039.i.us, !llvm.loop !586

._crit_edge3040.loopexit.i.us:                    ; preds = %bb.cc
  %scevgep3671.i.us = getelementptr i8, ptr %.011223051.i.us, i64 16
  %scevgep3672.i.us = getelementptr i8, ptr %scevgep3671.i.us, i64 %i.aji ; 2 uses
  %i.amm = add nuw nsw i32 %.011283050.i.us, 8    ; 2 uses
  %i.amn = or disjoint i32 %i.amm, 7
  %i.amo = icmp slt i32 %i.amn, %i.aij
  br i1 %i.amo, label %.noexc1318.i.us, label %._crit_edge3052.loopexit.i.loopexit, !llvm.loop !587

._crit_edge3052.loopexit.i.loopexit:              ; preds = %._crit_edge3040.loopexit.i.us
  %12 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.amc)
  %13 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.amf)
  %14 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ami)
  %15 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.amk)
  br label %._crit_edge3052.loopexit.i

._crit_edge3052.loopexit.i:                       ; preds = %.noexc1318.lr.ph.i, %._crit_edge3052.loopexit.i.loopexit
  %16 = phi i32 [ %12, %._crit_edge3052.loopexit.i.loopexit ], [ 0, %.noexc1318.lr.ph.i ]
  %17 = phi i32 [ %13, %._crit_edge3052.loopexit.i.loopexit ], [ 0, %.noexc1318.lr.ph.i ]
  %18 = phi i32 [ %14, %._crit_edge3052.loopexit.i.loopexit ], [ 0, %.noexc1318.lr.ph.i ]
  %19 = phi i32 [ %15, %._crit_edge3052.loopexit.i.loopexit ], [ 0, %.noexc1318.lr.ph.i ]
  %.us-phi276 = phi ptr [ %scevgep3672.i.us, %._crit_edge3052.loopexit.i.loopexit ], [ %i.qv, %.noexc1318.lr.ph.i ]
  %i.amp = and i32 %i.aij, 2147483640
  br label %._crit_edge3052.i

._crit_edge3052.i:                                ; preds = %._crit_edge3052.loopexit.i, %.noexc1320.i
  %20 = phi i32 [ 0, %.noexc1320.i ], [ %16, %._crit_edge3052.loopexit.i ] ; 3 uses
  %21 = phi i32 [ 0, %.noexc1320.i ], [ %17, %._crit_edge3052.loopexit.i ] ; 3 uses
  %22 = phi i32 [ 0, %.noexc1320.i ], [ %18, %._crit_edge3052.loopexit.i ] ; 3 uses
  %23 = phi i32 [ 0, %.noexc1320.i ], [ %19, %._crit_edge3052.loopexit.i ] ; 3 uses
  %.01128.lcssa.i = phi i32 [ 0, %.noexc1320.i ], [ %i.amp, %._crit_edge3052.loopexit.i ] ; 5 uses
  %.01122.lcssa.i = phi ptr [ %i.qv, %.noexc1320.i ], [ %.us-phi276, %._crit_edge3052.loopexit.i ] ; 3 uses
  %i.amq = or disjoint i32 %.01128.lcssa.i, 1
  %i.amr = icmp slt i32 %i.amq, %i.aij
  br i1 %i.amr, label %.noexc1314.lr.ph.i, label %.preheader2855.i

.noexc1314.lr.ph.i:                               ; preds = %._crit_edge3052.i
  %i.ams = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !588
  %i.amt = sext i32 %i.ams to i64
  %i.amu = load i32, ptr %i.b, align 4, !tbaa !67 ; 2 uses
  %i.amv = mul nsw i32 %i.amu, %i.aif
  %i.amw = sext i32 %i.amv to i64
  %i.amx = mul i64 %i.re, %i.amt                  ; 2 uses
  %i.amy = mul i64 %i.amx, %i.amw
  %invariant.gep3096.i = getelementptr i8, ptr %i.rc, i64 %i.amy
  %i.amz = load i32, ptr %i.a, align 4, !tbaa !67 ; 2 uses
  %i.ana = mul nsw i32 %i.amz, %i.aih
  %i.anb = sext i32 %i.ana to i64
  %invariant.gep3097.i = getelementptr i8, ptr %invariant.gep3096.i, i64 %i.anb
  %i.anc = mul nsw i32 %i.amu, %i.aig
  %i.and = sext i32 %i.anc to i64
  %i.ane = mul i64 %i.amx, %i.and
  %invariant.gep3101.i = getelementptr i8, ptr %i.rc, i64 %i.ane
  %i.anf = mul nsw i32 %i.amz, %i.aii
  %i.ang = sext i32 %i.anf to i64
  %invariant.gep3102.i = getelementptr i8, ptr %invariant.gep3101.i, i64 %i.ang
  %i.anh = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.ani = icmp sgt i32 %i.anh, 0
  %i.anj = load ptr, ptr %i.g, align 8
  br i1 %i.ani, label %.noexc1314.us.preheader.i, label %.noexc1314.preheader.i

.noexc1314.preheader.i:                           ; preds = %.noexc1314.lr.ph.i
  %i.ank = or disjoint i32 %.01128.lcssa.i, 2
  %i.anl = add nsw i32 %i.aij, -2
  %i.anm = sub nsw i32 %i.anl, %.01128.lcssa.i
  %i.ann = and i32 %i.anm, -2
  %i.ano = add i32 %i.ank, %i.ann
  br label %.preheader2855.i

.noexc1314.us.preheader.i:                        ; preds = %.noexc1314.lr.ph.i
  %i.anp = add nsw i32 %i.anh, -1
  %i.anq = zext nneg i32 %i.anp to i64
  %i.anr = shl nuw nsw i64 %i.anq, 2
  %i.ans = zext nneg i32 %.01128.lcssa.i to i64
  %wide.trip.count3681.i = zext nneg i32 %i.anh to i64
  br label %.noexc1314.us.i

.noexc1314.us.i:                                  ; preds = %._crit_edge3076.us.i, %.noexc1314.us.preheader.i
  %indvars.iv3683.i = phi i64 [ %i.ans, %.noexc1314.us.preheader.i ], [ %indvars.iv.next3684.i, %._crit_edge3076.us.i ] ; 2 uses
  %.010883087.us.i = phi i32 [ %20, %.noexc1314.us.preheader.i ], [ %i.aoq, %._crit_edge3076.us.i ]
  %.010923086.us.i = phi i32 [ %22, %.noexc1314.us.preheader.i ], [ %i.apg, %._crit_edge3076.us.i ]
  %.010973085.us.i = phi i32 [ %21, %.noexc1314.us.preheader.i ], [ %i.aov, %._crit_edge3076.us.i ]
  %.011013084.us.i = phi i32 [ %23, %.noexc1314.us.preheader.i ], [ %i.api, %._crit_edge3076.us.i ]
  %.211243083.us.i = phi ptr [ %.01122.lcssa.i, %.noexc1314.us.preheader.i ], [ %scevgep3679.i, %._crit_edge3076.us.i ] ; 2 uses
  %.reass3095.us.i = mul i64 %factor.op.mul3059.i, %indvars.iv3683.i ; 2 uses
  %gep3098.us.i = getelementptr i8, ptr %invariant.gep3097.i, i64 %.reass3095.us.i
  %gep3103.us.i = getelementptr i8, ptr %invariant.gep3102.i, i64 %.reass3095.us.i
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %.noexc1314.us.i
  %indvars.iv3676.i = phi i64 [ 0, %.noexc1314.us.i ], [ %indvars.iv.next3677.i, %bb.cd ] ; 2 uses
  %.110893074.us.i = phi i32 [ %.010883087.us.i, %.noexc1314.us.i ], [ %i.aoq, %bb.cd ]
  %.110933073.us.i = phi i32 [ %.010923086.us.i, %.noexc1314.us.i ], [ %i.apg, %bb.cd ]
  %.110983072.us.i = phi i32 [ %.010973085.us.i, %.noexc1314.us.i ], [ %i.aov, %bb.cd ]
  %.111023071.us.i = phi i32 [ %.011013084.us.i, %.noexc1314.us.i ], [ %i.api, %bb.cd ]
  %.311253070.us.i = phi ptr [ %.211243083.us.i, %.noexc1314.us.i ], [ %i.apj, %bb.cd ] ; 5 uses
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr %i.anj, i64 %indvars.iv3676.i
  %i.anu = load i32, ptr %i.ant, align 4, !tbaa !67
  %i.anv = sext i32 %i.anu to i64                 ; 2 uses
  %i.anw = getelementptr inbounds i8, ptr %gep3098.us.i, i64 %i.anv ; 2 uses
  %i.anx = getelementptr inbounds i8, ptr %gep3103.us.i, i64 %i.anv ; 2 uses
  %i.any = load i8, ptr %i.anw, align 1, !tbaa !254
  %i.anz = sext i8 %i.any to i32                  ; 2 uses
  %i.aoa = load i8, ptr %.311253070.us.i, align 1, !tbaa !254
  %i.aob = sext i8 %i.aoa to i32                  ; 2 uses
  %i.aoc = mul nsw i32 %i.aob, %i.anz
  %i.aod = add nsw i32 %i.aoc, %.110893074.us.i
  %i.aoe = getelementptr inbounds nuw i8, ptr %.311253070.us.i, i64 1
  %i.aof = load i8, ptr %i.aoe, align 1, !tbaa !254
  %i.aog = sext i8 %i.aof to i32                  ; 2 uses
  %i.aoh = mul nsw i32 %i.aog, %i.anz
  %i.aoi = add nsw i32 %i.aoh, %.110983072.us.i
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.anw, i64 %i.ov
  %i.aok = load i8, ptr %i.aoj, align 1, !tbaa !254
  %i.aol = sext i8 %i.aok to i32                  ; 2 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %.311253070.us.i, i64 2
  %i.aon = load i8, ptr %i.aom, align 1, !tbaa !254
  %i.aoo = sext i8 %i.aon to i32                  ; 2 uses
  %i.aop = mul nsw i32 %i.aoo, %i.aol
  %i.aoq = add nsw i32 %i.aod, %i.aop             ; 3 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %.311253070.us.i, i64 3
  %i.aos = load i8, ptr %i.aor, align 1, !tbaa !254
  %i.aot = sext i8 %i.aos to i32                  ; 2 uses
  %i.aou = mul nsw i32 %i.aot, %i.aol
  %i.aov = add nsw i32 %i.aoi, %i.aou             ; 3 uses
  %i.aow = load i8, ptr %i.anx, align 1, !tbaa !254
  %i.aox = sext i8 %i.aow to i32                  ; 2 uses
  %i.aoy = mul nsw i32 %i.aox, %i.aob
  %i.aoz = add nsw i32 %i.aoy, %.110933073.us.i
  %i.apa = mul nsw i32 %i.aox, %i.aog
  %i.apb = add nsw i32 %i.apa, %.111023071.us.i
  %i.apc = getelementptr inbounds nuw i8, ptr %i.anx, i64 %i.ov
  %i.apd = load i8, ptr %i.apc, align 1, !tbaa !254
  %i.ape = sext i8 %i.apd to i32                  ; 2 uses
  %i.apf = mul nsw i32 %i.ape, %i.aoo
  %i.apg = add nsw i32 %i.aoz, %i.apf             ; 3 uses
  %i.aph = mul nsw i32 %i.ape, %i.aot
  %i.api = add nsw i32 %i.apb, %i.aph             ; 3 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %.311253070.us.i, i64 4
  %indvars.iv.next3677.i = add nuw nsw i64 %indvars.iv3676.i, 1 ; 2 uses
  %exitcond3682.not.i = icmp eq i64 %indvars.iv.next3677.i, %wide.trip.count3681.i
  br i1 %exitcond3682.not.i, label %._crit_edge3076.us.i, label %bb.cd, !llvm.loop !591

._crit_edge3076.us.i:                             ; preds = %bb.cd
  %scevgep3678.i = getelementptr i8, ptr %.211243083.us.i, i64 4
  %scevgep3679.i = getelementptr i8, ptr %scevgep3678.i, i64 %i.anr ; 2 uses
  %indvars.iv.next3684.i = add nuw nsw i64 %indvars.iv3683.i, 2 ; 2 uses
  %i.apk = trunc i64 %indvars.iv.next3684.i to i32 ; 2 uses
  %i.apl = or i32 %i.apk, 1
  %i.apm = icmp slt i32 %i.apl, %i.aij
  br i1 %i.apm, label %.noexc1314.us.i, label %.preheader2855.i, !llvm.loop !592

.preheader2855.i:                                 ; preds = %._crit_edge3076.us.i, %.noexc1314.preheader.i, %._crit_edge3052.i
  %.11129.lcssa.i = phi i32 [ %.01128.lcssa.i, %._crit_edge3052.i ], [ %i.ano, %.noexc1314.preheader.i ], [ %i.apk, %._crit_edge3076.us.i ] ; 2 uses
  %.21124.lcssa.i = phi ptr [ %.01122.lcssa.i, %._crit_edge3052.i ], [ %.01122.lcssa.i, %.noexc1314.preheader.i ], [ %scevgep3679.i, %._crit_edge3076.us.i ]
  %.01101.lcssa.i = phi i32 [ %23, %._crit_edge3052.i ], [ %23, %.noexc1314.preheader.i ], [ %i.api, %._crit_edge3076.us.i ] ; 3 uses
  %.01097.lcssa.i = phi i32 [ %21, %._crit_edge3052.i ], [ %21, %.noexc1314.preheader.i ], [ %i.aov, %._crit_edge3076.us.i ] ; 3 uses
  %.01092.lcssa.i = phi i32 [ %22, %._crit_edge3052.i ], [ %22, %.noexc1314.preheader.i ], [ %i.apg, %._crit_edge3076.us.i ] ; 3 uses
  %.01088.lcssa.i = phi i32 [ %20, %._crit_edge3052.i ], [ %20, %.noexc1314.preheader.i ], [ %i.aoq, %._crit_edge3076.us.i ] ; 3 uses
  %i.apn = icmp slt i32 %.11129.lcssa.i, %i.aij
  br i1 %i.apn, label %.noexc1310.lr.ph.i, label %._crit_edge3129.i

.noexc1310.lr.ph.i:                               ; preds = %.preheader2855.i
  %i.apo = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !593
  %i.app = sext i32 %i.apo to i64
  %i.apq = load i32, ptr %i.b, align 4, !tbaa !67 ; 2 uses
  %i.apr = mul nsw i32 %i.apq, %i.aif
  %i.aps = sext i32 %i.apr to i64
  %i.apt = mul i64 %i.re, %i.app                  ; 2 uses
  %i.apu = mul i64 %i.apt, %i.aps
  %invariant.gep3136.i = getelementptr i8, ptr %i.rc, i64 %i.apu
  %i.apv = load i32, ptr %i.a, align 4, !tbaa !67 ; 2 uses
  %i.apw = mul nsw i32 %i.apv, %i.aih
  %i.apx = sext i32 %i.apw to i64
  %invariant.gep3137.i = getelementptr i8, ptr %invariant.gep3136.i, i64 %i.apx
  %i.apy = mul nsw i32 %i.apq, %i.aig
  %i.apz = sext i32 %i.apy to i64
  %i.aqa = mul i64 %i.apt, %i.apz
  %invariant.gep3141.i = getelementptr i8, ptr %i.rc, i64 %i.aqa
  %i.aqb = mul nsw i32 %i.apv, %i.aii
  %i.aqc = sext i32 %i.aqb to i64
  %invariant.gep3142.i = getelementptr i8, ptr %invariant.gep3141.i, i64 %i.aqc
  %i.aqd = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.aqe = icmp sgt i32 %i.aqd, 0
  %i.aqf = load ptr, ptr %i.g, align 8
  br i1 %i.aqe, label %.noexc1310.us.preheader.i, label %._crit_edge3129.i

.noexc1310.us.preheader.i:                        ; preds = %.noexc1310.lr.ph.i
  %i.aqg = add nsw i32 %i.aqd, -1
  %i.aqh = zext nneg i32 %i.aqg to i64
  %i.aqi = shl nuw nsw i64 %i.aqh, 1
  %i.aqj = zext i32 %.11129.lcssa.i to i64
  %wide.trip.count3691.i = zext nneg i32 %i.aqd to i64
  br label %.noexc1310.us.i

.noexc1310.us.i:                                  ; preds = %._crit_edge3117.us.i, %.noexc1310.us.preheader.i
  %indvars.iv3693.i = phi i64 [ %i.aqj, %.noexc1310.us.preheader.i ], [ %indvars.iv.next3694.i, %._crit_edge3117.us.i ] ; 2 uses
  %.210903128.us.i = phi i32 [ %.01088.lcssa.i, %.noexc1310.us.preheader.i ], [ %i.aqu, %._crit_edge3117.us.i ]
  %.210943127.us.i = phi i32 [ %.01092.lcssa.i, %.noexc1310.us.preheader.i ], [ %i.ard, %._crit_edge3117.us.i ]
  %.210993126.us.i = phi i32 [ %.01097.lcssa.i, %.noexc1310.us.preheader.i ], [ %i.aqz, %._crit_edge3117.us.i ]
  %.211033125.us.i = phi i32 [ %.01101.lcssa.i, %.noexc1310.us.preheader.i ], [ %i.arf, %._crit_edge3117.us.i ]
  %.411263124.us.i = phi ptr [ %.21124.lcssa.i, %.noexc1310.us.preheader.i ], [ %scevgep3689.i, %._crit_edge3117.us.i ] ; 2 uses
  %.reass3135.us.i = mul i64 %factor.op.mul3059.i, %indvars.iv3693.i ; 2 uses
  %gep3138.us.i = getelementptr i8, ptr %invariant.gep3137.i, i64 %.reass3135.us.i
  %gep3143.us.i = getelementptr i8, ptr %invariant.gep3142.i, i64 %.reass3135.us.i
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ce, %.noexc1310.us.i
  %indvars.iv3686.i = phi i64 [ 0, %.noexc1310.us.i ], [ %indvars.iv.next3687.i, %bb.ce ] ; 2 uses
  %.310913115.us.i = phi i32 [ %.210903128.us.i, %.noexc1310.us.i ], [ %i.aqu, %bb.ce ]
  %.310953114.us.i = phi i32 [ %.210943127.us.i, %.noexc1310.us.i ], [ %i.ard, %bb.ce ]
  %.311003113.us.i = phi i32 [ %.210993126.us.i, %.noexc1310.us.i ], [ %i.aqz, %bb.ce ]
  %.311043112.us.i = phi i32 [ %.211033125.us.i, %.noexc1310.us.i ], [ %i.arf, %bb.ce ]
  %.511273111.us.i = phi ptr [ %.411263124.us.i, %.noexc1310.us.i ], [ %i.arg, %bb.ce ] ; 3 uses
  %i.aqk = getelementptr inbounds nuw [4 x i8], ptr %i.aqf, i64 %indvars.iv3686.i
  %i.aql = load i32, ptr %i.aqk, align 4, !tbaa !67
  %i.aqm = sext i32 %i.aql to i64                 ; 2 uses
  %i.aqn = getelementptr inbounds i8, ptr %gep3138.us.i, i64 %i.aqm
  %i.aqo = getelementptr inbounds i8, ptr %gep3143.us.i, i64 %i.aqm
  %i.aqp = load i8, ptr %i.aqn, align 1, !tbaa !254
  %i.aqq = sext i8 %i.aqp to i32                  ; 2 uses
  %i.aqr = load i8, ptr %.511273111.us.i, align 1, !tbaa !254
  %i.aqs = sext i8 %i.aqr to i32                  ; 2 uses
  %i.aqt = mul nsw i32 %i.aqs, %i.aqq
  %i.aqu = add nsw i32 %i.aqt, %.310913115.us.i   ; 3 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %.511273111.us.i, i64 1
  %i.aqw = load i8, ptr %i.aqv, align 1, !tbaa !254
  %i.aqx = sext i8 %i.aqw to i32                  ; 2 uses
  %i.aqy = mul nsw i32 %i.aqx, %i.aqq
  %i.aqz = add nsw i32 %i.aqy, %.311003113.us.i   ; 3 uses
  %i.ara = load i8, ptr %i.aqo, align 1, !tbaa !254
  %i.arb = sext i8 %i.ara to i32                  ; 2 uses
  %i.arc = mul nsw i32 %i.arb, %i.aqs
  %i.ard = add nsw i32 %i.arc, %.310953114.us.i   ; 3 uses
  %i.are = mul nsw i32 %i.arb, %i.aqx
  %i.arf = add nsw i32 %i.are, %.311043112.us.i   ; 3 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %.511273111.us.i, i64 2
  %indvars.iv.next3687.i = add nuw nsw i64 %indvars.iv3686.i, 1 ; 2 uses
  %exitcond3692.not.i = icmp eq i64 %indvars.iv.next3687.i, %wide.trip.count3691.i
  br i1 %exitcond3692.not.i, label %._crit_edge3117.us.i, label %bb.ce, !llvm.loop !596

._crit_edge3117.us.i:                             ; preds = %bb.ce
  %scevgep3688.i = getelementptr i8, ptr %.411263124.us.i, i64 2
  %scevgep3689.i = getelementptr i8, ptr %scevgep3688.i, i64 %i.aqi
  %indvars.iv.next3694.i = add nuw nsw i64 %indvars.iv3693.i, 1 ; 2 uses
  %i.arh = trunc nuw i64 %indvars.iv.next3694.i to i32
  %i.ari = icmp sgt i32 %i.aij, %i.arh
  br i1 %i.ari, label %.noexc1310.us.i, label %._crit_edge3129.i, !llvm.loop !597

._crit_edge3129.i:                                ; preds = %._crit_edge3117.us.i, %.noexc1310.lr.ph.i, %.preheader2855.i
  %.21103.lcssa.i = phi i32 [ %.01101.lcssa.i, %.preheader2855.i ], [ %.01101.lcssa.i, %.noexc1310.lr.ph.i ], [ %i.arf, %._crit_edge3117.us.i ]
  %.21099.lcssa.i = phi i32 [ %.01097.lcssa.i, %.preheader2855.i ], [ %.01097.lcssa.i, %.noexc1310.lr.ph.i ], [ %i.aqz, %._crit_edge3117.us.i ]
  %.21094.lcssa.i = phi i32 [ %.01092.lcssa.i, %.preheader2855.i ], [ %.01092.lcssa.i, %.noexc1310.lr.ph.i ], [ %i.ard, %._crit_edge3117.us.i ]
  %.21090.lcssa.i = phi i32 [ %.01088.lcssa.i, %.preheader2855.i ], [ %.01088.lcssa.i, %.noexc1310.lr.ph.i ], [ %i.aqu, %._crit_edge3117.us.i ]
  store i32 %.21090.lcssa.i, ptr %.110663150.i, align 4, !tbaa !67
  %i.arj = getelementptr inbounds nuw i8, ptr %.110663150.i, i64 4
  store i32 %.21094.lcssa.i, ptr %i.arj, align 4, !tbaa !67
  store i32 %.21099.lcssa.i, ptr %.110693149.i, align 4, !tbaa !67
  %i.ark = getelementptr inbounds nuw i8, ptr %.110693149.i, i64 4
  store i32 %.21103.lcssa.i, ptr %i.ark, align 4, !tbaa !67
  %i.arl = getelementptr inbounds nuw i8, ptr %.110663150.i, i64 8 ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %.110693149.i, i64 8 ; 2 uses
  %i.arn = add nuw nsw i32 %.110733148.i, 2       ; 3 uses
  %i.aro = or disjoint i32 %i.arn, 1              ; 2 uses
  %i.arp = icmp slt i32 %i.aro, %i.ph
  br i1 %i.arp, label %.noexc1320.i, label %.preheader2857.i, !llvm.loop !598

.noexc1306.i:                                     ; preds = %._crit_edge3220.i, %.noexc1306.lr.ph.i
  %.210673232.i = phi ptr [ %.11066.lcssa.i, %.noexc1306.lr.ph.i ], [ %i.azi, %._crit_edge3220.i ] ; 2 uses
  %.210703231.i = phi ptr [ %.11069.lcssa.i, %.noexc1306.lr.ph.i ], [ %i.azj, %._crit_edge3220.i ] ; 2 uses
  %.210743230.i = phi i32 [ %.11073.lcssa.i, %.noexc1306.lr.ph.i ], [ %i.azk, %._crit_edge3220.i ] ; 3 uses
  %i.arq = sdiv i32 %.210743230.i, %i.oq          ; 3 uses
  %i.arr = srem i32 %.210743230.i, %i.oq          ; 3 uses
  %i.ars = load i32, ptr %i.d, align 4, !tbaa !67 ; 9 uses
  %i.art = icmp sgt i32 %i.ars, 7
  br i1 %i.art, label %.noexc1304.lr.ph.i, label %._crit_edge3167.i

.noexc1304.lr.ph.i:                               ; preds = %.noexc1306.i
  %i.aru = load i32, ptr %i.c, align 4, !tbaa !67 ; 3 uses
  %i.arv = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !599
  %i.arw = sext i32 %i.arv to i64
  %i.arx = load i32, ptr %i.b, align 4, !tbaa !67
  %i.ary = mul nsw i32 %i.arx, %i.arq
  %i.arz = sext i32 %i.ary to i64
  %i.asa = mul i64 %i.aid, %i.arw
  %i.asb = mul i64 %i.asa, %i.arz
  %invariant.gep3174.i = getelementptr i8, ptr %i.aib, i64 %i.asb
  %i.asc = load i32, ptr %i.a, align 4, !tbaa !67
  %i.asd = mul i32 %i.aru, %i.arr
  %i.ase = mul i32 %i.asd, %i.asc
  %i.asf = sext i32 %i.ase to i64
  %invariant.gep3175.i = getelementptr i8, ptr %invariant.gep3174.i, i64 %i.asf
  %i.asg = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.ash = icmp sgt i32 %i.asg, 0
  %i.asi = load ptr, ptr %i.g, align 8
  %i.asj = icmp eq i32 %i.aru, 8
  br i1 %i.ash, label %.noexc1304.us.preheader.i, label %.noexc1304.preheader.i

.noexc1304.preheader.i:                           ; preds = %.noexc1304.lr.ph.i
  %i.ask = and i32 %i.ars, 2147483640
  br label %._crit_edge3167.i

.noexc1304.us.preheader.i:                        ; preds = %.noexc1304.lr.ph.i
  %i.asl = add nsw i32 %i.asg, -1
  %i.asm = zext nneg i32 %i.asl to i64
  %i.asn = shl nuw nsw i64 %i.asm, 4
  %wide.trip.count3701.i = zext nneg i32 %i.asg to i64
  br label %.noexc1304.us.i

.noexc1304.us.i:                                  ; preds = %._crit_edge3159.us.i, %.noexc1304.us.preheader.i
  %.011423166.us.i = phi ptr [ %scevgep3699.i, %._crit_edge3159.us.i ], [ %i.ahu, %.noexc1304.us.preheader.i ] ; 2 uses
  %.011483165.us.i = phi i32 [ %i.aui, %._crit_edge3159.us.i ], [ 0, %.noexc1304.us.preheader.i ] ; 2 uses
  %i.aso = phi <4 x i32> [ %i.aug, %._crit_edge3159.us.i ], [ zeroinitializer, %.noexc1304.us.preheader.i ]
  %i.asp = phi <4 x i32> [ %i.aud, %._crit_edge3159.us.i ], [ zeroinitializer, %.noexc1304.us.preheader.i ]
  %i.asq = sdiv i32 %.011483165.us.i, %i.aru
  %i.asr = sext i32 %i.asq to i64
  %.reass3173.us.i = mul i64 %factor.op.mul3172.i, %i.asr
  %gep3176.us.i = getelementptr i8, ptr %invariant.gep3175.i, i64 %.reass3173.us.i
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ci, %.noexc1304.us.i
  %indvars.iv3696.i = phi i64 [ 0, %.noexc1304.us.i ], [ %indvars.iv.next3697.i, %bb.ci ] ; 2 uses
  %.111433157.us.i = phi ptr [ %.011423166.us.i, %.noexc1304.us.i ], [ %i.auh, %bb.ci ] ; 2 uses
  %.128283155.us.i = phi <4 x i32> [ %i.aso, %.noexc1304.us.i ], [ %i.aug, %bb.ci ]
  %.128303154.us.i = phi <4 x i32> [ %i.asp, %.noexc1304.us.i ], [ %i.aud, %bb.ci ]
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %i.asi, i64 %indvars.iv3696.i
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !67
  %i.asu = sext i32 %i.ast to i64
  %i.asv = getelementptr inbounds i8, ptr %gep3176.us.i, i64 %i.asu ; 9 uses
  br i1 %i.asj, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.asw = load i8, ptr %i.asv, align 1, !tbaa !254
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asv, i64 %i.ov
  %i.asy = load i8, ptr %i.asx, align 1, !tbaa !254
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asv, i64 %i.ahv
  %i.ata = load i8, ptr %i.asz, align 1, !tbaa !254
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asv, i64 %i.ahw
  %i.atc = load i8, ptr %i.atb, align 1, !tbaa !254
  %i.atd = getelementptr inbounds nuw i8, ptr %i.asv, i64 %i.ahx
  %i.ate = load i8, ptr %i.atd, align 1, !tbaa !254
  %i.atf = getelementptr inbounds nuw i8, ptr %i.asv, i64 %i.ahy
  %i.atg = load i8, ptr %i.atf, align 1, !tbaa !254
  %i.ath = getelementptr inbounds nuw i8, ptr %i.asv, i64 %i.ahz
  %i.ati = load i8, ptr %i.ath, align 1, !tbaa !254
  %i.atj = getelementptr inbounds nuw i8, ptr %i.asv, i64 %i.aia
  %i.atk = load i8, ptr %i.atj, align 1, !tbaa !254
  %i.atl = insertelement <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %i.asw, i64 0
  %i.atm = insertelement <16 x i8> %i.atl, i8 %i.asy, i64 1
  %i.atn = insertelement <16 x i8> %i.atm, i8 %i.ata, i64 2
  %i.ato = insertelement <16 x i8> %i.atn, i8 %i.atc, i64 3
  %i.atp = insertelement <16 x i8> %i.ato, i8 %i.ate, i64 4
  %i.atq = insertelement <16 x i8> %i.atp, i8 %i.atg, i64 5
  %i.atr = insertelement <16 x i8> %i.atq, i8 %i.ati, i64 6
  %i.ats = insertelement <16 x i8> %i.atr, i8 %i.atk, i64 7
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.att = load i64, ptr %i.asv, align 1, !tbaa !254
  %i.atu = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.att, i64 0
  %i.atv = bitcast <2 x i64> %i.atu to <16 x i8>
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %storemerge1214.us.i = phi <16 x i8> [ %i.atv, %bb.ch ], [ %i.ats, %bb.cg ] ; 2 uses
  %.lobit.i1712.us.i = ashr <16 x i8> %storemerge1214.us.i, splat (i8 7)
  %i.atw = shufflevector <16 x i8> %storemerge1214.us.i, <16 x i8> %.lobit.i1712.us.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.atx = load <16 x i8>, ptr %.111433157.us.i, align 16, !tbaa !254 ; 3 uses
  %.lobit.i1711.us.i = ashr <16 x i8> %i.atx, splat (i8 7) ; 2 uses
  %i.aty = shufflevector <16 x i8> %i.atx, <16 x i8> %.lobit.i1711.us.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.atz = shufflevector <16 x i8> %i.atx, <16 x i8> %.lobit.i1711.us.i, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.aua = bitcast <16 x i8> %i.atw to <8 x i16>  ; 2 uses
  %i.aub = bitcast <16 x i8> %i.aty to <8 x i16>
  %i.auc = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aua, <8 x i16> %i.aub)
  %i.aud = add <4 x i32> %i.auc, %.128303154.us.i ; 3 uses
  %i.aue = bitcast <16 x i8> %i.atz to <8 x i16>
  %i.auf = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aua, <8 x i16> %i.aue)
  %i.aug = add <4 x i32> %i.auf, %.128283155.us.i ; 3 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %.111433157.us.i, i64 16
  %indvars.iv.next3697.i = add nuw nsw i64 %indvars.iv3696.i, 1 ; 2 uses
  %exitcond3702.not.i = icmp eq i64 %indvars.iv.next3697.i, %wide.trip.count3701.i
  br i1 %exitcond3702.not.i, label %._crit_edge3159.us.i, label %bb.cf, !llvm.loop !602

._crit_edge3159.us.i:                             ; preds = %bb.ci
  %scevgep3698.i = getelementptr i8, ptr %.011423166.us.i, i64 16
  %scevgep3699.i = getelementptr i8, ptr %scevgep3698.i, i64 %i.asn ; 2 uses
  %i.aui = add nuw nsw i32 %.011483165.us.i, 8    ; 2 uses
  %i.auj = or disjoint i32 %i.aui, 7
  %i.auk = icmp slt i32 %i.auj, %i.ars
  br i1 %i.auk, label %.noexc1304.us.i, label %._crit_edge3167.loopexit.i, !llvm.loop !603

._crit_edge3167.loopexit.i:                       ; preds = %._crit_edge3159.us.i
  %i.aul = and i32 %i.ars, 2147483640
  %24 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aud)
  %25 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aug)
  br label %._crit_edge3167.i

._crit_edge3167.i:                                ; preds = %._crit_edge3167.loopexit.i, %.noexc1304.preheader.i, %.noexc1306.i
  %26 = phi i32 [ 0, %.noexc1306.i ], [ %24, %._crit_edge3167.loopexit.i ], [ 0, %.noexc1304.preheader.i ] ; 3 uses
  %27 = phi i32 [ 0, %.noexc1306.i ], [ %25, %._crit_edge3167.loopexit.i ], [ 0, %.noexc1304.preheader.i ] ; 3 uses
  %.01148.lcssa.i = phi i32 [ 0, %.noexc1306.i ], [ %i.aul, %._crit_edge3167.loopexit.i ], [ %i.ask, %.noexc1304.preheader.i ] ; 6 uses
  %.01142.lcssa.i = phi ptr [ %i.ahu, %.noexc1306.i ], [ %scevgep3699.i, %._crit_edge3167.loopexit.i ], [ %i.ahu, %.noexc1304.preheader.i ] ; 3 uses
  %i.aum = or disjoint i32 %.01148.lcssa.i, 1
  %i.aun = icmp slt i32 %i.aum, %i.ars
  br i1 %i.aun, label %.noexc1302.lr.ph.i, label %.preheader2854.i

.noexc1302.lr.ph.i:                               ; preds = %._crit_edge3167.i
  %i.auo = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !604
  %i.aup = sext i32 %i.auo to i64
  %i.auq = load i32, ptr %i.b, align 4, !tbaa !67
  %i.aur = mul nsw i32 %i.auq, %i.arq
  %i.aus = sext i32 %i.aur to i64
  %i.aut = mul i64 %i.aid, %i.aup
  %i.auu = mul i64 %i.aut, %i.aus
  %invariant.gep3200.i = getelementptr i8, ptr %i.aib, i64 %i.auu
  %i.auv = load i32, ptr %i.a, align 4, !tbaa !67
  %i.auw = mul nsw i32 %i.auv, %i.arr
  %i.aux = sext i32 %i.auw to i64
  %invariant.gep3201.i = getelementptr i8, ptr %invariant.gep3200.i, i64 %i.aux
  %i.auy = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.auz = icmp sgt i32 %i.auy, 0
  %i.ava = load ptr, ptr %i.g, align 8
  br i1 %i.auz, label %.noexc1302.us.preheader.i, label %.noexc1302.preheader.i

.noexc1302.preheader.i:                           ; preds = %.noexc1302.lr.ph.i
  %i.avb = or disjoint i32 %.01148.lcssa.i, 2
  %i.avc = or disjoint i32 %.01148.lcssa.i, 3
  %i.avd = call i32 @llvm.umax.i32(i32 %i.ars, i32 %i.avc)
  %reass.sub = sub nsw i32 %i.avd, %.01148.lcssa.i
  %i.ave = and i32 %reass.sub, -2
  %i.avf = add i32 %i.ave, -2
  %i.avg = add i32 %i.avb, %i.avf
  br label %.preheader2854.i

.noexc1302.us.preheader.i:                        ; preds = %.noexc1302.lr.ph.i
  %i.avh = add nsw i32 %i.auy, -1
  %i.avi = zext nneg i32 %i.avh to i64
  %i.avj = shl nuw nsw i64 %i.avi, 2
  %i.avk = zext nneg i32 %.01148.lcssa.i to i64
  %wide.trip.count3708.i = zext nneg i32 %i.auy to i64
  br label %.noexc1302.us.i

.noexc1302.us.i:                                  ; preds = %._crit_edge3186.us.i, %.noexc1302.us.preheader.i
  %indvars.iv3710.i = phi i64 [ %i.avk, %.noexc1302.us.preheader.i ], [ %indvars.iv.next3711.i, %._crit_edge3186.us.i ] ; 2 uses
  %.011343193.us.i = phi i32 [ %26, %.noexc1302.us.preheader.i ], [ %i.awh, %._crit_edge3186.us.i ]
  %.011383192.us.i = phi i32 [ %27, %.noexc1302.us.preheader.i ], [ %i.awm, %._crit_edge3186.us.i ]
  %.211443191.us.i = phi ptr [ %.01142.lcssa.i, %.noexc1302.us.preheader.i ], [ %scevgep3706.i, %._crit_edge3186.us.i ] ; 2 uses
  %.reass3199.us.i = mul i64 %factor.op.mul3172.i, %indvars.iv3710.i
  %gep3202.us.i = getelementptr i8, ptr %invariant.gep3201.i, i64 %.reass3199.us.i
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %.noexc1302.us.i
  %indvars.iv3703.i = phi i64 [ 0, %.noexc1302.us.i ], [ %indvars.iv.next3704.i, %bb.cj ] ; 2 uses
  %.111353184.us.i = phi i32 [ %.011343193.us.i, %.noexc1302.us.i ], [ %i.awh, %bb.cj ]
  %.111393183.us.i = phi i32 [ %.011383192.us.i, %.noexc1302.us.i ], [ %i.awm, %bb.cj ]
  %.311453182.us.i = phi ptr [ %.211443191.us.i, %.noexc1302.us.i ], [ %i.awn, %bb.cj ] ; 5 uses
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %i.ava, i64 %indvars.iv3703.i
  %i.avm = load i32, ptr %i.avl, align 4, !tbaa !67
  %i.avn = sext i32 %i.avm to i64
  %i.avo = getelementptr inbounds i8, ptr %gep3202.us.i, i64 %i.avn ; 2 uses
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !254
  %i.avq = sext i8 %i.avp to i32                  ; 2 uses
  %i.avr = load i8, ptr %.311453182.us.i, align 1, !tbaa !254
  %i.avs = sext i8 %i.avr to i32
  %i.avt = mul nsw i32 %i.avs, %i.avq
  %i.avu = add nsw i32 %i.avt, %.111353184.us.i
  %i.avv = getelementptr inbounds nuw i8, ptr %.311453182.us.i, i64 1
  %i.avw = load i8, ptr %i.avv, align 1, !tbaa !254
  %i.avx = sext i8 %i.avw to i32
  %i.avy = mul nsw i32 %i.avx, %i.avq
  %i.avz = add nsw i32 %i.avy, %.111393183.us.i
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avo, i64 %i.ov
  %i.awb = load i8, ptr %i.awa, align 1, !tbaa !254
  %i.awc = sext i8 %i.awb to i32                  ; 2 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %.311453182.us.i, i64 2
  %i.awe = load i8, ptr %i.awd, align 1, !tbaa !254
  %i.awf = sext i8 %i.awe to i32
  %i.awg = mul nsw i32 %i.awf, %i.awc
  %i.awh = add nsw i32 %i.avu, %i.awg             ; 3 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %.311453182.us.i, i64 3
  %i.awj = load i8, ptr %i.awi, align 1, !tbaa !254
  %i.awk = sext i8 %i.awj to i32
  %i.awl = mul nsw i32 %i.awk, %i.awc
  %i.awm = add nsw i32 %i.avz, %i.awl             ; 3 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %.311453182.us.i, i64 4
  %indvars.iv.next3704.i = add nuw nsw i64 %indvars.iv3703.i, 1 ; 2 uses
  %exitcond3709.not.i = icmp eq i64 %indvars.iv.next3704.i, %wide.trip.count3708.i
  br i1 %exitcond3709.not.i, label %._crit_edge3186.us.i, label %bb.cj, !llvm.loop !607

._crit_edge3186.us.i:                             ; preds = %bb.cj
  %scevgep3705.i = getelementptr i8, ptr %.211443191.us.i, i64 4
  %scevgep3706.i = getelementptr i8, ptr %scevgep3705.i, i64 %i.avj ; 2 uses
  %indvars.iv.next3711.i = add nuw nsw i64 %indvars.iv3710.i, 2 ; 2 uses
  %i.awo = trunc i64 %indvars.iv.next3711.i to i32 ; 2 uses
  %i.awp = or i32 %i.awo, 1
  %i.awq = icmp slt i32 %i.awp, %i.ars
  br i1 %i.awq, label %.noexc1302.us.i, label %.preheader2854.i, !llvm.loop !608

.preheader2854.i:                                 ; preds = %._crit_edge3186.us.i, %.noexc1302.preheader.i, %._crit_edge3167.i
  %.11149.lcssa.i = phi i32 [ %.01148.lcssa.i, %._crit_edge3167.i ], [ %i.avg, %.noexc1302.preheader.i ], [ %i.awo, %._crit_edge3186.us.i ] ; 2 uses
  %.21144.lcssa.i = phi ptr [ %.01142.lcssa.i, %._crit_edge3167.i ], [ %.01142.lcssa.i, %.noexc1302.preheader.i ], [ %scevgep3706.i, %._crit_edge3186.us.i ]
  %.01138.lcssa.i = phi i32 [ %27, %._crit_edge3167.i ], [ %27, %.noexc1302.preheader.i ], [ %i.awm, %._crit_edge3186.us.i ] ; 3 uses
  %.01134.lcssa.i = phi i32 [ %26, %._crit_edge3167.i ], [ %26, %.noexc1302.preheader.i ], [ %i.awh, %._crit_edge3186.us.i ] ; 3 uses
  %i.awr = icmp slt i32 %.11149.lcssa.i, %i.ars
  br i1 %i.awr, label %.noexc1300.lr.ph.i, label %._crit_edge3220.i

.noexc1300.lr.ph.i:                               ; preds = %.preheader2854.i
  %i.aws = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !609
  %i.awt = sext i32 %i.aws to i64
  %i.awu = load i32, ptr %i.b, align 4, !tbaa !67
  %i.awv = mul nsw i32 %i.awu, %i.arq
  %i.aww = sext i32 %i.awv to i64
  %i.awx = mul i64 %i.aid, %i.awt
  %i.awy = mul i64 %i.awx, %i.aww
  %invariant.gep3225.i = getelementptr i8, ptr %i.aib, i64 %i.awy
  %i.awz = load i32, ptr %i.a, align 4, !tbaa !67
  %i.axa = mul nsw i32 %i.awz, %i.arr
  %i.axb = sext i32 %i.axa to i64
  %invariant.gep3226.i = getelementptr i8, ptr %invariant.gep3225.i, i64 %i.axb
  %i.axc = load i32, ptr %i.f, align 4, !tbaa !67 ; 5 uses
  %i.axd = icmp sgt i32 %i.axc, 0
  %i.axe = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.axd, label %.noexc1300.us.preheader.i, label %._crit_edge3220.i

.noexc1300.us.preheader.i:                        ; preds = %.noexc1300.lr.ph.i
  %i.axf = add nsw i32 %i.axc, -1
  %i.axg = zext nneg i32 %i.axf to i64
  %i.axh = shl nuw nsw i64 %i.axg, 1
  %i.axi = zext i32 %.11149.lcssa.i to i64
  %wide.trip.count3718.i = zext nneg i32 %i.axc to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count3718.i, 1
  %i.axj = icmp eq i32 %i.axc, 1
  %unroll_iter = and i64 %wide.trip.count3718.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod663 = trunc i32 %i.axc to i1
  br label %.noexc1300.us.i

.noexc1300.us.i:                                  ; preds = %._crit_edge3212.us.i, %.noexc1300.us.preheader.i
  %indvars.iv3720.i = phi i64 [ %i.axi, %.noexc1300.us.preheader.i ], [ %indvars.iv.next3721.i, %._crit_edge3212.us.i ] ; 2 uses
  %.211363219.us.i = phi i32 [ %.01134.lcssa.i, %.noexc1300.us.preheader.i ], [ %.lcssa658, %._crit_edge3212.us.i ] ; 2 uses
  %.211403218.us.i = phi i32 [ %.01138.lcssa.i, %.noexc1300.us.preheader.i ], [ %.lcssa657, %._crit_edge3212.us.i ] ; 2 uses
  %.411463217.us.i = phi ptr [ %.21144.lcssa.i, %.noexc1300.us.preheader.i ], [ %scevgep3716.i, %._crit_edge3212.us.i ] ; 3 uses
  %.reass3224.us.i = mul i64 %factor.op.mul3172.i, %indvars.iv3720.i
  %gep3227.us.i = getelementptr i8, ptr %invariant.gep3226.i, i64 %.reass3224.us.i ; 3 uses
  br i1 %i.axj, label %.epil.preheader, label %.noexc1300.us.i.new

.noexc1300.us.i.new:                              ; preds = %.noexc1300.us.i, %.noexc1300.us.i.new
  %indvars.iv3713.i = phi i64 [ %indvars.iv.next3714.i.1, %.noexc1300.us.i.new ], [ 0, %.noexc1300.us.i ] ; 3 uses
  %.311373210.us.i = phi i32 [ %i.ayk, %.noexc1300.us.i.new ], [ %.211363219.us.i, %.noexc1300.us.i ]
  %.311413209.us.i = phi i32 [ %i.ayp, %.noexc1300.us.i.new ], [ %.211403218.us.i, %.noexc1300.us.i ]
  %.511473208.us.i = phi ptr [ %i.ayq, %.noexc1300.us.i.new ], [ %.411463217.us.i, %.noexc1300.us.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.noexc1300.us.i.new ], [ 0, %.noexc1300.us.i ]
  %i.axk = getelementptr inbounds nuw [4 x i8], ptr %i.axe, i64 %indvars.iv3713.i
  %i.axl = load i32, ptr %i.axk, align 4, !tbaa !67
  %i.axm = sext i32 %i.axl to i64
  %i.axn = getelementptr inbounds i8, ptr %gep3227.us.i, i64 %i.axm
  %i.axo = load i8, ptr %i.axn, align 1, !tbaa !254
  %i.axp = sext i8 %i.axo to i32                  ; 2 uses
  %i.axq = load i8, ptr %.511473208.us.i, align 1, !tbaa !254
  %i.axr = sext i8 %i.axq to i32
  %i.axs = mul nsw i32 %i.axr, %i.axp
  %i.axt = add nsw i32 %i.axs, %.311373210.us.i
  %i.axu = getelementptr inbounds nuw i8, ptr %.511473208.us.i, i64 1
  %i.axv = load i8, ptr %i.axu, align 1, !tbaa !254
  %i.axw = sext i8 %i.axv to i32
  %i.axx = mul nsw i32 %i.axw, %i.axp
  %i.axy = add nsw i32 %i.axx, %.311413209.us.i
  %i.axz = getelementptr inbounds nuw i8, ptr %.511473208.us.i, i64 2
  %i.aya = getelementptr inbounds nuw [4 x i8], ptr %i.axe, i64 %indvars.iv3713.i
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 4
  %i.ayc = load i32, ptr %i.ayb, align 4, !tbaa !67
  %i.ayd = sext i32 %i.ayc to i64
  %i.aye = getelementptr inbounds i8, ptr %gep3227.us.i, i64 %i.ayd
  %i.ayf = load i8, ptr %i.aye, align 1, !tbaa !254
  %i.ayg = sext i8 %i.ayf to i32                  ; 2 uses
  %i.ayh = load i8, ptr %i.axz, align 1, !tbaa !254
  %i.ayi = sext i8 %i.ayh to i32
  %i.ayj = mul nsw i32 %i.ayi, %i.ayg
  %i.ayk = add nsw i32 %i.ayj, %i.axt             ; 3 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %.511473208.us.i, i64 3
  %i.aym = load i8, ptr %i.ayl, align 1, !tbaa !254
  %i.ayn = sext i8 %i.aym to i32
  %i.ayo = mul nsw i32 %i.ayn, %i.ayg
  %i.ayp = add nsw i32 %i.ayo, %i.axy             ; 3 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %.511473208.us.i, i64 4 ; 2 uses
  %indvars.iv.next3714.i.1 = add nuw nsw i64 %indvars.iv3713.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge3212.us.i.unr-lcssa, label %.noexc1300.us.i.new, !llvm.loop !612

._crit_edge3212.us.i.unr-lcssa:                   ; preds = %.noexc1300.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge3212.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge3212.us.i.unr-lcssa, %.noexc1300.us.i
  %indvars.iv3713.i.epil.init = phi i64 [ 0, %.noexc1300.us.i ], [ %indvars.iv.next3714.i.1, %._crit_edge3212.us.i.unr-lcssa ]
  %.311373210.us.i.epil.init = phi i32 [ %.211363219.us.i, %.noexc1300.us.i ], [ %i.ayk, %._crit_edge3212.us.i.unr-lcssa ]
  %.311413209.us.i.epil.init = phi i32 [ %.211403218.us.i, %.noexc1300.us.i ], [ %i.ayp, %._crit_edge3212.us.i.unr-lcssa ]
  %.511473208.us.i.epil.init = phi ptr [ %.411463217.us.i, %.noexc1300.us.i ], [ %i.ayq, %._crit_edge3212.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod663)
  %i.ayr = getelementptr inbounds nuw [4 x i8], ptr %i.axe, i64 %indvars.iv3713.i.epil.init
  %i.ays = load i32, ptr %i.ayr, align 4, !tbaa !67
  %i.ayt = sext i32 %i.ays to i64
  %i.ayu = getelementptr inbounds i8, ptr %gep3227.us.i, i64 %i.ayt
  %i.ayv = load i8, ptr %i.ayu, align 1, !tbaa !254
  %i.ayw = sext i8 %i.ayv to i32                  ; 2 uses
  %i.ayx = load i8, ptr %.511473208.us.i.epil.init, align 1, !tbaa !254
  %i.ayy = sext i8 %i.ayx to i32
  %i.ayz = mul nsw i32 %i.ayy, %i.ayw
  %i.aza = add nsw i32 %i.ayz, %.311373210.us.i.epil.init
  %i.azb = getelementptr inbounds nuw i8, ptr %.511473208.us.i.epil.init, i64 1
  %i.azc = load i8, ptr %i.azb, align 1, !tbaa !254
  %i.azd = sext i8 %i.azc to i32
  %i.aze = mul nsw i32 %i.azd, %i.ayw
  %i.azf = add nsw i32 %i.aze, %.311413209.us.i.epil.init
  br label %._crit_edge3212.us.i

._crit_edge3212.us.i:                             ; preds = %._crit_edge3212.us.i.unr-lcssa, %.epil.preheader
  %.lcssa658 = phi i32 [ %i.ayk, %._crit_edge3212.us.i.unr-lcssa ], [ %i.aza, %.epil.preheader ] ; 2 uses
  %.lcssa657 = phi i32 [ %i.ayp, %._crit_edge3212.us.i.unr-lcssa ], [ %i.azf, %.epil.preheader ] ; 2 uses
  %scevgep3715.i = getelementptr i8, ptr %.411463217.us.i, i64 2
  %scevgep3716.i = getelementptr i8, ptr %scevgep3715.i, i64 %i.axh
  %indvars.iv.next3721.i = add nuw nsw i64 %indvars.iv3720.i, 1 ; 2 uses
  %i.azg = trunc nuw i64 %indvars.iv.next3721.i to i32
  %i.azh = icmp sgt i32 %i.ars, %i.azg
  br i1 %i.azh, label %.noexc1300.us.i, label %._crit_edge3220.i, !llvm.loop !613

._crit_edge3220.i:                                ; preds = %._crit_edge3212.us.i, %.noexc1300.lr.ph.i, %.preheader2854.i
  %.21140.lcssa.i = phi i32 [ %.01138.lcssa.i, %.preheader2854.i ], [ %.01138.lcssa.i, %.noexc1300.lr.ph.i ], [ %.lcssa657, %._crit_edge3212.us.i ]
  %.21136.lcssa.i = phi i32 [ %.01134.lcssa.i, %.preheader2854.i ], [ %.01134.lcssa.i, %.noexc1300.lr.ph.i ], [ %.lcssa658, %._crit_edge3212.us.i ]
  store i32 %.21136.lcssa.i, ptr %.210673232.i, align 4, !tbaa !67
  store i32 %.21140.lcssa.i, ptr %.210703231.i, align 4, !tbaa !67
  %i.azi = getelementptr inbounds nuw i8, ptr %.210673232.i, i64 4
  %i.azj = getelementptr inbounds nuw i8, ptr %.210703231.i, i64 4
  %i.azk = add nuw nsw i32 %.210743230.i, 1       ; 2 uses
  %exitcond3723.not.i = icmp eq i32 %i.azk, %i.ph
  br i1 %exitcond3723.not.i, label %._crit_edge3233.i, label %.noexc1306.i, !llvm.loop !614

._crit_edge3233.i:                                ; preds = %._crit_edge3220.i, %.preheader2857.i
  %i.azl = add nuw nsw i32 %.010643234.i, 1       ; 2 uses
  %i.azm = load i32, ptr %i.h, align 4, !tbaa !67 ; 2 uses
  %i.azn = icmp slt i32 %i.azl, %i.azm
  br i1 %i.azn, label %_ZN4ncnn3MatD2Ev.exit1397.i, label %._crit_edge3235.loopexit.i, !llvm.loop !615

._crit_edge3523.i:                                ; preds = %._crit_edge3521.i, %._crit_edge3235.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  %.not.i.i.i.i = icmp eq ptr %.sroa.02778.0.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.ck

bb.ck:                                            ; preds = %._crit_edge3523.i
  %i.azo = ptrtoint ptr %.sroa.10.0.i to i64
  %i.azp = ptrtoint ptr %.sroa.02778.0.i to i64
  %i.azq = sub i64 %i.azo, %i.azp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02778.0.i, i64 noundef %i.azq) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.ck, %._crit_edge3523.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.thread194

_ZN4ncnn3MatD2Ev.exit1371.i:                      ; preds = %._crit_edge3521.i, %_ZN4ncnn3MatD2Ev.exit1371.lr.ph.i
  %indvars.iv3814.i = phi i64 [ %i.ol, %_ZN4ncnn3MatD2Ev.exit1371.lr.ph.i ], [ %indvars.iv.next3815.i, %._crit_edge3521.i ] ; 5 uses
  %i.azr = load ptr, ptr %9, align 16, !tbaa !18, !noalias !616
  %i.azs = load i64, ptr %i.fx, align 16, !tbaa !20, !noalias !616
  %i.azt = mul i64 %i.azs, %indvars.iv3814.i
  %i.azu = load i64, ptr %i.fq, align 16, !tbaa !65, !noalias !616
  %i.azv = mul i64 %i.azt, %i.azu
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azr, i64 %i.azv ; 2 uses
  br i1 %i.oa, label %.noexc1298.lr.ph.i, label %.preheader2853.i

.noexc1298.lr.ph.i:                               ; preds = %_ZN4ncnn3MatD2Ev.exit1371.i
  %i.azx = trunc nsw i64 %indvars.iv3814.i to i32 ; 3 uses
  %i.azy = sdiv i32 %i.azx, 4
  %i.azz = srem i32 %i.azx, 4
  %.lhs.trunc2844.i = trunc nsw i32 %i.azz to i8
  %i.baa = sdiv i8 %.lhs.trunc2844.i, 2
  %.sext2845.i = sext i8 %i.baa to i32
  %i.bab = srem i32 %i.azx, 2
  %i.bac = add nsw i32 %i.bab, %i.azy
  %i.bad = add nsw i32 %i.bac, %.sext2845.i
  %i.bae = sext i32 %i.bad to i64
  %i.baf = load i32, ptr %i.d, align 4, !tbaa !67 ; 8 uses
  %i.bag = icmp sgt i32 %i.baf, 7
  %i.bah = load i32, ptr %i.c, align 4            ; 3 uses
  %i.bai = load i32, ptr %i.b, align 4            ; 12 uses
  %i.baj = load i32, ptr %i.a, align 4            ; 9 uses
  %factor.op.mul3345.i = mul i32 %i.baj, %i.bah   ; 4 uses
  %i.bak = load i32, ptr %i.f, align 4            ; 3 uses
  %i.bal = icmp sgt i32 %i.bak, 0                 ; 3 uses
  %i.bam = load ptr, ptr %i.g, align 8            ; 3 uses
  %i.ban = icmp eq i32 %i.bah, 8
  %i.bao = add i32 %i.bak, -1
  %i.bap = zext i32 %i.bao to i64                 ; 3 uses
  %i.baq = shl nuw nsw i64 %i.bap, 3
  %i.bar = and i32 %i.baf, -8                     ; 2 uses
  %i.bas = add i32 %i.baf, -2
  %i.bat = shl nuw nsw i64 %i.bap, 1
  %wide.trip.count3729.i = zext nneg i32 %i.bak to i64 ; 3 uses
  br label %.noexc1298.i
end_hunk_0
begin_hunk_1_@_ZNK4ncnn15Convolution_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %scevgep3744.i = getelementptr i8, ptr %scevgep3743.i, i64 %i.bap
  %indvars.iv.next3749.i = add nuw nsw i64 %indvars.iv3748.i, 1 ; 2 uses
  %i.bor = trunc nuw i64 %indvars.iv.next3749.i to i32
  %i.bos = icmp sgt i32 %i.baf, %i.bor
  br i1 %i.bos, label %.noexc1280.us.i, label %._crit_edge3317.i, !llvm.loop !639

._crit_edge3317.i:                                ; preds = %._crit_edge3312.us.i, %.noexc1280.lr.ph.i, %.preheader2851.i
  %.lcssa2870.i = phi <4 x i32> [ %.lcssa2868.i, %.preheader2851.i ], [ %.lcssa2868.i, %.noexc1280.lr.ph.i ], [ %i.bop, %._crit_edge3312.us.i ]
  store <4 x i32> %.lcssa2870.i, ptr %.011563341.i, align 16, !tbaa !254
  %i.bot = getelementptr inbounds nuw i8, ptr %.011563341.i, i64 16 ; 2 uses
  %i.bou = add nuw nsw i32 %.011593340.i, 4       ; 3 uses
  %i.bov = or disjoint i32 %i.bou, 3
  %i.bow = icmp slt i32 %i.bov, %i.nz
  br i1 %i.bow, label %.noexc1298.i, label %.preheader2853.i, !llvm.loop !640

.preheader2852.i:                                 ; preds = %._crit_edge3425.i, %.preheader2853.i
  %.11160.lcssa.i = phi i32 [ %.01159.lcssa.i, %.preheader2853.i ], [ %i.bzb, %._crit_edge3425.i ] ; 2 uses
  %.11157.lcssa.i = phi ptr [ %.01156.lcssa.i, %.preheader2853.i ], [ %i.bza, %._crit_edge3425.i ]
  %i.box = icmp slt i32 %.11160.lcssa.i, %i.nz
  br i1 %i.box, label %.noexc1258.lr.ph.i, label %._crit_edge3521.i

.noexc1258.lr.ph.i:                               ; preds = %.preheader2852.i
  %i.boy = trunc nsw i64 %indvars.iv3814.i to i32 ; 3 uses
  %i.boz = sdiv i32 %i.boy, 4
  %i.bpa = srem i32 %i.boy, 4
  %.lhs.trunc2848.i = trunc nsw i32 %i.bpa to i8
  %i.bpb = sdiv i8 %.lhs.trunc2848.i, 2
  %.sext2849.i = sext i8 %i.bpb to i32
  %i.bpc = srem i32 %i.boy, 2
  %i.bpd = add nsw i32 %i.bpc, %i.boz
  %i.bpe = add nsw i32 %i.bpd, %.sext2849.i
  %i.bpf = load ptr, ptr %i.lp, align 8, !tbaa !18, !noalias !641
  %i.bpg = load i64, ptr %i.ob, align 8, !tbaa !20, !noalias !641
  %i.bph = sext i32 %i.bpe to i64
  %i.bpi = mul i64 %i.bpg, %i.bph
  %i.bpj = load i64, ptr %i.oc, align 8, !tbaa !65, !noalias !641
  %i.bpk = mul i64 %i.bpi, %i.bpj
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpf, i64 %i.bpk ; 4 uses
  %i.bpm = load ptr, ptr %8, align 8              ; 3 uses
  %i.bpn = load i64, ptr %i.bp, align 8
  %i.bpo = load i64, ptr %i.bj, align 8           ; 4 uses
  %factor.op.mul3460.i = mul i64 %i.bpo, %i.bpn   ; 4 uses
  br label %.noexc1258.i

.noexc1272.i:                                     ; preds = %._crit_edge3425.i, %.noexc1272.lr.ph.i
  %i.bpp = phi i32 [ %i.bau, %.noexc1272.lr.ph.i ], [ %i.bzc, %._crit_edge3425.i ] ; 2 uses
  %.111573441.i = phi ptr [ %.01156.lcssa.i, %.noexc1272.lr.ph.i ], [ %i.bza, %._crit_edge3425.i ] ; 3 uses
  %.111603440.i = phi i32 [ %.01159.lcssa.i, %.noexc1272.lr.ph.i ], [ %i.bzb, %._crit_edge3425.i ] ; 3 uses
  %i.bpq = sdiv i32 %.111603440.i, %i.ly          ; 3 uses
  %i.bpr = sdiv i32 %i.bpp, %i.ly                 ; 3 uses
  %i.bps = srem i32 %.111603440.i, %i.ly          ; 3 uses
  %i.bpt = srem i32 %i.bpp, %i.ly                 ; 3 uses
  %i.bpu = load i32, ptr %i.d, align 4, !tbaa !67 ; 8 uses
  %i.bpv = icmp sgt i32 %i.bpu, 7
  br i1 %i.bpv, label %.noexc1270.lr.ph.i, label %._crit_edge3366.i

.noexc1270.lr.ph.i:                               ; preds = %.noexc1272.i
  %i.bpw = load i32, ptr %i.c, align 4, !tbaa !67 ; 3 uses
  %i.bpx = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !644
  %i.bpy = sext i32 %i.bpx to i64
  %i.bpz = load i32, ptr %i.b, align 4, !tbaa !67 ; 2 uses
  %i.bqa = mul nsw i32 %i.bpz, %i.bpq
  %i.bqb = sext i32 %i.bqa to i64
  %i.bqc = mul i64 %i.bbm, %i.bpy                 ; 2 uses
  %i.bqd = mul i64 %i.bqc, %i.bqb
  %invariant.gep3373.i = getelementptr i8, ptr %i.bbk, i64 %i.bqd
  %i.bqe = load i32, ptr %i.a, align 4, !tbaa !67
  %i.bqf = mul i32 %i.bqe, %i.bpw                 ; 2 uses
  %i.bqg = mul i32 %i.bqf, %i.bps
  %i.bqh = sext i32 %i.bqg to i64
  %invariant.gep3374.i = getelementptr i8, ptr %invariant.gep3373.i, i64 %i.bqh
  %i.bqi = mul nsw i32 %i.bpz, %i.bpr
  %i.bqj = sext i32 %i.bqi to i64
  %i.bqk = mul i64 %i.bqc, %i.bqj
  %invariant.gep3378.i = getelementptr i8, ptr %i.bbk, i64 %i.bqk
  %i.bql = mul i32 %i.bqf, %i.bpt
  %i.bqm = sext i32 %i.bql to i64
  %invariant.gep3379.i = getelementptr i8, ptr %invariant.gep3378.i, i64 %i.bqm
  %i.bqn = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.bqo = icmp sgt i32 %i.bqn, 0
  %i.bqp = load ptr, ptr %i.g, align 8
  %i.bqq = icmp eq i32 %i.bpw, 8
  %i.bqr = add i32 %i.bqn, -1
  %i.bqs = zext i32 %i.bqr to i64
  %i.bqt = shl nuw nsw i64 %i.bqs, 3
  %wide.trip.count3756.i = zext nneg i32 %i.bqn to i64
  br i1 %i.bqo, label %.noexc1270.i.us, label %._crit_edge3366.loopexit.i

.noexc1270.i.us:                                  ; preds = %.noexc1270.lr.ph.i, %._crit_edge3358.loopexit.i.us
  %.011053365.i.us = phi i32 [ %i.btr, %._crit_edge3358.loopexit.i.us ], [ 0, %.noexc1270.lr.ph.i ] ; 2 uses
  %.011083364.i.us = phi ptr [ %scevgep3754.i.us, %._crit_edge3358.loopexit.i.us ], [ %i.bbj, %.noexc1270.lr.ph.i ] ; 2 uses
  %i.bqu = phi <4 x i32> [ %i.btp, %._crit_edge3358.loopexit.i.us ], [ zeroinitializer, %.noexc1270.lr.ph.i ]
  %i.bqv = phi <4 x i32> [ %i.btm, %._crit_edge3358.loopexit.i.us ], [ zeroinitializer, %.noexc1270.lr.ph.i ]
  %i.bqw = sdiv i32 %.011053365.i.us, %i.bpw
  %i.bqx = sext i32 %i.bqw to i64
  %.reass3372.i.us = mul i64 %factor.op.mul3371.i, %i.bqx ; 2 uses
  %gep3375.i.us = getelementptr i8, ptr %invariant.gep3374.i, i64 %.reass3372.i.us
  %gep3380.i.us = getelementptr i8, ptr %invariant.gep3379.i, i64 %.reass3372.i.us
  br label %.lr.ph3357.i.us

.lr.ph3357.i.us:                                  ; preds = %bb.cs, %.noexc1270.i.us
  %indvars.iv3751.i.us = phi i64 [ 0, %.noexc1270.i.us ], [ %indvars.iv.next3752.i.us, %bb.cs ] ; 2 uses
  %.111093355.i.us = phi ptr [ %.011083364.i.us, %.noexc1270.i.us ], [ %i.btq, %bb.cs ] ; 2 uses
  %.127903354.i.us = phi <4 x i32> [ %i.bqu, %.noexc1270.i.us ], [ %i.btp, %bb.cs ]
  %.127923353.i.us = phi <4 x i32> [ %i.bqv, %.noexc1270.i.us ], [ %i.btm, %bb.cs ]
  %i.bqy = getelementptr inbounds nuw [4 x i8], ptr %i.bqp, i64 %indvars.iv3751.i.us
  %i.bqz = load i32, ptr %i.bqy, align 4, !tbaa !67
  %i.bra = sext i32 %i.bqz to i64                 ; 2 uses
  %i.brb = getelementptr inbounds i8, ptr %gep3375.i.us, i64 %i.bra ; 9 uses
  %i.brc = getelementptr inbounds i8, ptr %gep3380.i.us, i64 %i.bra ; 9 uses
  br i1 %i.bqq, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph3357.i.us
  %i.brd = load i8, ptr %i.brb, align 1, !tbaa !254
  %i.bre = getelementptr inbounds nuw i8, ptr %i.brb, i64 %i.lx
  %i.brf = load i8, ptr %i.bre, align 1, !tbaa !254
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brb, i64 %i.od
  %i.brh = load i8, ptr %i.brg, align 1, !tbaa !254
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brb, i64 %i.oe
  %i.brj = load i8, ptr %i.bri, align 1, !tbaa !254
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brb, i64 %i.of
  %i.brl = load i8, ptr %i.brk, align 1, !tbaa !254
  %i.brm = getelementptr inbounds nuw i8, ptr %i.brb, i64 %i.og
  %i.brn = load i8, ptr %i.brm, align 1, !tbaa !254
  %i.bro = getelementptr inbounds nuw i8, ptr %i.brb, i64 %i.oh
  %i.brp = load i8, ptr %i.bro, align 1, !tbaa !254
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brb, i64 %i.oi
  %i.brr = load i8, ptr %i.brq, align 1, !tbaa !254
  %i.brs = insertelement <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %i.brd, i64 0
  %i.brt = insertelement <16 x i8> %i.brs, i8 %i.brf, i64 1
  %i.bru = insertelement <16 x i8> %i.brt, i8 %i.brh, i64 2
  %i.brv = insertelement <16 x i8> %i.bru, i8 %i.brj, i64 3
  %i.brw = insertelement <16 x i8> %i.brv, i8 %i.brl, i64 4
  %i.brx = insertelement <16 x i8> %i.brw, i8 %i.brn, i64 5
  %i.bry = insertelement <16 x i8> %i.brx, i8 %i.brp, i64 6
  %i.brz = insertelement <16 x i8> %i.bry, i8 %i.brr, i64 7
  %i.bsa = load i8, ptr %i.brc, align 1, !tbaa !254
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.brc, i64 %i.lx
  %i.bsc = load i8, ptr %i.bsb, align 1, !tbaa !254
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.brc, i64 %i.od
  %i.bse = load i8, ptr %i.bsd, align 1, !tbaa !254
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.brc, i64 %i.oe
  %i.bsg = load i8, ptr %i.bsf, align 1, !tbaa !254
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.brc, i64 %i.of
  %i.bsi = load i8, ptr %i.bsh, align 1, !tbaa !254
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.brc, i64 %i.og
  %i.bsk = load i8, ptr %i.bsj, align 1, !tbaa !254
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.brc, i64 %i.oh
  %i.bsm = load i8, ptr %i.bsl, align 1, !tbaa !254
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.brc, i64 %i.oi
  %i.bso = load i8, ptr %i.bsn, align 1, !tbaa !254
  %i.bsp = insertelement <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %i.bsa, i64 0
  %i.bsq = insertelement <16 x i8> %i.bsp, i8 %i.bsc, i64 1
  %i.bsr = insertelement <16 x i8> %i.bsq, i8 %i.bse, i64 2
  %i.bss = insertelement <16 x i8> %i.bsr, i8 %i.bsg, i64 3
  %i.bst = insertelement <16 x i8> %i.bss, i8 %i.bsi, i64 4
  %i.bsu = insertelement <16 x i8> %i.bst, i8 %i.bsk, i64 5
  %i.bsv = insertelement <16 x i8> %i.bsu, i8 %i.bsm, i64 6
  %i.bsw = insertelement <16 x i8> %i.bsv, i8 %i.bso, i64 7
  br label %bb.cs

bb.cr:                                            ; preds = %.lr.ph3357.i.us
  %i.bsx = load i64, ptr %i.brb, align 1, !tbaa !254
  %i.bsy = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bsx, i64 0
  %i.bsz = load i64, ptr %i.brc, align 1, !tbaa !254
  %i.bta = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bsz, i64 0
  %i.btb = bitcast <2 x i64> %i.bsy to <16 x i8>
  %i.btc = bitcast <2 x i64> %i.bta to <16 x i8>
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.02788.i.us = phi <16 x i8> [ %i.btb, %bb.cr ], [ %i.brz, %bb.cq ] ; 2 uses
  %storemerge1186.i.us = phi <16 x i8> [ %i.btc, %bb.cr ], [ %i.bsw, %bb.cq ] ; 2 uses
  %.lobit.i1705.i.us = ashr <16 x i8> %.02788.i.us, splat (i8 7)
  %i.btd = shufflevector <16 x i8> %.02788.i.us, <16 x i8> %.lobit.i1705.i.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %.lobit.i1704.i.us = ashr <16 x i8> %storemerge1186.i.us, splat (i8 7)
  %i.bte = shufflevector <16 x i8> %storemerge1186.i.us, <16 x i8> %.lobit.i1704.i.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.btf = load i64, ptr %.111093355.i.us, align 1, !tbaa !254
  %i.btg = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.btf, i64 0
  %i.bth = bitcast <2 x i64> %i.btg to <16 x i8>  ; 2 uses
  %.lobit.i1703.i.us = ashr <16 x i8> %i.bth, splat (i8 7)
  %i.bti = shufflevector <16 x i8> %i.bth, <16 x i8> %.lobit.i1703.i.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.btj = bitcast <16 x i8> %i.btd to <8 x i16>
  %i.btk = bitcast <16 x i8> %i.bti to <8 x i16>  ; 2 uses
  %i.btl = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.btj, <8 x i16> %i.btk)
  %i.btm = add <4 x i32> %i.btl, %.127923353.i.us ; 3 uses
  %i.btn = bitcast <16 x i8> %i.bte to <8 x i16>
  %i.bto = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.btn, <8 x i16> %i.btk)
  %i.btp = add <4 x i32> %i.bto, %.127903354.i.us ; 3 uses
  %i.btq = getelementptr inbounds nuw i8, ptr %.111093355.i.us, i64 8
  %indvars.iv.next3752.i.us = add nuw nsw i64 %indvars.iv3751.i.us, 1 ; 2 uses
  %exitcond3757.not.i.us = icmp eq i64 %indvars.iv.next3752.i.us, %wide.trip.count3756.i
  br i1 %exitcond3757.not.i.us, label %._crit_edge3358.loopexit.i.us, label %.lr.ph3357.i.us, !llvm.loop !647

._crit_edge3358.loopexit.i.us:                    ; preds = %bb.cs
  %scevgep3753.i.us = getelementptr i8, ptr %.011083364.i.us, i64 8
  %scevgep3754.i.us = getelementptr i8, ptr %scevgep3753.i.us, i64 %i.bqt ; 2 uses
  %i.btr = add nuw nsw i32 %.011053365.i.us, 8    ; 2 uses
  %i.bts = or disjoint i32 %i.btr, 7
  %i.btt = icmp slt i32 %i.bts, %i.bpu
  br i1 %i.btt, label %.noexc1270.i.us, label %._crit_edge3366.loopexit.i.loopexit, !llvm.loop !648

._crit_edge3366.loopexit.i.loopexit:              ; preds = %._crit_edge3358.loopexit.i.us
  %28 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.btm)
  %29 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.btp)
  br label %._crit_edge3366.loopexit.i

._crit_edge3366.loopexit.i:                       ; preds = %.noexc1270.lr.ph.i, %._crit_edge3366.loopexit.i.loopexit
  %30 = phi i32 [ %28, %._crit_edge3366.loopexit.i.loopexit ], [ 0, %.noexc1270.lr.ph.i ]
  %31 = phi i32 [ %29, %._crit_edge3366.loopexit.i.loopexit ], [ 0, %.noexc1270.lr.ph.i ]
  %.us-phi284 = phi ptr [ %scevgep3754.i.us, %._crit_edge3366.loopexit.i.loopexit ], [ %i.bbj, %.noexc1270.lr.ph.i ]
  %i.btu = and i32 %i.bpu, 2147483640
  br label %._crit_edge3366.i

._crit_edge3366.i:                                ; preds = %._crit_edge3366.loopexit.i, %.noexc1272.i
  %32 = phi i32 [ 0, %.noexc1272.i ], [ %30, %._crit_edge3366.loopexit.i ] ; 3 uses
  %33 = phi i32 [ 0, %.noexc1272.i ], [ %31, %._crit_edge3366.loopexit.i ] ; 3 uses
  %.01108.lcssa.i = phi ptr [ %i.bbj, %.noexc1272.i ], [ %.us-phi284, %._crit_edge3366.loopexit.i ] ; 3 uses
  %.01105.lcssa.i = phi i32 [ 0, %.noexc1272.i ], [ %i.btu, %._crit_edge3366.loopexit.i ] ; 5 uses
  %i.btv = or disjoint i32 %.01105.lcssa.i, 1
  %i.btw = icmp slt i32 %i.btv, %i.bpu
  br i1 %i.btw, label %.noexc1266.lr.ph.i, label %.preheader2850.i

.noexc1266.lr.ph.i:                               ; preds = %._crit_edge3366.i
  %i.btx = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !649
  %i.bty = sext i32 %i.btx to i64
  %i.btz = load i32, ptr %i.b, align 4, !tbaa !67 ; 2 uses
  %i.bua = mul nsw i32 %i.btz, %i.bpq
  %i.bub = sext i32 %i.bua to i64
  %i.buc = mul i64 %i.bbm, %i.bty                 ; 2 uses
  %i.bud = mul i64 %i.buc, %i.bub
  %invariant.gep3400.i = getelementptr i8, ptr %i.bbk, i64 %i.bud
  %i.bue = load i32, ptr %i.a, align 4, !tbaa !67 ; 2 uses
  %i.buf = mul nsw i32 %i.bue, %i.bps
  %i.bug = sext i32 %i.buf to i64
  %invariant.gep3401.i = getelementptr i8, ptr %invariant.gep3400.i, i64 %i.bug
  %i.buh = mul nsw i32 %i.btz, %i.bpr
  %i.bui = sext i32 %i.buh to i64
  %i.buj = mul i64 %i.buc, %i.bui
  %invariant.gep3405.i = getelementptr i8, ptr %i.bbk, i64 %i.buj
  %i.buk = mul nsw i32 %i.bue, %i.bpt
  %i.bul = sext i32 %i.buk to i64
  %invariant.gep3406.i = getelementptr i8, ptr %invariant.gep3405.i, i64 %i.bul
  %i.bum = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.bun = icmp sgt i32 %i.bum, 0
  %i.buo = load ptr, ptr %i.g, align 8
  br i1 %i.bun, label %.noexc1266.us.preheader.i, label %.noexc1266.preheader.i

.noexc1266.preheader.i:                           ; preds = %.noexc1266.lr.ph.i
  %i.bup = or disjoint i32 %.01105.lcssa.i, 2
  %i.buq = add nsw i32 %i.bpu, -2
  %i.bur = sub nsw i32 %i.buq, %.01105.lcssa.i
  %i.bus = and i32 %i.bur, -2
  %i.but = add i32 %i.bup, %i.bus
  br label %.preheader2850.i

.noexc1266.us.preheader.i:                        ; preds = %.noexc1266.lr.ph.i
  %i.buu = add nsw i32 %i.bum, -1
  %i.buv = zext nneg i32 %i.buu to i64
  %i.buw = shl nuw nsw i64 %i.buv, 1
  %i.bux = zext nneg i32 %.01105.lcssa.i to i64
  %wide.trip.count3763.i = zext nneg i32 %i.bum to i64
  br label %.noexc1266.us.i

.noexc1266.us.i:                                  ; preds = %._crit_edge3386.us.i, %.noexc1266.us.preheader.i
  %indvars.iv3765.i = phi i64 [ %i.bux, %.noexc1266.us.preheader.i ], [ %indvars.iv.next3766.i, %._crit_edge3386.us.i ] ; 2 uses
  %.211103392.us.i = phi ptr [ %.01108.lcssa.i, %.noexc1266.us.preheader.i ], [ %scevgep3761.i, %._crit_edge3386.us.i ] ; 2 uses
  %.011143391.us.i = phi i32 [ %33, %.noexc1266.us.preheader.i ], [ %i.bvz, %._crit_edge3386.us.i ]
  %.011183390.us.i = phi i32 [ %32, %.noexc1266.us.preheader.i ], [ %i.bvq, %._crit_edge3386.us.i ]
  %.reass3399.us.i = mul i64 %factor.op.mul3371.i, %indvars.iv3765.i ; 2 uses
  %gep3402.us.i = getelementptr i8, ptr %invariant.gep3401.i, i64 %.reass3399.us.i
  %gep3407.us.i = getelementptr i8, ptr %invariant.gep3406.i, i64 %.reass3399.us.i
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ct, %.noexc1266.us.i
  %indvars.iv3758.i = phi i64 [ 0, %.noexc1266.us.i ], [ %indvars.iv.next3759.i, %bb.ct ] ; 2 uses
  %.311113383.us.i = phi ptr [ %.211103392.us.i, %.noexc1266.us.i ], [ %i.bwa, %bb.ct ] ; 3 uses
  %.111153382.us.i = phi i32 [ %.011143391.us.i, %.noexc1266.us.i ], [ %i.bvz, %bb.ct ]
  %.111193381.us.i = phi i32 [ %.011183390.us.i, %.noexc1266.us.i ], [ %i.bvq, %bb.ct ]
  %i.buy = getelementptr inbounds nuw [4 x i8], ptr %i.buo, i64 %indvars.iv3758.i
  %i.buz = load i32, ptr %i.buy, align 4, !tbaa !67
  %i.bva = sext i32 %i.buz to i64                 ; 2 uses
  %i.bvb = getelementptr inbounds i8, ptr %gep3402.us.i, i64 %i.bva ; 2 uses
  %i.bvc = getelementptr inbounds i8, ptr %gep3407.us.i, i64 %i.bva ; 2 uses
  %i.bvd = load i8, ptr %i.bvb, align 1, !tbaa !254
  %i.bve = sext i8 %i.bvd to i32
  %i.bvf = load i8, ptr %.311113383.us.i, align 1, !tbaa !254
  %i.bvg = sext i8 %i.bvf to i32                  ; 2 uses
  %i.bvh = mul nsw i32 %i.bvg, %i.bve
  %i.bvi = add nsw i32 %i.bvh, %.111193381.us.i
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.bvb, i64 %i.lx
  %i.bvk = load i8, ptr %i.bvj, align 1, !tbaa !254
  %i.bvl = sext i8 %i.bvk to i32
  %i.bvm = getelementptr inbounds nuw i8, ptr %.311113383.us.i, i64 1
  %i.bvn = load i8, ptr %i.bvm, align 1, !tbaa !254
  %i.bvo = sext i8 %i.bvn to i32                  ; 2 uses
  %i.bvp = mul nsw i32 %i.bvo, %i.bvl
  %i.bvq = add nsw i32 %i.bvi, %i.bvp             ; 3 uses
  %i.bvr = load i8, ptr %i.bvc, align 1, !tbaa !254
  %i.bvs = sext i8 %i.bvr to i32
  %i.bvt = mul nsw i32 %i.bvs, %i.bvg
  %i.bvu = add nsw i32 %i.bvt, %.111153382.us.i
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvc, i64 %i.lx
  %i.bvw = load i8, ptr %i.bvv, align 1, !tbaa !254
  %i.bvx = sext i8 %i.bvw to i32
  %i.bvy = mul nsw i32 %i.bvx, %i.bvo
  %i.bvz = add nsw i32 %i.bvu, %i.bvy             ; 3 uses
  %i.bwa = getelementptr inbounds nuw i8, ptr %.311113383.us.i, i64 2
  %indvars.iv.next3759.i = add nuw nsw i64 %indvars.iv3758.i, 1 ; 2 uses
  %exitcond3764.not.i = icmp eq i64 %indvars.iv.next3759.i, %wide.trip.count3763.i
  br i1 %exitcond3764.not.i, label %._crit_edge3386.us.i, label %bb.ct, !llvm.loop !652

._crit_edge3386.us.i:                             ; preds = %bb.ct
  %scevgep3760.i = getelementptr i8, ptr %.211103392.us.i, i64 2
  %scevgep3761.i = getelementptr i8, ptr %scevgep3760.i, i64 %i.buw ; 2 uses
  %indvars.iv.next3766.i = add nuw nsw i64 %indvars.iv3765.i, 2 ; 2 uses
  %i.bwb = trunc i64 %indvars.iv.next3766.i to i32 ; 2 uses
  %i.bwc = or i32 %i.bwb, 1
  %i.bwd = icmp slt i32 %i.bwc, %i.bpu
  br i1 %i.bwd, label %.noexc1266.us.i, label %.preheader2850.i, !llvm.loop !653

.preheader2850.i:                                 ; preds = %._crit_edge3386.us.i, %.noexc1266.preheader.i, %._crit_edge3366.i
  %.01118.lcssa.i = phi i32 [ %32, %._crit_edge3366.i ], [ %32, %.noexc1266.preheader.i ], [ %i.bvq, %._crit_edge3386.us.i ] ; 3 uses
  %.01114.lcssa.i = phi i32 [ %33, %._crit_edge3366.i ], [ %33, %.noexc1266.preheader.i ], [ %i.bvz, %._crit_edge3386.us.i ] ; 3 uses
  %.21110.lcssa.i = phi ptr [ %.01108.lcssa.i, %._crit_edge3366.i ], [ %.01108.lcssa.i, %.noexc1266.preheader.i ], [ %scevgep3761.i, %._crit_edge3386.us.i ]
  %.11106.lcssa.i = phi i32 [ %.01105.lcssa.i, %._crit_edge3366.i ], [ %i.but, %.noexc1266.preheader.i ], [ %i.bwb, %._crit_edge3386.us.i ] ; 2 uses
  %i.bwe = icmp slt i32 %.11106.lcssa.i, %i.bpu
  br i1 %i.bwe, label %.noexc1262.lr.ph.i, label %._crit_edge3425.i

.noexc1262.lr.ph.i:                               ; preds = %.preheader2850.i
  %i.bwf = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !654
  %i.bwg = sext i32 %i.bwf to i64
  %i.bwh = load i32, ptr %i.b, align 4, !tbaa !67 ; 2 uses
  %i.bwi = mul nsw i32 %i.bwh, %i.bpq
  %i.bwj = sext i32 %i.bwi to i64
  %i.bwk = mul i64 %i.bbm, %i.bwg                 ; 2 uses
  %i.bwl = mul i64 %i.bwk, %i.bwj
  %invariant.gep3430.i = getelementptr i8, ptr %i.bbk, i64 %i.bwl
  %i.bwm = load i32, ptr %i.a, align 4, !tbaa !67 ; 2 uses
  %i.bwn = mul nsw i32 %i.bwm, %i.bps
  %i.bwo = sext i32 %i.bwn to i64
  %invariant.gep3431.i = getelementptr i8, ptr %invariant.gep3430.i, i64 %i.bwo
  %i.bwp = mul nsw i32 %i.bwh, %i.bpr
  %i.bwq = sext i32 %i.bwp to i64
  %i.bwr = mul i64 %i.bwk, %i.bwq
  %invariant.gep3435.i = getelementptr i8, ptr %i.bbk, i64 %i.bwr
  %i.bws = mul nsw i32 %i.bwm, %i.bpt
  %i.bwt = sext i32 %i.bws to i64
  %invariant.gep3436.i = getelementptr i8, ptr %invariant.gep3435.i, i64 %i.bwt
  %i.bwu = load i32, ptr %i.f, align 4, !tbaa !67 ; 4 uses
  %i.bwv = icmp sgt i32 %i.bwu, 0
  %i.bww = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.bwv, label %.noexc1262.us.preheader.i, label %._crit_edge3425.i

.noexc1262.us.preheader.i:                        ; preds = %.noexc1262.lr.ph.i
  %i.bwx = zext i32 %.11106.lcssa.i to i64
  %i.bwy = zext nneg i32 %i.bwu to i64            ; 3 uses
  %xtraiter665 = and i64 %i.bwy, 1
  %i.bwz = icmp eq i32 %i.bwu, 1
  %unroll_iter670 = and i64 %i.bwy, 2147483646
  %lcmp.mod666.not = icmp eq i64 %xtraiter665, 0
  %lcmp.mod669 = trunc i32 %i.bwu to i1
  br label %.noexc1262.us.i

.noexc1262.us.i:                                  ; preds = %._crit_edge3417.us.i, %.noexc1262.us.preheader.i
  %indvars.iv3775.i = phi i64 [ %i.bwx, %.noexc1262.us.preheader.i ], [ %indvars.iv.next3776.i, %._crit_edge3417.us.i ] ; 2 uses
  %.411123423.us.i = phi ptr [ %.21110.lcssa.i, %.noexc1262.us.preheader.i ], [ %i.byw, %._crit_edge3417.us.i ] ; 3 uses
  %.211163422.us.i = phi i32 [ %.01114.lcssa.i, %.noexc1262.us.preheader.i ], [ %.lcssa611, %._crit_edge3417.us.i ] ; 2 uses
  %.211203421.us.i = phi i32 [ %.01118.lcssa.i, %.noexc1262.us.preheader.i ], [ %.lcssa612, %._crit_edge3417.us.i ] ; 2 uses
  %.reass3429.us.i = mul i64 %factor.op.mul3371.i, %indvars.iv3775.i ; 2 uses
  %gep3432.us.i = getelementptr i8, ptr %invariant.gep3431.i, i64 %.reass3429.us.i ; 3 uses
  %gep3437.us.i = getelementptr i8, ptr %invariant.gep3436.i, i64 %.reass3429.us.i ; 3 uses
  br i1 %i.bwz, label %.epil.preheader664, label %.noexc1262.us.i.new

.noexc1262.us.i.new:                              ; preds = %.noexc1262.us.i, %.noexc1262.us.i.new
  %indvars.iv3768.i = phi i64 [ %indvars.iv.next3769.i.1, %.noexc1262.us.i.new ], [ 0, %.noexc1262.us.i ] ; 3 uses
  %.511133414.us.i = phi ptr [ %i.byg, %.noexc1262.us.i.new ], [ %.411123423.us.i, %.noexc1262.us.i ] ; 3 uses
  %.311173413.us.i = phi i32 [ %i.byf, %.noexc1262.us.i.new ], [ %.211163422.us.i, %.noexc1262.us.i ]
  %.311213412.us.i = phi i32 [ %i.byb, %.noexc1262.us.i.new ], [ %.211203421.us.i, %.noexc1262.us.i ]
  %niter671 = phi i64 [ %niter671.next.1, %.noexc1262.us.i.new ], [ 0, %.noexc1262.us.i ]
  %i.bxa = getelementptr inbounds nuw [4 x i8], ptr %i.bww, i64 %indvars.iv3768.i
  %i.bxb = load i32, ptr %i.bxa, align 4, !tbaa !67
  %i.bxc = sext i32 %i.bxb to i64                 ; 2 uses
  %i.bxd = getelementptr inbounds i8, ptr %gep3432.us.i, i64 %i.bxc
  %i.bxe = getelementptr inbounds i8, ptr %gep3437.us.i, i64 %i.bxc
  %i.bxf = load i8, ptr %i.bxd, align 1, !tbaa !254
  %i.bxg = sext i8 %i.bxf to i32
  %i.bxh = load i8, ptr %.511133414.us.i, align 1, !tbaa !254
  %i.bxi = sext i8 %i.bxh to i32                  ; 2 uses
  %i.bxj = mul nsw i32 %i.bxi, %i.bxg
  %i.bxk = add nsw i32 %i.bxj, %.311213412.us.i
  %i.bxl = load i8, ptr %i.bxe, align 1, !tbaa !254
  %i.bxm = sext i8 %i.bxl to i32
  %i.bxn = mul nsw i32 %i.bxm, %i.bxi
  %i.bxo = add nsw i32 %i.bxn, %.311173413.us.i
  %i.bxp = getelementptr inbounds nuw i8, ptr %.511133414.us.i, i64 1
  %i.bxq = getelementptr inbounds nuw [4 x i8], ptr %i.bww, i64 %indvars.iv3768.i
  %i.bxr = getelementptr inbounds nuw i8, ptr %i.bxq, i64 4
  %i.bxs = load i32, ptr %i.bxr, align 4, !tbaa !67
  %i.bxt = sext i32 %i.bxs to i64                 ; 2 uses
  %i.bxu = getelementptr inbounds i8, ptr %gep3432.us.i, i64 %i.bxt
  %i.bxv = getelementptr inbounds i8, ptr %gep3437.us.i, i64 %i.bxt
  %i.bxw = load i8, ptr %i.bxu, align 1, !tbaa !254
  %i.bxx = sext i8 %i.bxw to i32
  %i.bxy = load i8, ptr %i.bxp, align 1, !tbaa !254
  %i.bxz = sext i8 %i.bxy to i32                  ; 2 uses
  %i.bya = mul nsw i32 %i.bxz, %i.bxx
  %i.byb = add nsw i32 %i.bya, %i.bxk             ; 3 uses
  %i.byc = load i8, ptr %i.bxv, align 1, !tbaa !254
  %i.byd = sext i8 %i.byc to i32
  %i.bye = mul nsw i32 %i.byd, %i.bxz
  %i.byf = add nsw i32 %i.bye, %i.bxo             ; 3 uses
  %i.byg = getelementptr inbounds nuw i8, ptr %.511133414.us.i, i64 2 ; 2 uses
  %indvars.iv.next3769.i.1 = add nuw nsw i64 %indvars.iv3768.i, 2 ; 2 uses
  %niter671.next.1 = add i64 %niter671, 2         ; 2 uses
  %niter671.ncmp.1 = icmp eq i64 %niter671.next.1, %unroll_iter670
  br i1 %niter671.ncmp.1, label %._crit_edge3417.us.i.unr-lcssa, label %.noexc1262.us.i.new, !llvm.loop !657

._crit_edge3417.us.i.unr-lcssa:                   ; preds = %.noexc1262.us.i.new
  br i1 %lcmp.mod666.not, label %._crit_edge3417.us.i, label %.epil.preheader664

.epil.preheader664:                               ; preds = %._crit_edge3417.us.i.unr-lcssa, %.noexc1262.us.i
  %indvars.iv3768.i.epil.init = phi i64 [ 0, %.noexc1262.us.i ], [ %indvars.iv.next3769.i.1, %._crit_edge3417.us.i.unr-lcssa ]
  %.511133414.us.i.epil.init = phi ptr [ %.411123423.us.i, %.noexc1262.us.i ], [ %i.byg, %._crit_edge3417.us.i.unr-lcssa ]
  %.311173413.us.i.epil.init = phi i32 [ %.211163422.us.i, %.noexc1262.us.i ], [ %i.byf, %._crit_edge3417.us.i.unr-lcssa ]
  %.311213412.us.i.epil.init = phi i32 [ %.211203421.us.i, %.noexc1262.us.i ], [ %i.byb, %._crit_edge3417.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod669)
  %i.byh = getelementptr inbounds nuw [4 x i8], ptr %i.bww, i64 %indvars.iv3768.i.epil.init
  %i.byi = load i32, ptr %i.byh, align 4, !tbaa !67
  %i.byj = sext i32 %i.byi to i64                 ; 2 uses
  %i.byk = getelementptr inbounds i8, ptr %gep3432.us.i, i64 %i.byj
  %i.byl = getelementptr inbounds i8, ptr %gep3437.us.i, i64 %i.byj
  %i.bym = load i8, ptr %i.byk, align 1, !tbaa !254
  %i.byn = sext i8 %i.bym to i32
  %i.byo = load i8, ptr %.511133414.us.i.epil.init, align 1, !tbaa !254
  %i.byp = sext i8 %i.byo to i32                  ; 2 uses
  %i.byq = mul nsw i32 %i.byp, %i.byn
  %i.byr = add nsw i32 %i.byq, %.311213412.us.i.epil.init
  %i.bys = load i8, ptr %i.byl, align 1, !tbaa !254
  %i.byt = sext i8 %i.bys to i32
  %i.byu = mul nsw i32 %i.byt, %i.byp
  %i.byv = add nsw i32 %i.byu, %.311173413.us.i.epil.init
  br label %._crit_edge3417.us.i

._crit_edge3417.us.i:                             ; preds = %._crit_edge3417.us.i.unr-lcssa, %.epil.preheader664
  %.lcssa612 = phi i32 [ %i.byb, %._crit_edge3417.us.i.unr-lcssa ], [ %i.byr, %.epil.preheader664 ] ; 2 uses
  %.lcssa611 = phi i32 [ %i.byf, %._crit_edge3417.us.i.unr-lcssa ], [ %i.byv, %.epil.preheader664 ] ; 2 uses
  %i.byw = getelementptr i8, ptr %.411123423.us.i, i64 %i.bwy
  %indvars.iv.next3776.i = add nuw nsw i64 %indvars.iv3775.i, 1 ; 2 uses
  %i.byx = trunc nuw i64 %indvars.iv.next3776.i to i32
  %i.byy = icmp sgt i32 %i.bpu, %i.byx
  br i1 %i.byy, label %.noexc1262.us.i, label %._crit_edge3425.i, !llvm.loop !658

._crit_edge3425.i:                                ; preds = %._crit_edge3417.us.i, %.noexc1262.lr.ph.i, %.preheader2850.i
  %.21120.lcssa.i = phi i32 [ %.01118.lcssa.i, %.preheader2850.i ], [ %.01118.lcssa.i, %.noexc1262.lr.ph.i ], [ %.lcssa612, %._crit_edge3417.us.i ]
  %.21116.lcssa.i = phi i32 [ %.01114.lcssa.i, %.preheader2850.i ], [ %.01114.lcssa.i, %.noexc1262.lr.ph.i ], [ %.lcssa611, %._crit_edge3417.us.i ]
  store i32 %.21120.lcssa.i, ptr %.111573441.i, align 4, !tbaa !67
  %i.byz = getelementptr inbounds nuw i8, ptr %.111573441.i, i64 4
  store i32 %.21116.lcssa.i, ptr %i.byz, align 4, !tbaa !67
  %i.bza = getelementptr inbounds nuw i8, ptr %.111573441.i, i64 8 ; 2 uses
  %i.bzb = add nuw nsw i32 %.111603440.i, 2       ; 3 uses
  %i.bzc = or disjoint i32 %i.bzb, 1              ; 2 uses
  %i.bzd = icmp slt i32 %i.bzc, %i.nz
  br i1 %i.bzd, label %.noexc1272.i, label %.preheader2852.i, !llvm.loop !659

.noexc1258.i:                                     ; preds = %._crit_edge3511.i, %.noexc1258.lr.ph.i
  %.211583520.i = phi ptr [ %.11157.lcssa.i, %.noexc1258.lr.ph.i ], [ %i.cja, %._crit_edge3511.i ] ; 2 uses
  %.211613519.i = phi i32 [ %.11160.lcssa.i, %.noexc1258.lr.ph.i ], [ %i.cjb, %._crit_edge3511.i ] ; 3 uses
  %i.bze = sdiv i32 %.211613519.i, %i.ly          ; 3 uses
  %i.bzf = srem i32 %.211613519.i, %i.ly          ; 3 uses
  %i.bzg = load i32, ptr %i.d, align 4, !tbaa !67 ; 11 uses
  %i.bzh = icmp sgt i32 %i.bzg, 7
  br i1 %i.bzh, label %.noexc1256.lr.ph.i, label %._crit_edge3456.i

.noexc1256.lr.ph.i:                               ; preds = %.noexc1258.i
  %i.bzi = load i32, ptr %i.c, align 4, !tbaa !67 ; 3 uses
  %i.bzj = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !660
  %i.bzk = sext i32 %i.bzj to i64
  %i.bzl = load i32, ptr %i.b, align 4, !tbaa !67
  %i.bzm = mul nsw i32 %i.bzl, %i.bze
  %i.bzn = sext i32 %i.bzm to i64
  %i.bzo = mul i64 %i.bpo, %i.bzk
  %i.bzp = mul i64 %i.bzo, %i.bzn
  %invariant.gep3462.i = getelementptr i8, ptr %i.bpm, i64 %i.bzp
  %i.bzq = load i32, ptr %i.a, align 4, !tbaa !67
  %i.bzr = mul i32 %i.bzi, %i.bzf
  %i.bzs = mul i32 %i.bzr, %i.bzq
  %i.bzt = sext i32 %i.bzs to i64
  %invariant.gep3463.i = getelementptr i8, ptr %invariant.gep3462.i, i64 %i.bzt ; 2 uses
  %i.bzu = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.bzv = icmp sgt i32 %i.bzu, 0
  %i.bzw = load ptr, ptr %i.g, align 8            ; 2 uses
  br i1 %i.bzv, label %.noexc1256.lr.ph.split.us.i, label %.noexc1256.preheader.i

.noexc1256.preheader.i:                           ; preds = %.noexc1256.lr.ph.i
  %i.bzx = and i32 %i.bzg, 2147483640
  br label %._crit_edge3456.i

.noexc1256.lr.ph.split.us.i:                      ; preds = %.noexc1256.lr.ph.i
  %i.bzy = icmp eq i32 %i.bzi, 8
  %i.bzz = add nsw i32 %i.bzu, -1
  %i.caa = zext nneg i32 %i.bzz to i64
  %i.cab = shl nuw nsw i64 %i.caa, 3              ; 2 uses
  %wide.trip.count3790.i = zext nneg i32 %i.bzu to i64 ; 2 uses
  br i1 %i.bzy, label %.noexc1256.us.us.i.preheader, label %.noexc1256.us.i

.noexc1256.us.us.i.preheader:                     ; preds = %.noexc1256.lr.ph.split.us.i
  %i.cac = zext nneg i32 %i.bzg to i64
  br label %.noexc1256.us.us.i

.noexc1256.us.us.i:                               ; preds = %.noexc1256.us.us.i.preheader, %._crit_edge3448.split.us.us.us.i
  %indvars.iv = phi i64 [ 0, %.noexc1256.us.us.i.preheader ], [ %indvars.iv.next, %._crit_edge3448.split.us.us.us.i ] ; 2 uses
  %.010533454.us.us.i = phi ptr [ %i.bpl, %.noexc1256.us.us.i.preheader ], [ %scevgep3788.i, %._crit_edge3448.split.us.us.us.i ] ; 2 uses
  %i.cad = phi <4 x i32> [ zeroinitializer, %.noexc1256.us.us.i.preheader ], [ %i.cau, %._crit_edge3448.split.us.us.us.i ]
  %i.cae = lshr exact i64 %indvars.iv, 3
  %.reass3461.us.us.i = mul i64 %factor.op.mul3460.i, %i.cae
  %gep3464.us.us.i = getelementptr i8, ptr %invariant.gep3463.i, i64 %.reass3461.us.us.i
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %.noexc1256.us.us.i
  %indvars.iv3785.i = phi i64 [ %indvars.iv.next3786.i, %bb.cu ], [ 0, %.noexc1256.us.us.i ] ; 2 uses
  %.110543445.us.us.us.i = phi ptr [ %i.cav, %bb.cu ], [ %.010533454.us.us.i, %.noexc1256.us.us.i ] ; 2 uses
  %.13444.us.us.us.i = phi <4 x i32> [ %i.cau, %bb.cu ], [ %i.cad, %.noexc1256.us.us.i ]
  %i.caf = getelementptr inbounds nuw [4 x i8], ptr %i.bzw, i64 %indvars.iv3785.i
  %i.cag = load i32, ptr %i.caf, align 4, !tbaa !67
  %i.cah = sext i32 %i.cag to i64
  %i.cai = getelementptr inbounds i8, ptr %gep3464.us.us.i, i64 %i.cah
  %i.caj = load i64, ptr %i.cai, align 1, !tbaa !254
  %i.cak = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.caj, i64 0
  %i.cal = bitcast <2 x i64> %i.cak to <16 x i8>  ; 2 uses
  %.lobit.i1702.us.us.us.i = ashr <16 x i8> %i.cal, splat (i8 7)
  %i.cam = shufflevector <16 x i8> %i.cal, <16 x i8> %.lobit.i1702.us.us.us.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.can = load i64, ptr %.110543445.us.us.us.i, align 1, !tbaa !254
  %i.cao = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.can, i64 0
  %i.cap = bitcast <2 x i64> %i.cao to <16 x i8>  ; 2 uses
  %.lobit.i.us.us.us.i = ashr <16 x i8> %i.cap, splat (i8 7)
  %i.caq = shufflevector <16 x i8> %i.cap, <16 x i8> %.lobit.i.us.us.us.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.car = bitcast <16 x i8> %i.cam to <8 x i16>
  %i.cas = bitcast <16 x i8> %i.caq to <8 x i16>
  %i.cat = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.car, <8 x i16> %i.cas)
  %i.cau = add <4 x i32> %i.cat, %.13444.us.us.us.i ; 3 uses
  %i.cav = getelementptr inbounds nuw i8, ptr %.110543445.us.us.us.i, i64 8
  %indvars.iv.next3786.i = add nuw nsw i64 %indvars.iv3785.i, 1 ; 2 uses
  %exitcond3791.not.i = icmp eq i64 %indvars.iv.next3786.i, %wide.trip.count3790.i
  br i1 %exitcond3791.not.i, label %._crit_edge3448.split.us.us.us.i, label %bb.cu, !llvm.loop !663

._crit_edge3448.split.us.us.us.i:                 ; preds = %bb.cu
  %scevgep3787.i = getelementptr i8, ptr %.010533454.us.us.i, i64 8
  %scevgep3788.i = getelementptr i8, ptr %scevgep3787.i, i64 %i.cab ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.caw = or disjoint i64 %indvars.iv.next, 7
  %i.cax = icmp samesign ult i64 %i.caw, %i.cac
  br i1 %i.cax, label %.noexc1256.us.us.i, label %._crit_edge3456.loopexit.i, !llvm.loop !664

.noexc1256.us.i:                                  ; preds = %.noexc1256.lr.ph.split.us.i, %._crit_edge3448.split.us3470.i
  %.010503455.us.i = phi i32 [ %i.ccm, %._crit_edge3448.split.us3470.i ], [ 0, %.noexc1256.lr.ph.split.us.i ] ; 2 uses
  %.010533454.us.i = phi ptr [ %scevgep3781.i, %._crit_edge3448.split.us3470.i ], [ %i.bpl, %.noexc1256.lr.ph.split.us.i ] ; 2 uses
  %i.cay = phi <4 x i32> [ %i.cck, %._crit_edge3448.split.us3470.i ], [ zeroinitializer, %.noexc1256.lr.ph.split.us.i ]
  %i.caz = sdiv i32 %.010503455.us.i, %i.bzi
  %i.cba = sext i32 %i.caz to i64
  %.reass3461.us.i = mul i64 %factor.op.mul3460.i, %i.cba
  %gep3464.us.i = getelementptr i8, ptr %invariant.gep3463.i, i64 %.reass3461.us.i
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.noexc1256.us.i
  %indvars.iv3778.i = phi i64 [ 0, %.noexc1256.us.i ], [ %indvars.iv.next3779.i, %bb.cv ] ; 2 uses
  %.110543445.us3466.i = phi ptr [ %.010533454.us.i, %.noexc1256.us.i ], [ %i.ccl, %bb.cv ] ; 2 uses
  %.13444.us3467.i = phi <4 x i32> [ %i.cay, %.noexc1256.us.i ], [ %i.cck, %bb.cv ]
  %i.cbb = getelementptr inbounds nuw [4 x i8], ptr %i.bzw, i64 %indvars.iv3778.i
  %i.cbc = load i32, ptr %i.cbb, align 4, !tbaa !67
  %i.cbd = sext i32 %i.cbc to i64
  %i.cbe = getelementptr inbounds i8, ptr %gep3464.us.i, i64 %i.cbd ; 8 uses
  %i.cbf = load i8, ptr %i.cbe, align 1, !tbaa !254
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.cbe, i64 %i.lx
  %i.cbh = load i8, ptr %i.cbg, align 1, !tbaa !254
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cbe, i64 %i.od
  %i.cbj = load i8, ptr %i.cbi, align 1, !tbaa !254
  %i.cbk = getelementptr inbounds nuw i8, ptr %i.cbe, i64 %i.oe
  %i.cbl = load i8, ptr %i.cbk, align 1, !tbaa !254
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.cbe, i64 %i.of
  %i.cbn = load i8, ptr %i.cbm, align 1, !tbaa !254
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.cbe, i64 %i.og
  %i.cbp = load i8, ptr %i.cbo, align 1, !tbaa !254
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.cbe, i64 %i.oh
  %i.cbr = load i8, ptr %i.cbq, align 1, !tbaa !254
  %i.cbs = getelementptr inbounds nuw i8, ptr %i.cbe, i64 %i.oi
  %i.cbt = load i8, ptr %i.cbs, align 1, !tbaa !254
  %i.cbu = insertelement <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %i.cbf, i64 0
  %i.cbv = insertelement <16 x i8> %i.cbu, i8 %i.cbh, i64 1
  %i.cbw = insertelement <16 x i8> %i.cbv, i8 %i.cbj, i64 2
  %i.cbx = insertelement <16 x i8> %i.cbw, i8 %i.cbl, i64 3
  %i.cby = insertelement <16 x i8> %i.cbx, i8 %i.cbn, i64 4
  %i.cbz = insertelement <16 x i8> %i.cby, i8 %i.cbp, i64 5
  %i.cca = insertelement <16 x i8> %i.cbz, i8 %i.cbr, i64 6
  %i.ccb = insertelement <16 x i8> %i.cca, i8 %i.cbt, i64 7 ; 2 uses
  %.lobit.i1702.us3468.i = ashr <16 x i8> %i.ccb, splat (i8 7)
  %i.ccc = shufflevector <16 x i8> %i.ccb, <16 x i8> %.lobit.i1702.us3468.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ccd = load i64, ptr %.110543445.us3466.i, align 1, !tbaa !254
  %i.cce = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ccd, i64 0
  %i.ccf = bitcast <2 x i64> %i.cce to <16 x i8>  ; 2 uses
  %.lobit.i.us3469.i = ashr <16 x i8> %i.ccf, splat (i8 7)
  %i.ccg = shufflevector <16 x i8> %i.ccf, <16 x i8> %.lobit.i.us3469.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cch = bitcast <16 x i8> %i.ccc to <8 x i16>
  %i.cci = bitcast <16 x i8> %i.ccg to <8 x i16>
  %i.ccj = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cch, <8 x i16> %i.cci)
  %i.cck = add <4 x i32> %i.ccj, %.13444.us3467.i ; 3 uses
  %i.ccl = getelementptr inbounds nuw i8, ptr %.110543445.us3466.i, i64 8
  %indvars.iv.next3779.i = add nuw nsw i64 %indvars.iv3778.i, 1 ; 2 uses
  %exitcond3784.not.i = icmp eq i64 %indvars.iv.next3779.i, %wide.trip.count3790.i
  br i1 %exitcond3784.not.i, label %._crit_edge3448.split.us3470.i, label %bb.cv, !llvm.loop !663

._crit_edge3448.split.us3470.i:                   ; preds = %bb.cv
  %scevgep3780.i = getelementptr i8, ptr %.010533454.us.i, i64 8
  %scevgep3781.i = getelementptr i8, ptr %scevgep3780.i, i64 %i.cab ; 2 uses
  %i.ccm = add nuw nsw i32 %.010503455.us.i, 8    ; 2 uses
  %i.ccn = or disjoint i32 %i.ccm, 7
  %i.cco = icmp slt i32 %i.ccn, %i.bzg
  br i1 %i.cco, label %.noexc1256.us.i, label %._crit_edge3456.loopexit3526.i, !llvm.loop !664

._crit_edge3456.loopexit.i:                       ; preds = %._crit_edge3448.split.us.us.us.i
  %i.ccp = and i32 %i.bzg, 2147483640
  br label %._crit_edge3456.i

._crit_edge3456.loopexit3526.i:                   ; preds = %._crit_edge3448.split.us3470.i
  %i.ccq = and i32 %i.bzg, 2147483640
  br label %._crit_edge3456.i

._crit_edge3456.i:                                ; preds = %._crit_edge3456.loopexit3526.i, %._crit_edge3456.loopexit.i, %.noexc1256.preheader.i, %.noexc1258.i
  %i.ccr = phi <4 x i32> [ zeroinitializer, %.noexc1258.i ], [ %i.cau, %._crit_edge3456.loopexit.i ], [ %i.cck, %._crit_edge3456.loopexit3526.i ], [ zeroinitializer, %.noexc1256.preheader.i ]
  %.01053.lcssa.i = phi ptr [ %i.bpl, %.noexc1258.i ], [ %scevgep3788.i, %._crit_edge3456.loopexit.i ], [ %scevgep3781.i, %._crit_edge3456.loopexit3526.i ], [ %i.bpl, %.noexc1256.preheader.i ] ; 3 uses
  %.01050.lcssa.i = phi i32 [ 0, %.noexc1258.i ], [ %i.ccp, %._crit_edge3456.loopexit.i ], [ %i.ccq, %._crit_edge3456.loopexit3526.i ], [ %i.bzx, %.noexc1256.preheader.i ] ; 6 uses
  %34 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ccr) ; 3 uses
  %i.ccs = or disjoint i32 %.01050.lcssa.i, 1
  %i.cct = icmp slt i32 %i.ccs, %i.bzg
  br i1 %i.cct, label %.noexc1254.lr.ph.i, label %.preheader.i

.noexc1254.lr.ph.i:                               ; preds = %._crit_edge3456.i
  %i.ccu = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !665
  %i.ccv = sext i32 %i.ccu to i64
  %i.ccw = load i32, ptr %i.b, align 4, !tbaa !67
  %i.ccx = mul nsw i32 %i.ccw, %i.bze
  %i.ccy = sext i32 %i.ccx to i64
  %i.ccz = mul i64 %i.bpo, %i.ccv
  %i.cda = mul i64 %i.ccz, %i.ccy
  %invariant.gep3495.i = getelementptr i8, ptr %i.bpm, i64 %i.cda
  %i.cdb = load i32, ptr %i.a, align 4, !tbaa !67
  %i.cdc = mul nsw i32 %i.cdb, %i.bzf
  %i.cdd = sext i32 %i.cdc to i64
  %invariant.gep3496.i = getelementptr i8, ptr %invariant.gep3495.i, i64 %i.cdd
  %i.cde = load i32, ptr %i.f, align 4, !tbaa !67 ; 5 uses
  %i.cdf = icmp sgt i32 %i.cde, 0
  %i.cdg = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.cdf, label %.noexc1254.us.preheader.i, label %.noexc1254.preheader.i

.noexc1254.preheader.i:                           ; preds = %.noexc1254.lr.ph.i
  %i.cdh = or disjoint i32 %.01050.lcssa.i, 2
  %i.cdi = or disjoint i32 %.01050.lcssa.i, 3
  %i.cdj = call i32 @llvm.umax.i32(i32 %i.bzg, i32 %i.cdi)
  %reass.sub285 = sub nsw i32 %i.cdj, %.01050.lcssa.i
  %i.cdk = and i32 %reass.sub285, -2
  %i.cdl = add i32 %i.cdk, -2
  %i.cdm = add i32 %i.cdh, %i.cdl
  br label %.preheader.i

.noexc1254.us.preheader.i:                        ; preds = %.noexc1254.lr.ph.i
  %i.cdn = add nsw i32 %i.cde, -1
  %i.cdo = zext nneg i32 %i.cdn to i64
  %i.cdp = shl nuw nsw i64 %i.cdo, 1
  %i.cdq = zext nneg i32 %.01050.lcssa.i to i64
  %wide.trip.count3798.i = zext nneg i32 %i.cde to i64 ; 2 uses
  %xtraiter673 = and i64 %wide.trip.count3798.i, 1
  %i.cdr = icmp eq i32 %i.cde, 1
  %unroll_iter677 = and i64 %wide.trip.count3798.i, 2147483646
  %lcmp.mod674.not = icmp eq i64 %xtraiter673, 0
  %lcmp.mod676 = trunc i32 %i.cde to i1
  br label %.noexc1254.us.i

.noexc1254.us.i:                                  ; preds = %._crit_edge3484.us.i, %.noexc1254.us.preheader.i
  %indvars.iv3800.i = phi i64 [ %i.cdq, %.noexc1254.us.preheader.i ], [ %indvars.iv.next3801.i, %._crit_edge3484.us.i ] ; 2 uses
  %.210553488.us.i = phi ptr [ %.01053.lcssa.i, %.noexc1254.us.preheader.i ], [ %scevgep3796.i, %._crit_edge3484.us.i ] ; 3 uses
  %.010593487.us.i = phi i32 [ %34, %.noexc1254.us.preheader.i ], [ %.lcssa617, %._crit_edge3484.us.i ] ; 2 uses
  %.reass3494.us.i = mul i64 %factor.op.mul3460.i, %indvars.iv3800.i
  %gep3497.us.i = getelementptr i8, ptr %invariant.gep3496.i, i64 %.reass3494.us.i ; 3 uses
  br i1 %i.cdr, label %.epil.preheader672, label %.noexc1254.us.i.new

.noexc1254.us.i.new:                              ; preds = %.noexc1254.us.i, %.noexc1254.us.i.new
  %indvars.iv3793.i = phi i64 [ %indvars.iv.next3794.i.1, %.noexc1254.us.i.new ], [ 0, %.noexc1254.us.i ] ; 3 uses
  %.310563481.us.i = phi ptr [ %i.cfe, %.noexc1254.us.i.new ], [ %.210553488.us.i, %.noexc1254.us.i ] ; 5 uses
  %.110603480.us.i = phi i32 [ %i.cfd, %.noexc1254.us.i.new ], [ %.010593487.us.i, %.noexc1254.us.i ]
  %niter678 = phi i64 [ %niter678.next.1, %.noexc1254.us.i.new ], [ 0, %.noexc1254.us.i ]
  %i.cds = getelementptr inbounds nuw [4 x i8], ptr %i.cdg, i64 %indvars.iv3793.i
  %i.cdt = load i32, ptr %i.cds, align 4, !tbaa !67
  %i.cdu = sext i32 %i.cdt to i64
  %i.cdv = getelementptr inbounds i8, ptr %gep3497.us.i, i64 %i.cdu ; 2 uses
  %i.cdw = load i8, ptr %i.cdv, align 1, !tbaa !254
  %i.cdx = sext i8 %i.cdw to i32
  %i.cdy = load i8, ptr %.310563481.us.i, align 1, !tbaa !254
  %i.cdz = sext i8 %i.cdy to i32
  %i.cea = mul nsw i32 %i.cdz, %i.cdx
  %i.ceb = add nsw i32 %i.cea, %.110603480.us.i
  %i.cec = getelementptr inbounds nuw i8, ptr %i.cdv, i64 %i.lx
  %i.ced = load i8, ptr %i.cec, align 1, !tbaa !254
  %i.cee = sext i8 %i.ced to i32
  %i.cef = getelementptr inbounds nuw i8, ptr %.310563481.us.i, i64 1
  %i.ceg = load i8, ptr %i.cef, align 1, !tbaa !254
  %i.ceh = sext i8 %i.ceg to i32
  %i.cei = mul nsw i32 %i.ceh, %i.cee
  %i.cej = add nsw i32 %i.ceb, %i.cei
  %i.cek = getelementptr inbounds nuw i8, ptr %.310563481.us.i, i64 2
  %i.cel = getelementptr inbounds nuw [4 x i8], ptr %i.cdg, i64 %indvars.iv3793.i
  %i.cem = getelementptr inbounds nuw i8, ptr %i.cel, i64 4
  %i.cen = load i32, ptr %i.cem, align 4, !tbaa !67
  %i.ceo = sext i32 %i.cen to i64
  %i.cep = getelementptr inbounds i8, ptr %gep3497.us.i, i64 %i.ceo ; 2 uses
  %i.ceq = load i8, ptr %i.cep, align 1, !tbaa !254
  %i.cer = sext i8 %i.ceq to i32
  %i.ces = load i8, ptr %i.cek, align 1, !tbaa !254
  %i.cet = sext i8 %i.ces to i32
  %i.ceu = mul nsw i32 %i.cet, %i.cer
  %i.cev = add nsw i32 %i.ceu, %i.cej
  %i.cew = getelementptr inbounds nuw i8, ptr %i.cep, i64 %i.lx
  %i.cex = load i8, ptr %i.cew, align 1, !tbaa !254
  %i.cey = sext i8 %i.cex to i32
  %i.cez = getelementptr inbounds nuw i8, ptr %.310563481.us.i, i64 3
  %i.cfa = load i8, ptr %i.cez, align 1, !tbaa !254
  %i.cfb = sext i8 %i.cfa to i32
  %i.cfc = mul nsw i32 %i.cfb, %i.cey
  %i.cfd = add nsw i32 %i.cev, %i.cfc             ; 3 uses
  %i.cfe = getelementptr inbounds nuw i8, ptr %.310563481.us.i, i64 4 ; 2 uses
  %indvars.iv.next3794.i.1 = add nuw nsw i64 %indvars.iv3793.i, 2 ; 2 uses
  %niter678.next.1 = add i64 %niter678, 2         ; 2 uses
  %niter678.ncmp.1 = icmp eq i64 %niter678.next.1, %unroll_iter677
  br i1 %niter678.ncmp.1, label %._crit_edge3484.us.i.unr-lcssa, label %.noexc1254.us.i.new, !llvm.loop !668

._crit_edge3484.us.i.unr-lcssa:                   ; preds = %.noexc1254.us.i.new
  br i1 %lcmp.mod674.not, label %._crit_edge3484.us.i, label %.epil.preheader672

.epil.preheader672:                               ; preds = %._crit_edge3484.us.i.unr-lcssa, %.noexc1254.us.i
  %indvars.iv3793.i.epil.init = phi i64 [ 0, %.noexc1254.us.i ], [ %indvars.iv.next3794.i.1, %._crit_edge3484.us.i.unr-lcssa ]
  %.310563481.us.i.epil.init = phi ptr [ %.210553488.us.i, %.noexc1254.us.i ], [ %i.cfe, %._crit_edge3484.us.i.unr-lcssa ] ; 2 uses
  %.110603480.us.i.epil.init = phi i32 [ %.010593487.us.i, %.noexc1254.us.i ], [ %i.cfd, %._crit_edge3484.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod676)
  %i.cff = getelementptr inbounds nuw [4 x i8], ptr %i.cdg, i64 %indvars.iv3793.i.epil.init
  %i.cfg = load i32, ptr %i.cff, align 4, !tbaa !67
  %i.cfh = sext i32 %i.cfg to i64
  %i.cfi = getelementptr inbounds i8, ptr %gep3497.us.i, i64 %i.cfh ; 2 uses
  %i.cfj = load i8, ptr %i.cfi, align 1, !tbaa !254
  %i.cfk = sext i8 %i.cfj to i32
  %i.cfl = load i8, ptr %.310563481.us.i.epil.init, align 1, !tbaa !254
  %i.cfm = sext i8 %i.cfl to i32
  %i.cfn = mul nsw i32 %i.cfm, %i.cfk
  %i.cfo = add nsw i32 %i.cfn, %.110603480.us.i.epil.init
  %i.cfp = getelementptr inbounds nuw i8, ptr %i.cfi, i64 %i.lx
  %i.cfq = load i8, ptr %i.cfp, align 1, !tbaa !254
  %i.cfr = sext i8 %i.cfq to i32
  %i.cfs = getelementptr inbounds nuw i8, ptr %.310563481.us.i.epil.init, i64 1
  %i.cft = load i8, ptr %i.cfs, align 1, !tbaa !254
  %i.cfu = sext i8 %i.cft to i32
  %i.cfv = mul nsw i32 %i.cfu, %i.cfr
  %i.cfw = add nsw i32 %i.cfo, %i.cfv
  br label %._crit_edge3484.us.i

._crit_edge3484.us.i:                             ; preds = %._crit_edge3484.us.i.unr-lcssa, %.epil.preheader672
  %.lcssa617 = phi i32 [ %i.cfd, %._crit_edge3484.us.i.unr-lcssa ], [ %i.cfw, %.epil.preheader672 ] ; 2 uses
  %scevgep3795.i = getelementptr i8, ptr %.210553488.us.i, i64 2
  %scevgep3796.i = getelementptr i8, ptr %scevgep3795.i, i64 %i.cdp ; 2 uses
  %indvars.iv.next3801.i = add nuw nsw i64 %indvars.iv3800.i, 2 ; 2 uses
  %i.cfx = trunc i64 %indvars.iv.next3801.i to i32 ; 2 uses
  %i.cfy = or i32 %i.cfx, 1
  %i.cfz = icmp slt i32 %i.cfy, %i.bzg
  br i1 %i.cfz, label %.noexc1254.us.i, label %.preheader.i, !llvm.loop !669

.preheader.i:                                     ; preds = %._crit_edge3484.us.i, %.noexc1254.preheader.i, %._crit_edge3456.i
  %.01059.lcssa.i = phi i32 [ %34, %._crit_edge3456.i ], [ %34, %.noexc1254.preheader.i ], [ %.lcssa617, %._crit_edge3484.us.i ] ; 3 uses
  %.21055.lcssa.i = phi ptr [ %.01053.lcssa.i, %._crit_edge3456.i ], [ %.01053.lcssa.i, %.noexc1254.preheader.i ], [ %scevgep3796.i, %._crit_edge3484.us.i ]
  %.11051.lcssa.i = phi i32 [ %.01050.lcssa.i, %._crit_edge3456.i ], [ %i.cdm, %.noexc1254.preheader.i ], [ %i.cfx, %._crit_edge3484.us.i ] ; 2 uses
  %i.cga = icmp slt i32 %.11051.lcssa.i, %i.bzg
  br i1 %i.cga, label %.noexc.lr.ph.i, label %._crit_edge3511.i

.noexc.lr.ph.i:                                   ; preds = %.preheader.i
  %i.cgb = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !670
  %i.cgc = sext i32 %i.cgb to i64
  %i.cgd = load i32, ptr %i.b, align 4, !tbaa !67
  %i.cge = mul nsw i32 %i.cgd, %i.bze
  %i.cgf = sext i32 %i.cge to i64
  %i.cgg = mul i64 %i.bpo, %i.cgc
  %i.cgh = mul i64 %i.cgg, %i.cgf
  %invariant.gep3515.i = getelementptr i8, ptr %i.bpm, i64 %i.cgh
  %i.cgi = load i32, ptr %i.a, align 4, !tbaa !67
  %i.cgj = mul nsw i32 %i.cgi, %i.bzf
  %i.cgk = sext i32 %i.cgj to i64
  %invariant.gep3516.i = getelementptr i8, ptr %invariant.gep3515.i, i64 %i.cgk
  %i.cgl = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.cgm = icmp sgt i32 %i.cgl, 0
  %i.cgn = load ptr, ptr %i.g, align 8            ; 5 uses
  br i1 %i.cgm, label %.noexc.us.preheader.i, label %._crit_edge3511.i

.noexc.us.preheader.i:                            ; preds = %.noexc.lr.ph.i
  %i.cgo = zext i32 %.11051.lcssa.i to i64
  %i.cgp = zext nneg i32 %i.cgl to i64            ; 3 uses
  %xtraiter680 = and i64 %i.cgp, 3                ; 3 uses
  %i.cgq = icmp ult i32 %i.cgl, 4
  %unroll_iter684 = and i64 %i.cgp, 2147483644
  %lcmp.mod681.not = icmp eq i64 %xtraiter680, 0
  %lcmp.mod683 = icmp ne i64 %xtraiter680, 0
  br label %.noexc.us.i

.noexc.us.i:                                      ; preds = %._crit_edge3505.us.i, %.noexc.us.preheader.i
  %indvars.iv3810.i = phi i64 [ %i.cgo, %.noexc.us.preheader.i ], [ %indvars.iv.next3811.i, %._crit_edge3505.us.i ] ; 2 uses
  %.410573509.us.i = phi ptr [ %.21055.lcssa.i, %.noexc.us.preheader.i ], [ %i.cix, %._crit_edge3505.us.i ] ; 3 uses
  %.210613508.us.i = phi i32 [ %.01059.lcssa.i, %.noexc.us.preheader.i ], [ %.lcssa619, %._crit_edge3505.us.i ] ; 2 uses
  %.reass3514.us.i = mul i64 %factor.op.mul3460.i, %indvars.iv3810.i
  %gep3517.us.i = getelementptr i8, ptr %invariant.gep3516.i, i64 %.reass3514.us.i ; 5 uses
  br i1 %i.cgq, label %.epil.preheader679, label %.noexc.us.i.new

.noexc.us.i.new:                                  ; preds = %.noexc.us.i, %.noexc.us.i.new
  %indvars.iv3803.i = phi i64 [ %indvars.iv.next3804.i.3, %.noexc.us.i.new ], [ 0, %.noexc.us.i ] ; 5 uses
  %.510583502.us.i = phi ptr [ %i.cil, %.noexc.us.i.new ], [ %.410573509.us.i, %.noexc.us.i ] ; 5 uses
  %.310623501.us.i = phi i32 [ %i.cik, %.noexc.us.i.new ], [ %.210613508.us.i, %.noexc.us.i ]
  %niter685 = phi i64 [ %niter685.next.3, %.noexc.us.i.new ], [ 0, %.noexc.us.i ]
  %i.cgr = getelementptr inbounds nuw [4 x i8], ptr %i.cgn, i64 %indvars.iv3803.i
  %i.cgs = load i32, ptr %i.cgr, align 4, !tbaa !67
  %i.cgt = sext i32 %i.cgs to i64
  %i.cgu = getelementptr inbounds i8, ptr %gep3517.us.i, i64 %i.cgt
  %i.cgv = load i8, ptr %i.cgu, align 1, !tbaa !254
  %i.cgw = sext i8 %i.cgv to i32
  %i.cgx = load i8, ptr %.510583502.us.i, align 1, !tbaa !254
  %i.cgy = sext i8 %i.cgx to i32
  %i.cgz = mul nsw i32 %i.cgy, %i.cgw
  %i.cha = add nsw i32 %i.cgz, %.310623501.us.i
  %i.chb = getelementptr inbounds nuw i8, ptr %.510583502.us.i, i64 1
  %i.chc = getelementptr inbounds nuw [4 x i8], ptr %i.cgn, i64 %indvars.iv3803.i
  %i.chd = getelementptr inbounds nuw i8, ptr %i.chc, i64 4
  %i.che = load i32, ptr %i.chd, align 4, !tbaa !67
  %i.chf = sext i32 %i.che to i64
  %i.chg = getelementptr inbounds i8, ptr %gep3517.us.i, i64 %i.chf
  %i.chh = load i8, ptr %i.chg, align 1, !tbaa !254
  %i.chi = sext i8 %i.chh to i32
  %i.chj = load i8, ptr %i.chb, align 1, !tbaa !254
  %i.chk = sext i8 %i.chj to i32
  %i.chl = mul nsw i32 %i.chk, %i.chi
  %i.chm = add nsw i32 %i.chl, %i.cha
  %i.chn = getelementptr inbounds nuw i8, ptr %.510583502.us.i, i64 2
  %i.cho = getelementptr inbounds nuw [4 x i8], ptr %i.cgn, i64 %indvars.iv3803.i
  %i.chp = getelementptr inbounds nuw i8, ptr %i.cho, i64 8
  %i.chq = load i32, ptr %i.chp, align 4, !tbaa !67
  %i.chr = sext i32 %i.chq to i64
  %i.chs = getelementptr inbounds i8, ptr %gep3517.us.i, i64 %i.chr
  %i.cht = load i8, ptr %i.chs, align 1, !tbaa !254
  %i.chu = sext i8 %i.cht to i32
  %i.chv = load i8, ptr %i.chn, align 1, !tbaa !254
  %i.chw = sext i8 %i.chv to i32
  %i.chx = mul nsw i32 %i.chw, %i.chu
  %i.chy = add nsw i32 %i.chx, %i.chm
  %i.chz = getelementptr inbounds nuw i8, ptr %.510583502.us.i, i64 3
  %i.cia = getelementptr inbounds nuw [4 x i8], ptr %i.cgn, i64 %indvars.iv3803.i
  %i.cib = getelementptr inbounds nuw i8, ptr %i.cia, i64 12
  %i.cic = load i32, ptr %i.cib, align 4, !tbaa !67
  %i.cid = sext i32 %i.cic to i64
  %i.cie = getelementptr inbounds i8, ptr %gep3517.us.i, i64 %i.cid
  %i.cif = load i8, ptr %i.cie, align 1, !tbaa !254
  %i.cig = sext i8 %i.cif to i32
  %i.cih = load i8, ptr %i.chz, align 1, !tbaa !254
  %i.cii = sext i8 %i.cih to i32
  %i.cij = mul nsw i32 %i.cii, %i.cig
  %i.cik = add nsw i32 %i.cij, %i.chy             ; 3 uses
  %i.cil = getelementptr inbounds nuw i8, ptr %.510583502.us.i, i64 4 ; 2 uses
  %indvars.iv.next3804.i.3 = add nuw nsw i64 %indvars.iv3803.i, 4 ; 2 uses
  %niter685.next.3 = add i64 %niter685, 4         ; 2 uses
  %niter685.ncmp.3 = icmp eq i64 %niter685.next.3, %unroll_iter684
  br i1 %niter685.ncmp.3, label %._crit_edge3505.us.i.unr-lcssa, label %.noexc.us.i.new, !llvm.loop !673

._crit_edge3505.us.i.unr-lcssa:                   ; preds = %.noexc.us.i.new
  br i1 %lcmp.mod681.not, label %._crit_edge3505.us.i, label %.epil.preheader679

.epil.preheader679:                               ; preds = %._crit_edge3505.us.i.unr-lcssa, %.noexc.us.i
  %indvars.iv3803.i.epil.init = phi i64 [ 0, %.noexc.us.i ], [ %indvars.iv.next3804.i.3, %._crit_edge3505.us.i.unr-lcssa ]
  %.510583502.us.i.epil.init = phi ptr [ %.410573509.us.i, %.noexc.us.i ], [ %i.cil, %._crit_edge3505.us.i.unr-lcssa ]
  %.310623501.us.i.epil.init = phi i32 [ %.210613508.us.i, %.noexc.us.i ], [ %i.cik, %._crit_edge3505.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod683)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %.epil.preheader679
  %indvars.iv3803.i.epil = phi i64 [ %indvars.iv3803.i.epil.init, %.epil.preheader679 ], [ %indvars.iv.next3804.i.epil, %bb.cw ] ; 2 uses
  %.510583502.us.i.epil = phi ptr [ %.510583502.us.i.epil.init, %.epil.preheader679 ], [ %i.ciw, %bb.cw ] ; 2 uses
  %.310623501.us.i.epil = phi i32 [ %.310623501.us.i.epil.init, %.epil.preheader679 ], [ %i.civ, %bb.cw ]
  %epil.iter = phi i64 [ 0, %.epil.preheader679 ], [ %epil.iter.next, %bb.cw ]
  %i.cim = getelementptr inbounds nuw [4 x i8], ptr %i.cgn, i64 %indvars.iv3803.i.epil
  %i.cin = load i32, ptr %i.cim, align 4, !tbaa !67
  %i.cio = sext i32 %i.cin to i64
  %i.cip = getelementptr inbounds i8, ptr %gep3517.us.i, i64 %i.cio
  %i.ciq = load i8, ptr %i.cip, align 1, !tbaa !254
  %i.cir = sext i8 %i.ciq to i32
  %i.cis = load i8, ptr %.510583502.us.i.epil, align 1, !tbaa !254
  %i.cit = sext i8 %i.cis to i32
  %i.ciu = mul nsw i32 %i.cit, %i.cir
  %i.civ = add nsw i32 %i.ciu, %.310623501.us.i.epil ; 2 uses
  %i.ciw = getelementptr inbounds nuw i8, ptr %.510583502.us.i.epil, i64 1
  %indvars.iv.next3804.i.epil = add nuw nsw i64 %indvars.iv3803.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter680
  br i1 %epil.iter.cmp.not, label %._crit_edge3505.us.i, label %bb.cw, !llvm.loop !674

._crit_edge3505.us.i:                             ; preds = %bb.cw, %._crit_edge3505.us.i.unr-lcssa
  %.lcssa619 = phi i32 [ %i.cik, %._crit_edge3505.us.i.unr-lcssa ], [ %i.civ, %bb.cw ] ; 2 uses
  %i.cix = getelementptr i8, ptr %.410573509.us.i, i64 %i.cgp
  %indvars.iv.next3811.i = add nuw nsw i64 %indvars.iv3810.i, 1 ; 2 uses
  %i.ciy = trunc nuw i64 %indvars.iv.next3811.i to i32
  %i.ciz = icmp sgt i32 %i.bzg, %i.ciy
  br i1 %i.ciz, label %.noexc.us.i, label %._crit_edge3511.i, !llvm.loop !675

._crit_edge3511.i:                                ; preds = %._crit_edge3505.us.i, %.noexc.lr.ph.i, %.preheader.i
  %.21061.lcssa.i = phi i32 [ %.01059.lcssa.i, %.preheader.i ], [ %.01059.lcssa.i, %.noexc.lr.ph.i ], [ %.lcssa619, %._crit_edge3505.us.i ]
  store i32 %.21061.lcssa.i, ptr %.211583520.i, align 4, !tbaa !67
  %i.cja = getelementptr inbounds nuw i8, ptr %.211583520.i, i64 4
  %i.cjb = add nuw nsw i32 %.211613519.i, 1       ; 2 uses
  %exitcond3813.not.i = icmp eq i32 %i.cjb, %i.nz
  br i1 %exitcond3813.not.i, label %._crit_edge3521.i, label %.noexc1258.i, !llvm.loop !676

._crit_edge3521.i:                                ; preds = %._crit_edge3511.i, %.preheader2852.i
  %indvars.iv.next3815.i = add nsw i64 %indvars.iv3814.i, 1 ; 2 uses
  %i.cjc = icmp slt i64 %indvars.iv.next3815.i, %i.om
  br i1 %i.cjc, label %_ZN4ncnn3MatD2Ev.exit1371.i, label %._crit_edge3523.i, !llvm.loop !677

.thread194:                                       ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.cy

bb.cx:                                            ; preds = %_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.exit, %_ZNK4ncnn3Mat5emptyEv.exit181.thread, %bb.at
  %.0 = phi i32 [ %i.hw, %bb.at ], [ %.122.i, %_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.exit ], [ %i.hz, %_ZNK4ncnn3Mat5emptyEv.exit181.thread ] ; 2 uses
  %.not99 = icmp eq i32 %.0, 0
  br i1 %.not99, label %bb.cy, label %_ZNK4ncnn3Mat5emptyEv.exit182.thread

bb.cy:                                            ; preds = %.thread194, %bb.cx
  %i.cjd = load i8, ptr %i.da, align 1, !tbaa !56, !range !48, !noundef !49
  %i.cje = trunc nuw i8 %i.cjd to i1
  br i1 %i.cje, label %bb.cz, label %bb.ew

bb.cz:                                            ; preds = %bb.cy
  %i.cjf = load i32, ptr %i.fr, align 8
  %i.cjg = icmp eq i32 %i.cjf, 4
  %or.cond199 = select i1 %i.cz, i1 %i.cjg, i1 false
  br i1 %or.cond199, label %bb.da, label %.thread197

bb.da:                                            ; preds = %bb.cz
  %i.cjh = load i32, ptr %i.fw, align 8, !tbaa !68
  %i.cji = and i32 %i.cjh, -2147483647
  %i.cjj = icmp eq i32 %i.cji, 1
  br i1 %i.cjj, label %bb.db, label %.thread465

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.cjk = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.cjl = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cjm = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.cjn = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 4 uses
  %i.cjo = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.cjp = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.cjq = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  store i64 0, ptr %i.cjq, align 16, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.cjn, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.dc unwind label %bb.dr

bb.dc:                                            ; preds = %bb.db
  %i.cjr = load ptr, ptr %i.cjk, align 8, !tbaa !11 ; 2 uses
  %.not.i172 = icmp eq ptr %i.cjr, null
  br i1 %.not.i172, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.cjs = atomicrmw add ptr %i.cjr, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.de
end_hunk_1
begin_hunk_2_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.oi = fadd fast <4 x float> %i.oh, splat (float 1.000000e+00) ; 2 uses
  %i.oj = fcmp fast ole <4 x float> %i.oi, zeroinitializer
  %i.ok = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oi, <4 x float> splat (float f0x00800000))
  %i.ol = bitcast <4 x float> %i.ok to <4 x i32>  ; 2 uses
  %i.om = lshr <4 x i32> %i.ol, splat (i32 23)
  %i.on = and <4 x i32> %i.ol, splat (i32 -2139095041)
  %i.oo = or disjoint <4 x i32> %i.on, splat (i32 1056964608)
  %i.op = bitcast <4 x i32> %i.oo to <4 x float>  ; 3 uses
  %i.oq = add nsw <4 x i32> %i.om, splat (i32 -127)
  %i.or = sitofp fast <4 x i32> %i.oq to <4 x float> ; 2 uses
  %i.os = fadd fast <4 x float> %i.or, splat (float 1.000000e+00)
  %i.ot = fcmp fast olt <4 x float> %i.op, splat (float f0x3F3504F3) ; 2 uses
  %i.ou = select <4 x i1> %i.ot, <4 x float> %i.op, <4 x float> zeroinitializer
  %i.ov = fadd fast <4 x float> %i.op, splat (float -1.000000e+00)
  %i.ow = select fast <4 x i1> %i.ot, <4 x float> %i.or, <4 x float> %i.os
  %i.ox = fadd fast <4 x float> %i.ov, %i.ou      ; 12 uses
  %i.oy = fmul fast <4 x float> %i.ox, %i.ox
  %i.oz = fmul fast <4 x float> %i.ox, splat (float f0x3D9021BB)
  %i.pa = fadd fast <4 x float> %i.oz, splat (float f0xBDEBD1B8)
  %i.pb = fmul fast <4 x float> %i.pa, %i.ox
  %i.pc = fadd fast <4 x float> %i.pb, splat (float f0x3DEF251A)
  %i.pd = fmul fast <4 x float> %i.pc, %i.ox
  %i.pe = fadd fast <4 x float> %i.pd, splat (float f0xBDFE5D4F)
  %i.pf = fmul fast <4 x float> %i.pe, %i.ox
  %i.pg = fadd fast <4 x float> %i.pf, splat (float f0x3E11E9BF)
  %i.ph = fmul fast <4 x float> %i.pg, %i.ox
  %i.pi = fadd fast <4 x float> %i.ph, splat (float f0xBE2AAE50)
  %i.pj = fmul fast <4 x float> %i.pi, %i.ox
  %i.pk = fadd fast <4 x float> %i.pj, splat (float f0x3E4CCEAC)
  %i.pl = fmul fast <4 x float> %i.pk, %i.ox
  %i.pm = fadd fast <4 x float> %i.pl, splat (float f0xBE7FFFFC)
  %i.pn = fmul fast <4 x float> %i.pm, %i.ox
  %i.po = fadd fast <4 x float> %i.pn, splat (float f0x3EAAAAAA)
  %i.pp = fmul fast <4 x float> %i.po, %i.ox
  %reass.mul = fmul fast <4 x float> %i.ow, splat (float f0x3F317218)
  %reass.add434 = fadd fast <4 x float> %i.pp, splat (float -5.000000e-01)
  %reass.mul435 = fmul fast <4 x float> %i.oy, %reass.add434
  %i.pq = fadd fast <4 x float> %reass.mul, %i.ox
  %i.pr = fadd fast <4 x float> %i.pq, %reass.mul435
  %.neg = fmul fast <4 x float> %i.pr, splat (float -2.000000e+00)
  %i.ps = select fast <4 x i1> %i.oj, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.pt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ps, <4 x float> splat (float f0x42B0C0A5))
  %i.pu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.pv = fmul fast <4 x float> %i.pu, splat (float f0x3FB8AA3B)
  %i.pw = fadd fast <4 x float> %i.pv, splat (float 5.000000e-01) ; 2 uses
  %i.px = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pw)
  %i.py = sitofp fast <4 x i32> %i.px to <4 x float> ; 2 uses
  %i.pz = fcmp fast olt <4 x float> %i.pw, %i.py
  %i.qa = select <4 x i1> %i.pz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.qb = fsub fast <4 x float> %i.py, %i.qa      ; 2 uses
  %i.qc = fmul fast <4 x float> %i.qb, splat (float f0x3F317218)
  %i.qd = fsub fast <4 x float> %i.pu, %i.qc      ; 8 uses
  %i.qe = fmul fast <4 x float> %i.qd, %i.qd
  %i.qf = fmul fast <4 x float> %i.qd, splat (float f0x39506967)
  %i.qg = fadd fast <4 x float> %i.qf, splat (float f0x3AB743CE)
  %i.qh = fmul fast <4 x float> %i.qg, %i.qd
  %i.qi = fadd fast <4 x float> %i.qh, splat (float f0x3C088908)
  %i.qj = fmul fast <4 x float> %i.qi, %i.qd
  %i.qk = fadd fast <4 x float> %i.qj, splat (float f0x3D2AA9C1)
  %i.ql = fmul fast <4 x float> %i.qk, %i.qd
  %i.qm = fadd fast <4 x float> %i.ql, splat (float f0x3E2AAAAA)
  %i.qn = fmul fast <4 x float> %i.qm, %i.qd
  %i.qo = fadd fast <4 x float> %i.qn, splat (float 5.000000e-01)
  %i.qp = fmul fast <4 x float> %i.qe, %i.qo
  %i.qq = fadd fast <4 x float> %i.qd, splat (float 1.000000e+00)
  %i.qr = fadd fast <4 x float> %i.qq, %i.qp
  %i.qs = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qb)
  %i.qt = shl <4 x i32> %i.qs, splat (i32 23)
  %i.qu = add <4 x i32> %i.qt, splat (i32 1065353216)
  %i.qv = bitcast <4 x i32> %i.qu to <4 x float>
  %i.qw = fmul fast <4 x float> %i.qr, %i.qv
  %i.qx = fadd fast <4 x float> %i.qw, splat (float 1.000000e+00)
  %i.qy = fdiv fast <4 x float> splat (float 2.000000e+00), %i.qx
  %i.qz = fadd fast <4 x float> %i.qy, splat (float -1.000000e+00)
  %i.ra = fmul fast <4 x float> %i.qz, %i.lc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %._crit_edge510
  %i.rb = load ptr, ptr %14, align 8, !tbaa !18   ; 2 uses
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !39
  %i.rd = insertelement <4 x float> poison, float %i.rc, i64 0
  %i.re = shufflevector <4 x float> %i.rd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rb, i64 4
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !39
  %i.rh = insertelement <4 x float> poison, float %i.rg, i64 0
  %i.ri = shufflevector <4 x float> %i.rh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rj = fmul fast <4 x float> %i.re, %i.lc
  %i.rk = fadd fast <4 x float> %i.rj, %i.ri
  %i.rl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rk, <4 x float> zeroinitializer)
  %i.rm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.rl, <4 x float> splat (float 1.000000e+00))
  %i.rn = fmul fast <4 x float> %i.rm, %i.lc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.k, %.noexc179, %.noexc178, %bb.j, %.noexc177, %bb.i, %._crit_edge510
  %.0.i = phi nsz <4 x float> [ %i.rn, %bb.k ], [ %i.le, %bb.i ], [ %i.lm, %.noexc177 ], [ %i.lw, %bb.j ], [ %i.nd, %.noexc178 ], [ %i.ra, %.noexc179 ], [ %i.lc, %._crit_edge510 ] ; 2 uses
  switch i32 %i.af, label %bb.m [
    i32 4, label %.thread
    i32 1, label %bb.l
  ]

.thread:                                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.ro = bitcast <4 x float> %.0.i to <8 x i16>
  %i.rp = shufflevector <8 x i16> %i.ro, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.rq = bitcast <8 x i16> %i.rp to <4 x float>
  %i.rr = shufflevector <4 x float> %i.rq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.rs = bitcast <4 x float> %i.rr to <2 x i64>
  %i.rt = extractelement <2 x i64> %i.rs, i64 0
  store i64 %i.rt, ptr %.1520, align 1, !tbaa !254
  %i.ru = getelementptr inbounds nuw i8, ptr %.1520, i64 8
  br label %bb.m

bb.l:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.rv = bitcast <4 x float> %.0.i to <8 x i16>  ; 4 uses
  %i.rw = extractelement <8 x i16> %i.rv, i64 1
  store i16 %i.rw, ptr %.1520, align 2, !tbaa !394
  %i.rx = extractelement <8 x i16> %i.rv, i64 3
  %i.ry = load i64, ptr %15, align 8, !tbaa !233  ; 3 uses
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %.1520, i64 %i.ry
  store i16 %i.rx, ptr %i.rz, align 2, !tbaa !394
  %i.sa = extractelement <8 x i16> %i.rv, i64 5
  %.idx = shl i64 %i.ry, 2
  %i.sb = getelementptr inbounds nuw i8, ptr %.1520, i64 %.idx
  store i16 %i.sa, ptr %i.sb, align 2, !tbaa !394
  %i.sc = extractelement <8 x i16> %i.rv, i64 7
  %.idx138 = mul i64 %i.ry, 6
  %i.sd = getelementptr inbounds nuw i8, ptr %.1520, i64 %.idx138
  store i16 %i.sc, ptr %i.sd, align 2, !tbaa !394
  %i.se = getelementptr inbounds nuw i8, ptr %.1520, i64 2
  br label %bb.m

bb.m:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread, %bb.l
  %.3 = phi ptr [ %i.se, %bb.l ], [ %.1520, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.ru, %.thread ] ; 2 uses
  %i.sf = add nuw nsw i32 %.0127519, 1            ; 2 uses
  %exitcond578.not = icmp eq i32 %i.sf, %i.ae
  br i1 %exitcond578.not, label %._crit_edge, label %bb.c, !llvm.loop !1985

._crit_edge528:                                   ; preds = %._crit_edge525.split, %_ZN4ncnn3MatD2Ev.exit150.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge528, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log.v8f32(<8 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.tanh.v8f32(<8 x float>) #22

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nofree nounwind }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { cold nounwind }
attributes #30 = { noreturn }
attributes #31 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !6, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !15, i64 64}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!12, !16, i64 32}
!18 = !{!12, !13, i64 0}
!19 = distinct !{null}
!20 = !{!12, !15, i64 64}
!21 = !{!22, !6, i64 344}
!22 = !{!"_ZTSN4ncnn11ConvolutionE", !23, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !37, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !12, i64 272, !6, i64 344, !12, i64 352, !12, i64 424, !12, i64 496, !12, i64 568, !12, i64 640}
!23 = !{!"_ZTSN4ncnn5LayerE", !24, i64 8, !24, i64 9, !24, i64 10, !24, i64 11, !24, i64 12, !24, i64 13, !24, i64 14, !24, i64 15, !24, i64 16, !24, i64 17, !24, i64 18, !24, i64 19, !24, i64 20, !24, i64 21, !24, i64 22, !24, i64 23, !24, i64 24, !24, i64 25, !24, i64 26, !24, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !25, i64 48, !25, i64 80, !28, i64 112, !28, i64 136, !32, i64 160, !32, i64 184}
!24 = !{!"bool", !7, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !15, i64 8, !7, i64 16}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !27, i64 0}
!27 = !{!"p1 omnipotent char", !13, i64 0}
!28 = !{!"_ZTSSt6vectorIiSaIiEE", !29, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!32 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !33, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!36 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!37 = !{!"float", !7, i64 0}
!38 = !{!22, !6, i64 268}
!39 = !{!37, !37, i64 0}
!40 = distinct !{null}
!41 = !{!42, !43, i64 712}
!42 = !{!"_ZTSN4ncnn15Convolution_x86E", !22, i64 0, !43, i64 712, !6, i64 720, !12, i64 728, !12, i64 800, !12, i64 872, !12, i64 944, !12, i64 1016, !43, i64 1088, !12, i64 1096}
!43 = !{!"p1 _ZTSN4ncnn5LayerE", !13, i64 0}
!44 = !{!45, !6, i64 4}
!45 = !{!"_ZTSN4ncnn6OptionE", !24, i64 0, !24, i64 1, !24, i64 2, !24, i64 3, !6, i64 4, !16, i64 8, !16, i64 16, !6, i64 24, !24, i64 28, !24, i64 29, !24, i64 30, !24, i64 31, !24, i64 32, !24, i64 33, !24, i64 34, !24, i64 35, !24, i64 36, !24, i64 37, !24, i64 38, !24, i64 39, !6, i64 40, !24, i64 44, !24, i64 45, !24, i64 46, !24, i64 47, !7, i64 48, !24, i64 49, !24, i64 50, !24, i64 51, !24, i64 52, !24, i64 53, !24, i64 54, !24, i64 55, !24, i64 56, !24, i64 57, !24, i64 58, !24, i64 59, !24, i64 60, !24, i64 61, !24, i64 62, !24, i64 63}
!46 = !{!42, !6, i64 720}
!47 = !{!45, !24, i64 30}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{!22, !15, i64 368}
!51 = !{!45, !24, i64 32}
!52 = !{!22, !6, i64 212}
!53 = !{!22, !6, i64 216}
!54 = !{!22, !6, i64 260}
!55 = !{!22, !6, i64 208}
!56 = !{!45, !24, i64 39}
!57 = !{!22, !6, i64 220}
!58 = !{!22, !6, i64 224}
!59 = !{!22, !6, i64 228}
!60 = !{!22, !6, i64 232}
!61 = !{!42, !43, i64 1088}
!62 = !{!22, !6, i64 256}
!63 = distinct !{null}
!64 = !{!13, !13, i64 0}
!65 = !{!12, !15, i64 16}
!66 = !{!12, !6, i64 24}
!67 = !{!6, !6, i64 0}
!68 = !{!12, !6, i64 56}
!69 = !{!45, !24, i64 0}
!70 = !{!45, !24, i64 55}
!71 = !{!45, !24, i64 56}
!72 = !{!45, !24, i64 57}
!73 = !{!45, !24, i64 28}
!74 = !{!36, !36, i64 0}
!75 = !{!12, !6, i64 44}
!76 = !{!12, !6, i64 48}
!77 = !{!22, !6, i64 236}
!78 = !{!22, !6, i64 240}
!79 = !{!22, !6, i64 244}
!80 = !{!22, !6, i64 248}
!81 = !{!45, !24, i64 29}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.mustprogress"}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = distinct !{!86, !83}
!87 = distinct !{!87, !83}
!88 = distinct !{!88, !83}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!91 = distinct !{!91, !"_ZN4ncnn3Mat7channelEi"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!94 = distinct !{!94, !"_ZN4ncnn3Mat7channelEi"}
!95 = distinct !{!95, !83}
!96 = distinct !{!96, !83}
!97 = !{!98}
!98 = distinct !{!98, !99}
!99 = distinct !{!99, !"LVerDomain"}
!100 = !{!101}
!101 = distinct !{!101, !99}
!102 = !{!103}
!103 = distinct !{!103, !99}
!104 = !{!105}
!105 = distinct !{!105, !99}
!106 = !{!107}
!107 = distinct !{!107, !99}
!108 = !{!109}
!109 = distinct !{!109, !99}
!110 = !{!111}
!111 = distinct !{!111, !99}
!112 = !{!113}
!113 = distinct !{!113, !99}
!114 = !{!115}
!115 = distinct !{!115, !99}
!116 = !{!113, !111, !109, !107, !105, !103, !101, !98}
!117 = distinct !{!117, !83, !118, !119}
!118 = !{!"llvm.loop.isvectorized", i32 1}
!119 = !{!"llvm.loop.unroll.runtime.disable"}
!120 = distinct !{!120, !83, !118}
!121 = distinct !{!121, !83}
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!126}
!126 = distinct !{!126, !124}
!127 = !{!128}
!128 = distinct !{!128, !124}
!129 = !{!130}
!130 = distinct !{!130, !124}
!131 = !{!132}
!132 = distinct !{!132, !124}
!133 = !{!130, !128, !126, !123}
!134 = distinct !{!134, !83, !118, !119}
!135 = distinct !{!135, !83}
!136 = distinct !{!136, !83, !118}
!137 = distinct !{!137, !83}
end_hunk_2
