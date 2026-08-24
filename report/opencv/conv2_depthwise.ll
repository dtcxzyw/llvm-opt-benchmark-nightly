Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/conv2_depthwise?download=true
inline.NumInlined: 226
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baselineL16depthwiseConv32fEPKvS8_PvRKNS5_14dnn5_v202606059ConvStateES8_PKfSF_E3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %i.ane = insertelement <4 x float> poison, float %i.ana, i64 0
  %i.anf = insertelement <4 x float> %i.ane, float %i.anb, i64 1
  %i.ang = insertelement <4 x float> %i.anf, float %i.anc, i64 2
  %i.anh = insertelement <4 x float> %i.ang, float %i.and, i64 3
  %i.ani = fadd <4 x float> %i.amv, %i.anh        ; 3 uses
  %i.anj = fcmp ult <4 x float> %i.ani, zeroinitializer
  %i.ank = fmul <4 x float> %i.ani, %broadcast.splat204
  %i.anl = select <4 x i1> %i.anj, <4 x float> %i.ank, <4 x float> %i.ani ; 2 uses
  %i.anm = or disjoint i64 %i.aep, 7              ; 2 uses
  %i.ann = or disjoint i64 %i.aep, 15             ; 2 uses
  %i.ano = or disjoint i64 %i.aep, 23             ; 2 uses
  %i.anp = or disjoint i64 %i.aep, 31             ; 2 uses
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %.2238401.us.i.i.i, i64 %i.anm
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %.2238401.us.i.i.i, i64 %i.ann
  %i.ans = getelementptr inbounds nuw [4 x i8], ptr %.2238401.us.i.i.i, i64 %i.ano
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr %.2238401.us.i.i.i, i64 %i.anp
  %i.anu = load float, ptr %i.anq, align 4, !tbaa !89, !alias.scope !116, !noalias !118
  %i.anv = load float, ptr %i.anr, align 4, !tbaa !89, !alias.scope !116, !noalias !118
  %i.anw = load float, ptr %i.ans, align 4, !tbaa !89, !alias.scope !116, !noalias !118
  %i.anx = load float, ptr %i.ant, align 4, !tbaa !89, !alias.scope !116, !noalias !118
  %i.any = insertelement <4 x float> poison, float %i.anu, i64 0
  %i.anz = insertelement <4 x float> %i.any, float %i.anv, i64 1
  %i.aoa = insertelement <4 x float> %i.anz, float %i.anw, i64 2
  %i.aob = insertelement <4 x float> %i.aoa, float %i.anx, i64 3
  %i.aoc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aob, <4 x float> %broadcast.splat206, <4 x float> %broadcast.splat208)
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %.2235403.us.i.i.i, i64 %i.anm
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %.2235403.us.i.i.i, i64 %i.ann
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %.2235403.us.i.i.i, i64 %i.ano
  %i.aog = getelementptr inbounds nuw [4 x i8], ptr %.2235403.us.i.i.i, i64 %i.anp
  %i.aoh = load float, ptr %i.aod, align 4, !tbaa !89, !alias.scope !120
  %i.aoi = load float, ptr %i.aoe, align 4, !tbaa !89, !alias.scope !120
  %i.aoj = load float, ptr %i.aof, align 4, !tbaa !89, !alias.scope !120
  %i.aok = load float, ptr %i.aog, align 4, !tbaa !89, !alias.scope !120
  %i.aol = insertelement <4 x float> poison, float %i.aoh, i64 0
  %i.aom = insertelement <4 x float> %i.aol, float %i.aoi, i64 1
  %i.aon = insertelement <4 x float> %i.aom, float %i.aoj, i64 2
  %i.aoo = insertelement <4 x float> %i.aon, float %i.aok, i64 3
  %i.aop = fadd <4 x float> %i.aoc, %i.aoo        ; 3 uses
  %i.aoq = fcmp ult <4 x float> %i.aop, zeroinitializer
  %i.aor = fmul <4 x float> %i.aop, %broadcast.splat210
  %i.aos = select <4 x i1> %i.aoq, <4 x float> %i.aor, <4 x float> %i.aop ; 2 uses
  %i.aot = shufflevector <4 x float> %i.afv, <4 x float> %i.ahc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aou = shufflevector <4 x float> %i.aij, <4 x float> %i.ajq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aov = shufflevector <8 x float> %i.aot, <8 x float> %i.aou, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aow = fcmp olt <16 x float> %i.mb, %i.aov
  %i.aox = shufflevector <4 x float> %i.afv, <4 x float> %i.ahc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aoy = shufflevector <4 x float> %i.aij, <4 x float> %i.ajq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aoz = shufflevector <8 x float> %i.aox, <8 x float> %i.aoy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apa = select <16 x i1> %i.aow, <16 x float> %i.mc, <16 x float> %i.aoz
  %i.apb = shufflevector <4 x float> %i.akx, <4 x float> %i.ame, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.apc = shufflevector <4 x float> %i.anl, <4 x float> %i.aos, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.apd = shufflevector <8 x float> %i.apb, <8 x float> %i.apc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ape = fcmp olt <16 x float> %i.md, %i.apd
  %i.apf = shufflevector <4 x float> %i.akx, <4 x float> %i.ame, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.apg = shufflevector <4 x float> %i.anl, <4 x float> %i.aos, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aph = shufflevector <8 x float> %i.apf, <8 x float> %i.apg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.api = select <16 x i1> %i.ape, <16 x float> %i.me, <16 x float> %i.aph
  %interleaved.vec211 = shufflevector <16 x float> %i.apa, <16 x float> %i.api, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec211, ptr %i.aet, align 4, !tbaa !89, !alias.scope !116, !noalias !118
  %index.next212 = add nuw i64 %index162, 4       ; 2 uses
  %i.apj = icmp eq i64 %index.next212, %n.vec158
  br i1 %i.apj, label %middle.block213, label %vector.body161, !llvm.loop !121

middle.block213:                                  ; preds = %vector.body161
  br i1 %cmp.n214, label %.loopexit373.us.i.i.i, label %.preheader369.us.i.i.i.preheader217

.preheader369.us.i.i.i.preheader217:              ; preds = %vector.memcheck129, %.preheader369.us.i.i.i.preheader, %middle.block213
  %indvars.iv482.i.i.i.ph = phi i64 [ 0, %vector.memcheck129 ], [ 0, %.preheader369.us.i.i.i.preheader ], [ %i.ma, %middle.block213 ]
  br label %.preheader369.us.i.i.i

.lr.ph383.us.us.preheader.i.i.i:                  ; preds = %bb.cy
  %i.apk = zext nneg i32 %.0226.us.i.i.i to i64
  %wide.trip.count462.i.i.i = zext nneg i32 %.0225.us.i.i.i to i64
  br label %.lr.ph383.us.us.i.i.i

.lr.ph383.us.us.i.i.i:                            ; preds = %._crit_edge.us.us.i.i.i, %.lr.ph383.us.us.preheader.i.i.i
  %indvars.iv459.i.i.i = phi i64 [ %i.apk, %.lr.ph383.us.us.preheader.i.i.i ], [ %indvars.iv.next460.i.i.i, %._crit_edge.us.us.i.i.i ] ; 3 uses
  %i.apl = trunc i64 %indvars.iv459.i.i.i to i32
  %i.apm = mul i32 %i.ee, %i.apl
  %i.apn = sub i32 %i.apm, %i.ek
  %.idx.i.i = shl nsw i64 %indvars.iv459.i.i.i, 5
  %i.apo = getelementptr inbounds nuw i8, ptr %.2238401.us.i.i.i, i64 %.idx.i.i ; 9 uses
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 4 ; 2 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apo, i64 8 ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apo, i64 12 ; 2 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apo, i64 16 ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apo, i64 20 ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apo, i64 24 ; 2 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apo, i64 28 ; 2 uses
  br label %bb.dc

bb.dc:                                            ; preds = %.loopexit.us.us.i.i.i, %.lr.ph383.us.us.i.i.i
  %indvars.iv454.i.i.i = phi i64 [ %indvars.iv.next455.i.i.i, %.loopexit.us.us.i.i.i ], [ 0, %.lr.ph383.us.us.i.i.i ] ; 3 uses
  %.idx.i.i.i = mul nuw nsw i64 %indvars.iv454.i.i.i, 12
  %i.apw = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.idx.i.i.i ; 3 uses
  %i.apx = load i32, ptr %i.apw, align 4, !tbaa !21
  %i.apy = add nsw i32 %i.apx, %i.ol              ; 2 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apw, i64 4
  %i.aqa = load i32, ptr %i.apz, align 4, !tbaa !21
  %i.aqb = add nsw i32 %i.aqa, %i.ov              ; 2 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apw, i64 8
  %i.aqd = load i32, ptr %i.aqc, align 4, !tbaa !21
  %i.aqe = add nsw i32 %i.aqd, %i.apn             ; 2 uses
  %.not284.us.us.i.i.i = icmp ult i32 %i.apy, %i.dg
  %.not285.us.us.i.i.i = icmp ult i32 %i.aqb, %i.df
  %or.cond291.us.us.i.i.i = select i1 %.not284.us.us.i.i.i, i1 %.not285.us.us.i.i.i, i1 false
  %.not286.us.us.i.i.i = icmp ult i32 %i.aqe, %i.dh
  %or.cond292.us.us.i.i.i = select i1 %or.cond291.us.us.i.i.i, i1 %.not286.us.us.i.i.i, i1 false
  br i1 %or.cond292.us.us.i.i.i, label %.loopexit.us.us.loopexit.i.i.i, label %.loopexit.us.us.i.i.i

.loopexit.us.us.loopexit.i.i.i:                   ; preds = %bb.dc
  %i.aqf = mul nsw i32 %i.apy, %i.df
  %i.aqg = add nsw i32 %i.aqf, %i.aqb
  %i.aqh = mul nsw i32 %i.aqg, %i.dh
  %i.aqi = add nsw i32 %i.aqh, %i.aqe
  %i.aqj = shl nsw i32 %i.aqi, 3
  %i.aqk = sext i32 %i.aqj to i64
  %i.aql = getelementptr inbounds [4 x i8], ptr %.0239427.i.i.i, i64 %i.aqk ; 8 uses
  %i.aqm = load float, ptr %i.aql, align 4, !tbaa !89
  %.idx2.i.i = shl nuw nsw i64 %indvars.iv454.i.i.i, 5
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.mv, i64 %.idx2.i.i ; 8 uses
  %i.aqo = load float, ptr %i.aqn, align 4, !tbaa !89
  %i.aqp = load float, ptr %i.apo, align 4, !tbaa !89
  %i.aqq = tail call float @llvm.fmuladd.f32(float %i.aqm, float %i.aqo, float %i.aqp)
  store float %i.aqq, ptr %i.apo, align 4, !tbaa !89
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aql, i64 4
  %i.aqs = load float, ptr %i.aqr, align 4, !tbaa !89
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqn, i64 4
  %i.aqu = load float, ptr %i.aqt, align 4, !tbaa !89
  %i.aqv = load float, ptr %i.app, align 4, !tbaa !89
  %i.aqw = tail call float @llvm.fmuladd.f32(float %i.aqs, float %i.aqu, float %i.aqv)
  store float %i.aqw, ptr %i.app, align 4, !tbaa !89
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aql, i64 8
  %i.aqy = load float, ptr %i.aqx, align 4, !tbaa !89
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqn, i64 8
  %i.ara = load float, ptr %i.aqz, align 4, !tbaa !89
  %i.arb = load float, ptr %i.apq, align 4, !tbaa !89
  %i.arc = tail call float @llvm.fmuladd.f32(float %i.aqy, float %i.ara, float %i.arb)
  store float %i.arc, ptr %i.apq, align 4, !tbaa !89
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aql, i64 12
  %i.are = load float, ptr %i.ard, align 4, !tbaa !89
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqn, i64 12
  %i.arg = load float, ptr %i.arf, align 4, !tbaa !89
  %i.arh = load float, ptr %i.apr, align 4, !tbaa !89
  %i.ari = tail call float @llvm.fmuladd.f32(float %i.are, float %i.arg, float %i.arh)
  store float %i.ari, ptr %i.apr, align 4, !tbaa !89
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aql, i64 16
  %i.ark = load float, ptr %i.arj, align 4, !tbaa !89
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aqn, i64 16
  %i.arm = load float, ptr %i.arl, align 4, !tbaa !89
  %i.arn = load float, ptr %i.aps, align 4, !tbaa !89
  %i.aro = tail call float @llvm.fmuladd.f32(float %i.ark, float %i.arm, float %i.arn)
  store float %i.aro, ptr %i.aps, align 4, !tbaa !89
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aql, i64 20
  %i.arq = load float, ptr %i.arp, align 4, !tbaa !89
  %i.arr = getelementptr inbounds nuw i8, ptr %i.aqn, i64 20
  %i.ars = load float, ptr %i.arr, align 4, !tbaa !89
  %i.art = load float, ptr %i.apt, align 4, !tbaa !89
  %i.aru = tail call float @llvm.fmuladd.f32(float %i.arq, float %i.ars, float %i.art)
  store float %i.aru, ptr %i.apt, align 4, !tbaa !89
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aql, i64 24
  %i.arw = load float, ptr %i.arv, align 4, !tbaa !89
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aqn, i64 24
  %i.ary = load float, ptr %i.arx, align 4, !tbaa !89
  %i.arz = load float, ptr %i.apu, align 4, !tbaa !89
  %i.asa = tail call float @llvm.fmuladd.f32(float %i.arw, float %i.ary, float %i.arz)
  store float %i.asa, ptr %i.apu, align 4, !tbaa !89
  %i.asb = getelementptr inbounds nuw i8, ptr %i.aql, i64 28
  %i.asc = load float, ptr %i.asb, align 4, !tbaa !89
  %i.asd = getelementptr inbounds nuw i8, ptr %i.aqn, i64 28
  %i.ase = load float, ptr %i.asd, align 4, !tbaa !89
  %i.asf = load float, ptr %i.apv, align 4, !tbaa !89
  %i.asg = tail call float @llvm.fmuladd.f32(float %i.asc, float %i.ase, float %i.asf)
  store float %i.asg, ptr %i.apv, align 4, !tbaa !89
  br label %.loopexit.us.us.i.i.i

.loopexit.us.us.i.i.i:                            ; preds = %.loopexit.us.us.loopexit.i.i.i, %bb.dc
  %indvars.iv.next455.i.i.i = add nuw nsw i64 %indvars.iv454.i.i.i, 1 ; 2 uses
  %exitcond458.not.i.i.i = icmp eq i64 %indvars.iv.next455.i.i.i, %wide.trip.count457.i.i.i
  br i1 %exitcond458.not.i.i.i, label %._crit_edge.us.us.i.i.i, label %bb.dc, !llvm.loop !122

._crit_edge.us.us.i.i.i:                          ; preds = %.loopexit.us.us.i.i.i
  %indvars.iv.next460.i.i.i = add nuw nsw i64 %indvars.iv459.i.i.i, 1 ; 2 uses
  %exitcond463.not.i.i.i = icmp eq i64 %indvars.iv.next460.i.i.i, %wide.trip.count462.i.i.i
  br i1 %exitcond463.not.i.i.i, label %._crit_edge387.us.i.i.i, label %.lr.ph383.us.us.i.i.i, !llvm.loop !123

.lr.ph391.us.us.preheader.i.i.i:                  ; preds = %.preheader370.us.i.i.i
  %i.ash = zext nneg i32 %.1.lcssa.us.i.i.i to i64
  br label %.lr.ph391.us.us.i.i.i

.lr.ph391.us.us.i.i.i:                            ; preds = %._crit_edge.us395.us.i.i.i, %.lr.ph391.us.us.preheader.i.i.i
  %indvars.iv473.i.i.i = phi i64 [ %i.ash, %.lr.ph391.us.us.preheader.i.i.i ], [ %indvars.iv.next474.i.i.i, %._crit_edge.us395.us.i.i.i ] ; 3 uses
  %i.asi = trunc i64 %indvars.iv473.i.i.i to i32
  %i.asj = mul i32 %i.ee, %i.asi
  %i.ask = add i32 %i.oy, %i.asj
  %i.asl = shl nsw i32 %i.ask, 3
  %i.asm = sext i32 %i.asl to i64
  %i.asn = getelementptr inbounds [4 x i8], ptr %.0239427.i.i.i, i64 %i.asm
  %.idx3.i.i.a = shl nuw nsw i64 %indvars.iv473.i.i.i, 5
  %i.aso = getelementptr inbounds nuw i8, ptr %.2238401.us.i.i.i, i64 %.idx3.i.i.a ; 9 uses
  %.pre497.i.i.i = load float, ptr %i.aso, align 4, !tbaa !89
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aso, i64 4 ; 2 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %i.aso, i64 8 ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.aso, i64 12 ; 2 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %i.aso, i64 16 ; 2 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %i.aso, i64 20 ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.aso, i64 24 ; 2 uses
  %28 = getelementptr inbounds nuw i8, ptr %i.aso, i64 28 ; 2 uses
  %.promoted588.i.i.i = load float, ptr %i.asp, align 4, !tbaa !89
  %.promoted589.i.i.i = load float, ptr %i.asq, align 4, !tbaa !89
  %.promoted590.i.i.i = load float, ptr %i.asr, align 4, !tbaa !89
  %.promoted591.i.i.i = load float, ptr %i.ass, align 4, !tbaa !89
  %.promoted592.i.i.i = load float, ptr %i.ast, align 4, !tbaa !89
  %.promoted593.i.i.i = load float, ptr %i.asu, align 4, !tbaa !89
  %.promoted594.i.i.i = load float, ptr %28, align 4, !tbaa !89
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dd, %.lr.ph391.us.us.i.i.i
  %i.asv = phi float [ %i.aut, %bb.dd ], [ %.promoted594.i.i.i, %.lr.ph391.us.us.i.i.i ]
  %i.asw = phi float [ %i.auo, %bb.dd ], [ %.promoted593.i.i.i, %.lr.ph391.us.us.i.i.i ]
  %i.asx = phi float [ %i.auj, %bb.dd ], [ %.promoted592.i.i.i, %.lr.ph391.us.us.i.i.i ]
  %i.asy = phi float [ %i.aue, %bb.dd ], [ %.promoted591.i.i.i, %.lr.ph391.us.us.i.i.i ]
  %i.asz = phi float [ %i.atz, %bb.dd ], [ %.promoted590.i.i.i, %.lr.ph391.us.us.i.i.i ]
  %i.ata = phi float [ %i.atu, %bb.dd ], [ %.promoted589.i.i.i, %.lr.ph391.us.us.i.i.i ]
  %i.atb = phi float [ %i.atp, %bb.dd ], [ %.promoted588.i.i.i, %.lr.ph391.us.us.i.i.i ]
  %i.atc = phi float [ %i.atk, %bb.dd ], [ %.pre497.i.i.i, %.lr.ph391.us.us.i.i.i ]
  %indvars.iv468.i.i.i = phi i64 [ %indvars.iv.next469.i.i.i, %bb.dd ], [ 0, %.lr.ph391.us.us.i.i.i ] ; 3 uses
  %i.atd = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv468.i.i.i
  %i.ate = load i32, ptr %i.atd, align 4, !tbaa !21
  %i.atf = sext i32 %i.ate to i64
  %i.atg = getelementptr inbounds [4 x i8], ptr %i.asn, i64 %i.atf ; 8 uses
  %i.ath = load float, ptr %i.atg, align 4, !tbaa !89
  %.idx4.i.i = shl nuw nsw i64 %indvars.iv468.i.i.i, 5
  %i.ati = getelementptr inbounds nuw i8, ptr %i.mv, i64 %.idx4.i.i ; 8 uses
  %i.atj = load float, ptr %i.ati, align 4, !tbaa !89
  %i.atk = tail call float @llvm.fmuladd.f32(float %i.ath, float %i.atj, float %i.atc) ; 2 uses
  store float %i.atk, ptr %i.aso, align 4, !tbaa !89
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atg, i64 4
  %i.atm = load float, ptr %i.atl, align 4, !tbaa !89
  %i.atn = getelementptr inbounds nuw i8, ptr %i.ati, i64 4
  %i.ato = load float, ptr %i.atn, align 4, !tbaa !89
  %i.atp = tail call float @llvm.fmuladd.f32(float %i.atm, float %i.ato, float %i.atb) ; 2 uses
  store float %i.atp, ptr %i.asp, align 4, !tbaa !89
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atg, i64 8
  %i.atr = load float, ptr %i.atq, align 4, !tbaa !89
  %i.ats = getelementptr inbounds nuw i8, ptr %i.ati, i64 8
  %i.att = load float, ptr %i.ats, align 4, !tbaa !89
  %i.atu = tail call float @llvm.fmuladd.f32(float %i.atr, float %i.att, float %i.ata) ; 2 uses
  store float %i.atu, ptr %i.asq, align 4, !tbaa !89
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atg, i64 12
  %i.atw = load float, ptr %i.atv, align 4, !tbaa !89
  %i.atx = getelementptr inbounds nuw i8, ptr %i.ati, i64 12
  %i.aty = load float, ptr %i.atx, align 4, !tbaa !89
  %i.atz = tail call float @llvm.fmuladd.f32(float %i.atw, float %i.aty, float %i.asz) ; 2 uses
  store float %i.atz, ptr %i.asr, align 4, !tbaa !89
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atg, i64 16
  %i.aub = load float, ptr %i.aua, align 4, !tbaa !89
  %i.auc = getelementptr inbounds nuw i8, ptr %i.ati, i64 16
  %i.aud = load float, ptr %i.auc, align 4, !tbaa !89
  %i.aue = tail call float @llvm.fmuladd.f32(float %i.aub, float %i.aud, float %i.asy) ; 2 uses
  store float %i.aue, ptr %i.ass, align 4, !tbaa !89
  %i.auf = getelementptr inbounds nuw i8, ptr %i.atg, i64 20
  %i.aug = load float, ptr %i.auf, align 4, !tbaa !89
  %i.auh = getelementptr inbounds nuw i8, ptr %i.ati, i64 20
  %i.aui = load float, ptr %i.auh, align 4, !tbaa !89
  %i.auj = tail call float @llvm.fmuladd.f32(float %i.aug, float %i.aui, float %i.asx) ; 2 uses
  store float %i.auj, ptr %i.ast, align 4, !tbaa !89
  %i.auk = getelementptr inbounds nuw i8, ptr %i.atg, i64 24
  %i.aul = load float, ptr %i.auk, align 4, !tbaa !89
  %i.aum = getelementptr inbounds nuw i8, ptr %i.ati, i64 24
  %i.aun = load float, ptr %i.aum, align 4, !tbaa !89
  %i.auo = tail call float @llvm.fmuladd.f32(float %i.aul, float %i.aun, float %i.asw) ; 2 uses
  store float %i.auo, ptr %i.asu, align 4, !tbaa !89
  %i.aup = getelementptr inbounds nuw i8, ptr %i.atg, i64 28
  %i.auq = load float, ptr %i.aup, align 4, !tbaa !89
  %i.aur = getelementptr inbounds nuw i8, ptr %i.ati, i64 28
  %i.aus = load float, ptr %i.aur, align 4, !tbaa !89
  %i.aut = tail call float @llvm.fmuladd.f32(float %i.auq, float %i.aus, float %i.asv) ; 2 uses
  store float %i.aut, ptr %28, align 4, !tbaa !89
  %indvars.iv.next469.i.i.i = add nuw nsw i64 %indvars.iv468.i.i.i, 1 ; 2 uses
  %exitcond472.not.i.i.i = icmp eq i64 %indvars.iv.next469.i.i.i, %wide.trip.count457.i.i.i
  br i1 %exitcond472.not.i.i.i, label %._crit_edge.us395.us.i.i.i, label %bb.dd, !llvm.loop !124

._crit_edge.us395.us.i.i.i:                       ; preds = %bb.dd
  %indvars.iv.next474.i.i.i = add nuw nsw i64 %indvars.iv473.i.i.i, 1 ; 2 uses
  %exitcond477.not.i.i.i = icmp eq i64 %indvars.iv.next474.i.i.i, %wide.trip.count476.i.i.i
  br i1 %exitcond477.not.i.i.i, label %.loopexit371.us.i.i.i, label %.lr.ph391.us.us.i.i.i, !llvm.loop !125

._crit_edge.us424.i.i.i:                          ; preds = %.loopexit373.us.i.i.i
  br i1 %.not280.i.i.i, label %bb.db, label %bb.da

.lr.ph412.split.i.i.i:                            ; preds = %.lr.ph412.i.i.i
  %i.auu = getelementptr inbounds [4 x i8], ptr %.0236429.i.i.i, i64 %i.iy ; 2 uses
  br i1 %.not280.i.i.i, label %._crit_edge413.i.i.i, label %.lr.ph412.split.split.i.i.i

._crit_edge413.i.i.i:                             ; preds = %.lr.ph412.split.split.i.i.i, %bb.db, %.lr.ph412.split.i.i.i, %.preheader376.i.i.i
  %.1237.lcssa.i.i.i = phi ptr [ %.0236429.i.i.i, %.preheader376.i.i.i ], [ %.0236429.i.i.i, %.lr.ph412.split.i.i.i ], [ %i.pd, %bb.db ], [ %.0236429.i.i.i, %.lr.ph412.split.split.i.i.i ]
  %.1234.lcssa.i.i.i = phi ptr [ %.0233430.i.i.i, %.preheader376.i.i.i ], [ %.0233430.i.i.i, %.lr.ph412.split.i.i.i ], [ %i.pe, %bb.db ], [ %.0233430.i.i.i, %.lr.ph412.split.split.i.i.i ]
  %i.auv = add nsw i32 %.0231431.i.i.i, 1         ; 2 uses
  %i.auw = getelementptr inbounds [4 x i8], ptr %.0239427.i.i.i, i64 %i.iz
  %i.aux = load i32, ptr %i.ik, align 4, !tbaa !39
  %i.auy = icmp slt i32 %i.auv, %i.aux
  br i1 %i.auy, label %bb.bq, label %"_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS4_PvRKNS1_14dnn5_v202606059ConvStateES4_PKfSB_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit", !llvm.loop !126

.lr.ph412.split.split.i.i.i:                      ; preds = %.lr.ph412.split.i.i.i, %.lr.ph412.split.split.i.i.i
  %.0228411.i.i.i = phi i32 [ %i.auz, %.lr.ph412.split.split.i.i.i ], [ 0, %.lr.ph412.split.i.i.i ]
  tail call void %i.gk(ptr noundef %i.auu, ptr noundef %i.auu, i64 noundef %i.ix, ptr noundef %i.gi), !inline_history !93
  %i.auz = add nuw nsw i32 %.0228411.i.i.i, 1     ; 2 uses
  %exitcond449.not.i.i.i = icmp eq i32 %i.auz, %i.dd
  br i1 %exitcond449.not.i.i.i, label %._crit_edge413.i.i.i, label %.lr.ph412.split.split.i.i.i, !llvm.loop !94

bb.de:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.i.i.i
  %.pn276.pn.i.i.i = phi { ptr, i32 } [ %.pn276.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.i.i.i ], [ %.pn274.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337.i.i.i ], [ %.pn271.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340.i.i.i ], [ %.pn269.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %common.resume.i.i.i

"_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS4_PvRKNS1_14dnn5_v202606059ConvStateES4_PKfSB_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit": ; preds = %._crit_edge413.i.i.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baselineL16depthwiseConv32fEPKvS8_PvRKNS5_14dnn5_v202606059ConvStateES8_PKfSF_E3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS5_PvRKNS2_14dnn5_v202606059ConvStateES5_PKfSC_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS3_PvRKNS0_14dnn5_v202606059ConvStateES3_PKfSA_E3$_0", ptr %0, align 8, !tbaa !127
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS5_PvRKNS2_14dnn5_v202606059ConvStateES5_PKfSC_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !8
  store ptr %.val, ptr %0, align 8, !tbaa !8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS5_PvRKNS2_14dnn5_v202606059ConvStateES5_PKfSC_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %.val6, i64 56, i1 false), !tbaa.struct !129
  store ptr %i.a, ptr %0, align 8, !tbaa !8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS5_PvRKNS2_14dnn5_v202606059ConvStateES5_PKfSC_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !8  ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS5_PvRKNS2_14dnn5_v202606059ConvStateES5_PKfSC_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 56) #18
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS5_PvRKNS2_14dnn5_v202606059ConvStateES5_PKfSC_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS5_PvRKNS2_14dnn5_v202606059ConvStateES5_PKfSC_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShape4backEv(ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

declare void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) unnamed_addr #4

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !71
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #20
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !71
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.c, !inline_history !73 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #20, !inline_history !73
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #16, !inline_history !73
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #17
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !130
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14
end_hunk_0
