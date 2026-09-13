Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ddsinput?download=true
inline.NumInlined: 3419
inline.NumDeleted: 947
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 79
begin_hunk_0_@"_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS2_7DDS_pvt11CompressionERKNS6_13dds_pixformatEiE3$_0E9_M_invokeERKSt9_Any_dataOlSG_":bb.a
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !47
  store i8 %i.ajp, ptr %i.aq, align 1, !tbaa !47
  %i.ajq = lshr i64 %i.agt, 28
  %i.ajr = and i64 %i.ajq, 7
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ajr
  %i.ajt = load i8, ptr %i.ajs, align 1, !tbaa !47
  store i8 %i.ajt, ptr %i.ar, align 1, !tbaa !47
  %i.aju = lshr i64 %i.agt, 31
  %i.ajv = and i64 %i.aju, 7
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ajv
  %i.ajx = load i8, ptr %i.ajw, align 1, !tbaa !47
  store i8 %i.ajx, ptr %i.as, align 1, !tbaa !47
  %i.ajy = lshr i64 %i.agt, 34
  %i.ajz = and i64 %i.ajy, 7
  %i.aka = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ajz
  %i.akb = load i8, ptr %i.aka, align 1, !tbaa !47
  store i8 %i.akb, ptr %i.at, align 1, !tbaa !47
  %i.akc = lshr i64 %i.agt, 37
  %i.akd = and i64 %i.akc, 7
  %i.ake = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.akd
  %i.akf = load i8, ptr %i.ake, align 1, !tbaa !47
  store i8 %i.akf, ptr %i.au, align 1, !tbaa !47
  %i.akg = lshr i64 %i.agt, 40
  %i.akh = and i64 %i.akg, 7
  %i.aki = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.akh
  %i.akj = load i8, ptr %i.aki, align 1, !tbaa !47
  store i8 %i.akj, ptr %i.av, align 1, !tbaa !47
  %i.akk = lshr i64 %i.agt, 43
  %i.akl = and i64 %i.akk, 7
  %i.akm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.akl
  %i.akn = load i8, ptr %i.akm, align 1, !tbaa !47
  store i8 %i.akn, ptr %i.aw, align 1, !tbaa !47
  %i.ako = lshr i64 %i.agt, 46
  %i.akp = and i64 %i.ako, 7
  %i.akq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.akp
  %i.akr = load i8, ptr %i.akq, align 1, !tbaa !47
  store i8 %i.akr, ptr %i.ax, align 1, !tbaa !47
  %i.aks = lshr i64 %i.agt, 49
  %i.akt = and i64 %i.aks, 7
  %i.aku = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.akt
  %i.akv = load i8, ptr %i.aku, align 1, !tbaa !47
  store i8 %i.akv, ptr %i.ay, align 1, !tbaa !47
  %i.akw = lshr i64 %i.agt, 52
  %i.akx = and i64 %i.akw, 7
  %i.aky = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.akx
  %i.akz = load i8, ptr %i.aky, align 1, !tbaa !47
  store i8 %i.akz, ptr %i.az, align 1, !tbaa !47
  %i.ala = lshr i64 %i.agt, 55
  %i.alb = and i64 %i.ala, 7
  %i.alc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.alb
  %i.ald = load i8, ptr %i.alc, align 1, !tbaa !47
  store i8 %i.ald, ptr %i.ba, align 1, !tbaa !47
  %i.ale = lshr i64 %i.agt, 58
  %i.alf = and i64 %i.ale, 7
  %i.alg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.alf
  %i.alh = load i8, ptr %i.alg, align 1, !tbaa !47
  store i8 %i.alh, ptr %i.bb, align 1, !tbaa !47
  %i.ali = lshr i64 %i.agt, 61
  %i.alj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ali
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !47
  store i8 %i.alk, ptr %i.bc, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.r

bb.p:                                             ; preds = %bb.b, %bb.b
  %i.all = icmp eq i32 %i.dm, 9
  %i.alm = zext i1 %i.all to i32
  call void @bcdec_bc6h_half(ptr noundef %.1188.i.i.i, ptr noundef nonnull %i.h, i32 noundef 12, i32 noundef %i.alm)
  br label %bb.r

bb.q:                                             ; preds = %bb.b
  call void @bcdec_bc7(ptr noundef %.1188.i.i.i, ptr noundef nonnull %i.g, i32 noundef 16)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %_Z25bcdec__smooth_alpha_blockPKvPvii.exit138.i.i.i, %_Z25bcdec__smooth_alpha_blockPKvPvii.exit117.i.i.i, %_Z25bcdec__smooth_alpha_blockPKvPvii.exit.i.i.i, %bb.d, %bb.c
  %i.aln = load ptr, ptr %i.o, align 8, !tbaa !391, !nonnull !164, !align !166
  %i.alo = load i64, ptr %i.aln, align 8, !tbaa !139
  %i.alp = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 %i.alo ; 2 uses
  %i.alq = load ptr, ptr %i.r, align 8, !tbaa !392, !nonnull !164, !align !165 ; 2 uses
  %i.alr = load i32, ptr %i.alq, align 4, !tbaa !141 ; 2 uses
  %i.als = icmp eq i32 %i.alr, 5
  %.pre.i.i.i = load ptr, ptr %i.cd, align 8, !tbaa !393 ; 2 uses
  br i1 %i.als, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.alt = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %i.alu = load i32, ptr %i.alt, align 4, !tbaa !394
  %i.alv = icmp eq i32 %i.alu, 1111971922
  br i1 %i.alv, label %.preheader.preheader.i.i.i, label %bb.t

.preheader.preheader.i.i.i:                       ; preds = %bb.s
  %i.alw = load i8, ptr %i.g, align 16, !tbaa !47
  %i.alx = load i8, ptr %i.ao, align 1, !tbaa !47
  store i8 %i.alx, ptr %i.g, align 16, !tbaa !47
  store i8 %i.alw, ptr %i.ao, align 1, !tbaa !47
  %i.aly = load i8, ptr %i.w, align 4, !tbaa !47
  %i.alz = load i8, ptr %i.aq, align 1, !tbaa !47
  store i8 %i.alz, ptr %i.w, align 4, !tbaa !47
  store i8 %i.aly, ptr %i.aq, align 1, !tbaa !47
  %i.ama = load i8, ptr %i.y, align 8, !tbaa !47
  %i.amb = load i8, ptr %i.as, align 1, !tbaa !47
  store i8 %i.amb, ptr %i.y, align 8, !tbaa !47
  store i8 %i.ama, ptr %i.as, align 1, !tbaa !47
  %i.amc = load i8, ptr %i.aa, align 4, !tbaa !47
  %i.amd = load i8, ptr %i.au, align 1, !tbaa !47
  store i8 %i.amd, ptr %i.aa, align 4, !tbaa !47
  store i8 %i.amc, ptr %i.au, align 1, !tbaa !47
  %i.ame = load i8, ptr %i.ac, align 16, !tbaa !47
  %i.amf = load i8, ptr %i.aw, align 1, !tbaa !47
  store i8 %i.amf, ptr %i.ac, align 16, !tbaa !47
  store i8 %i.ame, ptr %i.aw, align 1, !tbaa !47
  %i.amg = load i8, ptr %i.ae, align 4, !tbaa !47
  %i.amh = load i8, ptr %i.ay, align 1, !tbaa !47
  store i8 %i.amh, ptr %i.ae, align 4, !tbaa !47
  store i8 %i.amg, ptr %i.ay, align 1, !tbaa !47
  %i.ami = load i8, ptr %i.ag, align 8, !tbaa !47
  %i.amj = load i8, ptr %i.ba, align 1, !tbaa !47
  store i8 %i.amj, ptr %i.ag, align 8, !tbaa !47
  store i8 %i.ami, ptr %i.ba, align 1, !tbaa !47
  %i.amk = load i8, ptr %i.ai, align 4, !tbaa !47
  %i.aml = load i8, ptr %i.bc, align 1, !tbaa !47
  store i8 %i.aml, ptr %i.ai, align 4, !tbaa !47
  store i8 %i.amk, ptr %i.bc, align 1, !tbaa !47
  %i.amm = load i8, ptr %i.bi, align 16, !tbaa !47
  %i.amn = load i8, ptr %i.bt, align 1, !tbaa !47
  store i8 %i.amn, ptr %i.bi, align 16, !tbaa !47
  store i8 %i.amm, ptr %i.bt, align 1, !tbaa !47
  %i.amo = load i8, ptr %i.bj, align 4, !tbaa !47
  %i.amp = load i8, ptr %i.bu, align 1, !tbaa !47
  store i8 %i.amp, ptr %i.bj, align 4, !tbaa !47
  store i8 %i.amo, ptr %i.bu, align 1, !tbaa !47
  %i.amq = load i8, ptr %i.bk, align 8, !tbaa !47
  %i.amr = load i8, ptr %i.bv, align 1, !tbaa !47
  store i8 %i.amr, ptr %i.bk, align 8, !tbaa !47
  store i8 %i.amq, ptr %i.bv, align 1, !tbaa !47
  %i.ams = load i8, ptr %i.bl, align 4, !tbaa !47
  %i.amt = load i8, ptr %i.bw, align 1, !tbaa !47
  store i8 %i.amt, ptr %i.bl, align 4, !tbaa !47
  store i8 %i.ams, ptr %i.bw, align 1, !tbaa !47
  %i.amu = load i8, ptr %i.bm, align 16, !tbaa !47
  %i.amv = load i8, ptr %i.bx, align 1, !tbaa !47
  store i8 %i.amv, ptr %i.bm, align 16, !tbaa !47
  store i8 %i.amu, ptr %i.bx, align 1, !tbaa !47
  %i.amw = load i8, ptr %i.bn, align 4, !tbaa !47
  %i.amx = load i8, ptr %i.by, align 1, !tbaa !47
  store i8 %i.amx, ptr %i.bn, align 4, !tbaa !47
  store i8 %i.amw, ptr %i.by, align 1, !tbaa !47
  %i.amy = load i8, ptr %i.bo, align 8, !tbaa !47
  %i.amz = load i8, ptr %i.bz, align 1, !tbaa !47
  store i8 %i.amz, ptr %i.bo, align 8, !tbaa !47
  store i8 %i.amy, ptr %i.bz, align 1, !tbaa !47
  %i.ana = load i8, ptr %i.bp, align 4, !tbaa !47
  %i.anb = load i8, ptr %i.ca, align 1, !tbaa !47
  store i8 %i.anb, ptr %i.bp, align 4, !tbaa !47
  store i8 %i.ana, ptr %i.ca, align 1, !tbaa !47
  br label %_ZN11OpenImageIO4v3_1L15ComputeNormalRGEPh.exit.i.i.i

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.anc = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 4
  %i.and = load i32, ptr %i.anc, align 4, !tbaa !142
  %.not.i.i.i = icmp sgt i32 %i.and, -1
  br i1 %.not.i.i.i, label %_ZN11OpenImageIO4v3_1L15ComputeNormalRGEPh.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  switch i32 %i.alr, label %_ZN11OpenImageIO4v3_1L15ComputeNormalRGEPh.exit.i.i.i [
    i32 7, label %.preheader170.i.i.i
    i32 5, label %.preheader172.i.i.i
  ]

.preheader170.i.i.i:                              ; preds = %bb.u, %_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i.i.i.i ], [ 15, %bb.u ] ; 4 uses
  %i.ane = shl nuw nsw i64 %indvars.iv.i.i.i.i, 1
  %i.anf = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ane
  %i.ang = mul nuw nsw i64 %indvars.iv.i.i.i.i, 3
  %i.anh = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ang ; 3 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 1
  %i.anj = load <2 x i8>, ptr %i.anf, align 2, !tbaa !47 ; 3 uses
  %i.ank = extractelement <2 x i8> %i.anj, i64 0
  store i8 %i.ank, ptr %i.anh, align 1, !tbaa !47
  %i.anl = extractelement <2 x i8> %i.anj, i64 1
  store i8 %i.anl, ptr %i.ani, align 1, !tbaa !47
  %i.anm = uitofp <2 x i8> %i.anj to <2 x float>
  %i.ann = fdiv <2 x float> %i.anm, splat (float 2.550000e+02)
  %i.ano = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ann, <2 x float> splat (float 2.000000e+00), <2 x float> splat (float -1.000000e+00)) ; 3 uses
  %i.anp = fneg <2 x float> %i.ano                ; 2 uses
  %i.anq = extractelement <2 x float> %i.anp, i64 0
  %i.anr = extractelement <2 x float> %i.ano, i64 0
  %i.ans = tail call float @llvm.fmuladd.f32(float %i.anq, float %i.anr, float 1.000000e+00)
  %i.ant = extractelement <2 x float> %i.anp, i64 1
  %i.anu = extractelement <2 x float> %i.ano, i64 1
  %i.anv = tail call float @llvm.fmuladd.f32(float %i.ant, float %i.anu, float %i.ans) ; 2 uses
  %i.anw = fcmp ogt float %i.anv, 0.000000e+00
  br i1 %i.anw, label %bb.v, label %_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i.i.i.i

bb.v:                                             ; preds = %.preheader170.i.i.i
  %i.anx = tail call nnan float @llvm.sqrt.f32(float %i.anv)
  %i.any = fadd nnan float %i.anx, 1.000000e+00
  %i.anz = fmul nnan float %i.any, 2.550000e+02
  %i.aoa = fmul nnan float %i.anz, 5.000000e-01
  %i.aob = fptosi float %i.aoa to i32
  %i.aoc = tail call i32 @llvm.smin.i32(i32 %i.aob, i32 255)
  %i.aod = trunc nuw i32 %i.aoc to i8
  br label %_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i.i.i.i

_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i.i.i.i: ; preds = %bb.v, %.preheader170.i.i.i
  %.0.i.i.i.i.i = phi i8 [ %i.aod, %bb.v ], [ 127, %.preheader170.i.i.i ]
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.anh, i64 2
  store i8 %.0.i.i.i.i.i, ptr %i.aoe, align 1, !tbaa !47
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_1L15ComputeNormalRGEPh.exit.i.i.i, label %.preheader170.i.i.i, !llvm.loop !382

.preheader172.i.i.i:                              ; preds = %bb.u, %_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i77.i.i.i
  %indvars.iv.i76.i.i.i = phi i64 [ %indvars.iv.next.i79.i.i.i, %_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i77.i.i.i ], [ 0, %bb.u ] ; 3 uses
  %i.aof = shl nuw nsw i64 %indvars.iv.i76.i.i.i, 2
  %i.aog = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aof ; 2 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aog, i64 3
  %i.aoi = load i8, ptr %i.aoh, align 1, !tbaa !47 ; 2 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aog, i64 1
  %i.aok = load i8, ptr %i.aoj, align 1, !tbaa !47 ; 2 uses
  %i.aol = mul nuw nsw i64 %indvars.iv.i76.i.i.i, 3
  %i.aom = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aol ; 3 uses
  store i8 %i.aoi, ptr %i.aom, align 1, !tbaa !47
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 1
  store i8 %i.aok, ptr %i.aon, align 1, !tbaa !47
  %i.aoo = insertelement <2 x i8> poison, i8 %i.aoi, i64 0
  %i.aop = insertelement <2 x i8> %i.aoo, i8 %i.aok, i64 1
  %i.aoq = uitofp <2 x i8> %i.aop to <2 x float>
  %i.aor = fdiv <2 x float> %i.aoq, splat (float 2.550000e+02)
  %i.aos = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aor, <2 x float> splat (float 2.000000e+00), <2 x float> splat (float -1.000000e+00)) ; 3 uses
  %i.aot = fneg <2 x float> %i.aos                ; 2 uses
  %i.aou = extractelement <2 x float> %i.aot, i64 0
  %i.aov = extractelement <2 x float> %i.aos, i64 0
  %i.aow = tail call float @llvm.fmuladd.f32(float %i.aou, float %i.aov, float 1.000000e+00)
  %i.aox = extractelement <2 x float> %i.aot, i64 1
  %i.aoy = extractelement <2 x float> %i.aos, i64 1
  %i.aoz = tail call float @llvm.fmuladd.f32(float %i.aox, float %i.aoy, float %i.aow) ; 2 uses
  %i.apa = fcmp ogt float %i.aoz, 0.000000e+00
  br i1 %i.apa, label %bb.w, label %_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i77.i.i.i

bb.w:                                             ; preds = %.preheader172.i.i.i
  %i.apb = tail call nnan float @llvm.sqrt.f32(float %i.aoz)
  %i.apc = fadd nnan float %i.apb, 1.000000e+00
  %i.apd = fmul nnan float %i.apc, 2.550000e+02
  %i.ape = fmul nnan float %i.apd, 5.000000e-01
  %i.apf = fptosi float %i.ape to i32
  %i.apg = tail call i32 @llvm.smin.i32(i32 %i.apf, i32 255)
  %i.aph = trunc nuw i32 %i.apg to i8
  br label %_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i77.i.i.i

_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i77.i.i.i: ; preds = %bb.w, %.preheader172.i.i.i
  %.0.i.i78.i.i.i = phi i8 [ %i.aph, %bb.w ], [ 127, %.preheader172.i.i.i ]
  %i.api = getelementptr inbounds nuw i8, ptr %i.aom, i64 2
  store i8 %.0.i.i78.i.i.i, ptr %i.api, align 1, !tbaa !47
  %indvars.iv.next.i79.i.i.i = add nuw nsw i64 %indvars.iv.i76.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i79.i.i.i, 16
  br i1 %exitcond.not.i.i.i.i, label %_ZN11OpenImageIO4v3_1L15ComputeNormalRGEPh.exit.i.i.i, label %.preheader172.i.i.i, !llvm.loop !383

_ZN11OpenImageIO4v3_1L15ComputeNormalRGEPh.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i77.i.i.i, %_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i.i.i.i, %bb.u, %bb.t, %.preheader.preheader.i.i.i
  %i.apj = load i32, ptr %i.alq, align 4, !tbaa !141
  %i.apk = and i32 %i.apj, -2
  %switch.i.i.i = icmp eq i32 %i.apk, 8
  %i.apl = load ptr, ptr %i.ce, align 8, !tbaa !395, !nonnull !164, !align !166
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !140 ; 2 uses
  %i.apn = load ptr, ptr %i.q, align 8, !tbaa !388, !nonnull !164, !align !165
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !44 ; 3 uses
  %i.app = sext i32 %i.apo to i64
  %i.apq = mul nsw i64 %indvars.iv199.i.i.i, %i.app
  %i.apr = add nsw i64 %i.apq, %indvars.iv.i.i.i
  %i.aps = load ptr, ptr %i.cf, align 8, !tbaa !396, !nonnull !164, !align !165
  %i.apt = load i32, ptr %i.aps, align 4, !tbaa !44 ; 3 uses
  %i.apu = sext i32 %i.apt to i64
  %i.apv = mul i64 %i.apr, %i.apu                 ; 2 uses
  %i.apw = trunc nuw nsw i64 %indvars.iv.i.i.i to i32 ; 8 uses
  br i1 %switch.i.i.i, label %.lr.ph184.i.i.i, label %.lr.ph.i.i.i

.lr.ph184.i.i.i:                                  ; preds = %_ZN11OpenImageIO4v3_1L15ComputeNormalRGEPh.exit.i.i.i
  %i.apx = getelementptr inbounds nuw [2 x i8], ptr %i.apm, i64 %i.apv ; 2 uses
  %i.apy = sub nsw i32 %i.apo, %i.apw
  %.sroa.speculated162.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.apy, i32 4)
  %i.apz = shl i32 %i.apt, 1
  %i.aqa = mul i32 %i.apz, %.sroa.speculated162.i.i.i
  %i.aqb = sext i32 %i.aqa to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.apx, ptr nonnull align 16 %i.h, i64 %i.aqb, i1 false)
  %i.aqc = load ptr, ptr %i.q, align 8, !tbaa !388, !nonnull !164, !align !165
  %i.aqd = load i32, ptr %i.aqc, align 4, !tbaa !44 ; 3 uses
  br i1 %i.dg, label %.lr.ph184.i.i.i.1, label %.critedge.i.i.i

.lr.ph184.i.i.i.1:                                ; preds = %.lr.ph184.i.i.i
  %i.aqe = load ptr, ptr %i.cf, align 8, !tbaa !396, !nonnull !164, !align !165
  %i.aqf = load i32, ptr %i.aqe, align 4, !tbaa !44 ; 3 uses
  %i.aqg = mul nsw i32 %i.aqd, %i.aqf
  %i.aqh = sext i32 %i.aqg to i64
  %i.aqi = getelementptr inbounds [2 x i8], ptr %i.apx, i64 %i.aqh ; 2 uses
  %i.aqj = shl nsw i32 %i.aqf, 2
  %i.aqk = sext i32 %i.aqj to i64
  %i.aql = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.aqk ; 2 uses
  %i.aqm = sub nsw i32 %i.aqd, %i.apw
  %.sroa.speculated162.i.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.aqm, i32 4)
  %i.aqn = shl i32 %i.aqf, 1
  %i.aqo = mul i32 %i.aqn, %.sroa.speculated162.i.i.i.1
  %i.aqp = sext i32 %i.aqo to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.aqi, ptr nonnull align 8 %i.aql, i64 %i.aqp, i1 false)
  %i.aqq = load ptr, ptr %i.q, align 8, !tbaa !388, !nonnull !164, !align !165
  %i.aqr = load i32, ptr %i.aqq, align 4, !tbaa !44 ; 3 uses
  br i1 %i.di, label %.lr.ph184.i.i.i.2, label %.critedge.i.i.i

.lr.ph184.i.i.i.2:                                ; preds = %.lr.ph184.i.i.i.1
  %i.aqs = load ptr, ptr %i.cf, align 8, !tbaa !396, !nonnull !164, !align !165
  %i.aqt = load i32, ptr %i.aqs, align 4, !tbaa !44 ; 3 uses
  %i.aqu = mul nsw i32 %i.aqr, %i.aqt
  %i.aqv = sext i32 %i.aqu to i64
  %i.aqw = getelementptr inbounds [2 x i8], ptr %i.aqi, i64 %i.aqv ; 2 uses
  %i.aqx = shl nsw i32 %i.aqt, 2
  %i.aqy = sext i32 %i.aqx to i64
  %i.aqz = getelementptr inbounds [2 x i8], ptr %i.aql, i64 %i.aqy ; 2 uses
  %i.ara = sub nsw i32 %i.aqr, %i.apw
  %.sroa.speculated162.i.i.i.2 = tail call i32 @llvm.smin.i32(i32 %i.ara, i32 4)
  %i.arb = shl i32 %i.aqt, 1
  %i.arc = mul i32 %i.arb, %.sroa.speculated162.i.i.i.2
  %i.ard = sext i32 %i.arc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.aqw, ptr nonnull align 8 %i.aqz, i64 %i.ard, i1 false)
  %i.are = load ptr, ptr %i.q, align 8, !tbaa !388, !nonnull !164, !align !165
  %i.arf = load i32, ptr %i.are, align 4, !tbaa !44 ; 3 uses
  br i1 %i.dk, label %.lr.ph184.i.i.i.3, label %.critedge.i.i.i

.lr.ph184.i.i.i.3:                                ; preds = %.lr.ph184.i.i.i.2
  %i.arg = load ptr, ptr %i.cf, align 8, !tbaa !396, !nonnull !164, !align !165
  %i.arh = load i32, ptr %i.arg, align 4, !tbaa !44 ; 3 uses
  %i.ari = mul nsw i32 %i.arf, %i.arh
  %i.arj = sext i32 %i.ari to i64
  %i.ark = getelementptr inbounds [2 x i8], ptr %i.aqw, i64 %i.arj
  %i.arl = shl nsw i32 %i.arh, 2
  %i.arm = sext i32 %i.arl to i64
  %i.arn = getelementptr inbounds [2 x i8], ptr %i.aqz, i64 %i.arm
  %i.aro = sub nsw i32 %i.arf, %i.apw
  %.sroa.speculated162.i.i.i.3 = tail call i32 @llvm.smin.i32(i32 %i.aro, i32 4)
  %i.arp = shl i32 %i.arh, 1
  %i.arq = mul i32 %i.arp, %.sroa.speculated162.i.i.i.3
  %i.arr = sext i32 %i.arq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ark, ptr nonnull align 8 %i.arn, i64 %i.arr, i1 false)
  %i.ars = load ptr, ptr %i.q, align 8, !tbaa !388, !nonnull !164, !align !165
  %i.art = load i32, ptr %i.ars, align 4, !tbaa !44
  br label %.critedge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN11OpenImageIO4v3_1L15ComputeNormalRGEPh.exit.i.i.i
  %i.aru = getelementptr inbounds nuw i8, ptr %i.apm, i64 %i.apv ; 2 uses
  %i.arv = sub nsw i32 %i.apo, %i.apw
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.arv, i32 4)
  %i.arw = mul nsw i32 %.sroa.speculated.i.i.i, %i.apt
  %i.arx = sext i32 %i.arw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aru, ptr nonnull align 16 %i.g, i64 %i.arx, i1 false)
  %i.ary = load ptr, ptr %i.q, align 8, !tbaa !388, !nonnull !164, !align !165
  %i.arz = load i32, ptr %i.ary, align 4, !tbaa !44 ; 3 uses
  br i1 %i.da, label %.lr.ph.i.i.i.1, label %.critedge.i.i.i

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.asa = load ptr, ptr %i.cf, align 8, !tbaa !396, !nonnull !164, !align !165
  %i.asb = load i32, ptr %i.asa, align 4, !tbaa !44 ; 3 uses
  %i.asc = mul nsw i32 %i.arz, %i.asb
  %i.asd = sext i32 %i.asc to i64
  %i.ase = getelementptr inbounds i8, ptr %i.aru, i64 %i.asd ; 2 uses
  %i.asf = shl nsw i32 %i.asb, 2
  %i.asg = sext i32 %i.asf to i64
  %i.ash = getelementptr inbounds i8, ptr %i.g, i64 %i.asg ; 2 uses
  %i.asi = sub nsw i32 %i.arz, %i.apw
  %.sroa.speculated.i.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.asi, i32 4)
  %i.asj = mul nsw i32 %.sroa.speculated.i.i.i.1, %i.asb
  %i.ask = sext i32 %i.asj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ase, ptr nonnull align 4 %i.ash, i64 %i.ask, i1 false)
  %i.asl = load ptr, ptr %i.q, align 8, !tbaa !388, !nonnull !164, !align !165
  %i.asm = load i32, ptr %i.asl, align 4, !tbaa !44 ; 3 uses
  br i1 %i.dc, label %.lr.ph.i.i.i.2, label %.critedge.i.i.i

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.asn = load ptr, ptr %i.cf, align 8, !tbaa !396, !nonnull !164, !align !165
  %i.aso = load i32, ptr %i.asn, align 4, !tbaa !44 ; 3 uses
  %i.asp = mul nsw i32 %i.asm, %i.aso
  %i.asq = sext i32 %i.asp to i64
  %i.asr = getelementptr inbounds i8, ptr %i.ase, i64 %i.asq ; 2 uses
  %i.ass = shl nsw i32 %i.aso, 2
  %i.ast = sext i32 %i.ass to i64
  %i.asu = getelementptr inbounds i8, ptr %i.ash, i64 %i.ast ; 2 uses
  %i.asv = sub nsw i32 %i.asm, %i.apw
  %.sroa.speculated.i.i.i.2 = tail call i32 @llvm.smin.i32(i32 %i.asv, i32 4)
  %i.asw = mul nsw i32 %.sroa.speculated.i.i.i.2, %i.aso
  %i.asx = sext i32 %i.asw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.asr, ptr nonnull align 4 %i.asu, i64 %i.asx, i1 false)
  %i.asy = load ptr, ptr %i.q, align 8, !tbaa !388, !nonnull !164, !align !165
  %i.asz = load i32, ptr %i.asy, align 4, !tbaa !44 ; 3 uses
  br i1 %i.de, label %.lr.ph.i.i.i.3, label %.critedge.i.i.i

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %i.ata = load ptr, ptr %i.cf, align 8, !tbaa !396, !nonnull !164, !align !165
  %i.atb = load i32, ptr %i.ata, align 4, !tbaa !44 ; 3 uses
  %i.atc = mul nsw i32 %i.asz, %i.atb
  %i.atd = sext i32 %i.atc to i64
  %i.ate = getelementptr inbounds i8, ptr %i.asr, i64 %i.atd
  %i.atf = shl nsw i32 %i.atb, 2
  %i.atg = sext i32 %i.atf to i64
  %i.ath = getelementptr inbounds i8, ptr %i.asu, i64 %i.atg
  %i.ati = sub nsw i32 %i.asz, %i.apw
  %.sroa.speculated.i.i.i.3 = tail call i32 @llvm.smin.i32(i32 %i.ati, i32 4)
  %i.atj = mul nsw i32 %.sroa.speculated.i.i.i.3, %i.atb
  %i.atk = sext i32 %i.atj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ate, ptr nonnull align 4 %i.ath, i64 %i.atk, i1 false)
  %i.atl = load ptr, ptr %i.q, align 8, !tbaa !388, !nonnull !164, !align !165
  %i.atm = load i32, ptr %i.atl, align 4, !tbaa !44
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph184.i.i.i, %.lr.ph184.i.i.i.1, %.lr.ph184.i.i.i.2, %.lr.ph184.i.i.i.3
  %i.atn = phi i32 [ %i.art, %.lr.ph184.i.i.i.3 ], [ %i.aqd, %.lr.ph184.i.i.i ], [ %i.aqr, %.lr.ph184.i.i.i.1 ], [ %i.arf, %.lr.ph184.i.i.i.2 ], [ %i.arz, %.lr.ph.i.i.i ], [ %i.asm, %.lr.ph.i.i.i.1 ], [ %i.asz, %.lr.ph.i.i.i.2 ], [ %i.atm, %.lr.ph.i.i.i.3 ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.ato = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  %.not70.i.i.i = icmp sgt i32 %i.atn, %i.ato
  br i1 %.not70.i.i.i, label %bb.b, label %.critedge75.i.i.i, !llvm.loop !384

.critedge75.i.i.i:                                ; preds = %.critedge.i.i.i, %.preheader174.i.i.i
  %i.atp = phi i32 [ %i.cx, %.preheader174.i.i.i ], [ %i.atn, %.critedge.i.i.i ]
  %.1.lcssa.i.i.i = phi ptr [ %.061191.i.i.i, %.preheader174.i.i.i ], [ %i.alp, %.critedge.i.i.i ]
  %indvars.iv.next200.i.i.i = add nsw i64 %indvars.iv199.i.i.i, 4 ; 2 uses
  %i.atq = icmp slt i64 %indvars.iv.next200.i.i.i, %i.cw
  br i1 %i.atq, label %.preheader174.i.i.i, label %"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS1_7DDS_pvt11CompressionERKNS5_13dds_pixformatEiE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit", !llvm.loop !385

"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS1_7DDS_pvt11CompressionERKNS5_13dds_pixformatEiE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit": ; preds = %.critedge75.i.i.i, %bb.b, %bb.a, %.preheader174.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS2_7DDS_pvt11CompressionERKNS6_13dds_pixformatEiE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #6 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS2_7DDS_pvt11CompressionERKNS6_13dds_pixformatEiE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS0_7DDS_pvt11CompressionERKNS4_13dds_pixformatEiE3$_0", ptr %0, align 8, !tbaa !398
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS2_7DDS_pvt11CompressionERKNS6_13dds_pixformatEiE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !150
  store ptr %.val, ptr %0, align 8, !tbaa !150
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail15write_codepointILm8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SH_cj:bb.a
  %i.bx = load ptr, ptr %0, align 8, !tbaa !169
  store i64 %.pre-phi.i.i.i.i.4, ptr %i.ad, align 8, !tbaa !171
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i8 %i.bq, ptr %i.by, align 1, !tbaa !47
  %.07.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.bz = load i8, ptr %.07.i.ptr.5, align 1, !tbaa !47
  %.not.i.i11.5 = icmp eq i64 %.sroa.4.1, 5
  br i1 %.not.i.i11.5, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.p

bb.p:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4
  %i.ca = load i64, ptr %i.ad, align 8, !tbaa !171 ; 2 uses
  %i.cb = add i64 %i.ca, 1                        ; 3 uses
  %i.cc = load i64, ptr %i.ae, align 8, !tbaa !170
  %i.cd = icmp ugt i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.q, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5

bb.q:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %i.af, align 8, !tbaa !168
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cb), !inline_history !37
  %.pre.i.i.i.i.5 = load i64, ptr %i.ad, align 8, !tbaa !171 ; 2 uses
  %.pre2.i.i.i.i.5 = add i64 %.pre.i.i.i.i.5, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5: ; preds = %bb.p, %bb.q
  %.pre-phi.i.i.i.i.5 = phi i64 [ %i.cb, %bb.p ], [ %.pre2.i.i.i.i.5, %bb.q ]
  %i.cf = phi i64 [ %i.ca, %bb.p ], [ %.pre.i.i.i.i.5, %bb.q ]
  %i.cg = load ptr, ptr %0, align 8, !tbaa !169
  store i64 %.pre-phi.i.i.i.i.5, ptr %i.ad, align 8, !tbaa !171
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 %i.bz, ptr %i.ch, align 1, !tbaa !47
  %.07.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ci = load i8, ptr %.07.i.ptr.6, align 2, !tbaa !47
  %.not.i.i11.6 = icmp eq i64 %.sroa.4.1, 6
  br i1 %.not.i.i11.6, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.r

bb.r:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5
  %i.cj = load i64, ptr %i.ad, align 8, !tbaa !171 ; 2 uses
  %i.ck = add i64 %i.cj, 1                        ; 3 uses
  %i.cl = load i64, ptr %i.ae, align 8, !tbaa !170
  %i.cm = icmp ugt i64 %i.ck, %i.cl
  br i1 %i.cm, label %bb.s, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6

bb.s:                                             ; preds = %bb.r
  %i.cn = load ptr, ptr %i.af, align 8, !tbaa !168
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ck), !inline_history !37
  %.pre.i.i.i.i.6 = load i64, ptr %i.ad, align 8, !tbaa !171 ; 2 uses
  %.pre2.i.i.i.i.6 = add i64 %.pre.i.i.i.i.6, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6: ; preds = %bb.r, %bb.s
  %.pre-phi.i.i.i.i.6 = phi i64 [ %i.ck, %bb.r ], [ %.pre2.i.i.i.i.6, %bb.s ]
  %i.co = phi i64 [ %i.cj, %bb.r ], [ %.pre.i.i.i.i.6, %bb.s ]
  %i.cp = load ptr, ptr %0, align 8, !tbaa !169
  store i64 %.pre-phi.i.i.i.i.6, ptr %i.ad, align 8, !tbaa !171
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store i8 %i.ci, ptr %i.cq, align 1, !tbaa !47
  %.07.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.cr = load i8, ptr %.07.i.ptr.7, align 1, !tbaa !47
  %.not.i.i11.7 = icmp eq i64 %.sroa.4.1, 7
  br i1 %.not.i.i11.7, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.t

bb.t:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6
  %i.cs = load i64, ptr %i.ad, align 8, !tbaa !171 ; 2 uses
  %i.ct = add i64 %i.cs, 1                        ; 3 uses
  %i.cu = load i64, ptr %i.ae, align 8, !tbaa !170
  %i.cv = icmp ugt i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.u, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7

bb.u:                                             ; preds = %bb.t
  %i.cw = load ptr, ptr %i.af, align 8, !tbaa !168
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ct), !inline_history !37
  %.pre.i.i.i.i.7 = load i64, ptr %i.ad, align 8, !tbaa !171 ; 2 uses
  %.pre2.i.i.i.i.7 = add i64 %.pre.i.i.i.i.7, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7:    ; preds = %bb.u, %bb.t
  %.pre-phi.i.i.i.i.7 = phi i64 [ %i.ct, %bb.t ], [ %.pre2.i.i.i.i.7, %bb.u ]
  %i.cx = phi i64 [ %i.cs, %bb.t ], [ %.pre.i.i.i.i.7, %bb.u ]
  %i.cy = load ptr, ptr %0, align 8, !tbaa !169
  store i64 %.pre-phi.i.i.i.i.7, ptr %i.ad, align 8, !tbaa !171
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 %i.cr, ptr %i.cz, align 1, !tbaa !47
  %i.da = add i64 %.sroa.4.1, -8
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7: ; preds = %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6
  %.sroa.3.1.i.7 = phi i64 [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6 ], [ %i.da, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i ], [ 0, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.3.1.i.7, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #21

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !106    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.d                       ; 2 uses
  %i.k = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.m = icmp ule i64 %i.j, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %.not28 = icmp ult i64 %i.j, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = add nsw i64 %1, -1                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.b, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !124
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.l, %1
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #37
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1)
  %i.s = add nuw i64 %.sroa.speculated.i, %i.f
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807) ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #38 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 3 uses
  store i8 0, ptr %i.v, align 1, !tbaa !47
  %i.w = add nsw i64 %1, -1                       ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.w, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %.not35 = icmp eq ptr %i.b, %i.c
  br i1 %.not35, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, %bb.h
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !107
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #35
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34: ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, %bb.i
  store ptr %i.u, ptr %0, align 8, !tbaa !106
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !124
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !107
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold noreturn }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #31 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #34 = { nounwind }
attributes #35 = { builtin nounwind }
attributes #36 = { noreturn nounwind }
attributes #37 = { noreturn }
attributes #38 = { builtin allocsize(0) }
attributes #39 = { cold nounwind }
attributes #40 = { nounwind allocsize(0) }

!llvm.module.flags = !{!38, !39}
!llvm.ident = !{!40}
!llvm.errno.tbaa = !{!44}

!0 = distinct !{!0, !53}
!1 = distinct !{!1, !53}
!2 = distinct !{null, null}
!3 = distinct !{!3, !53}
!4 = distinct !{!4, !53}
!5 = distinct !{!5, !53}
!6 = distinct !{null, null}
!7 = distinct !{null, null, null}
!8 = distinct !{null, null}
!9 = distinct !{!9, !53}
!10 = distinct !{!10, !53}
!11 = distinct !{!11, !53}
!12 = distinct !{!12, !53}
!13 = distinct !{null, null}
!14 = distinct !{null, null}
!15 = distinct !{!15, !53}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = distinct !{!18, !53}
!19 = distinct !{!19, !53}
!20 = distinct !{!20, !53}
!21 = distinct !{!21, !53}
!22 = distinct !{null, null, null, null}
!23 = distinct !{!23, !53}
!24 = distinct !{null, null}
!25 = distinct !{null}
!26 = distinct !{null, null}
!27 = distinct !{!27, !53}
!28 = distinct !{!28, !53}
!29 = distinct !{!29, !53}
!30 = distinct !{null}
!31 = distinct !{null, null, null, null}
!32 = distinct !{null, null, null}
!33 = distinct !{null}
!34 = distinct !{!34, !53}
!35 = distinct !{!35, !53}
!36 = distinct !{null, null, null, null}
!37 = distinct !{null, null, null, null, null}
!38 = !{i32 8, !"PIC Level", i32 2}
!39 = !{i32 7, !"uwtable", i32 2}
!40 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"omnipotent char", !41, i64 0}
!43 = !{!"int", !42, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"short", !42, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!42, !42, i64 0}
!48 = !{!"long long", !42, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"_ZTS16bcdec__bitstream", !48, i64 0, !48, i64 8}
!51 = !{!50, !48, i64 0}
!52 = !{!50, !48, i64 8}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!"vtable pointer", !41, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"any pointer", !42, i64 0}
!58 = !{!"p1 omnipotent char", !57, i64 0}
!59 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !58, i64 0}
!60 = !{!59, !58, i64 0}
!61 = !{!"long", !42, i64 0}
!62 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !59, i64 0, !61, i64 8, !42, i64 16}
!63 = !{!62, !61, i64 8}
!64 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !42, i64 0, !42, i64 1, !42, i64 2, !42, i64 3, !43, i64 4}
!65 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !57, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!67 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !66, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !67, i64 0}
!69 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !68, i64 0}
!70 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !57, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!72 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !71, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !72, i64 0}
!74 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !73, i64 0}
!75 = !{!"bool", !42, i64 0}
!76 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !57, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!78 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !77, i64 0}
!79 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !78, i64 0}
!80 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !79, i64 0}
!81 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !80, i64 0}
!82 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !64, i64 64, !69, i64 72, !74, i64 96, !43, i64 120, !43, i64 124, !75, i64 128, !81, i64 136}
!83 = !{!"_ZTSSt10_Head_baseILm1EPFvPN11OpenImageIO4v3_110ImageInput4ImplEELb0EE", !57, i64 0}
!84 = !{!"_ZTSSt11_Tuple_implILm1EJPFvPN11OpenImageIO4v3_110ImageInput4ImplEEEE", !83, i64 0}
!85 = !{!"p1 _ZTSN11OpenImageIO4v3_110ImageInput4ImplE", !57, i64 0}
!86 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_110ImageInput4ImplELb0EE", !85, i64 0}
!87 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !84, i64 0, !86, i64 8}
!88 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !87, i64 0}
!89 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !88, i64 0}
!90 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_ELb1ELb1EE", !89, i64 0}
!91 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !90, i64 0}
!92 = !{!"_ZTSN11OpenImageIO4v3_110ImageInputE", !82, i64 8, !91, i64 168}
!93 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!94 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !93, i64 0}
!95 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !94, i64 0}
!96 = !{!"_ZTSSt6vectorIhSaIhEE", !95, i64 0}
!97 = !{!"_ZTSN11OpenImageIO4v3_17DDS_pvt11CompressionE", !42, i64 0}
!98 = !{!"_ZTSN11OpenImageIO4v3_17DDS_pvt13dds_pixformatE", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !42, i64 16}
!99 = !{!"_ZTSN11OpenImageIO4v3_17DDS_pvt8dds_capsE", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!100 = !{!"_ZTSN11OpenImageIO4v3_17DDS_pvt10dds_headerE", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !42, i64 32, !98, i64 76, !99, i64 108, !43, i64 124}
!101 = !{!"_ZTSN11OpenImageIO4v3_17DDS_pvt15dds_header_dx10E", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16}
!102 = !{!"_ZTSN11OpenImageIO4v3_18DDSInputE", !92, i64 0, !62, i64 184, !96, i64 216, !43, i64 240, !43, i64 244, !43, i64 248, !43, i64 252, !43, i64 256, !42, i64 260, !42, i64 276, !97, i64 292, !100, i64 296, !101, i64 424}
!103 = !{!102, !97, i64 292}
!104 = !{!102, !43, i64 240}
!105 = !{!102, !43, i64 244}
!106 = !{!93, !58, i64 0}
!107 = !{!93, !58, i64 16}
!108 = !{!62, !58, i64 0}
!109 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !58, i64 0, !61, i64 8}
!110 = !{!109, !58, i64 0}
!111 = !{!109, !61, i64 8}
!112 = !{!102, !43, i64 404}
!113 = !{!102, !43, i64 408}
!114 = !{!102, !43, i64 312}
!115 = !{!102, !43, i64 308}
!116 = !{!102, !43, i64 320}
!117 = !{!102, !43, i64 376}
!118 = !{!102, !43, i64 380}
!119 = !{!102, !43, i64 424}
!120 = !{!102, !43, i64 248}
!121 = !{!102, !43, i64 256}
!122 = !{!102, !43, i64 384}
!123 = !{!102, !43, i64 324}
!124 = !{!93, !58, i64 8}
!125 = !{!77, !76, i64 0}
!126 = !{!77, !76, i64 8}
!127 = !{!77, !76, i64 16}
!128 = !{!71, !70, i64 0}
!129 = !{!71, !70, i64 8}
!130 = !{!71, !70, i64 16}
!131 = !{!66, !65, i64 0}
!132 = !{!66, !65, i64 16}
!133 = !{!92, !43, i64 28}
!134 = !{!92, !43, i64 56}
!135 = !{!92, !43, i64 60}
!136 = !{!92, !43, i64 64}
!137 = !{!70, !70, i64 0}
!138 = !{!76, !76, i64 0}
!139 = !{!61, !61, i64 0}
!140 = !{!58, !58, i64 0}
!141 = !{!97, !97, i64 0}
!142 = !{!98, !43, i64 4}
!143 = !{!"p1 int", !57, i64 0}
!144 = !{!143, !143, i64 0}
!145 = !{!"any p2 pointer", !57, i64 0}
!146 = !{!"p2 omnipotent char", !145, i64 0}
!147 = !{!146, !146, i64 0}
!148 = !{!"p1 long", !57, i64 0}
!149 = !{!148, !148, i64 0}
!150 = !{!57, !57, i64 0}
!151 = !{!75, !75, i64 0}
end_hunk_1
