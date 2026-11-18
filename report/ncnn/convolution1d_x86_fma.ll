Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86_fma?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4ncnn21Convolution1D_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  store float %i.aow, ptr %i.aox, align 4, !tbaa !45
  %i.aoy = load float, ptr %i.aos, align 4, !tbaa !45
  %i.aoz = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 24
  store float %i.aoy, ptr %i.aoz, align 4, !tbaa !45
  %i.apa = load float, ptr %i.aot, align 4, !tbaa !45
  %i.apb = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 28
  store float %i.apa, ptr %i.apb, align 4, !tbaa !45
  %i.apc = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 32 ; 2 uses
  %indvars.iv.next1723.i = add nuw nsw i64 %indvars.iv1722.i, 1 ; 2 uses
  %exitcond1726.not.i = icmp eq i64 %indvars.iv.next1723.i, %wide.trip.count1706.i
  br i1 %exitcond1726.not.i, label %._crit_edge1311.us.i, label %scalar.ph500, !llvm.loop !112

._crit_edge1311.us.i:                             ; preds = %scalar.ph500, %middle.block549
  %.lcssa255 = phi ptr [ %i.ano, %middle.block549 ], [ %i.apc, %scalar.ph500 ] ; 2 uses
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %.29471313.us.i, i64 %i.hu ; 2 uses
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr %.29441314.us.i, i64 %i.hu ; 2 uses
  %i.apf = getelementptr inbounds nuw [4 x i8], ptr %.29411315.us.i, i64 %i.hu ; 2 uses
  %i.apg = getelementptr inbounds nuw [4 x i8], ptr %.29381316.us.i, i64 %i.hu ; 2 uses
  %i.aph = add nuw nsw i32 %.29231318.us.i, 2     ; 3 uses
  %i.api = or disjoint i32 %i.aph, 1
  %i.apj = icmp slt i32 %i.api, %i.n
  br i1 %i.apj, label %.preheader1097.us.i, label %.preheader1100.i, !llvm.loop !113

.preheader1100.i:                                 ; preds = %._crit_edge1311.us.i, %.preheader1101.i
  %.2947.lcssa.i = phi ptr [ %.1946.lcssa.i, %.preheader1101.i ], [ %i.apd, %._crit_edge1311.us.i ] ; 6 uses
  %.2944.lcssa.i = phi ptr [ %.1943.lcssa.i, %.preheader1101.i ], [ %i.ape, %._crit_edge1311.us.i ] ; 6 uses
  %.2941.lcssa.i = phi ptr [ %.1940.lcssa.i, %.preheader1101.i ], [ %i.apf, %._crit_edge1311.us.i ] ; 6 uses
  %.2938.lcssa.i = phi ptr [ %.1937.lcssa.i, %.preheader1101.i ], [ %i.apg, %._crit_edge1311.us.i ] ; 6 uses
  %.6931.lcssa.i = phi ptr [ %.3928.lcssa.i, %.preheader1101.i ], [ %.lcssa255, %._crit_edge1311.us.i ]
  %.2923.lcssa.i = phi i32 [ %.1922.lcssa.i, %.preheader1101.i ], [ %i.aph, %._crit_edge1311.us.i ] ; 2 uses
  %i.apk = icmp sge i32 %.2923.lcssa.i, %i.n
  %brmerge1467.i = or i1 %i.hv, %i.apk
  br i1 %brmerge1467.i, label %._crit_edge1337.split.i, label %.preheader1096.i.preheader

.preheader1096.i.preheader:                       ; preds = %.preheader1100.i
  %scevgep390 = getelementptr i8, ptr %.2947.lcssa.i, i64 %i.iq
  %scevgep391 = getelementptr i8, ptr %.2944.lcssa.i, i64 %i.iq
  %scevgep392 = getelementptr i8, ptr %.2941.lcssa.i, i64 %i.iq
  %scevgep393 = getelementptr i8, ptr %.2938.lcssa.i, i64 %i.iq
  br label %.preheader1096.i

.preheader1096.i:                                 ; preds = %.preheader1096.i.preheader, %._crit_edge1333.i
  %.39241336.i = phi i32 [ %i.aqi, %._crit_edge1333.i ], [ %.2923.lcssa.i, %.preheader1096.i.preheader ]
  %.99341335.i = phi ptr [ %.lcssa261, %._crit_edge1333.i ], [ %.6931.lcssa.i, %.preheader1096.i.preheader ] ; 9 uses
  br i1 %min.iters.check395, label %scalar.ph394.preheader, label %vector.memcheck396

vector.memcheck396:                               ; preds = %.preheader1096.i
  %i.apl = getelementptr i8, ptr %.99341335.i, i64 %i.ir ; 4 uses
  %bound0397 = icmp ult ptr %.99341335.i, %scevgep393
  %bound1398 = icmp ult ptr %.2938.lcssa.i, %i.apl
  %found.conflict399 = and i1 %bound0397, %bound1398
  %bound0400 = icmp ult ptr %.99341335.i, %scevgep392
  %bound1401 = icmp ult ptr %.2941.lcssa.i, %i.apl
  %found.conflict402 = and i1 %bound0400, %bound1401
  %conflict.rdx403 = or i1 %found.conflict399, %found.conflict402
  %bound0404 = icmp ult ptr %.99341335.i, %scevgep391
  %bound1405 = icmp ult ptr %.2944.lcssa.i, %i.apl
  %found.conflict406 = and i1 %bound0404, %bound1405
  %conflict.rdx407 = or i1 %conflict.rdx403, %found.conflict406
  %bound0408 = icmp ult ptr %.99341335.i, %scevgep390
  %bound1409 = icmp ult ptr %.2947.lcssa.i, %i.apl
  %found.conflict410 = and i1 %bound0408, %bound1409
  %conflict.rdx411 = or i1 %conflict.rdx407, %found.conflict410
  br i1 %conflict.rdx411, label %scalar.ph394.preheader, label %vector.ph412

vector.ph412:                                     ; preds = %vector.memcheck396
  %i.apm = getelementptr i8, ptr %.99341335.i, i64 %i.iy ; 2 uses
  br label %vector.body414

vector.body414:                                   ; preds = %vector.body414, %vector.ph412
  %index415 = phi i64 [ 0, %vector.ph412 ], [ %index.next422, %vector.body414 ] ; 6 uses
  %i.apn = shl i64 %index415, 4
  %next.gep416 = getelementptr i8, ptr %.99341335.i, i64 %i.apn
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %index415
  %i.app = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %index415
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %index415
  %i.apr = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %index415
  %wide.load417 = load <8 x float>, ptr %i.apo, align 4, !tbaa !45, !alias.scope !219
  %wide.load418 = load <8 x float>, ptr %i.app, align 4, !tbaa !45, !alias.scope !220
  %wide.load419 = load <8 x float>, ptr %i.apq, align 4, !tbaa !45, !alias.scope !221
  %wide.load420 = load <8 x float>, ptr %i.apr, align 4, !tbaa !45, !alias.scope !222
  %i.aps = shufflevector <8 x float> %wide.load417, <8 x float> %wide.load418, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apt = shufflevector <8 x float> %wide.load419, <8 x float> %wide.load420, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec421 = shufflevector <16 x float> %i.aps, <16 x float> %i.apt, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec421, ptr %next.gep416, align 4, !tbaa !45, !alias.scope !223, !noalias !224
  %index.next422 = add nuw i64 %index415, 8       ; 2 uses
  %i.apu = icmp eq i64 %index.next422, %n.vec413
  br i1 %i.apu, label %middle.block423, label %vector.body414, !llvm.loop !120

middle.block423:                                  ; preds = %vector.body414
  br i1 %cmp.n424, label %._crit_edge1333.i, label %scalar.ph394.preheader

scalar.ph394.preheader:                           ; preds = %vector.memcheck396, %.preheader1096.i, %middle.block423
  %indvars.iv1727.i.ph = phi i64 [ 0, %vector.memcheck396 ], [ 0, %.preheader1096.i ], [ %n.vec413, %middle.block423 ] ; 7 uses
  %.109351331.i.ph = phi ptr [ %.99341335.i, %vector.memcheck396 ], [ %.99341335.i, %.preheader1096.i ], [ %i.apm, %middle.block423 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph394.prol.loopexit, label %scalar.ph394.prol

scalar.ph394.prol:                                ; preds = %scalar.ph394.preheader
  %i.apv = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %indvars.iv1727.i.ph
  %i.apw = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %indvars.iv1727.i.ph
  %i.apx = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %indvars.iv1727.i.ph
  %i.apy = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %indvars.iv1727.i.ph
  %i.apz = load float, ptr %i.apv, align 4, !tbaa !45
  store float %i.apz, ptr %.109351331.i.ph, align 4, !tbaa !45
  %i.aqa = load float, ptr %i.apw, align 4, !tbaa !45
  %i.aqb = getelementptr inbounds nuw i8, ptr %.109351331.i.ph, i64 4
  store float %i.aqa, ptr %i.aqb, align 4, !tbaa !45
  %i.aqc = load float, ptr %i.apx, align 4, !tbaa !45
  %i.aqd = getelementptr inbounds nuw i8, ptr %.109351331.i.ph, i64 8
  store float %i.aqc, ptr %i.aqd, align 4, !tbaa !45
  %i.aqe = load float, ptr %i.apy, align 4, !tbaa !45
  %i.aqf = getelementptr inbounds nuw i8, ptr %.109351331.i.ph, i64 12
  store float %i.aqe, ptr %i.aqf, align 4, !tbaa !45
  %i.aqg = getelementptr inbounds nuw i8, ptr %.109351331.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1728.i.prol = or disjoint i64 %indvars.iv1727.i.ph, 1
  br label %scalar.ph394.prol.loopexit

scalar.ph394.prol.loopexit:                       ; preds = %scalar.ph394.prol, %scalar.ph394.preheader
  %.lcssa1137.unr = phi ptr [ poison, %scalar.ph394.preheader ], [ %i.aqg, %scalar.ph394.prol ]
  %indvars.iv1727.i.unr = phi i64 [ %indvars.iv1727.i.ph, %scalar.ph394.preheader ], [ %indvars.iv.next1728.i.prol, %scalar.ph394.prol ]
  %.109351331.i.unr = phi ptr [ %.109351331.i.ph, %scalar.ph394.preheader ], [ %i.aqg, %scalar.ph394.prol ]
  %i.aqh = icmp eq i64 %indvars.iv1727.i.ph, %i.iz
  br i1 %i.aqh, label %._crit_edge1333.i, label %scalar.ph394

._crit_edge1333.i:                                ; preds = %scalar.ph394.prol.loopexit, %scalar.ph394, %middle.block423
  %.lcssa261 = phi ptr [ %i.apm, %middle.block423 ], [ %.lcssa1137.unr, %scalar.ph394.prol.loopexit ], [ %i.arg, %scalar.ph394 ]
  %i.aqi = add nuw nsw i32 %.39241336.i, 1        ; 2 uses
  %exitcond1732.not.i = icmp eq i32 %i.aqi, %i.n
  br i1 %exitcond1732.not.i, label %._crit_edge1337.split.i, label %.preheader1096.i, !llvm.loop !121

scalar.ph394:                                     ; preds = %scalar.ph394.prol.loopexit, %scalar.ph394
  %indvars.iv1727.i = phi i64 [ %indvars.iv.next1728.i.1, %scalar.ph394 ], [ %indvars.iv1727.i.unr, %scalar.ph394.prol.loopexit ] ; 6 uses
  %.109351331.i = phi ptr [ %i.arg, %scalar.ph394 ], [ %.109351331.i.unr, %scalar.ph394.prol.loopexit ] ; 9 uses
  %i.aqj = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %indvars.iv1727.i
  %i.aqk = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %indvars.iv1727.i
  %i.aql = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %indvars.iv1727.i
  %i.aqm = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %indvars.iv1727.i
  %i.aqn = load float, ptr %i.aqj, align 4, !tbaa !45
  store float %i.aqn, ptr %.109351331.i, align 4, !tbaa !45
  %i.aqo = load float, ptr %i.aqk, align 4, !tbaa !45
  %i.aqp = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 4
  store float %i.aqo, ptr %i.aqp, align 4, !tbaa !45
  %i.aqq = load float, ptr %i.aql, align 4, !tbaa !45
  %i.aqr = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 8
  store float %i.aqq, ptr %i.aqr, align 4, !tbaa !45
  %i.aqs = load float, ptr %i.aqm, align 4, !tbaa !45
  %i.aqt = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 12
  store float %i.aqs, ptr %i.aqt, align 4, !tbaa !45
  %i.aqu = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 16
  %indvars.iv.next1728.i = add nuw nsw i64 %indvars.iv1727.i, 1 ; 4 uses
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %indvars.iv.next1728.i
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %indvars.iv.next1728.i
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %indvars.iv.next1728.i
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %indvars.iv.next1728.i
  %i.aqz = load float, ptr %i.aqv, align 4, !tbaa !45
  store float %i.aqz, ptr %i.aqu, align 4, !tbaa !45
  %i.ara = load float, ptr %i.aqw, align 4, !tbaa !45
  %i.arb = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 20
  store float %i.ara, ptr %i.arb, align 4, !tbaa !45
  %i.arc = load float, ptr %i.aqx, align 4, !tbaa !45
  %i.ard = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 24
  store float %i.arc, ptr %i.ard, align 4, !tbaa !45
  %i.are = load float, ptr %i.aqy, align 4, !tbaa !45
  %i.arf = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 28
  store float %i.are, ptr %i.arf, align 4, !tbaa !45
  %i.arg = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 32 ; 2 uses
  %indvars.iv.next1728.i.1 = add nuw nsw i64 %indvars.iv1727.i, 2 ; 2 uses
  %exitcond1731.not.i.1 = icmp eq i64 %indvars.iv.next1728.i.1, %wide.trip.count1706.i
  br i1 %exitcond1731.not.i.1, label %._crit_edge1333.i, label %scalar.ph394, !llvm.loop !122

._crit_edge1337.split.i:                          ; preds = %._crit_edge1333.i, %.preheader1100.i, %.preheader1097.lr.ph.i
  %indvars.iv.next1736.i = add nuw nsw i64 %indvars.iv1735.i, 4 ; 3 uses
  %i.arh = icmp slt i64 %indvars.iv.next1736.i, %invariant.op.i
  %indvars.iv.next1688.i = add i32 %indvars.iv1687.i, %i.ic
  %indvars.iv.next1692.i = add i32 %indvars.iv1691.i, %i.ic
  %indvars.iv.next1696.i = add i32 %indvars.iv1695.i, %i.ic
  %indvars.iv.next1700.i = add i32 %indvars.iv1699.i, %i.ic
  %indvars.iv.next1734.i = add i32 %indvars.iv1733.i, 4
  br i1 %i.arh, label %_ZN4ncnn3MatD2Ev.exit1004.i, label %.preheader1095.loopexit.i, !llvm.loop !123

.preheader1087.loopexit.i:                        ; preds = %._crit_edge1400.split.i
  %i.ari = trunc nuw nsw i64 %indvars.iv.next1774.i to i32
  br label %.preheader1087.i

.preheader1087.i:                                 ; preds = %.preheader1087.loopexit.i, %.preheader1095.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1095.i ], [ %i.ari, %.preheader1087.loopexit.i ] ; 4 uses
  %i.arj = icmp slt i32 %.2.lcssa.i, %i.m
  br i1 %i.arj, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1087.i
  %i.ark = load ptr, ptr %i.o, align 8, !tbaa !19 ; 17 uses
  %i.arl = mul i32 %i.n, %i.j                     ; 3 uses
  %i.arm = load ptr, ptr %i.p, align 8, !tbaa !19, !noalias !225
  %i.arn = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.aro = load i64, ptr %i.arn, align 8, !tbaa !20, !noalias !225
  %i.arp = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.arq = load i64, ptr %i.arp, align 8, !tbaa !44, !noalias !225
  %factor.op.mul1462.i = mul i64 %i.arq, %i.aro
  %i.arr = icmp sgt i32 %i.n, 7
  %i.ars = icmp sgt i32 %i.j, 0                   ; 3 uses
  %i.art = sext i32 %i.j to i64                   ; 42 uses
  %i.aru = shl i32 %i.j, 3                        ; 2 uses
  %i.arv = sext i32 %i.aru to i64                 ; 3 uses
  %i.arw = shl i32 %i.j, 2                        ; 2 uses
  %i.arx = sext i32 %i.arw to i64                 ; 3 uses
  %i.ary = shl i32 %i.j, 1                        ; 2 uses
  %i.arz = sext i32 %i.ary to i64                 ; 2 uses
  %i.asa = icmp slt i32 %i.j, 1
  %i.asb = add i32 %i.n, -8                       ; 3 uses
  %i.asc = lshr i32 %i.asb, 1
  %i.asd = and i32 %i.asc, 2147483644
  %narrow1836.i = add nuw i32 %i.asd, 4
  %i.ase = zext i32 %narrow1836.i to i64
  %i.asf = mul nsw i64 %i.ase, %i.arv
  %scevgep1776.i = getelementptr i8, ptr %i.ark, i64 %i.asf
  %i.asg = mul i32 %i.arl, %.2.lcssa.i
  %i.ash = and i32 %i.asb, -8
  %i.asi = add nuw i32 %i.ash, 8                  ; 4 uses
  %i.asj = add i32 %i.n, -4
  %i.ask = sext i32 %.2.lcssa.i to i64
  %wide.trip.count1808.i = sext i32 %i.m to i64
  %i.asl = or disjoint i32 %i.asi, 3
  %i.asm = icmp slt i32 %i.asl, %i.n
  %wide.trip.count1784.i = zext i32 %i.j to i64   ; 27 uses
  %i.asn = shl nuw nsw i64 %wide.trip.count1784.i, 2 ; 2 uses
  %i.aso = shl nsw i64 %i.arz, 2
  %i.asp = add i32 %i.n, -2
  %i.asq = shl nsw i64 %i.art, 2                  ; 4 uses
  %i.asr = shl nuw nsw i64 %wide.trip.count1784.i, 3
  %i.ass = shl nuw nsw i64 %wide.trip.count1784.i, 2 ; 4 uses
  %i.ast = shl nsw i64 %i.arx, 2
  %i.asu = add i32 %i.n, -4
  %i.asv = shl nsw i64 %i.art, 3                  ; 2 uses
  %i.asw = mul nsw i64 %i.art, 12                 ; 2 uses
  %i.asx = shl nuw nsw i64 %wide.trip.count1784.i, 4
  %i.asy = lshr i32 %i.asb, 3
  %i.asz = zext nneg i32 %i.asy to i64
  %i.ata = mul nsw i64 %i.asz, %i.arv
  %i.atb = shl nsw i64 %i.ata, 2                  ; 8 uses
  %i.atc = shl nuw nsw i64 %wide.trip.count1784.i, 2 ; 8 uses
  %i.atd = getelementptr i8, ptr %i.ark, i64 %i.atb
  %scevgep1012 = getelementptr i8, ptr %i.atd, i64 %i.atc
  %i.ate = mul i32 %.2.lcssa.i, %i.j
  %i.atf = mul i32 %i.ate, %i.n
  %i.atg = mul i32 %i.j, %i.n
  %i.ath = shl nsw i64 %i.art, 2                  ; 2 uses
  %i.ati = getelementptr i8, ptr %i.ark, i64 %i.atb
  %i.atj = getelementptr i8, ptr %i.ati, i64 %i.ath
  %scevgep1014 = getelementptr i8, ptr %i.atj, i64 %i.atc
  %scevgep1016 = getelementptr i8, ptr %i.ark, i64 %i.ath
  %i.atk = shl nsw i64 %i.art, 3                  ; 2 uses
  %i.atl = getelementptr i8, ptr %i.ark, i64 %i.atb
  %i.atm = getelementptr i8, ptr %i.atl, i64 %i.atk
  %scevgep1018 = getelementptr i8, ptr %i.atm, i64 %i.atc
  %scevgep1020 = getelementptr i8, ptr %i.ark, i64 %i.atk
  %i.atn = mul nsw i64 %i.art, 12                 ; 2 uses
  %i.ato = getelementptr i8, ptr %i.ark, i64 %i.atb
  %i.atp = getelementptr i8, ptr %i.ato, i64 %i.atn
  %scevgep1022 = getelementptr i8, ptr %i.atp, i64 %i.atc
  %scevgep1024 = getelementptr i8, ptr %i.ark, i64 %i.atn
  %i.atq = shl nsw i64 %i.art, 4                  ; 2 uses
  %i.atr = getelementptr i8, ptr %i.ark, i64 %i.atb
  %i.ats = getelementptr i8, ptr %i.atr, i64 %i.atq
  %scevgep1026 = getelementptr i8, ptr %i.ats, i64 %i.atc
  %scevgep1028 = getelementptr i8, ptr %i.ark, i64 %i.atq
  %i.att = mul nsw i64 %i.art, 20                 ; 2 uses
  %i.atu = getelementptr i8, ptr %i.ark, i64 %i.atb
  %i.atv = getelementptr i8, ptr %i.atu, i64 %i.att
  %scevgep1030 = getelementptr i8, ptr %i.atv, i64 %i.atc
  %scevgep1032 = getelementptr i8, ptr %i.ark, i64 %i.att
  %i.atw = mul nsw i64 %i.art, 24                 ; 2 uses
  %i.atx = getelementptr i8, ptr %i.ark, i64 %i.atb
  %i.aty = getelementptr i8, ptr %i.atx, i64 %i.atw
  %scevgep1034 = getelementptr i8, ptr %i.aty, i64 %i.atc
  %scevgep1036 = getelementptr i8, ptr %i.ark, i64 %i.atw
  %i.atz = mul nsw i64 %i.art, 28                 ; 2 uses
  %i.aua = getelementptr i8, ptr %i.ark, i64 %i.atb
  %i.aub = getelementptr i8, ptr %i.aua, i64 %i.atz
  %scevgep1038 = getelementptr i8, ptr %i.aub, i64 %i.atc
  %scevgep1040 = getelementptr i8, ptr %i.ark, i64 %i.atz
  %i.auc = shl nuw nsw i64 %wide.trip.count1784.i, 5
  %min.iters.check1043 = icmp ult i32 %i.j, 16
  %stride.check1048 = icmp slt i32 %i.aru, 0
  %n.vec1078 = and i64 %wide.trip.count1784.i, 2147483640 ; 4 uses
  %i.aud = shl nuw nsw i64 %n.vec1078, 5
  %cmp.n1093 = icmp eq i64 %n.vec1078, %wide.trip.count1784.i
  %min.iters.check915 = icmp ult i32 %i.j, 8
  %stride.check920 = icmp slt i32 %i.arw, 0
  %n.vec934 = and i64 %wide.trip.count1784.i, 2147483640 ; 4 uses
  %i.aue = shl nuw nsw i64 %n.vec934, 4
  %cmp.n945 = icmp eq i64 %n.vec934, %wide.trip.count1784.i
  %xtraiter1172 = and i64 %wide.trip.count1784.i, 1
  %lcmp.mod1173.not = icmp eq i64 %xtraiter1172, 0
  %i.auf = add nsw i64 %wide.trip.count1784.i, -1
  %min.iters.check847 = icmp ult i32 %i.j, 8
  %stride.check852 = icmp slt i32 %i.ary, 0
  %n.vec858 = and i64 %wide.trip.count1784.i, 2147483644 ; 4 uses
  %i.aug = shl nuw nsw i64 %n.vec858, 3
  %cmp.n871 = icmp eq i64 %n.vec858, %wide.trip.count1784.i
  %xtraiter1175 = and i64 %wide.trip.count1784.i, 3 ; 2 uses
  %lcmp.mod1176.not = icmp eq i64 %xtraiter1175, 0
  %min.iters.check803 = icmp ult i32 %i.j, 8
  %min.iters.check805 = icmp ult i32 %i.j, 32
  %i.auh = and i64 %wide.trip.count1784.i, 24
  %n.vec807 = and i64 %wide.trip.count1784.i, 2147483616 ; 5 uses
  %i.aui = shl nuw nsw i64 %n.vec807, 2
  %cmp.n817 = icmp eq i64 %n.vec807, %wide.trip.count1784.i
  %min.epilog.iters.check = icmp eq i64 %i.auh, 0
  %n.vec818 = and i64 %wide.trip.count1784.i, 2147483640 ; 4 uses
  %i.auj = shl nuw nsw i64 %n.vec818, 2
  %cmp.n823 = icmp eq i64 %n.vec818, %wide.trip.count1784.i
  %xtraiter1178 = and i64 %wide.trip.count1784.i, 7 ; 2 uses
  %lcmp.mod1179.not = icmp eq i64 %xtraiter1178, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit1003.i:                      ; preds = %._crit_edge1400.split.i, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i
  %indvars.iv1773.i = phi i64 [ %i.adv, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1774.i, %._crit_edge1400.split.i ] ; 2 uses
  %indvars.iv1745.i = phi i32 [ %i.adr, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1746.i, %._crit_edge1400.split.i ] ; 2 uses
  %indvars.iv1741.i = phi i32 [ %i.adp, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1742.i, %._crit_edge1400.split.i ] ; 2 uses
  %i.auk = phi i32 [ %i.ach, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %i.ben, %._crit_edge1400.split.i ]
  %i.aul = sext i32 %indvars.iv1741.i to i64
  %i.aum = shl nsw i64 %i.aul, 2
  %scevgep1743.i = getelementptr i8, ptr %scevgep1740.i, i64 %i.aum ; 2 uses
  %i.aun = sext i32 %indvars.iv1745.i to i64
  %i.auo = shl nsw i64 %i.aun, 2
  %scevgep1747.i = getelementptr i8, ptr %scevgep1740.i, i64 %i.auo ; 2 uses
  %i.aup = trunc i64 %indvars.iv1773.i to i32     ; 4 uses
  %i.auq = mul i32 %i.ack, %i.aup
  %i.aur = sext i32 %i.auq to i64
  %i.aus = getelementptr inbounds [4 x i8], ptr %i.acj, i64 %i.aur ; 2 uses
  %i.aut = mul i32 %i.auk, %i.ack
  %i.auu = sext i32 %i.aut to i64
  %i.auv = getelementptr inbounds [4 x i8], ptr %i.acj, i64 %i.auu ; 2 uses
  %i.auw = lshr i32 %i.aup, 3
  %i.aux = lshr i32 %i.aup, 2
  %i.auy = and i32 %i.aux, 1
  %i.auz = add nuw nsw i32 %i.auy, %i.auw
  %i.ava = lshr i32 %i.aup, 1
  %i.avb = and i32 %i.ava, 1
  %i.avc = add nuw nsw i32 %i.auz, %i.avb
  %i.avd = zext nneg i32 %i.avc to i64
  %.reass1404.i = mul i64 %factor.op.mul1403.i, %i.avd
  %i.ave = getelementptr inbounds nuw i8, ptr %i.acl, i64 %.reass1404.i ; 4 uses
  br i1 %i.acq, label %.preheader1091.lr.ph.i, label %.preheader1094.i

.preheader1091.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1003.i
  br i1 %i.acr, label %.preheader1091.us.i, label %.preheader1094.thread.i

.preheader1091.us.i:                              ; preds = %.preheader1091.lr.ph.i, %._crit_edge1344.us.i
  %.08621349.us.i = phi i32 [ %i.axd, %._crit_edge1344.us.i ], [ 0, %.preheader1091.lr.ph.i ]
  %.08661348.us.i = phi ptr [ %i.axa, %._crit_edge1344.us.i ], [ %i.ave, %.preheader1091.lr.ph.i ]
  %.08751347.us.i = phi ptr [ %i.axc, %._crit_edge1344.us.i ], [ %i.auv, %.preheader1091.lr.ph.i ] ; 2 uses
  %.08781346.us.i = phi ptr [ %i.axb, %._crit_edge1344.us.i ], [ %i.aus, %.preheader1091.lr.ph.i ] ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.preheader1091.us.i
  %indvars.iv1748.i = phi i64 [ 0, %.preheader1091.us.i ], [ %indvars.iv.next1749.i, %bb.an ] ; 3 uses
  %.18671342.us.i = phi ptr [ %.08661348.us.i, %.preheader1091.us.i ], [ %i.axa, %bb.an ] ; 17 uses
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %.08781346.us.i, i64 %indvars.iv1748.i ; 8 uses
  %i.avg = getelementptr inbounds nuw [4 x i8], ptr %.08751347.us.i, i64 %indvars.iv1748.i ; 8 uses
  %i.avh = load float, ptr %i.avf, align 4, !tbaa !45
  store float %i.avh, ptr %.18671342.us.i, align 4, !tbaa !45
  %i.avi = getelementptr inbounds nuw [4 x i8], ptr %i.avf, i64 %i.acs
  %i.avj = load float, ptr %i.avi, align 4, !tbaa !45
  %i.avk = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 4
  store float %i.avj, ptr %i.avk, align 4, !tbaa !45
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %i.avf, i64 %i.acu
  %i.avm = load float, ptr %i.avl, align 4, !tbaa !45
  %i.avn = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 8
  store float %i.avm, ptr %i.avn, align 4, !tbaa !45
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %i.avf, i64 %i.acw
  %i.avp = load float, ptr %i.avo, align 4, !tbaa !45
  %i.avq = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 12
  store float %i.avp, ptr %i.avq, align 4, !tbaa !45
  %i.avr = getelementptr inbounds nuw [4 x i8], ptr %i.avf, i64 %i.acy
  %i.avs = load float, ptr %i.avr, align 4, !tbaa !45
  %i.avt = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 16
  store float %i.avs, ptr %i.avt, align 4, !tbaa !45
  %i.avu = getelementptr inbounds nuw [4 x i8], ptr %i.avf, i64 %i.ada
  %i.avv = load float, ptr %i.avu, align 4, !tbaa !45
  %i.avw = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 20
  store float %i.avv, ptr %i.avw, align 4, !tbaa !45
  %i.avx = getelementptr inbounds nuw [4 x i8], ptr %i.avf, i64 %i.adc
  %i.avy = load float, ptr %i.avx, align 4, !tbaa !45
  %i.avz = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 24
  store float %i.avy, ptr %i.avz, align 4, !tbaa !45
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr %i.avf, i64 %i.ade
  %i.awb = load float, ptr %i.awa, align 4, !tbaa !45
  %i.awc = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 28
  store float %i.awb, ptr %i.awc, align 4, !tbaa !45
  %i.awd = load float, ptr %i.avg, align 4, !tbaa !45
  %i.awe = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 32
  store float %i.awd, ptr %i.awe, align 4, !tbaa !45
  %i.awf = getelementptr inbounds nuw [4 x i8], ptr %i.avg, i64 %i.acs
  %i.awg = load float, ptr %i.awf, align 4, !tbaa !45
  %i.awh = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 36
  store float %i.awg, ptr %i.awh, align 4, !tbaa !45
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.avg, i64 %i.acu
  %i.awj = load float, ptr %i.awi, align 4, !tbaa !45
  %i.awk = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 40
  store float %i.awj, ptr %i.awk, align 4, !tbaa !45
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %i.avg, i64 %i.acw
  %i.awm = load float, ptr %i.awl, align 4, !tbaa !45
  %i.awn = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 44
  store float %i.awm, ptr %i.awn, align 4, !tbaa !45
  %i.awo = getelementptr inbounds nuw [4 x i8], ptr %i.avg, i64 %i.acy
  %i.awp = load float, ptr %i.awo, align 4, !tbaa !45
  %i.awq = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 48
  store float %i.awp, ptr %i.awq, align 4, !tbaa !45
  %i.awr = getelementptr inbounds nuw [4 x i8], ptr %i.avg, i64 %i.ada
  %i.aws = load float, ptr %i.awr, align 4, !tbaa !45
  %i.awt = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 52
  store float %i.aws, ptr %i.awt, align 4, !tbaa !45
  %i.awu = getelementptr inbounds nuw [4 x i8], ptr %i.avg, i64 %i.adc
  %i.awv = load float, ptr %i.awu, align 4, !tbaa !45
  %i.aww = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 56
  store float %i.awv, ptr %i.aww, align 4, !tbaa !45
  %i.awx = getelementptr inbounds nuw [4 x i8], ptr %i.avg, i64 %i.ade
  %i.awy = load float, ptr %i.awx, align 4, !tbaa !45
  %i.awz = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 60
  store float %i.awy, ptr %i.awz, align 4, !tbaa !45
  %i.axa = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 64 ; 3 uses
  %indvars.iv.next1749.i = add nuw nsw i64 %indvars.iv1748.i, 1 ; 2 uses
  %exitcond1752.not.i = icmp eq i64 %indvars.iv.next1749.i, %wide.trip.count1751.i
  br i1 %exitcond1752.not.i, label %._crit_edge1344.us.i, label %bb.an, !llvm.loop !126

._crit_edge1344.us.i:                             ; preds = %bb.an
  %i.axb = getelementptr inbounds nuw [4 x i8], ptr %.08781346.us.i, i64 %i.adg ; 2 uses
  %i.axc = getelementptr inbounds nuw [4 x i8], ptr %.08751347.us.i, i64 %i.adg ; 2 uses
  %i.axd = add nuw nsw i32 %.08621349.us.i, 8     ; 2 uses
  %i.axe = or disjoint i32 %i.axd, 7
  %i.axf = icmp slt i32 %i.axe, %i.n
end_hunk_0
begin_hunk_1_@_ZN4ncnn21Convolution1D_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  br i1 %i.bem, label %_ZN4ncnn3MatD2Ev.exit1003.i, label %.preheader1087.loopexit.i, !llvm.loop !158

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %._crit_edge1459.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge1459.split.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ] ; 2 uses
  %indvars.iv1805.i = phi i64 [ %indvars.iv.next1806.i, %._crit_edge1459.split.i ], [ %i.ask, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ] ; 2 uses
  %indvars.iv1777.i = phi i32 [ %indvars.iv.next1778.i, %._crit_edge1459.split.i ], [ %i.asg, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ] ; 2 uses
  %i.beo = mul i32 %i.atg, %indvar
  %i.bep = add i32 %i.atf, %i.beo
  %i.beq = sext i32 %i.bep to i64
  %i.ber = shl nsw i64 %i.beq, 2                  ; 15 uses
  %scevgep1013 = getelementptr i8, ptr %scevgep1012, i64 %i.ber
  %scevgep1015 = getelementptr i8, ptr %scevgep1014, i64 %i.ber
  %scevgep1017 = getelementptr i8, ptr %scevgep1016, i64 %i.ber
  %scevgep1019 = getelementptr i8, ptr %scevgep1018, i64 %i.ber
  %scevgep1021 = getelementptr i8, ptr %scevgep1020, i64 %i.ber
  %scevgep1023 = getelementptr i8, ptr %scevgep1022, i64 %i.ber
  %scevgep1025 = getelementptr i8, ptr %scevgep1024, i64 %i.ber
  %scevgep1027 = getelementptr i8, ptr %scevgep1026, i64 %i.ber
  %scevgep1029 = getelementptr i8, ptr %scevgep1028, i64 %i.ber
  %scevgep1031 = getelementptr i8, ptr %scevgep1030, i64 %i.ber
  %scevgep1033 = getelementptr i8, ptr %scevgep1032, i64 %i.ber
  %scevgep1035 = getelementptr i8, ptr %scevgep1034, i64 %i.ber
  %scevgep1037 = getelementptr i8, ptr %scevgep1036, i64 %i.ber
  %scevgep1039 = getelementptr i8, ptr %scevgep1038, i64 %i.ber
  %scevgep1041 = getelementptr i8, ptr %scevgep1040, i64 %i.ber
  %i.bes = sext i32 %indvars.iv1777.i to i64
  %i.bet = shl nsw i64 %i.bes, 2
  %scevgep1779.i = getelementptr i8, ptr %scevgep1776.i, i64 %i.bet ; 2 uses
  %i.beu = trunc i64 %indvars.iv1805.i to i32     ; 5 uses
  %i.bev = mul i32 %i.arl, %i.beu
  %i.bew = sext i32 %i.bev to i64
  %i.bex = getelementptr [4 x i8], ptr %i.ark, i64 %i.bew ; 3 uses
  %i.bey = lshr i32 %i.beu, 3
  %i.bez = lshr i32 %i.beu, 2
  %i.bfa = and i32 %i.bez, 1
  %i.bfb = lshr i32 %i.beu, 1
  %i.bfc = and i32 %i.bfb, 1
  %i.bfd = and i32 %i.beu, 1
  %i.bfe = add nuw nsw i32 %i.bfd, %i.bey
  %i.bff = add nuw nsw i32 %i.bfe, %i.bfa
  %i.bfg = add nuw nsw i32 %i.bff, %i.bfc
  %i.bfh = zext nneg i32 %i.bfg to i64
  %.reass1463.i = mul i64 %factor.op.mul1462.i, %i.bfh
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.arm, i64 %.reass1463.i ; 4 uses
  br i1 %i.arr, label %.preheader1083.lr.ph.i, label %.preheader1086.i

.preheader1083.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  br i1 %i.ars, label %.preheader1083.us.i.preheader, label %.preheader1086.thread.i

.preheader1083.us.i.preheader:                    ; preds = %.preheader1083.lr.ph.i
  %i.bfj = insertelement <8 x ptr> poison, ptr %scevgep1039, i64 0
  %i.bfk = insertelement <8 x ptr> %i.bfj, ptr %scevgep1035, i64 1
  %i.bfl = insertelement <8 x ptr> %i.bfk, ptr %scevgep1031, i64 2
  %i.bfm = insertelement <8 x ptr> %i.bfl, ptr %scevgep1027, i64 3
  %i.bfn = insertelement <8 x ptr> %i.bfm, ptr %scevgep1023, i64 4
  %i.bfo = insertelement <8 x ptr> %i.bfn, ptr %scevgep1019, i64 5
  %i.bfp = insertelement <8 x ptr> %i.bfo, ptr %scevgep1015, i64 6
  %i.bfq = insertelement <8 x ptr> %i.bfp, ptr %scevgep1013, i64 7
  %i.bfr = insertelement <8 x ptr> poison, ptr %scevgep1041, i64 0
  %i.bfs = insertelement <8 x ptr> %i.bfr, ptr %scevgep1037, i64 1
  %i.bft = insertelement <8 x ptr> %i.bfs, ptr %scevgep1033, i64 2
  %i.bfu = insertelement <8 x ptr> %i.bft, ptr %scevgep1029, i64 3
  %i.bfv = insertelement <8 x ptr> %i.bfu, ptr %scevgep1025, i64 4
  %i.bfw = insertelement <8 x ptr> %i.bfv, ptr %scevgep1021, i64 5
  %i.bfx = insertelement <8 x ptr> %i.bfw, ptr %scevgep1017, i64 6
  %i.bfy = insertelement <8 x ptr> %i.bfx, ptr %i.bex, i64 7
  br label %.preheader1083.us.i

.preheader1083.us.i:                              ; preds = %.preheader1083.us.i.preheader, %._crit_edge1410.us.i
  %.08261414.us.i = phi i32 [ %i.bhz, %._crit_edge1410.us.i ], [ 0, %.preheader1083.us.i.preheader ]
  %.08301413.us.i = phi ptr [ %.lcssa, %._crit_edge1410.us.i ], [ %i.bfi, %.preheader1083.us.i.preheader ] ; 6 uses
  %.08341412.us.i = phi ptr [ %i.bhy, %._crit_edge1410.us.i ], [ %i.bex, %.preheader1083.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check1043, label %scalar.ph1042.preheader, label %vector.memcheck1044

vector.memcheck1044:                              ; preds = %.preheader1083.us.i
  %i.bfz = getelementptr i8, ptr %.08301413.us.i, i64 %i.auc
  %i.bga = insertelement <8 x ptr> poison, ptr %.08301413.us.i, i64 0
  %i.bgb = shufflevector <8 x ptr> %i.bga, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bgc = icmp ult <8 x ptr> %i.bgb, %i.bfq
  %i.bgd = insertelement <8 x ptr> poison, ptr %i.bfz, i64 0
  %i.bge = shufflevector <8 x ptr> %i.bgd, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bgf = icmp ult <8 x ptr> %i.bfy, %i.bge
  %i.bgg = and <8 x i1> %i.bgc, %i.bgf
  %i.bgh = bitcast <8 x i1> %i.bgg to i8
  %i.bgi = icmp ne i8 %i.bgh, 0
  %op.rdx = or i1 %i.bgi, %stride.check1048
  br i1 %op.rdx, label %scalar.ph1042.preheader, label %vector.ph1077

vector.ph1077:                                    ; preds = %vector.memcheck1044
  %i.bgj = getelementptr i8, ptr %.08301413.us.i, i64 %i.aud ; 2 uses
  br label %vector.body1079

vector.body1079:                                  ; preds = %vector.body1079, %vector.ph1077
  %index1080 = phi i64 [ 0, %vector.ph1077 ], [ %index.next1091, %vector.body1079 ] ; 3 uses
  %i.bgk = shl i64 %index1080, 5
  %next.gep1081 = getelementptr i8, ptr %.08301413.us.i, i64 %i.bgk
  %i.bgl = getelementptr inbounds nuw [4 x i8], ptr %.08341412.us.i, i64 %index1080 ; 2 uses
  %wide.load1082 = load <8 x float>, ptr %i.bgl, align 4, !tbaa !45, !alias.scope !246
  %i.bgm = getelementptr inbounds nuw [4 x i8], ptr %i.bgl, i64 %i.art ; 2 uses
  %wide.load1083 = load <8 x float>, ptr %i.bgm, align 4, !tbaa !45, !alias.scope !247
  %i.bgn = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %i.art ; 2 uses
  %wide.load1084 = load <8 x float>, ptr %i.bgn, align 4, !tbaa !45, !alias.scope !248
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %i.bgn, i64 %i.art ; 2 uses
  %wide.load1085 = load <8 x float>, ptr %i.bgo, align 4, !tbaa !45, !alias.scope !249
  %i.bgp = getelementptr inbounds nuw [4 x i8], ptr %i.bgo, i64 %i.art ; 2 uses
  %wide.load1086 = load <8 x float>, ptr %i.bgp, align 4, !tbaa !45, !alias.scope !250
  %i.bgq = getelementptr inbounds nuw [4 x i8], ptr %i.bgp, i64 %i.art ; 2 uses
  %wide.load1087 = load <8 x float>, ptr %i.bgq, align 4, !tbaa !45, !alias.scope !251
  %i.bgr = getelementptr inbounds nuw [4 x i8], ptr %i.bgq, i64 %i.art ; 2 uses
  %wide.load1088 = load <8 x float>, ptr %i.bgr, align 4, !tbaa !45, !alias.scope !252
  %i.bgs = getelementptr inbounds nuw [4 x i8], ptr %i.bgr, i64 %i.art
  %wide.load1089 = load <8 x float>, ptr %i.bgs, align 4, !tbaa !45, !alias.scope !253
  %i.bgt = shufflevector <8 x float> %wide.load1082, <8 x float> %wide.load1083, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgu = shufflevector <8 x float> %wide.load1084, <8 x float> %wide.load1085, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgv = shufflevector <8 x float> %wide.load1086, <8 x float> %wide.load1087, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgw = shufflevector <8 x float> %wide.load1088, <8 x float> %wide.load1089, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgx = shufflevector <16 x float> %i.bgt, <16 x float> %i.bgu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bgy = shufflevector <16 x float> %i.bgv, <16 x float> %i.bgw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec1090 = shufflevector <32 x float> %i.bgx, <32 x float> %i.bgy, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec1090, ptr %next.gep1081, align 4, !tbaa !45, !alias.scope !254, !noalias !255
  %index.next1091 = add nuw i64 %index1080, 8     ; 2 uses
  %i.bgz = icmp eq i64 %index.next1091, %n.vec1078
  br i1 %i.bgz, label %middle.block1092, label %vector.body1079, !llvm.loop !169

middle.block1092:                                 ; preds = %vector.body1079
  br i1 %cmp.n1093, label %._crit_edge1410.us.i, label %scalar.ph1042.preheader

scalar.ph1042.preheader:                          ; preds = %vector.memcheck1044, %.preheader1083.us.i, %middle.block1092
  %indvars.iv1781.i.ph = phi i64 [ 0, %vector.memcheck1044 ], [ 0, %.preheader1083.us.i ], [ %n.vec1078, %middle.block1092 ]
  %.18311408.us.i.ph = phi ptr [ %.08301413.us.i, %vector.memcheck1044 ], [ %.08301413.us.i, %.preheader1083.us.i ], [ %i.bgj, %middle.block1092 ]
  br label %scalar.ph1042

scalar.ph1042:                                    ; preds = %scalar.ph1042.preheader, %scalar.ph1042
  %indvars.iv1781.i = phi i64 [ %indvars.iv.next1782.i, %scalar.ph1042 ], [ %indvars.iv1781.i.ph, %scalar.ph1042.preheader ] ; 2 uses
  %.18311408.us.i = phi ptr [ %i.bhx, %scalar.ph1042 ], [ %.18311408.us.i.ph, %scalar.ph1042.preheader ] ; 9 uses
  %i.bha = getelementptr inbounds nuw [4 x i8], ptr %.08341412.us.i, i64 %indvars.iv1781.i ; 2 uses
  %i.bhb = load float, ptr %i.bha, align 4, !tbaa !45
  store float %i.bhb, ptr %.18311408.us.i, align 4, !tbaa !45
  %i.bhc = getelementptr inbounds nuw [4 x i8], ptr %i.bha, i64 %i.art ; 2 uses
  %i.bhd = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 4
  %i.bhe = load float, ptr %i.bhc, align 4, !tbaa !45
  store float %i.bhe, ptr %i.bhd, align 4, !tbaa !45
  %i.bhf = getelementptr inbounds nuw [4 x i8], ptr %i.bhc, i64 %i.art ; 2 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 8
  %i.bhh = load float, ptr %i.bhf, align 4, !tbaa !45
  store float %i.bhh, ptr %i.bhg, align 4, !tbaa !45
  %i.bhi = getelementptr inbounds nuw [4 x i8], ptr %i.bhf, i64 %i.art ; 2 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 12
  %i.bhk = load float, ptr %i.bhi, align 4, !tbaa !45
  store float %i.bhk, ptr %i.bhj, align 4, !tbaa !45
  %i.bhl = getelementptr inbounds nuw [4 x i8], ptr %i.bhi, i64 %i.art ; 2 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 16
  %i.bhn = load float, ptr %i.bhl, align 4, !tbaa !45
  store float %i.bhn, ptr %i.bhm, align 4, !tbaa !45
  %i.bho = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %i.art ; 2 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 20
  %i.bhq = load float, ptr %i.bho, align 4, !tbaa !45
  store float %i.bhq, ptr %i.bhp, align 4, !tbaa !45
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %i.bho, i64 %i.art ; 2 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 24
  %i.bht = load float, ptr %i.bhr, align 4, !tbaa !45
  store float %i.bht, ptr %i.bhs, align 4, !tbaa !45
  %i.bhu = getelementptr inbounds nuw [4 x i8], ptr %i.bhr, i64 %i.art
  %i.bhv = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 28
  %i.bhw = load float, ptr %i.bhu, align 4, !tbaa !45
  store float %i.bhw, ptr %i.bhv, align 4, !tbaa !45
  %i.bhx = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 32 ; 2 uses
  %indvars.iv.next1782.i = add nuw nsw i64 %indvars.iv1781.i, 1 ; 2 uses
  %exitcond1785.not.i = icmp eq i64 %indvars.iv.next1782.i, %wide.trip.count1784.i
  br i1 %exitcond1785.not.i, label %._crit_edge1410.us.i, label %scalar.ph1042, !llvm.loop !170

._crit_edge1410.us.i:                             ; preds = %scalar.ph1042, %middle.block1092
  %.lcssa = phi ptr [ %i.bgj, %middle.block1092 ], [ %i.bhx, %scalar.ph1042 ] ; 2 uses
  %i.bhy = getelementptr inbounds nuw [4 x i8], ptr %.08341412.us.i, i64 %i.arv ; 2 uses
  %i.bhz = add nuw nsw i32 %.08261414.us.i, 8     ; 2 uses
  %i.bia = or disjoint i32 %i.bhz, 7
  %i.bib = icmp slt i32 %i.bia, %i.n
  br i1 %i.bib, label %.preheader1083.us.i, label %.preheader1086.i, !llvm.loop !171

.preheader1086.i:                                 ; preds = %._crit_edge1410.us.i, %_ZN4ncnn3MatD2Ev.exit.i
  %.0834.lcssa.i = phi ptr [ %i.bex, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.bhy, %._crit_edge1410.us.i ] ; 11 uses
  %.0830.lcssa.i = phi ptr [ %i.bfi, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.lcssa, %._crit_edge1410.us.i ] ; 3 uses
  %.0826.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.asi, %._crit_edge1410.us.i ] ; 5 uses
  %i.bic = or disjoint i32 %.0826.lcssa.i, 3
  %i.bid = icmp slt i32 %i.bic, %i.n
  br i1 %i.bid, label %.preheader1082.lr.ph.i, label %.preheader1085.i

.preheader1086.thread.i:                          ; preds = %.preheader1083.lr.ph.i
  br i1 %i.asm, label %.preheader1082.preheader.i, label %.preheader1085.i

.preheader1082.lr.ph.i:                           ; preds = %.preheader1086.i
  br i1 %i.ars, label %.preheader1082.us.i.preheader, label %.preheader1082.preheader.i

.preheader1082.us.i.preheader:                    ; preds = %.preheader1082.lr.ph.i
  %scevgep903 = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.ass
  %i.bie = sub i32 %i.asu, %.0826.lcssa.i
  %i.bif = lshr i32 %i.bie, 2
  %i.big = zext nneg i32 %i.bif to i64
  %i.bih = mul nsw i64 %i.ast, %i.big             ; 4 uses
  %scevgep904 = getelementptr i8, ptr %scevgep903, i64 %i.bih
  %i.bii = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.asq
  %scevgep905 = getelementptr i8, ptr %i.bii, i64 %i.ass
  %scevgep906 = getelementptr i8, ptr %scevgep905, i64 %i.bih
  %scevgep907 = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.asq
  %i.bij = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.asv
  %scevgep908 = getelementptr i8, ptr %i.bij, i64 %i.ass
  %scevgep909 = getelementptr i8, ptr %scevgep908, i64 %i.bih
  %scevgep910 = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.asv
  %i.bik = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.asw
  %scevgep911 = getelementptr i8, ptr %i.bik, i64 %i.ass
  %scevgep912 = getelementptr i8, ptr %scevgep911, i64 %i.bih
  %scevgep913 = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.asw
  br label %.preheader1082.us.i

.preheader1082.preheader.i:                       ; preds = %.preheader1082.lr.ph.i, %.preheader1086.thread.i
  %.0834.lcssa19431951.i = phi ptr [ %.0834.lcssa.i, %.preheader1082.lr.ph.i ], [ %scevgep1779.i, %.preheader1086.thread.i ]
  %.0830.lcssa19441950.i = phi ptr [ %.0830.lcssa.i, %.preheader1082.lr.ph.i ], [ %i.bfi, %.preheader1086.thread.i ]
  %.0826.lcssa19451949.i = phi i32 [ %.0826.lcssa.i, %.preheader1082.lr.ph.i ], [ %i.asi, %.preheader1086.thread.i ] ; 2 uses
  %i.bil = sub i32 %i.asj, %.0826.lcssa19451949.i
  %i.bim = and i32 %i.bil, -4                     ; 2 uses
  %i.bin = zext i32 %i.bim to i64
  %i.bio = add nuw nsw i64 %i.bin, 4
  %i.bip = mul nsw i64 %i.bio, %i.arx
  %scevgep1786.i = getelementptr i8, ptr %.0834.lcssa19431951.i, i64 %i.bip
  %i.biq = add i32 %.0826.lcssa19451949.i, 4
  %i.bir = add i32 %i.biq, %i.bim
  br label %.preheader1085.i

.preheader1082.us.i:                              ; preds = %.preheader1082.us.i.preheader, %._crit_edge1426.us.i
  %.18271430.us.i = phi i32 [ %i.bkq, %._crit_edge1426.us.i ], [ %.0826.lcssa.i, %.preheader1082.us.i.preheader ]
  %.38331429.us.i = phi ptr [ %.lcssa225, %._crit_edge1426.us.i ], [ %.0830.lcssa.i, %.preheader1082.us.i.preheader ] ; 9 uses
  %.18351428.us.i = phi ptr [ %i.bkp, %._crit_edge1426.us.i ], [ %.0834.lcssa.i, %.preheader1082.us.i.preheader ] ; 5 uses
  br i1 %min.iters.check915, label %scalar.ph914.preheader, label %vector.memcheck916

vector.memcheck916:                               ; preds = %.preheader1082.us.i
  %i.bis = getelementptr i8, ptr %.38331429.us.i, i64 %i.asx ; 4 uses
  %bound0917 = icmp ult ptr %.38331429.us.i, %scevgep912
  %bound1918 = icmp ult ptr %scevgep913, %i.bis
  %found.conflict919 = and i1 %bound0917, %bound1918
  %i.bit = or i1 %found.conflict919, %stride.check920
  %bound0921 = icmp ult ptr %.38331429.us.i, %scevgep909
  %bound1922 = icmp ult ptr %scevgep910, %i.bis
  %found.conflict923 = and i1 %bound0921, %bound1922
  %conflict.rdx924 = or i1 %i.bit, %found.conflict923
  %bound0925 = icmp ult ptr %.38331429.us.i, %scevgep906
  %bound1926 = icmp ult ptr %scevgep907, %i.bis
  %found.conflict927 = and i1 %bound0925, %bound1926
  %conflict.rdx928 = or i1 %conflict.rdx924, %found.conflict927
  %bound0929 = icmp ult ptr %.38331429.us.i, %scevgep904
  %bound1930 = icmp ult ptr %.0834.lcssa.i, %i.bis
  %found.conflict931 = and i1 %bound0929, %bound1930
  %conflict.rdx932 = or i1 %conflict.rdx928, %found.conflict931
  br i1 %conflict.rdx932, label %scalar.ph914.preheader, label %vector.ph933

vector.ph933:                                     ; preds = %vector.memcheck916
  %i.biu = getelementptr i8, ptr %.38331429.us.i, i64 %i.aue ; 2 uses
  br label %vector.body935

vector.body935:                                   ; preds = %vector.body935, %vector.ph933
  %index936 = phi i64 [ 0, %vector.ph933 ], [ %index.next943, %vector.body935 ] ; 3 uses
  %i.biv = shl i64 %index936, 4
  %next.gep937 = getelementptr i8, ptr %.38331429.us.i, i64 %i.biv
  %i.biw = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %index936 ; 2 uses
  %wide.load938 = load <8 x float>, ptr %i.biw, align 4, !tbaa !45, !alias.scope !256
  %i.bix = getelementptr inbounds nuw [4 x i8], ptr %i.biw, i64 %i.art ; 2 uses
  %wide.load939 = load <8 x float>, ptr %i.bix, align 4, !tbaa !45, !alias.scope !257
  %i.biy = getelementptr inbounds nuw [4 x i8], ptr %i.bix, i64 %i.art ; 2 uses
  %wide.load940 = load <8 x float>, ptr %i.biy, align 4, !tbaa !45, !alias.scope !258
  %i.biz = getelementptr inbounds nuw [4 x i8], ptr %i.biy, i64 %i.art
  %wide.load941 = load <8 x float>, ptr %i.biz, align 4, !tbaa !45, !alias.scope !259
  %i.bja = shufflevector <8 x float> %wide.load938, <8 x float> %wide.load939, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bjb = shufflevector <8 x float> %wide.load940, <8 x float> %wide.load941, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec942 = shufflevector <16 x float> %i.bja, <16 x float> %i.bjb, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec942, ptr %next.gep937, align 4, !tbaa !45, !alias.scope !260, !noalias !261
  %index.next943 = add nuw i64 %index936, 8       ; 2 uses
  %i.bjc = icmp eq i64 %index.next943, %n.vec934
  br i1 %i.bjc, label %middle.block944, label %vector.body935, !llvm.loop !178

middle.block944:                                  ; preds = %vector.body935
  br i1 %cmp.n945, label %._crit_edge1426.us.i, label %scalar.ph914.preheader

scalar.ph914.preheader:                           ; preds = %vector.memcheck916, %.preheader1082.us.i, %middle.block944
  %indvars.iv1788.i.ph = phi i64 [ 0, %vector.memcheck916 ], [ 0, %.preheader1082.us.i ], [ %n.vec934, %middle.block944 ] ; 4 uses
  %.41424.us.i.ph = phi ptr [ %.38331429.us.i, %vector.memcheck916 ], [ %.38331429.us.i, %.preheader1082.us.i ], [ %i.biu, %middle.block944 ] ; 6 uses
  br i1 %lcmp.mod1173.not, label %scalar.ph914.prol.loopexit, label %scalar.ph914.prol

scalar.ph914.prol:                                ; preds = %scalar.ph914.preheader
  %i.bjd = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %indvars.iv1788.i.ph ; 2 uses
  %i.bje = load float, ptr %i.bjd, align 4, !tbaa !45
  store float %i.bje, ptr %.41424.us.i.ph, align 4, !tbaa !45
  %i.bjf = getelementptr inbounds nuw [4 x i8], ptr %i.bjd, i64 %i.art ; 2 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %.41424.us.i.ph, i64 4
  %i.bjh = load float, ptr %i.bjf, align 4, !tbaa !45
  store float %i.bjh, ptr %i.bjg, align 4, !tbaa !45
  %i.bji = getelementptr inbounds nuw [4 x i8], ptr %i.bjf, i64 %i.art ; 2 uses
  %i.bjj = getelementptr inbounds nuw i8, ptr %.41424.us.i.ph, i64 8
  %i.bjk = load float, ptr %i.bji, align 4, !tbaa !45
  store float %i.bjk, ptr %i.bjj, align 4, !tbaa !45
  %i.bjl = getelementptr inbounds nuw [4 x i8], ptr %i.bji, i64 %i.art
  %i.bjm = getelementptr inbounds nuw i8, ptr %.41424.us.i.ph, i64 12
  %i.bjn = load float, ptr %i.bjl, align 4, !tbaa !45
  store float %i.bjn, ptr %i.bjm, align 4, !tbaa !45
  %i.bjo = getelementptr inbounds nuw i8, ptr %.41424.us.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1789.i.prol = or disjoint i64 %indvars.iv1788.i.ph, 1
  br label %scalar.ph914.prol.loopexit

scalar.ph914.prol.loopexit:                       ; preds = %scalar.ph914.prol, %scalar.ph914.preheader
  %.lcssa1101.unr = phi ptr [ poison, %scalar.ph914.preheader ], [ %i.bjo, %scalar.ph914.prol ]
  %indvars.iv1788.i.unr = phi i64 [ %indvars.iv1788.i.ph, %scalar.ph914.preheader ], [ %indvars.iv.next1789.i.prol, %scalar.ph914.prol ]
  %.41424.us.i.unr = phi ptr [ %.41424.us.i.ph, %scalar.ph914.preheader ], [ %i.bjo, %scalar.ph914.prol ]
  %i.bjp = icmp eq i64 %indvars.iv1788.i.ph, %i.auf
  br i1 %i.bjp, label %._crit_edge1426.us.i, label %scalar.ph914

scalar.ph914:                                     ; preds = %scalar.ph914.prol.loopexit, %scalar.ph914
  %indvars.iv1788.i = phi i64 [ %indvars.iv.next1789.i.1, %scalar.ph914 ], [ %indvars.iv1788.i.unr, %scalar.ph914.prol.loopexit ] ; 3 uses
  %.41424.us.i = phi ptr [ %i.bko, %scalar.ph914 ], [ %.41424.us.i.unr, %scalar.ph914.prol.loopexit ] ; 9 uses
  %i.bjq = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %indvars.iv1788.i ; 2 uses
  %i.bjr = load float, ptr %i.bjq, align 4, !tbaa !45
  store float %i.bjr, ptr %.41424.us.i, align 4, !tbaa !45
  %i.bjs = getelementptr inbounds nuw [4 x i8], ptr %i.bjq, i64 %i.art ; 2 uses
  %i.bjt = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 4
  %i.bju = load float, ptr %i.bjs, align 4, !tbaa !45
  store float %i.bju, ptr %i.bjt, align 4, !tbaa !45
  %i.bjv = getelementptr inbounds nuw [4 x i8], ptr %i.bjs, i64 %i.art ; 2 uses
  %i.bjw = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 8
  %i.bjx = load float, ptr %i.bjv, align 4, !tbaa !45
  store float %i.bjx, ptr %i.bjw, align 4, !tbaa !45
  %i.bjy = getelementptr inbounds nuw [4 x i8], ptr %i.bjv, i64 %i.art
  %i.bjz = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 12
  %i.bka = load float, ptr %i.bjy, align 4, !tbaa !45
  store float %i.bka, ptr %i.bjz, align 4, !tbaa !45
  %i.bkb = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 16
  %i.bkc = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %indvars.iv1788.i
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bkc, i64 4 ; 2 uses
  %i.bke = load float, ptr %i.bkd, align 4, !tbaa !45
  store float %i.bke, ptr %i.bkb, align 4, !tbaa !45
  %i.bkf = getelementptr inbounds nuw [4 x i8], ptr %i.bkd, i64 %i.art ; 2 uses
  %i.bkg = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 20
  %i.bkh = load float, ptr %i.bkf, align 4, !tbaa !45
  store float %i.bkh, ptr %i.bkg, align 4, !tbaa !45
  %i.bki = getelementptr inbounds nuw [4 x i8], ptr %i.bkf, i64 %i.art ; 2 uses
  %i.bkj = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 24
  %i.bkk = load float, ptr %i.bki, align 4, !tbaa !45
  store float %i.bkk, ptr %i.bkj, align 4, !tbaa !45
  %i.bkl = getelementptr inbounds nuw [4 x i8], ptr %i.bki, i64 %i.art
  %i.bkm = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 28
  %i.bkn = load float, ptr %i.bkl, align 4, !tbaa !45
  store float %i.bkn, ptr %i.bkm, align 4, !tbaa !45
  %i.bko = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 32 ; 2 uses
  %indvars.iv.next1789.i.1 = add nuw nsw i64 %indvars.iv1788.i, 2 ; 2 uses
  %exitcond1792.not.i.1 = icmp eq i64 %indvars.iv.next1789.i.1, %wide.trip.count1784.i
  br i1 %exitcond1792.not.i.1, label %._crit_edge1426.us.i, label %scalar.ph914, !llvm.loop !179

._crit_edge1426.us.i:                             ; preds = %scalar.ph914.prol.loopexit, %scalar.ph914, %middle.block944
  %.lcssa225 = phi ptr [ %i.biu, %middle.block944 ], [ %.lcssa1101.unr, %scalar.ph914.prol.loopexit ], [ %i.bko, %scalar.ph914 ] ; 2 uses
  %i.bkp = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %i.arx ; 2 uses
  %i.bkq = add nuw nsw i32 %.18271430.us.i, 4     ; 3 uses
  %i.bkr = or disjoint i32 %i.bkq, 3
  %i.bks = icmp slt i32 %i.bkr, %i.n
  br i1 %i.bks, label %.preheader1082.us.i, label %.preheader1085.i, !llvm.loop !180

.preheader1085.i:                                 ; preds = %._crit_edge1426.us.i, %.preheader1082.preheader.i, %.preheader1086.thread.i, %.preheader1086.i
  %.1835.lcssa.i = phi ptr [ %.0834.lcssa.i, %.preheader1086.i ], [ %scevgep1779.i, %.preheader1086.thread.i ], [ %scevgep1786.i, %.preheader1082.preheader.i ], [ %i.bkp, %._crit_edge1426.us.i ] ; 6 uses
  %.3833.lcssa.i = phi ptr [ %.0830.lcssa.i, %.preheader1086.i ], [ %i.bfi, %.preheader1086.thread.i ], [ %.0830.lcssa19441950.i, %.preheader1082.preheader.i ], [ %.lcssa225, %._crit_edge1426.us.i ] ; 2 uses
  %.1827.lcssa.i = phi i32 [ %.0826.lcssa.i, %.preheader1086.i ], [ %i.asi, %.preheader1086.thread.i ], [ %i.bir, %.preheader1082.preheader.i ], [ %i.bkq, %._crit_edge1426.us.i ] ; 4 uses
  %i.bkt = or disjoint i32 %.1827.lcssa.i, 1
  %i.bku = icmp slt i32 %i.bkt, %i.n
  br i1 %i.bku, label %.preheader1081.lr.ph.i, label %.preheader1084.i

.preheader1081.lr.ph.i:                           ; preds = %.preheader1085.i
  br i1 %i.ars, label %.preheader1081.us.i.preheader, label %._crit_edge1459.split.i

.preheader1081.us.i.preheader:                    ; preds = %.preheader1081.lr.ph.i
  %scevgep841 = getelementptr i8, ptr %.1835.lcssa.i, i64 %i.asn
  %i.bkv = sub i32 %i.asp, %.1827.lcssa.i
  %i.bkw = lshr i32 %i.bkv, 1
  %i.bkx = zext nneg i32 %i.bkw to i64
  %i.bky = mul i64 %i.aso, %i.bkx                 ; 2 uses
  %scevgep842 = getelementptr i8, ptr %scevgep841, i64 %i.bky
  %i.bkz = getelementptr i8, ptr %.1835.lcssa.i, i64 %i.asq
  %scevgep843 = getelementptr i8, ptr %i.bkz, i64 %i.asn
  %scevgep844 = getelementptr i8, ptr %scevgep843, i64 %i.bky
  %scevgep845 = getelementptr i8, ptr %.1835.lcssa.i, i64 %i.asq
  br label %.preheader1081.us.i

.preheader1081.us.i:                              ; preds = %.preheader1081.us.i.preheader, %._crit_edge1442.us.i
  %.28281446.us.i = phi i32 [ %i.bmu, %._crit_edge1442.us.i ], [ %.1827.lcssa.i, %.preheader1081.us.i.preheader ]
  %.61445.us.i = phi ptr [ %.lcssa228, %._crit_edge1442.us.i ], [ %.3833.lcssa.i, %.preheader1081.us.i.preheader ] ; 8 uses
  %.28361444.us.i = phi ptr [ %i.bmt, %._crit_edge1442.us.i ], [ %.1835.lcssa.i, %.preheader1081.us.i.preheader ] ; 7 uses
  br i1 %min.iters.check847, label %scalar.ph846.preheader, label %vector.memcheck848

vector.memcheck848:                               ; preds = %.preheader1081.us.i
  %i.bla = getelementptr i8, ptr %.61445.us.i, i64 %i.asr ; 2 uses
  %bound0849 = icmp ult ptr %.61445.us.i, %scevgep844
  %bound1850 = icmp ult ptr %scevgep845, %i.bla
  %found.conflict851 = and i1 %bound0849, %bound1850
  %i.blb = or i1 %found.conflict851, %stride.check852
  %bound0853 = icmp ult ptr %.61445.us.i, %scevgep842
  %bound1854 = icmp ult ptr %.1835.lcssa.i, %i.bla
  %found.conflict855 = and i1 %bound0853, %bound1854
  %conflict.rdx856 = or i1 %i.blb, %found.conflict855
  br i1 %conflict.rdx856, label %scalar.ph846.preheader, label %vector.ph857

vector.ph857:                                     ; preds = %vector.memcheck848
end_hunk_1
