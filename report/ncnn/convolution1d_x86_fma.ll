Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86_fma?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZNK4ncnn21Convolution1D_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.arh = shufflevector <4 x float> %i.arg, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ari = fadd fast <4 x float> %i.arh, %i.arg   ; 2 uses
  %i.arj = shufflevector <8 x float> %.01089.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ark = shufflevector <8 x float> %.01089.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.arl = fadd fast <4 x float> %i.arj, %i.ark   ; 2 uses
  %i.arm = shufflevector <4 x float> %i.arl, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.arn = fadd fast <4 x float> %i.arm, %i.arl   ; 2 uses
  %i.aro = or disjoint i32 %.0485.lcssa.i, 3
  %i.arp = icmp slt i32 %i.aro, %i.dg
  br i1 %i.arp, label %.lr.ph1392.i, label %._crit_edge1393.i

.lr.ph1392.i:                                     ; preds = %._crit_edge1359.i
  %i.arq = trunc nuw nsw i64 %indvars.iv1767.i to i32
  %.reass1465.i = mul i32 %factor.op.mul1462.i, %i.arq
  %i.arr = sext i32 %.reass1465.i to i64
  %invariant.gep1400.i = getelementptr [2 x i8], ptr %i.als, i64 %i.arr
  %i.ars = load i32, ptr %i.a, align 4            ; 5 uses
  %i.art = icmp sgt i32 %i.ars, 0
  %i.aru = load i32, ptr %i.b, align 4            ; 2 uses
  %i.arv = shl nsw i32 %i.aru, 2
  %i.arw = sext i32 %i.arv to i64
  %i.arx = icmp slt i32 %i.ars, 1
  %i.ary = load i32, ptr %i.e, align 4            ; 3 uses
  %i.arz = mul nsw i32 %i.ary, 3
  %i.asa = sext i32 %i.arz to i64
  %i.asb = shl nsw i32 %i.ary, 1
  %i.asc = sext i32 %i.asb to i64
  %i.asd = sext i32 %i.ary to i64
  %i.ase = sext i32 %i.aru to i64
  %i.asf = add i32 %i.ars, -1
  %i.asg = zext i32 %i.asf to i64
  %i.ash = shl nuw nsw i64 %i.asg, 4              ; 2 uses
  %brmerge1603.i = select i1 %i.ds, i1 true, i1 %i.arx
  br label %bb.y

bb.y:                                             ; preds = %.loopexit1147.i, %.lr.ph1392.i
  %.14861390.i = phi i32 [ %.0485.lcssa.i, %.lr.ph1392.i ], [ %i.aum, %.loopexit1147.i ] ; 2 uses
  %.74961389.i = phi ptr [ %.0489.lcssa.i, %.lr.ph1392.i ], [ %.11500.i, %.loopexit1147.i ] ; 6 uses
  %.010961388.i = phi <4 x float> [ zeroinitializer, %.lr.ph1392.i ], [ %.41100.i, %.loopexit1147.i ] ; 4 uses
  %.011011387.i = phi <4 x float> [ zeroinitializer, %.lr.ph1392.i ], [ %.41105.i, %.loopexit1147.i ] ; 4 uses
  %i.asi = sdiv i32 %.14861390.i, %i.de
  %i.asj = sext i32 %i.asi to i64
  %.reass1399.i = mul i64 %factor.op.mul1364.i, %i.asj
  %gep1401.i = getelementptr i8, ptr %invariant.gep1400.i, i64 %.reass1399.i ; 2 uses
  br i1 %i.dr, label %.preheader1148.i, label %.loopexit1149.i

.preheader1148.i:                                 ; preds = %bb.y
  br i1 %i.art, label %.lr.ph1373.i, label %.loopexit1147.i

.lr.ph1373.i:                                     ; preds = %.preheader1148.i, %.lr.ph1373.i
  %.04721372.i = phi i32 [ %i.ate, %.lr.ph1373.i ], [ 0, %.preheader1148.i ]
  %.04731371.i = phi ptr [ %i.atc, %.lr.ph1373.i ], [ %gep1401.i, %.preheader1148.i ] ; 2 uses
  %.84971370.i = phi ptr [ %i.atd, %.lr.ph1373.i ], [ %.74961389.i, %.preheader1148.i ] ; 3 uses
  %.110971369.i = phi <4 x float> [ %i.ata, %.lr.ph1373.i ], [ %.010961388.i, %.preheader1148.i ]
  %.111021368.i = phi <4 x float> [ %i.atb, %.lr.ph1373.i ], [ %.011011387.i, %.preheader1148.i ]
  %i.ask = load i64, ptr %.04731371.i, align 1, !tbaa !65
  %i.asl = insertelement <2 x i64> poison, i64 %i.ask, i64 0
  %i.asm = bitcast <2 x i64> %i.asl to <8 x i16>
  %i.asn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.asm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aso = bitcast <8 x i16> %i.asn to <4 x float> ; 2 uses
  %i.asp = load i64, ptr %.84971370.i, align 1, !tbaa !65
  %i.asq = insertelement <2 x i64> poison, i64 %i.asp, i64 0
  %i.asr = bitcast <2 x i64> %i.asq to <8 x i16>
  %i.ass = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.asr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ast = bitcast <8 x i16> %i.ass to <4 x float>
  %i.asu = getelementptr inbounds nuw i8, ptr %.84971370.i, i64 8
  %i.asv = load i64, ptr %i.asu, align 1, !tbaa !65
  %i.asw = insertelement <2 x i64> poison, i64 %i.asv, i64 0
  %i.asx = bitcast <2 x i64> %i.asw to <8 x i16>
  %i.asy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.asx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.asz = bitcast <8 x i16> %i.asy to <4 x float>
  %i.ata = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aso, <4 x float> nofpclass(nan inf) %i.ast, <4 x float> nofpclass(nan inf) %.110971369.i) ; 2 uses
  %i.atb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aso, <4 x float> nofpclass(nan inf) %i.asz, <4 x float> nofpclass(nan inf) %.111021368.i) ; 2 uses
  %i.atc = getelementptr inbounds [2 x i8], ptr %.04731371.i, i64 %i.arw
  %i.atd = getelementptr inbounds nuw i8, ptr %.84971370.i, i64 16
  %i.ate = add nuw nsw i32 %.04721372.i, 1        ; 2 uses
  %exitcond1751.not.i = icmp eq i32 %i.ate, %i.ars
  br i1 %exitcond1751.not.i, label %.loopexit1149.loopexit.i, label %.lr.ph1373.i, !llvm.loop !416

.loopexit1149.loopexit.i:                         ; preds = %.lr.ph1373.i
  %scevgep1749.i = getelementptr i8, ptr %.74961389.i, i64 16
  %scevgep1750.i = getelementptr i8, ptr %scevgep1749.i, i64 %i.ash
  br label %.loopexit1147.i

.loopexit1149.i:                                  ; preds = %bb.y
  br i1 %brmerge1603.i, label %.loopexit1147.i, label %.lr.ph1383.i

.lr.ph1383.i:                                     ; preds = %.loopexit1149.i, %.lr.ph1383.i
  %.04711382.i = phi i32 [ %i.aul, %.lr.ph1383.i ], [ 0, %.loopexit1149.i ]
  %.24751381.i = phi ptr [ %i.auj, %.lr.ph1383.i ], [ %gep1401.i, %.loopexit1149.i ] ; 5 uses
  %.104991380.i = phi ptr [ %i.auk, %.lr.ph1383.i ], [ %.74961389.i, %.loopexit1149.i ] ; 3 uses
  %.310991379.i = phi <4 x float> [ %i.auh, %.lr.ph1383.i ], [ %.010961388.i, %.loopexit1149.i ]
  %.311041378.i = phi <4 x float> [ %i.aui, %.lr.ph1383.i ], [ %.011011387.i, %.loopexit1149.i ]
  %i.atf = getelementptr inbounds [2 x i8], ptr %.24751381.i, i64 %i.asa
  %i.atg = load i16, ptr %i.atf, align 2, !tbaa !67
  %i.ath = getelementptr inbounds [2 x i8], ptr %.24751381.i, i64 %i.asc
  %i.ati = load i16, ptr %i.ath, align 2, !tbaa !67
  %i.atj = getelementptr inbounds [2 x i8], ptr %.24751381.i, i64 %i.asd
  %i.atk = load i16, ptr %i.atj, align 2, !tbaa !67
  %i.atl = load i16, ptr %.24751381.i, align 2, !tbaa !67
  %i.atm = zext i16 %i.atg to i32
  %i.atn = zext i16 %i.ati to i32
  %i.ato = zext i16 %i.atk to i32
  %i.atp = zext i16 %i.atl to i32
  %i.atq = insertelement <4 x i32> poison, i32 %i.atp, i64 0
  %i.atr = insertelement <4 x i32> %i.atq, i32 %i.ato, i64 1
  %i.ats = insertelement <4 x i32> %i.atr, i32 %i.atn, i64 2
  %i.att = insertelement <4 x i32> %i.ats, i32 %i.atm, i64 3
  %i.atu = shl nuw <4 x i32> %i.att, splat (i32 16)
  %i.atv = bitcast <4 x i32> %i.atu to <4 x float> ; 2 uses
  %i.atw = load i64, ptr %.104991380.i, align 1, !tbaa !65
  %i.atx = insertelement <2 x i64> poison, i64 %i.atw, i64 0
  %i.aty = bitcast <2 x i64> %i.atx to <8 x i16>
  %i.atz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aty, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aua = bitcast <8 x i16> %i.atz to <4 x float>
  %i.aub = getelementptr inbounds nuw i8, ptr %.104991380.i, i64 8
  %i.auc = load i64, ptr %i.aub, align 1, !tbaa !65
  %i.aud = insertelement <2 x i64> poison, i64 %i.auc, i64 0
  %i.aue = bitcast <2 x i64> %i.aud to <8 x i16>
  %i.auf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aue, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aug = bitcast <8 x i16> %i.auf to <4 x float>
  %i.auh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.atv, <4 x float> nofpclass(nan inf) %i.aua, <4 x float> nofpclass(nan inf) %.310991379.i) ; 2 uses
  %i.aui = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.atv, <4 x float> nofpclass(nan inf) %i.aug, <4 x float> nofpclass(nan inf) %.311041378.i) ; 2 uses
  %i.auj = getelementptr inbounds [2 x i8], ptr %.24751381.i, i64 %i.ase
  %i.auk = getelementptr inbounds nuw i8, ptr %.104991380.i, i64 16
  %i.aul = add nuw nsw i32 %.04711382.i, 1        ; 2 uses
  %exitcond1754.not.i = icmp eq i32 %i.aul, %i.ars
  br i1 %exitcond1754.not.i, label %.loopexit1147.loopexit.i, label %.lr.ph1383.i, !llvm.loop !417

.loopexit1147.loopexit.i:                         ; preds = %.lr.ph1383.i
  %scevgep1752.i = getelementptr i8, ptr %.74961389.i, i64 16
  %scevgep1753.i = getelementptr i8, ptr %scevgep1752.i, i64 %i.ash
  br label %.loopexit1147.i

.loopexit1147.i:                                  ; preds = %.loopexit1147.loopexit.i, %.loopexit1149.i, %.loopexit1149.loopexit.i, %.preheader1148.i
  %.41105.i = phi nsz <4 x float> [ %.011011387.i, %.loopexit1149.i ], [ %i.aui, %.loopexit1147.loopexit.i ], [ %i.atb, %.loopexit1149.loopexit.i ], [ %.011011387.i, %.preheader1148.i ] ; 2 uses
  %.41100.i = phi nsz <4 x float> [ %.010961388.i, %.loopexit1149.i ], [ %i.auh, %.loopexit1147.loopexit.i ], [ %i.ata, %.loopexit1149.loopexit.i ], [ %.010961388.i, %.preheader1148.i ] ; 2 uses
  %.11500.i = phi ptr [ %.74961389.i, %.loopexit1149.i ], [ %scevgep1753.i, %.loopexit1147.loopexit.i ], [ %scevgep1750.i, %.loopexit1149.loopexit.i ], [ %.74961389.i, %.preheader1148.i ] ; 2 uses
  %i.aum = add nuw nsw i32 %.14861390.i, 4        ; 3 uses
  %i.aun = or disjoint i32 %i.aum, 3
  %i.auo = icmp slt i32 %i.aun, %i.dg
  br i1 %i.auo, label %bb.y, label %._crit_edge1393.i, !llvm.loop !418

._crit_edge1393.i:                                ; preds = %.loopexit1147.i, %._crit_edge1359.i
  %.01101.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge1359.i ], [ %.41105.i, %.loopexit1147.i ] ; 2 uses
  %.01096.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge1359.i ], [ %.41100.i, %.loopexit1147.i ] ; 2 uses
  %.7496.lcssa.i = phi ptr [ %.0489.lcssa.i, %._crit_edge1359.i ], [ %.11500.i, %.loopexit1147.i ] ; 2 uses
  %.1486.lcssa.i = phi i32 [ %.0485.lcssa.i, %._crit_edge1359.i ], [ %i.aum, %.loopexit1147.i ] ; 3 uses
  %i.aup = shufflevector <4 x float> %.01096.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.auq = fadd fast <4 x float> %i.aup, %.01096.lcssa.i ; 2 uses
  %i.aur = shufflevector <4 x float> %i.ari, <4 x float> %i.arn, <2 x i32> <i32 1, i32 5>
  %i.aus = fadd fast <2 x float> %i.aur, %i.aly
  %i.aut = shufflevector <4 x float> %.01101.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.auu = fadd fast <4 x float> %i.aut, %.01101.lcssa.i ; 2 uses
  %i.auv = shufflevector <4 x float> %i.ari, <4 x float> %i.arn, <2 x i32> <i32 0, i32 4>
  %i.auw = fadd fast <2 x float> %i.aus, %i.auv
  %i.aux = shufflevector <4 x float> %i.auq, <4 x float> %i.auu, <2 x i32> <i32 1, i32 5>
  %i.auy = fadd fast <2 x float> %i.auw, %i.aux
  %i.auz = shufflevector <4 x float> %i.auq, <4 x float> %i.auu, <2 x i32> <i32 0, i32 4>
  %i.ava = fadd fast <2 x float> %i.auy, %i.auz   ; 3 uses
  %i.avb = or disjoint i32 %.1486.lcssa.i, 1
  %i.avc = icmp slt i32 %i.avb, %i.dg
  br i1 %i.avc, label %.lr.ph1418.i, label %.preheader1155.i

.lr.ph1418.i:                                     ; preds = %._crit_edge1393.i
  %i.avd = mul nsw i64 %indvars.iv1767.i, %i.alr
  %invariant.gep1425.i = getelementptr [2 x i8], ptr %i.als, i64 %i.avd
  %i.ave = load i32, ptr %i.e, align 4
  %i.avf = sext i32 %i.ave to i64
  %i.avg = load i32, ptr %i.b, align 4
  %i.avh = sext i32 %i.avg to i64
  br i1 %i.alm, label %.lr.ph1408.us.preheader.i, label %._crit_edge1447.i

.lr.ph1408.us.preheader.i:                        ; preds = %.lr.ph1418.i
  %i.avi = zext i32 %.1486.lcssa.i to i64
  br label %.lr.ph1408.us.i

.lr.ph1408.us.i:                                  ; preds = %._crit_edge1409.us.i, %.lr.ph1408.us.preheader.i
  %indvars.iv1758.i = phi i64 [ %i.avi, %.lr.ph1408.us.preheader.i ], [ %indvars.iv.next1759.i, %._crit_edge1409.us.i ] ; 2 uses
  %.125011415.us.i = phi ptr [ %.7496.lcssa.i, %.lr.ph1408.us.preheader.i ], [ %scevgep1756.i, %._crit_edge1409.us.i ] ; 2 uses
  %i.avj = phi <2 x float> [ %i.ava, %.lr.ph1408.us.preheader.i ], [ %i.awe, %._crit_edge1409.us.i ]
  %.reass1424.us.i = mul i64 %factor.op.mul1364.i, %indvars.iv1758.i
  %gep1426.us.i = getelementptr i8, ptr %invariant.gep1425.i, i64 %.reass1424.us.i
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph1408.us.i
  %.04691406.us.i = phi i32 [ 0, %.lr.ph1408.us.i ], [ %i.awh, %bb.z ]
  %.04701405.us.i = phi ptr [ %gep1426.us.i, %.lr.ph1408.us.i ], [ %i.awf, %bb.z ] ; 3 uses
  %.135021404.us.i = phi ptr [ %.125011415.us.i, %.lr.ph1408.us.i ], [ %i.awg, %bb.z ] ; 3 uses
  %i.avk = phi <2 x float> [ %i.avj, %.lr.ph1408.us.i ], [ %i.awe, %bb.z ]
  %i.avl = load i16, ptr %.04701405.us.i, align 2, !tbaa !67
  %i.avm = getelementptr inbounds [2 x i8], ptr %.04701405.us.i, i64 %i.avf
  %i.avn = load i16, ptr %i.avm, align 2, !tbaa !67
  %i.avo = getelementptr inbounds nuw i8, ptr %.135021404.us.i, i64 4
  %i.avp = load <2 x i16>, ptr %.135021404.us.i, align 2, !tbaa !67
  %i.avq = zext <2 x i16> %i.avp to <2 x i32>
  %i.avr = shl nuw <2 x i32> %i.avq, splat (i32 16)
  %i.avs = bitcast <2 x i32> %i.avr to <2 x float>
  %i.avt = zext i16 %i.avl to i32
  %i.avu = zext i16 %i.avn to i32
  %5 = insertelement <2 x i32> poison, i32 %i.avu, i64 0
  %6 = insertelement <2 x i32> %5, i32 %i.avt, i64 1
  %7 = shl nuw <2 x i32> %6, splat (i32 16)
  %i.avv = bitcast <2 x i32> %7 to <2 x float>    ; 2 uses
  %8 = shufflevector <2 x float> %i.avv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.avw = fmul fast <2 x float> %8, %i.avs
  %i.avx = fadd fast <2 x float> %i.avk, %i.avw
  %i.avy = load <2 x i16>, ptr %i.avo, align 2, !tbaa !67
  %i.avz = zext <2 x i16> %i.avy to <2 x i32>
  %i.awa = shl nuw <2 x i32> %i.avz, splat (i32 16)
  %i.awb = bitcast <2 x i32> %i.awa to <2 x float>
  %i.awc = shufflevector <2 x float> %i.avv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.awd = fmul fast <2 x float> %i.awc, %i.awb
  %i.awe = fadd fast <2 x float> %i.awd, %i.avx   ; 3 uses
  %i.awf = getelementptr inbounds [2 x i8], ptr %.04701405.us.i, i64 %i.avh
  %i.awg = getelementptr inbounds nuw i8, ptr %.135021404.us.i, i64 8
  %i.awh = add nuw nsw i32 %.04691406.us.i, 1     ; 2 uses
  %exitcond1757.not.i = icmp eq i32 %i.awh, %i.all
  br i1 %exitcond1757.not.i, label %._crit_edge1409.us.i, label %bb.z, !llvm.loop !419

._crit_edge1409.us.i:                             ; preds = %bb.z
  %scevgep1755.i = getelementptr i8, ptr %.125011415.us.i, i64 8
  %scevgep1756.i = getelementptr i8, ptr %scevgep1755.i, i64 %i.alp ; 2 uses
  %indvars.iv.next1759.i = add nuw nsw i64 %indvars.iv1758.i, 2 ; 2 uses
  %i.awi = trunc i64 %indvars.iv.next1759.i to i32 ; 2 uses
  %i.awj = or i32 %i.awi, 1
  %i.awk = icmp slt i32 %i.awj, %i.dg
  br i1 %i.awk, label %.lr.ph1408.us.i, label %.preheader1155.i, !llvm.loop !420

.preheader1155.i:                                 ; preds = %._crit_edge1409.us.i, %._crit_edge1393.i
  %.12501.lcssa.i = phi ptr [ %.7496.lcssa.i, %._crit_edge1393.i ], [ %scevgep1756.i, %._crit_edge1409.us.i ]
  %.2487.lcssa.i = phi i32 [ %.1486.lcssa.i, %._crit_edge1393.i ], [ %i.awi, %._crit_edge1409.us.i ] ; 2 uses
  %i.awl = phi <2 x float> [ %i.ava, %._crit_edge1393.i ], [ %i.awe, %._crit_edge1409.us.i ] ; 3 uses
  %i.awm = icmp slt i32 %.2487.lcssa.i, %i.dg
  br i1 %i.awm, label %.lr.ph1446.i, label %._crit_edge1447.i

.lr.ph1446.i:                                     ; preds = %.preheader1155.i
  %i.awn = mul nsw i64 %indvars.iv1767.i, %i.alr
  %invariant.gep1452.i = getelementptr [2 x i8], ptr %i.als, i64 %i.awn
  %i.awo = load i32, ptr %i.b, align 4
  %i.awp = sext i32 %i.awo to i64                 ; 2 uses
  br i1 %i.alm, label %.lr.ph1437.us.preheader.i, label %._crit_edge1447.i

.lr.ph1437.us.preheader.i:                        ; preds = %.lr.ph1446.i
  %i.awq = zext i32 %.2487.lcssa.i to i64
  br label %.lr.ph1437.us.i

.lr.ph1437.us.i:                                  ; preds = %._crit_edge1438.us.i, %.lr.ph1437.us.preheader.i
  %indvars.iv1764.i = phi i64 [ %i.awq, %.lr.ph1437.us.preheader.i ], [ %indvars.iv.next1765.i, %._crit_edge1438.us.i ] ; 2 uses
  %.145031444.us.i = phi ptr [ %.12501.lcssa.i, %.lr.ph1437.us.preheader.i ], [ %scevgep1762.i, %._crit_edge1438.us.i ] ; 3 uses
  %i.awr = phi <2 x float> [ %i.awl, %.lr.ph1437.us.preheader.i ], [ %.lcssa342, %._crit_edge1438.us.i ] ; 2 uses
  %.reass1451.us.i = mul i64 %factor.op.mul1364.i, %indvars.iv1764.i
  %gep1453.us.i = getelementptr i8, ptr %invariant.gep1452.i, i64 %.reass1451.us.i ; 2 uses
  br i1 %i.alw, label %.epil.preheader371, label %.lr.ph1437.us.i.new

.lr.ph1437.us.i.new:                              ; preds = %.lr.ph1437.us.i, %.lr.ph1437.us.i.new
  %.04681434.us.i = phi ptr [ %i.axt, %.lr.ph1437.us.i.new ], [ %gep1453.us.i, %.lr.ph1437.us.i ] ; 2 uses
  %.155041433.us.i = phi ptr [ %i.axu, %.lr.ph1437.us.i.new ], [ %.145031444.us.i, %.lr.ph1437.us.i ] ; 3 uses
  %i.aws = phi <2 x float> [ %i.axs, %.lr.ph1437.us.i.new ], [ %i.awr, %.lr.ph1437.us.i ]
  %niter377 = phi i32 [ %niter377.next.1, %.lr.ph1437.us.i.new ], [ 0, %.lr.ph1437.us.i ]
  %i.awt = load i16, ptr %.04681434.us.i, align 2, !tbaa !67
  %i.awu = zext i16 %i.awt to i32
  %i.awv = shl nuw i32 %i.awu, 16
  %i.aww = load <2 x i16>, ptr %.155041433.us.i, align 2, !tbaa !67
  %i.awx = zext <2 x i16> %i.aww to <2 x i32>
  %i.awy = shl nuw <2 x i32> %i.awx, splat (i32 16)
  %i.awz = bitcast <2 x i32> %i.awy to <2 x float>
  %i.axa = insertelement <2 x i32> poison, i32 %i.awv, i64 0
  %i.axb = bitcast <2 x i32> %i.axa to <2 x float>
  %i.axc = shufflevector <2 x float> %i.axb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axd = fmul fast <2 x float> %i.axc, %i.awz
  %i.axe = fadd fast <2 x float> %i.axd, %i.aws
  %i.axf = getelementptr inbounds [2 x i8], ptr %.04681434.us.i, i64 %i.awp ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %.155041433.us.i, i64 4
  %i.axh = load i16, ptr %i.axf, align 2, !tbaa !67
  %i.axi = zext i16 %i.axh to i32
  %i.axj = shl nuw i32 %i.axi, 16
  %i.axk = load <2 x i16>, ptr %i.axg, align 2, !tbaa !67
  %i.axl = zext <2 x i16> %i.axk to <2 x i32>
  %i.axm = shl nuw <2 x i32> %i.axl, splat (i32 16)
  %i.axn = bitcast <2 x i32> %i.axm to <2 x float>
  %i.axo = insertelement <2 x i32> poison, i32 %i.axj, i64 0
  %i.axp = bitcast <2 x i32> %i.axo to <2 x float>
  %i.axq = shufflevector <2 x float> %i.axp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axr = fmul fast <2 x float> %i.axq, %i.axn
  %i.axs = fadd fast <2 x float> %i.axr, %i.axe   ; 3 uses
  %i.axt = getelementptr inbounds [2 x i8], ptr %i.axf, i64 %i.awp ; 2 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %.155041433.us.i, i64 8 ; 2 uses
  %niter377.next.1 = add nuw nsw i32 %niter377, 2 ; 2 uses
  %niter377.ncmp.1 = icmp eq i32 %niter377.next.1, %unroll_iter376
  br i1 %niter377.ncmp.1, label %._crit_edge1438.us.i.unr-lcssa, label %.lr.ph1437.us.i.new, !llvm.loop !421

._crit_edge1438.us.i.unr-lcssa:                   ; preds = %.lr.ph1437.us.i.new
  br i1 %lcmp.mod373.not, label %._crit_edge1438.us.i, label %.epil.preheader371

.epil.preheader371:                               ; preds = %._crit_edge1438.us.i.unr-lcssa, %.lr.ph1437.us.i
  %.04681434.us.i.epil.init = phi ptr [ %gep1453.us.i, %.lr.ph1437.us.i ], [ %i.axt, %._crit_edge1438.us.i.unr-lcssa ]
  %.155041433.us.i.epil.init = phi ptr [ %.145031444.us.i, %.lr.ph1437.us.i ], [ %i.axu, %._crit_edge1438.us.i.unr-lcssa ]
  %.epil.init = phi <2 x float> [ %i.awr, %.lr.ph1437.us.i ], [ %i.axs, %._crit_edge1438.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod375)
  %i.axv = load i16, ptr %.04681434.us.i.epil.init, align 2, !tbaa !67
  %i.axw = zext i16 %i.axv to i32
  %i.axx = shl nuw i32 %i.axw, 16
  %i.axy = load <2 x i16>, ptr %.155041433.us.i.epil.init, align 2, !tbaa !67
  %i.axz = zext <2 x i16> %i.axy to <2 x i32>
  %i.aya = shl nuw <2 x i32> %i.axz, splat (i32 16)
  %i.ayb = bitcast <2 x i32> %i.aya to <2 x float>
  %i.ayc = insertelement <2 x i32> poison, i32 %i.axx, i64 0
  %i.ayd = bitcast <2 x i32> %i.ayc to <2 x float>
  %i.aye = shufflevector <2 x float> %i.ayd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ayf = fmul fast <2 x float> %i.aye, %i.ayb
  %i.ayg = fadd fast <2 x float> %i.ayf, %.epil.init
  br label %._crit_edge1438.us.i

._crit_edge1438.us.i:                             ; preds = %._crit_edge1438.us.i.unr-lcssa, %.epil.preheader371
  %.lcssa342 = phi <2 x float> [ %i.axs, %._crit_edge1438.us.i.unr-lcssa ], [ %i.ayg, %.epil.preheader371 ] ; 2 uses
  %scevgep1761.i = getelementptr i8, ptr %.145031444.us.i, i64 4
  %scevgep1762.i = getelementptr i8, ptr %scevgep1761.i, i64 %i.alq
  %indvars.iv.next1765.i = add nuw nsw i64 %indvars.iv1764.i, 1 ; 2 uses
  %i.ayh = trunc nuw i64 %indvars.iv.next1765.i to i32
  %i.ayi = icmp sgt i32 %i.dg, %i.ayh
  br i1 %i.ayi, label %.lr.ph1437.us.i, label %._crit_edge1447.i, !llvm.loop !422

._crit_edge1447.i:                                ; preds = %._crit_edge1438.us.i, %.lr.ph1418.i, %.lr.ph1446.i, %.preheader1155.i
  %i.ayj = phi <2 x float> [ %i.awl, %.preheader1155.i ], [ %i.awl, %.lr.ph1446.i ], [ %i.ava, %.lr.ph1418.i ], [ %.lcssa342, %._crit_edge1438.us.i ] ; 12 uses
  switch i32 %i.dt, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit588.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit589.thread1115.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit589.thread1118.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit589.thread1112.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit589.thread1121.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit589.thread1124.i
    i32 6, label %bb.aa
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit589.thread1115.i: ; preds = %._crit_edge1447.i
  %i.ayk = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ayj, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit588.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit589.thread1118.i: ; preds = %._crit_edge1447.i
  %i.ayl = load ptr, ptr %i.bs, align 8, !tbaa !19
  %i.aym = load float, ptr %i.ayl, align 4, !tbaa !45
  %i.ayn = fcmp fast ogt <2 x float> %i.ayj, zeroinitializer
  %i.ayo = insertelement <2 x float> poison, float %i.aym, i64 0
  %i.ayp = shufflevector <2 x float> %i.ayo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ayq = select <2 x i1> %i.ayn, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ayp
  %i.ayr = fmul fast <2 x float> %i.ayq, %i.ayj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit588.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit589.thread1112.i: ; preds = %._crit_edge1447.i
  %i.ays = load ptr, ptr %i.bs, align 8, !tbaa !19 ; 2 uses
  %i.ayt = load float, ptr %i.ays, align 4, !tbaa !45 ; 2 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ays, i64 4
  %i.ayv = load float, ptr %i.ayu, align 4, !tbaa !45 ; 3 uses
  %i.ayw = extractelement <2 x float> %i.ayj, i64 0
  %spec.select.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.ayw, float %i.ayt) ; 2 uses
  %i.ayx = fcmp fast ogt float %spec.select.i, %i.ayv
  %.110111114.i = select i1 %i.ayx, float %i.ayv, float %spec.select.i
  %i.ayy = extractelement <2 x float> %i.ayj, i64 1
  %.01012.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.ayy, float %i.ayt)
  %spec.select1137.i = call nnan ninf nsz float @llvm.minnum.f32(float %.01012.i, float %i.ayv)
  %i.ayz = insertelement <2 x float> poison, float %.110111114.i, i64 0
  %i.aza = insertelement <2 x float> %i.ayz, float %spec.select1137.i, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit588.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit589.thread1121.i: ; preds = %._crit_edge1447.i
  %i.azb = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ayj, <2 x float> splat (float f0x42B0C0A5))
  %i.azc = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.azb, <2 x float> splat (float f0xC2B0C0A5))
  %i.azd = fneg fast <2 x float> %i.azc
  %i.aze = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.azd)
  %i.azf = fadd fast <2 x float> %i.aze, splat (float 1.000000e+00)
  %i.azg = fdiv fast <2 x float> splat (float 1.000000e+00), %i.azf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit588.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit589.thread1124.i: ; preds = %._crit_edge1447.i
  %i.azh = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.ayj)
  %i.azi = fadd fast <2 x float> %i.azh, splat (float 1.000000e+00)
  %i.azj = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.azi)
  %i.azk = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.azj)
  %i.azl = fmul fast <2 x float> %i.azk, %i.ayj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit588.i

bb.aa:                                            ; preds = %._crit_edge1447.i
  %i.azm = load ptr, ptr %i.bs, align 8, !tbaa !19 ; 2 uses
  %i.azn = load float, ptr %i.azm, align 4, !tbaa !45 ; 5 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azm, i64 4
  %i.azp = load float, ptr %i.azo, align 4, !tbaa !45 ; 3 uses
  %i.azq = fneg fast float %i.azp
  %i.azr = fdiv fast float %i.azq, %i.azn         ; 4 uses
  %i.azs = extractelement <2 x float> %i.ayj, i64 0 ; 5 uses
  %i.azt = fcmp fast olt float %i.azs, %i.azr
  br i1 %i.azt, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit589.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.azu = fdiv fast float 1.000000e+00, %i.azn
  %i.azv = fadd fast float %i.azr, %i.azu
  %i.azw = fcmp fast ogt float %i.azs, %i.azv
  br i1 %i.azw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit589.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.azx = fmul fast float %i.azn, %i.azs
  %i.azy = fadd fast float %i.azx, %i.azp
  %i.azz = fmul fast float %i.azy, %i.azs
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit589.thread.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit589.thread.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  %.110111108.i = phi float [ %i.azz, %bb.ac ], [ 0.000000e+00, %bb.aa ], [ %i.azs, %bb.ab ] ; 2 uses
  %i.baa = extractelement <2 x float> %i.ayj, i64 1 ; 4 uses
  %i.bab = fcmp fast olt float %i.baa, %i.azr
  %i.bac = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.110111108.i, i64 0 ; 2 uses
  br i1 %i.bab, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit588.i, label %bb.ad

bb.ad:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit589.thread.i
  %i.bad = fdiv fast float 1.000000e+00, %i.azn
end_hunk_0
