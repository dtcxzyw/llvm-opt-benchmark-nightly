inline.NumInlined: 3419
inline.NumDeleted: 948
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 79
begin_hunk_0_@"_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS2_7DDS_pvt11CompressionERKNS6_13dds_pixformatEiE3$_0E9_M_invokeERKSt9_Any_dataOlSG_":bb.a
  %.sink47.i128.i.i.i = trunc nuw i16 %.sink47.in.i125.i.i.i to i8
  %.sink48.i129.i.i.i = trunc nuw i16 %.sink48.in.i124.i.i.i to i8
  %.sink49.i130.i.i.i = trunc nuw i16 %.sink49.in.i123.i.i.i to i8
  %.sink50.i131.i.i.i = trunc nuw i16 %.sink50.in.i122.i.i.i to i8
  store i8 %.sink50.i131.i.i.i, ptr %i.ao, align 2, !tbaa !9
  store i8 %.sink49.i130.i.i.i, ptr %i.ap, align 1, !tbaa !9
  store i8 %.sink48.i129.i.i.i, ptr %i.aq, align 2, !tbaa !9
  store i8 %.sink47.i128.i.i.i, ptr %i.ar, align 1, !tbaa !9
  store i8 %.sink46.i126.i.i.i, ptr %i.as, align 2, !tbaa !9
  store i8 %.sink.i127.i.i.i, ptr %i.at, align 1, !tbaa !9
  %i.aie = lshr i64 %i.agd, 16
  %i.aif = and i64 %i.aie, 7
  %i.aig = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aif
  %i.aih = load i8, ptr %i.aig, align 1, !tbaa !9
  store i8 %i.aih, ptr %i.an, align 1, !tbaa !9
  %i.aii = lshr i64 %i.agd, 19
  %i.aij = and i64 %i.aii, 7
  %i.aik = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aij
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !9
  store i8 %i.ail, ptr %i.au, align 1, !tbaa !9
  %i.aim = lshr i64 %i.agd, 22
  %i.ain = and i64 %i.aim, 7
  %i.aio = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ain
  %i.aip = load i8, ptr %i.aio, align 1, !tbaa !9
  store i8 %i.aip, ptr %i.av, align 1, !tbaa !9
  %i.aiq = lshr i64 %i.agd, 25
  %i.air = and i64 %i.aiq, 7
  %i.ais = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.air
  %i.ait = load i8, ptr %i.ais, align 1, !tbaa !9
  store i8 %i.ait, ptr %i.aw, align 1, !tbaa !9
  %i.aiu = lshr i64 %i.agd, 28
  %i.aiv = and i64 %i.aiu, 7
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aiv
  %i.aix = load i8, ptr %i.aiw, align 1, !tbaa !9
  store i8 %i.aix, ptr %i.ax, align 1, !tbaa !9
  %i.aiy = lshr i64 %i.agd, 31
  %i.aiz = and i64 %i.aiy, 7
  %i.aja = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aiz
  %i.ajb = load i8, ptr %i.aja, align 1, !tbaa !9
  store i8 %i.ajb, ptr %i.ay, align 1, !tbaa !9
  %i.ajc = lshr i64 %i.agd, 34
  %i.ajd = and i64 %i.ajc, 7
  %i.aje = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ajd
  %i.ajf = load i8, ptr %i.aje, align 1, !tbaa !9
  store i8 %i.ajf, ptr %i.az, align 1, !tbaa !9
  %i.ajg = lshr i64 %i.agd, 37
  %i.ajh = and i64 %i.ajg, 7
  %i.aji = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ajh
  %i.ajj = load i8, ptr %i.aji, align 1, !tbaa !9
  store i8 %i.ajj, ptr %i.ba, align 1, !tbaa !9
  %i.ajk = lshr i64 %i.agd, 40
  %i.ajl = and i64 %i.ajk, 7
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ajl
  %i.ajn = load i8, ptr %i.ajm, align 1, !tbaa !9
  store i8 %i.ajn, ptr %i.bb, align 1, !tbaa !9
  %i.ajo = lshr i64 %i.agd, 43
  %i.ajp = and i64 %i.ajo, 7
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ajp
  %i.ajr = load i8, ptr %i.ajq, align 1, !tbaa !9
  store i8 %i.ajr, ptr %i.bc, align 1, !tbaa !9
  %i.ajs = lshr i64 %i.agd, 46
  %i.ajt = and i64 %i.ajs, 7
  %i.aju = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ajt
  %i.ajv = load i8, ptr %i.aju, align 1, !tbaa !9
  store i8 %i.ajv, ptr %i.bd, align 1, !tbaa !9
  %i.ajw = lshr i64 %i.agd, 49
  %i.ajx = and i64 %i.ajw, 7
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ajx
  %i.ajz = load i8, ptr %i.ajy, align 1, !tbaa !9
  store i8 %i.ajz, ptr %i.be, align 1, !tbaa !9
  %i.aka = lshr i64 %i.agd, 52
  %i.akb = and i64 %i.aka, 7
  %i.akc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.akb
  %i.akd = load i8, ptr %i.akc, align 1, !tbaa !9
  store i8 %i.akd, ptr %i.bf, align 1, !tbaa !9
  %i.ake = lshr i64 %i.agd, 55
  %i.akf = and i64 %i.ake, 7
  %i.akg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.akf
  %i.akh = load i8, ptr %i.akg, align 1, !tbaa !9
  store i8 %i.akh, ptr %i.bg, align 1, !tbaa !9
  %i.aki = lshr i64 %i.agd, 58
  %i.akj = and i64 %i.aki, 7
  %i.akk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.akj
  %i.akl = load i8, ptr %i.akk, align 1, !tbaa !9
  store i8 %i.akl, ptr %i.bh, align 1, !tbaa !9
  %i.akm = lshr i64 %i.agd, 61
  %i.akn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.akm
  %i.ako = load i8, ptr %i.akn, align 1, !tbaa !9
  store i8 %i.ako, ptr %i.bi, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.r

bb.p:                                             ; preds = %bb.b, %bb.b
  %i.akp = icmp eq i32 %i.ea, 9
  %i.akq = zext i1 %i.akp to i32
  call void @bcdec_bc6h_half(ptr noundef %.1188.i.i.i, ptr noundef nonnull %i.h, i32 noundef 12, i32 noundef %i.akq)
  br label %bb.r

bb.q:                                             ; preds = %bb.b
  call void @bcdec_bc7(ptr noundef %.1188.i.i.i, ptr noundef nonnull %i.g, i32 noundef 16)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %_Z25bcdec__smooth_alpha_blockPKvPvii.exit138.i.i.i, %_Z25bcdec__smooth_alpha_blockPKvPvii.exit117.i.i.i, %_Z25bcdec__smooth_alpha_blockPKvPvii.exit.i.i.i, %bb.d, %bb.c
  %i.akr = load ptr, ptr %i.o, align 8, !tbaa !215, !nonnull !205, !align !213
  %i.aks = load i64, ptr %i.akr, align 8, !tbaa !145
  %i.akt = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 %i.aks ; 2 uses
  %i.aku = load ptr, ptr %i.r, align 8, !tbaa !216, !nonnull !205, !align !210 ; 2 uses
  %i.akv = load i32, ptr %i.aku, align 4, !tbaa !147 ; 2 uses
  %i.akw = icmp eq i32 %i.akv, 5
  %.pre.i.i.i = load ptr, ptr %i.cr, align 8, !tbaa !217 ; 2 uses
  br i1 %i.akw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.akx = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %i.aky = load i32, ptr %i.akx, align 4, !tbaa !218
  %i.akz = icmp eq i32 %i.aky, 1111971922
  br i1 %i.akz, label %.preheader.preheader.i.i.i, label %bb.t

.preheader.preheader.i.i.i:                       ; preds = %bb.s
  %i.ala = load i8, ptr %i.g, align 16, !tbaa !9
  %i.alb = load i8, ptr %i.au, align 1, !tbaa !9
  store i8 %i.alb, ptr %i.g, align 16, !tbaa !9
  store i8 %i.ala, ptr %i.au, align 1, !tbaa !9
  %i.alc = load i8, ptr %i.z, align 4, !tbaa !9
  %i.ald = load i8, ptr %i.aw, align 1, !tbaa !9
  store i8 %i.ald, ptr %i.z, align 4, !tbaa !9
  store i8 %i.alc, ptr %i.aw, align 1, !tbaa !9
  %i.ale = load i8, ptr %i.ab, align 8, !tbaa !9
  %i.alf = load i8, ptr %i.ay, align 1, !tbaa !9
  store i8 %i.alf, ptr %i.ab, align 8, !tbaa !9
  store i8 %i.ale, ptr %i.ay, align 1, !tbaa !9
  %i.alg = load i8, ptr %i.ad, align 4, !tbaa !9
  %i.alh = load i8, ptr %i.ba, align 1, !tbaa !9
  store i8 %i.alh, ptr %i.ad, align 4, !tbaa !9
  store i8 %i.alg, ptr %i.ba, align 1, !tbaa !9
  %i.ali = load i8, ptr %i.af, align 16, !tbaa !9
  %i.alj = load i8, ptr %i.bc, align 1, !tbaa !9
  store i8 %i.alj, ptr %i.af, align 16, !tbaa !9
  store i8 %i.ali, ptr %i.bc, align 1, !tbaa !9
  %i.alk = load i8, ptr %i.ah, align 4, !tbaa !9
  %i.all = load i8, ptr %i.be, align 1, !tbaa !9
  store i8 %i.all, ptr %i.ah, align 4, !tbaa !9
  store i8 %i.alk, ptr %i.be, align 1, !tbaa !9
  %i.alm = load i8, ptr %i.aj, align 8, !tbaa !9
  %i.aln = load i8, ptr %i.bg, align 1, !tbaa !9
  store i8 %i.aln, ptr %i.aj, align 8, !tbaa !9
  store i8 %i.alm, ptr %i.bg, align 1, !tbaa !9
  %i.alo = load i8, ptr %i.al, align 4, !tbaa !9
  %i.alp = load i8, ptr %i.bi, align 1, !tbaa !9
  store i8 %i.alp, ptr %i.al, align 4, !tbaa !9
  store i8 %i.alo, ptr %i.bi, align 1, !tbaa !9
  %i.alq = load i8, ptr %i.bs, align 16, !tbaa !9
  %i.alr = load i8, ptr %i.cg, align 1, !tbaa !9
  store i8 %i.alr, ptr %i.bs, align 16, !tbaa !9
  store i8 %i.alq, ptr %i.cg, align 1, !tbaa !9
  %i.als = load i8, ptr %i.bt, align 4, !tbaa !9
  %i.alt = load i8, ptr %i.ch, align 1, !tbaa !9
  store i8 %i.alt, ptr %i.bt, align 4, !tbaa !9
  store i8 %i.als, ptr %i.ch, align 1, !tbaa !9
  %i.alu = load i8, ptr %i.bu, align 8, !tbaa !9
  %i.alv = load i8, ptr %i.ci, align 1, !tbaa !9
  store i8 %i.alv, ptr %i.bu, align 8, !tbaa !9
  store i8 %i.alu, ptr %i.ci, align 1, !tbaa !9
  %i.alw = load i8, ptr %i.bv, align 4, !tbaa !9
  %i.alx = load i8, ptr %i.cj, align 1, !tbaa !9
  store i8 %i.alx, ptr %i.bv, align 4, !tbaa !9
  store i8 %i.alw, ptr %i.cj, align 1, !tbaa !9
  %i.aly = load i8, ptr %i.bw, align 16, !tbaa !9
  %i.alz = load i8, ptr %i.ck, align 1, !tbaa !9
  store i8 %i.alz, ptr %i.bw, align 16, !tbaa !9
  store i8 %i.aly, ptr %i.ck, align 1, !tbaa !9
  %i.ama = load i8, ptr %i.bx, align 4, !tbaa !9
  %i.amb = load i8, ptr %i.cl, align 1, !tbaa !9
  store i8 %i.amb, ptr %i.bx, align 4, !tbaa !9
  store i8 %i.ama, ptr %i.cl, align 1, !tbaa !9
  %i.amc = load i8, ptr %i.by, align 8, !tbaa !9
  %i.amd = load i8, ptr %i.cm, align 1, !tbaa !9
  store i8 %i.amd, ptr %i.by, align 8, !tbaa !9
  store i8 %i.amc, ptr %i.cm, align 1, !tbaa !9
  %i.ame = load i8, ptr %i.bz, align 4, !tbaa !9
  %i.amf = load i8, ptr %i.cn, align 1, !tbaa !9
  store i8 %i.amf, ptr %i.bz, align 4, !tbaa !9
  store i8 %i.ame, ptr %i.cn, align 1, !tbaa !9
  br label %_ZN11OpenImageIO4v3_1L15ComputeNormalRGEPh.exit.i.i.i

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.amg = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 4
  %i.amh = load i32, ptr %i.amg, align 4, !tbaa !148
  %.not.i.i.i = icmp sgt i32 %i.amh, -1
  br i1 %.not.i.i.i, label %_ZN11OpenImageIO4v3_1L15ComputeNormalRGEPh.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  switch i32 %i.akv, label %_ZN11OpenImageIO4v3_1L15ComputeNormalRGEPh.exit.i.i.i [
    i32 7, label %.preheader170.i.i.i
    i32 5, label %.preheader172.i.i.i
  ]

.preheader170.i.i.i:                              ; preds = %bb.u, %_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i.i.i.i ], [ 15, %bb.u ] ; 4 uses
  %i.ami = shl nuw nsw i64 %indvars.iv.i.i.i.i, 1
  %i.amj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ami ; 2 uses
  %3 = load i8, ptr %i.amj, align 2, !tbaa !9     ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 1
  %4 = load i8, ptr %i.amk, align 1, !tbaa !9     ; 2 uses
  %5 = mul nuw nsw i64 %indvars.iv.i.i.i.i, 3
  %6 = getelementptr inbounds nuw i8, ptr %i.g, i64 %5 ; 3 uses
  store i8 %3, ptr %6, align 1, !tbaa !9
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %4, ptr %7, align 1, !tbaa !9
  %8 = uitofp i8 %3 to float
  %9 = fdiv float %8, 2.550000e+02
  %10 = tail call float @llvm.fmuladd.f32(float %9, float 2.000000e+00, float -1.000000e+00) ; 2 uses
  %11 = uitofp i8 %4 to float
  %12 = fdiv float %11, 2.550000e+02
  %i.aml = tail call float @llvm.fmuladd.f32(float %12, float 2.000000e+00, float -1.000000e+00) ; 2 uses
  %i.amm = fneg float %10
  %i.amn = tail call float @llvm.fmuladd.f32(float %i.amm, float %10, float 1.000000e+00)
  %i.amo = fneg float %i.aml
  %i.amp = tail call float @llvm.fmuladd.f32(float %i.amo, float %i.aml, float %i.amn) ; 2 uses
  %i.amq = fcmp ogt float %i.amp, 0.000000e+00
  br i1 %i.amq, label %bb.v, label %_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i.i.i.i

bb.v:                                             ; preds = %.preheader170.i.i.i
  %i.amr = tail call nnan float @llvm.sqrt.f32(float %i.amp)
  %i.ams = fadd nnan float %i.amr, 1.000000e+00
  %i.amt = fmul nnan float %i.ams, 2.550000e+02
  %i.amu = fmul nnan float %i.amt, 5.000000e-01
  %i.amv = fptosi float %i.amu to i32
  %i.amw = tail call i32 @llvm.smax.i32(i32 %i.amv, i32 0)
  %i.amx = tail call i32 @llvm.umin.i32(i32 %i.amw, i32 255)
  %i.amy = trunc nuw i32 %i.amx to i8
  br label %_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i.i.i.i

_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i.i.i.i: ; preds = %bb.v, %.preheader170.i.i.i
  %.0.i.i.i.i.i = phi i8 [ %i.amy, %bb.v ], [ 127, %.preheader170.i.i.i ]
  %i.amz = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %.0.i.i.i.i.i, ptr %i.amz, align 1, !tbaa !9
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_1L15ComputeNormalRGEPh.exit.i.i.i, label %.preheader170.i.i.i, !llvm.loop !219

.preheader172.i.i.i:                              ; preds = %bb.u, %_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i77.i.i.i
  %indvars.iv.i76.i.i.i = phi i64 [ %indvars.iv.next.i79.i.i.i, %_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i77.i.i.i ], [ 0, %bb.u ] ; 3 uses
  %i.ana = shl nuw nsw i64 %indvars.iv.i76.i.i.i, 2
  %i.anb = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ana ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 3
  %i.and = load i8, ptr %i.anc, align 1, !tbaa !9 ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.anb, i64 1
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !9 ; 2 uses
  %i.ang = mul nuw nsw i64 %indvars.iv.i76.i.i.i, 3
  %i.anh = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ang ; 3 uses
  store i8 %i.and, ptr %i.anh, align 1, !tbaa !9
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 1
  store i8 %i.anf, ptr %i.ani, align 1, !tbaa !9
  %13 = uitofp i8 %i.and to float
  %14 = fdiv float %13, 2.550000e+02
  %15 = tail call float @llvm.fmuladd.f32(float %14, float 2.000000e+00, float -1.000000e+00) ; 2 uses
  %16 = uitofp i8 %i.anf to float
  %17 = fdiv float %16, 2.550000e+02
  %i.anj = tail call float @llvm.fmuladd.f32(float %17, float 2.000000e+00, float -1.000000e+00) ; 2 uses
  %i.ank = fneg float %15
  %i.anl = tail call float @llvm.fmuladd.f32(float %i.ank, float %15, float 1.000000e+00)
  %i.anm = fneg float %i.anj
  %i.ann = tail call float @llvm.fmuladd.f32(float %i.anm, float %i.anj, float %i.anl) ; 2 uses
  %i.ano = fcmp ogt float %i.ann, 0.000000e+00
  br i1 %i.ano, label %bb.w, label %_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i77.i.i.i

bb.w:                                             ; preds = %.preheader172.i.i.i
  %i.anp = tail call nnan float @llvm.sqrt.f32(float %i.ann)
  %i.anq = fadd nnan float %i.anp, 1.000000e+00
  %i.anr = fmul nnan float %i.anq, 2.550000e+02
  %i.ans = fmul nnan float %i.anr, 5.000000e-01
  %i.ant = fptosi float %i.ans to i32
  %i.anu = tail call i32 @llvm.smax.i32(i32 %i.ant, i32 0)
  %i.anv = tail call i32 @llvm.umin.i32(i32 %i.anu, i32 255)
  %i.anw = trunc nuw i32 %i.anv to i8
  br label %_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i77.i.i.i

_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i77.i.i.i: ; preds = %bb.w, %.preheader172.i.i.i
  %.0.i.i78.i.i.i = phi i8 [ %i.anw, %bb.w ], [ 127, %.preheader172.i.i.i ]
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anh, i64 2
  store i8 %.0.i.i78.i.i.i, ptr %i.anx, align 1, !tbaa !9
  %indvars.iv.next.i79.i.i.i = add nuw nsw i64 %indvars.iv.i76.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i79.i.i.i, 16
  br i1 %exitcond.not.i.i.i.i, label %_ZN11OpenImageIO4v3_1L15ComputeNormalRGEPh.exit.i.i.i, label %.preheader172.i.i.i, !llvm.loop !220

_ZN11OpenImageIO4v3_1L15ComputeNormalRGEPh.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i77.i.i.i, %_ZN11OpenImageIO4v3_1L14ComputeNormalZEhh.exit.i.i.i.i, %bb.u, %bb.t, %.preheader.preheader.i.i.i
  %i.any = load i32, ptr %i.aku, align 4, !tbaa !147
  %i.anz = and i32 %i.any, -2
  %switch.i.i.i = icmp eq i32 %i.anz, 8
  %i.aoa = load ptr, ptr %i.cs, align 8, !tbaa !221, !nonnull !205, !align !213
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !146 ; 2 uses
  %i.aoc = load ptr, ptr %i.q, align 8, !tbaa !211, !nonnull !205, !align !210
  %i.aod = load i32, ptr %i.aoc, align 4, !tbaa !3 ; 3 uses
  %i.aoe = sext i32 %i.aod to i64
  %i.aof = mul nsw i64 %indvars.iv199.i.i.i, %i.aoe
  %i.aog = add nsw i64 %i.aof, %indvars.iv.i.i.i
  %i.aoh = load ptr, ptr %i.ct, align 8, !tbaa !222, !nonnull !205, !align !210
  %i.aoi = load i32, ptr %i.aoh, align 4, !tbaa !3 ; 3 uses
  %i.aoj = sext i32 %i.aoi to i64
  %i.aok = mul i64 %i.aog, %i.aoj                 ; 2 uses
  %i.aol = trunc nuw nsw i64 %indvars.iv.i.i.i to i32 ; 8 uses
  br i1 %switch.i.i.i, label %.lr.ph184.i.i.i, label %.lr.ph.i.i.i

.lr.ph184.i.i.i:                                  ; preds = %_ZN11OpenImageIO4v3_1L15ComputeNormalRGEPh.exit.i.i.i
  %i.aom = getelementptr inbounds nuw [2 x i8], ptr %i.aob, i64 %i.aok ; 2 uses
  %i.aon = sub nsw i32 %i.aod, %i.aol
  %.sroa.speculated162.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.aon, i32 4)
  %i.aoo = shl i32 %i.aoi, 1
  %i.aop = mul i32 %i.aoo, %.sroa.speculated162.i.i.i
  %i.aoq = sext i32 %i.aop to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.aom, ptr nonnull align 16 %i.h, i64 %i.aoq, i1 false)
  %i.aor = load ptr, ptr %i.q, align 8, !tbaa !211, !nonnull !205, !align !210
  %i.aos = load i32, ptr %i.aor, align 4, !tbaa !3 ; 3 uses
  br i1 %i.du, label %.lr.ph184.i.i.i.1, label %.critedge.i.i.i

.lr.ph184.i.i.i.1:                                ; preds = %.lr.ph184.i.i.i
  %i.aot = load ptr, ptr %i.ct, align 8, !tbaa !222, !nonnull !205, !align !210
  %i.aou = load i32, ptr %i.aot, align 4, !tbaa !3 ; 3 uses
  %i.aov = mul nsw i32 %i.aos, %i.aou
  %i.aow = sext i32 %i.aov to i64
  %i.aox = getelementptr inbounds [2 x i8], ptr %i.aom, i64 %i.aow ; 2 uses
  %i.aoy = shl nsw i32 %i.aou, 2
  %i.aoz = sext i32 %i.aoy to i64
  %i.apa = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.aoz ; 2 uses
  %i.apb = sub nsw i32 %i.aos, %i.aol
  %.sroa.speculated162.i.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.apb, i32 4)
  %i.apc = shl i32 %i.aou, 1
  %i.apd = mul i32 %i.apc, %.sroa.speculated162.i.i.i.1
  %i.ape = sext i32 %i.apd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.aox, ptr nonnull align 8 %i.apa, i64 %i.ape, i1 false)
  %i.apf = load ptr, ptr %i.q, align 8, !tbaa !211, !nonnull !205, !align !210
  %i.apg = load i32, ptr %i.apf, align 4, !tbaa !3 ; 3 uses
  br i1 %i.dw, label %.lr.ph184.i.i.i.2, label %.critedge.i.i.i

.lr.ph184.i.i.i.2:                                ; preds = %.lr.ph184.i.i.i.1
  %i.aph = load ptr, ptr %i.ct, align 8, !tbaa !222, !nonnull !205, !align !210
  %i.api = load i32, ptr %i.aph, align 4, !tbaa !3 ; 3 uses
  %i.apj = mul nsw i32 %i.apg, %i.api
  %i.apk = sext i32 %i.apj to i64
  %i.apl = getelementptr inbounds [2 x i8], ptr %i.aox, i64 %i.apk ; 2 uses
  %i.apm = shl nsw i32 %i.api, 2
  %i.apn = sext i32 %i.apm to i64
  %i.apo = getelementptr inbounds [2 x i8], ptr %i.apa, i64 %i.apn ; 2 uses
  %i.app = sub nsw i32 %i.apg, %i.aol
  %.sroa.speculated162.i.i.i.2 = tail call i32 @llvm.smin.i32(i32 %i.app, i32 4)
  %i.apq = shl i32 %i.api, 1
  %i.apr = mul i32 %i.apq, %.sroa.speculated162.i.i.i.2
  %i.aps = sext i32 %i.apr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.apl, ptr nonnull align 8 %i.apo, i64 %i.aps, i1 false)
  %i.apt = load ptr, ptr %i.q, align 8, !tbaa !211, !nonnull !205, !align !210
  %i.apu = load i32, ptr %i.apt, align 4, !tbaa !3 ; 3 uses
  br i1 %i.dy, label %.lr.ph184.i.i.i.3, label %.critedge.i.i.i

.lr.ph184.i.i.i.3:                                ; preds = %.lr.ph184.i.i.i.2
  %i.apv = load ptr, ptr %i.ct, align 8, !tbaa !222, !nonnull !205, !align !210
  %i.apw = load i32, ptr %i.apv, align 4, !tbaa !3 ; 3 uses
  %i.apx = mul nsw i32 %i.apu, %i.apw
  %i.apy = sext i32 %i.apx to i64
  %i.apz = getelementptr inbounds [2 x i8], ptr %i.apl, i64 %i.apy
  %i.aqa = shl nsw i32 %i.apw, 2
  %i.aqb = sext i32 %i.aqa to i64
  %i.aqc = getelementptr inbounds [2 x i8], ptr %i.apo, i64 %i.aqb
  %i.aqd = sub nsw i32 %i.apu, %i.aol
  %.sroa.speculated162.i.i.i.3 = tail call i32 @llvm.smin.i32(i32 %i.aqd, i32 4)
  %i.aqe = shl i32 %i.apw, 1
  %i.aqf = mul i32 %i.aqe, %.sroa.speculated162.i.i.i.3
  %i.aqg = sext i32 %i.aqf to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.apz, ptr nonnull align 8 %i.aqc, i64 %i.aqg, i1 false)
  %i.aqh = load ptr, ptr %i.q, align 8, !tbaa !211, !nonnull !205, !align !210
  %i.aqi = load i32, ptr %i.aqh, align 4, !tbaa !3
  br label %.critedge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN11OpenImageIO4v3_1L15ComputeNormalRGEPh.exit.i.i.i
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aob, i64 %i.aok ; 2 uses
  %i.aqk = sub nsw i32 %i.aod, %i.aol
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.aqk, i32 4)
  %i.aql = mul nsw i32 %.sroa.speculated.i.i.i, %i.aoi
  %i.aqm = sext i32 %i.aql to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqj, ptr nonnull align 16 %i.g, i64 %i.aqm, i1 false)
  %i.aqn = load ptr, ptr %i.q, align 8, !tbaa !211, !nonnull !205, !align !210
  %i.aqo = load i32, ptr %i.aqn, align 4, !tbaa !3 ; 3 uses
  br i1 %i.do, label %.lr.ph.i.i.i.1, label %.critedge.i.i.i

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.aqp = load ptr, ptr %i.ct, align 8, !tbaa !222, !nonnull !205, !align !210
  %i.aqq = load i32, ptr %i.aqp, align 4, !tbaa !3 ; 3 uses
  %i.aqr = mul nsw i32 %i.aqo, %i.aqq
  %i.aqs = sext i32 %i.aqr to i64
  %i.aqt = getelementptr inbounds i8, ptr %i.aqj, i64 %i.aqs ; 2 uses
  %i.aqu = shl nsw i32 %i.aqq, 2
  %i.aqv = sext i32 %i.aqu to i64
  %i.aqw = getelementptr inbounds i8, ptr %i.g, i64 %i.aqv ; 2 uses
  %i.aqx = sub nsw i32 %i.aqo, %i.aol
  %.sroa.speculated.i.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.aqx, i32 4)
  %i.aqy = mul nsw i32 %.sroa.speculated.i.i.i.1, %i.aqq
  %i.aqz = sext i32 %i.aqy to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqt, ptr nonnull align 4 %i.aqw, i64 %i.aqz, i1 false)
  %i.ara = load ptr, ptr %i.q, align 8, !tbaa !211, !nonnull !205, !align !210
  %i.arb = load i32, ptr %i.ara, align 4, !tbaa !3 ; 3 uses
  br i1 %i.dq, label %.lr.ph.i.i.i.2, label %.critedge.i.i.i

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.arc = load ptr, ptr %i.ct, align 8, !tbaa !222, !nonnull !205, !align !210
  %i.ard = load i32, ptr %i.arc, align 4, !tbaa !3 ; 3 uses
  %i.are = mul nsw i32 %i.arb, %i.ard
  %i.arf = sext i32 %i.are to i64
  %i.arg = getelementptr inbounds i8, ptr %i.aqt, i64 %i.arf ; 2 uses
  %i.arh = shl nsw i32 %i.ard, 2
  %i.ari = sext i32 %i.arh to i64
  %i.arj = getelementptr inbounds i8, ptr %i.aqw, i64 %i.ari ; 2 uses
  %i.ark = sub nsw i32 %i.arb, %i.aol
  %.sroa.speculated.i.i.i.2 = tail call i32 @llvm.smin.i32(i32 %i.ark, i32 4)
  %i.arl = mul nsw i32 %.sroa.speculated.i.i.i.2, %i.ard
  %i.arm = sext i32 %i.arl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.arg, ptr nonnull align 4 %i.arj, i64 %i.arm, i1 false)
  %i.arn = load ptr, ptr %i.q, align 8, !tbaa !211, !nonnull !205, !align !210
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !3 ; 3 uses
  br i1 %i.ds, label %.lr.ph.i.i.i.3, label %.critedge.i.i.i

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %i.arp = load ptr, ptr %i.ct, align 8, !tbaa !222, !nonnull !205, !align !210
  %i.arq = load i32, ptr %i.arp, align 4, !tbaa !3 ; 3 uses
  %i.arr = mul nsw i32 %i.aro, %i.arq
  %i.ars = sext i32 %i.arr to i64
  %i.art = getelementptr inbounds i8, ptr %i.arg, i64 %i.ars
  %i.aru = shl nsw i32 %i.arq, 2
  %i.arv = sext i32 %i.aru to i64
  %i.arw = getelementptr inbounds i8, ptr %i.arj, i64 %i.arv
  %i.arx = sub nsw i32 %i.aro, %i.aol
  %.sroa.speculated.i.i.i.3 = tail call i32 @llvm.smin.i32(i32 %i.arx, i32 4)
  %i.ary = mul nsw i32 %.sroa.speculated.i.i.i.3, %i.arq
  %i.arz = sext i32 %i.ary to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.art, ptr nonnull align 4 %i.arw, i64 %i.arz, i1 false)
  %i.asa = load ptr, ptr %i.q, align 8, !tbaa !211, !nonnull !205, !align !210
  %i.asb = load i32, ptr %i.asa, align 4, !tbaa !3
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph184.i.i.i, %.lr.ph184.i.i.i.1, %.lr.ph184.i.i.i.2, %.lr.ph184.i.i.i.3
  %i.asc = phi i32 [ %i.aqi, %.lr.ph184.i.i.i.3 ], [ %i.aos, %.lr.ph184.i.i.i ], [ %i.apg, %.lr.ph184.i.i.i.1 ], [ %i.apu, %.lr.ph184.i.i.i.2 ], [ %i.aqo, %.lr.ph.i.i.i ], [ %i.arb, %.lr.ph.i.i.i.1 ], [ %i.aro, %.lr.ph.i.i.i.2 ], [ %i.asb, %.lr.ph.i.i.i.3 ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.asd = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  %.not70.i.i.i = icmp sgt i32 %i.asc, %i.asd
  br i1 %.not70.i.i.i, label %bb.b, label %.critedge75.i.i.i, !llvm.loop !223

.critedge75.i.i.i:                                ; preds = %.critedge.i.i.i, %.preheader174.i.i.i
  %i.ase = phi i32 [ %i.dl, %.preheader174.i.i.i ], [ %i.asc, %.critedge.i.i.i ]
  %.1.lcssa.i.i.i = phi ptr [ %.0191.i.i.i, %.preheader174.i.i.i ], [ %i.akt, %.critedge.i.i.i ]
  %indvars.iv.next200.i.i.i = add nsw i64 %indvars.iv199.i.i.i, 4 ; 2 uses
  %i.asf = icmp slt i64 %indvars.iv.next200.i.i.i, %i.dk
  br i1 %i.asf, label %.preheader174.i.i.i, label %"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS1_7DDS_pvt11CompressionERKNS5_13dds_pixformatEiE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit", !llvm.loop !224

"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS1_7DDS_pvt11CompressionERKNS5_13dds_pixformatEiE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit": ; preds = %.critedge75.i.i.i, %bb.b, %bb.a, %.preheader174.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS2_7DDS_pvt11CompressionERKNS6_13dds_pixformatEiE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #6 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS2_7DDS_pvt11CompressionERKNS6_13dds_pixformatEiE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
end_hunk_0
