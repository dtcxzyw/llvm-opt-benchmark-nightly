Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/settle?download=true
inline.NumInlined: 1717
inline.NumDeleted: 255
loop-unroll.NumCompletelyUnrolled: 101
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 103
begin_hunk_0_@_ZN3gmx7csettleERKNS_10SettleDataEiiPK5t_pbcNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEENS6_IS8_EEfSB_bPA3_fPb:bb.a
  %i.aks = fadd <16 x float> %i.akq, %i.akr
  %i.akt = fmul <16 x float> %i.adz, %i.aft
  %i.aku = fadd <16 x float> %i.akt, %i.aks
  %i.akv = fmul <16 x float> %i.adu, %i.ajj
  %i.akw = fmul <16 x float> %i.adx, %i.ajm
  %i.akx = fadd <16 x float> %i.akv, %i.akw
  %i.aky = fmul <16 x float> %i.aea, %i.aft
  %i.akz = fadd <16 x float> %i.aky, %i.akx
  %i.ala = fmul <16 x float> %i.ads, %i.ajs
  %i.alb = fmul <16 x float> %i.adv, %i.ajv
  %i.alc = fadd <16 x float> %i.ala, %i.alb
  %i.ald = fmul <16 x float> %i.ady, %i.afy
  %i.ale = fadd <16 x float> %i.ald, %i.alc
  %i.alf = fmul <16 x float> %i.adt, %i.ajs
  %i.alg = fmul <16 x float> %i.adw, %i.ajv
  %i.alh = fadd <16 x float> %i.alf, %i.alg
  %i.ali = fmul <16 x float> %i.adz, %i.afy
  %i.alj = fadd <16 x float> %i.ali, %i.alh
  %i.alk = fmul <16 x float> %i.adu, %i.ajs
  %i.all = fmul <16 x float> %i.adx, %i.ajv
  %i.alm = fadd <16 x float> %i.alk, %i.all
  %i.aln = fmul <16 x float> %i.aea, %i.afy
  %i.alo = fadd <16 x float> %i.aln, %i.alm
  %i.alp = fsub <16 x float> %i.aka, %i.aaw       ; 3 uses
  %i.alq = fadd <16 x float> %i.xd, %i.alp
  %i.alr = fsub <16 x float> %i.akf, %i.abb       ; 3 uses
  %i.als = fadd <16 x float> %i.xe, %i.alr
  %i.alt = fsub <16 x float> %i.akk, %i.abg       ; 3 uses
  %i.alu = fadd <16 x float> %i.xf, %i.alt
  %i.alv = fsub <16 x float> %i.akp, %i.abh       ; 3 uses
  %i.alw = fadd <16 x float> %i.xg, %i.alv
  %i.alx = fsub <16 x float> %i.aku, %i.abi       ; 3 uses
  %i.aly = fadd <16 x float> %i.xh, %i.alx
  %i.alz = fsub <16 x float> %i.akz, %i.abj       ; 3 uses
  %i.ama = fadd <16 x float> %i.xi, %i.alz
  %i.amb = fsub <16 x float> %i.ale, %i.abk       ; 3 uses
  %i.amc = fadd <16 x float> %i.xj, %i.amb
  %i.amd = fsub <16 x float> %i.alj, %i.abl       ; 3 uses
  %i.ame = fadd <16 x float> %i.xk, %i.amd
  %i.amf = fsub <16 x float> %i.alo, %i.abm       ; 3 uses
  %i.amg = fadd <16 x float> %i.xl, %i.amf
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr %i.aq, <16 x i1> splat (i1 true), <16 x i32> %i.wr, <16 x float> %i.alq, i32 4)
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.vf, <16 x i1> splat (i1 true), <16 x i32> %i.wr, <16 x float> %i.als, i32 4)
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.vg, <16 x i1> splat (i1 true), <16 x i32> %i.wr, <16 x float> %i.alu, i32 4)
  %.val9671074.i.i = load <16 x i32>, ptr %i.wp, align 64, !tbaa !46
  %i.amh = mul <16 x i32> %.val9671074.i.i, splat (i32 3) ; 3 uses
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr %i.aq, <16 x i1> splat (i1 true), <16 x i32> %i.amh, <16 x float> %i.alw, i32 4)
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.vf, <16 x i1> splat (i1 true), <16 x i32> %i.amh, <16 x float> %i.aly, i32 4)
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.vg, <16 x i1> splat (i1 true), <16 x i32> %i.amh, <16 x float> %i.ama, i32 4)
  %.val9661075.i.i = load <16 x i32>, ptr %i.wq, align 64, !tbaa !46
  %i.ami = mul <16 x i32> %.val9661075.i.i, splat (i32 3) ; 3 uses
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr %i.aq, <16 x i1> splat (i1 true), <16 x i32> %i.ami, <16 x float> %i.amc, i32 4)
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.vf, <16 x i1> splat (i1 true), <16 x i32> %i.ami, <16 x float> %i.ame, i32 4)
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.vg, <16 x i1> splat (i1 true), <16 x i32> %i.ami, <16 x float> %i.amg, i32 4)
  %.val9551076.i.i = load <16 x i32>, ptr %i.wo, align 64, !tbaa !46
  %i.amj = mul <16 x i32> %.val9551076.i.i, splat (i32 3) ; 6 uses
  %i.amk = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ar, <16 x i32> %i.amj, <16 x i1> splat (i1 true), i32 4)
  %i.aml = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wc, <16 x i32> %i.amj, <16 x i1> splat (i1 true), i32 4)
  %i.amm = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wd, <16 x i32> %i.amj, <16 x i1> splat (i1 true), i32 4)
  %.val9541077.i.i = load <16 x i32>, ptr %i.wp, align 64, !tbaa !46
  %i.amn = mul <16 x i32> %.val9541077.i.i, splat (i32 3) ; 3 uses
  %i.amo = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ar, <16 x i32> %i.amn, <16 x i1> splat (i1 true), i32 4)
  %i.amp = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wc, <16 x i32> %i.amn, <16 x i1> splat (i1 true), i32 4)
  %i.amq = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wd, <16 x i32> %i.amn, <16 x i1> splat (i1 true), i32 4)
  %.val1078.i.i = load <16 x i32>, ptr %i.wq, align 64, !tbaa !46
  %i.amr = mul <16 x i32> %.val1078.i.i, splat (i32 3) ; 3 uses
  %i.ams = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ar, <16 x i32> %i.amr, <16 x i1> splat (i1 true), i32 4)
  %i.amt = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wc, <16 x i32> %i.amr, <16 x i1> splat (i1 true), i32 4)
  %i.amu = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wd, <16 x i32> %i.amr, <16 x i1> splat (i1 true), i32 4)
  %i.amv = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.alp, <16 x float> %i.wf, <16 x float> %i.amk)
  %i.amw = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.alr, <16 x float> %i.wf, <16 x float> %i.aml)
  %i.amx = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.alt, <16 x float> %i.wf, <16 x float> %i.amm)
  %i.amy = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.alv, <16 x float> %i.wf, <16 x float> %i.amo)
  %i.amz = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.alx, <16 x float> %i.wf, <16 x float> %i.amp)
  %i.ana = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.alz, <16 x float> %i.wf, <16 x float> %i.amq)
  %i.anb = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.amb, <16 x float> %i.wf, <16 x float> %i.ams)
  %i.anc = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.amd, <16 x float> %i.wf, <16 x float> %i.amt)
  %i.and = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.amf, <16 x float> %i.wf, <16 x float> %i.amu)
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.ar, <16 x i1> splat (i1 true), <16 x i32> %i.amj, <16 x float> %i.amv, i32 4)
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.wc, <16 x i1> splat (i1 true), <16 x i32> %i.amj, <16 x float> %i.amw, i32 4)
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.wd, <16 x i1> splat (i1 true), <16 x i32> %i.amj, <16 x float> %i.amx, i32 4)
  %.val9641079.i.i = load <16 x i32>, ptr %i.wp, align 64, !tbaa !46
  %i.ane = mul <16 x i32> %.val9641079.i.i, splat (i32 3) ; 3 uses
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.ar, <16 x i1> splat (i1 true), <16 x i32> %i.ane, <16 x float> %i.amy, i32 4)
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.wc, <16 x i1> splat (i1 true), <16 x i32> %i.ane, <16 x float> %i.amz, i32 4)
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.wd, <16 x i1> splat (i1 true), <16 x i32> %i.ane, <16 x float> %i.ana, i32 4)
  %.val9631080.i.i = load <16 x i32>, ptr %i.wq, align 64, !tbaa !46
  %i.anf = mul <16 x i32> %.val9631080.i.i, splat (i32 3) ; 3 uses
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.ar, <16 x i1> splat (i1 true), <16 x i32> %i.anf, <16 x float> %i.anb, i32 4)
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.wc, <16 x i1> splat (i1 true), <16 x i32> %i.anf, <16 x float> %i.anc, i32 4)
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.wd, <16 x i1> splat (i1 true), <16 x i32> %i.anf, <16 x float> %i.and, i32 4)
  %i.ang = load ptr, ptr %i.wg, align 8, !tbaa !54, !noalias !141
  %i.anh = getelementptr inbounds [4 x i8], ptr %i.ang, i64 %indvars.iv.i48.i
  %.val962.i.i = load <16 x float>, ptr %i.anh, align 64, !tbaa !46 ; 2 uses
  %i.ani = fmul <16 x float> %i.uu, %.val962.i.i  ; 3 uses
  %i.anj = fmul <16 x float> %i.uv, %.val962.i.i  ; 6 uses
  %i.ank = fmul <16 x float> %i.anj, %i.alv       ; 4 uses
  %i.anl = fmul <16 x float> %i.anj, %i.amb       ; 4 uses
  %i.anm = fmul <16 x float> %i.alp, %i.ani
  %i.ann = fadd <16 x float> %i.ank, %i.anm
  %i.ano = fadd <16 x float> %i.anl, %i.ann       ; 3 uses
  %i.anp = fmul <16 x float> %i.anj, %i.alx       ; 4 uses
  %i.anq = fmul <16 x float> %i.anj, %i.amd       ; 4 uses
  %i.anr = fmul <16 x float> %i.alr, %i.ani
  %i.ans = fadd <16 x float> %i.anp, %i.anr
  %i.ant = fadd <16 x float> %i.anq, %i.ans       ; 3 uses
  %i.anu = fmul <16 x float> %i.anj, %i.alz       ; 4 uses
  %i.anv = fmul <16 x float> %i.anj, %i.amf       ; 4 uses
  %i.anw = fmul <16 x float> %i.alt, %i.ani
  %i.anx = fadd <16 x float> %i.anu, %i.anw
  %i.any = fadd <16 x float> %i.anv, %i.anx       ; 3 uses
  %i.anz = fmul <16 x float> %i.ws, %i.ano
  %i.aoa = fmul <16 x float> %i.yg, %i.ank
  %i.aob = fadd <16 x float> %i.aoa, %i.anz
  %i.aoc = fmul <16 x float> %i.zb, %i.anl
  %i.aod = fadd <16 x float> %i.aoc, %i.aob
  %i.aoe = fsub <16 x float> %.sroa.01305.1.i.i, %i.aod ; 2 uses
  %i.aof = fmul <16 x float> %i.ws, %i.ant
  %i.aog = fmul <16 x float> %i.yg, %i.anp
  %i.aoh = fadd <16 x float> %i.aog, %i.aof
  %i.aoi = fmul <16 x float> %i.zb, %i.anq
  %i.aoj = fadd <16 x float> %i.aoi, %i.aoh
  %i.aok = fsub <16 x float> %.sroa.61307.1.i.i, %i.aoj ; 2 uses
  %i.aol = fmul <16 x float> %i.ws, %i.any
  %i.aom = fmul <16 x float> %i.yg, %i.anu
  %i.aon = fadd <16 x float> %i.aom, %i.aol
  %i.aoo = fmul <16 x float> %i.zb, %i.anv
  %i.aop = fadd <16 x float> %i.aoo, %i.aon
  %i.aoq = fsub <16 x float> %.sroa.9.1.i.i, %i.aop ; 2 uses
  %i.aor = fmul <16 x float> %i.wt, %i.ano
  %i.aos = fmul <16 x float> %i.yc, %i.ank
  %i.aot = fadd <16 x float> %i.aos, %i.aor
  %i.aou = fmul <16 x float> %i.yx, %i.anl
  %i.aov = fadd <16 x float> %i.aou, %i.aot
  %i.aow = fsub <16 x float> %.sroa.121310.1.i.i, %i.aov ; 2 uses
  %i.aox = fmul <16 x float> %i.wt, %i.ant
  %i.aoy = fmul <16 x float> %i.yc, %i.anp
  %i.aoz = fadd <16 x float> %i.aoy, %i.aox
  %i.apa = fmul <16 x float> %i.yx, %i.anq
  %i.apb = fadd <16 x float> %i.apa, %i.aoz
  %i.apc = fsub <16 x float> %.sroa.15.1.i.i, %i.apb ; 2 uses
  %i.apd = fmul <16 x float> %i.wt, %i.any
  %i.ape = fmul <16 x float> %i.yc, %i.anu
  %i.apf = fadd <16 x float> %i.ape, %i.apd
  %i.apg = fmul <16 x float> %i.yx, %i.anv
  %i.aph = fadd <16 x float> %i.apg, %i.apf
  %i.api = fsub <16 x float> %.sroa.18.1.i.i, %i.aph ; 2 uses
  %i.apj = fmul <16 x float> %i.wu, %i.ano
  %i.apk = fmul <16 x float> %i.xw, %i.ank
  %i.apl = fadd <16 x float> %i.apk, %i.apj
  %i.apm = fmul <16 x float> %i.yr, %i.anl
  %i.apn = fadd <16 x float> %i.apm, %i.apl
  %i.apo = fsub <16 x float> %.sroa.21.1.i.i, %i.apn ; 2 uses
  %i.app = fmul <16 x float> %i.wu, %i.ant
  %i.apq = fmul <16 x float> %i.xw, %i.anp
  %i.apr = fadd <16 x float> %i.apq, %i.app
  %i.aps = fmul <16 x float> %i.yr, %i.anq
  %i.apt = fadd <16 x float> %i.aps, %i.apr
  %i.apu = fsub <16 x float> %.sroa.24.1.i.i, %i.apt ; 2 uses
  %i.apv = fmul <16 x float> %i.wu, %i.any
  %i.apw = fmul <16 x float> %i.xw, %i.anu
  %i.apx = fadd <16 x float> %i.apw, %i.apv
  %i.apy = fmul <16 x float> %i.yr, %i.anv
  %i.apz = fadd <16 x float> %i.apy, %i.apx
  %i.aqa = fsub <16 x float> %.sroa.27.1.i.i, %i.apz ; 2 uses
  %i.aqb = fcmp ole <16 x float> %i.agg, splat (float f0x2B8CBCCC)
  %i.aqc = bitcast <16 x i1> %i.aqb to i16
  %i.aqd = or i16 %.sroa.01068.01117.i.i, %i.aqc  ; 2 uses
  %indvars.iv.next.i58.i = add nsw i64 %indvars.iv.i48.i, 16 ; 2 uses
  %i.aqe = icmp slt i64 %indvars.iv.next.i58.i, %i.wi
  br i1 %i.aqe, label %.preheader1097.preheader.i.i, label %.preheader1081.loopexit.i.i, !llvm.loop !122

_ZN3gmxL14settleTemplateINS_9SimdFloatENS_9SimdFBoolELi16EPKfLb1ELb1EEEvRKNS_10SettleDataEiiT2_S4_PffS9_PA3_fPb.exit.i: ; preds = %.preheader1081.loopexit.i.i, %bb.e
  %.sroa.27.0.i.i = phi <16 x float> [ %i.aqa, %.preheader1081.loopexit.i.i ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.24.0.i.i = phi <16 x float> [ %i.apu, %.preheader1081.loopexit.i.i ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.21.0.i.i = phi <16 x float> [ %i.apo, %.preheader1081.loopexit.i.i ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.18.0.i.i = phi <16 x float> [ %i.api, %.preheader1081.loopexit.i.i ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.15.0.i.i = phi <16 x float> [ %i.apc, %.preheader1081.loopexit.i.i ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.121310.0.i.i = phi <16 x float> [ %i.aow, %.preheader1081.loopexit.i.i ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.9.0.i.i = phi <16 x float> [ %i.aoq, %.preheader1081.loopexit.i.i ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.61307.0.i.i = phi <16 x float> [ %i.aok, %.preheader1081.loopexit.i.i ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.01305.0.i.i = phi <16 x float> [ %i.aoe, %.preheader1081.loopexit.i.i ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.01068.0.lcssa.i.i = phi i8 [ %i.wk, %.preheader1081.loopexit.i.i ], [ 0, %bb.e ]
  %i.aqf = shufflevector <16 x float> %.sroa.01305.0.i.i, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aqg = fadd <16 x float> %.sroa.01305.0.i.i, %i.aqf ; 2 uses
  %i.aqh = shufflevector <16 x float> %i.aqg, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.aqi = fadd <16 x float> %i.aqg, %i.aqh       ; 2 uses
  %i.aqj = shufflevector <16 x float> %i.aqi, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.aqk = fadd <16 x float> %i.aqi, %i.aqj       ; 2 uses
  %i.aql = shufflevector <16 x float> %.sroa.61307.0.i.i, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aqm = fadd <16 x float> %.sroa.61307.0.i.i, %i.aql ; 2 uses
  %i.aqn = shufflevector <16 x float> %i.aqm, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.aqo = fadd <16 x float> %i.aqm, %i.aqn       ; 2 uses
  %i.aqp = shufflevector <16 x float> %i.aqo, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.aqq = fadd <16 x float> %i.aqo, %i.aqp       ; 2 uses
  %i.aqr = shufflevector <16 x float> %.sroa.9.0.i.i, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aqs = fadd <16 x float> %.sroa.9.0.i.i, %i.aqr ; 2 uses
  %i.aqt = shufflevector <16 x float> %i.aqs, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.aqu = fadd <16 x float> %i.aqs, %i.aqt       ; 2 uses
  %i.aqv = shufflevector <16 x float> %i.aqu, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.aqw = fadd <16 x float> %i.aqu, %i.aqv       ; 2 uses
  %i.aqx = shufflevector <16 x float> %.sroa.121310.0.i.i, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aqy = fadd <16 x float> %.sroa.121310.0.i.i, %i.aqx ; 2 uses
  %i.aqz = shufflevector <16 x float> %i.aqy, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.ara = fadd <16 x float> %i.aqy, %i.aqz       ; 2 uses
  %i.arb = shufflevector <16 x float> %i.ara, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.arc = fadd <16 x float> %i.ara, %i.arb       ; 2 uses
  %i.ard = shufflevector <16 x float> %.sroa.15.0.i.i, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.are = fadd <16 x float> %.sroa.15.0.i.i, %i.ard ; 2 uses
  %i.arf = shufflevector <16 x float> %i.are, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.arg = fadd <16 x float> %i.are, %i.arf       ; 2 uses
  %i.arh = shufflevector <16 x float> %i.arg, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.ari = fadd <16 x float> %i.arg, %i.arh       ; 2 uses
  %i.arj = shufflevector <16 x float> %.sroa.18.0.i.i, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ark = fadd <16 x float> %.sroa.18.0.i.i, %i.arj ; 2 uses
  %i.arl = shufflevector <16 x float> %i.ark, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.arm = fadd <16 x float> %i.ark, %i.arl       ; 2 uses
  %i.arn = shufflevector <16 x float> %i.arm, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.aro = fadd <16 x float> %i.arm, %i.arn       ; 2 uses
  %i.arp = shufflevector <16 x float> %.sroa.21.0.i.i, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.arq = fadd <16 x float> %.sroa.21.0.i.i, %i.arp ; 2 uses
  %i.arr = shufflevector <16 x float> %i.arq, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.ars = fadd <16 x float> %i.arq, %i.arr       ; 2 uses
  %i.art = shufflevector <16 x float> %i.ars, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.aru = fadd <16 x float> %i.ars, %i.art       ; 2 uses
  %i.arv = shufflevector <16 x float> %.sroa.24.0.i.i, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.arw = fadd <16 x float> %.sroa.24.0.i.i, %i.arv ; 2 uses
  %i.arx = shufflevector <16 x float> %i.arw, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.ary = fadd <16 x float> %i.arw, %i.arx       ; 2 uses
  %i.arz = shufflevector <16 x float> %i.ary, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.asa = fadd <16 x float> %i.ary, %i.arz       ; 2 uses
  %i.asb = load <8 x float>, ptr %9, align 4, !tbaa !17, !noalias !141
  %i.asc = shufflevector <16 x float> %i.aqk, <16 x float> %i.aqq, <8 x i32> <i32 0, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.asd = shufflevector <16 x float> %i.aqk, <16 x float> %i.aqq, <8 x i32> <i32 1, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ase = fadd <8 x float> %i.asc, %i.asd
  %i.asf = shufflevector <16 x float> %i.aqw, <16 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %12 = shufflevector <16 x float> %i.aqw, <16 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = fadd <8 x float> %i.asf, %12
  %i.asg = shufflevector <8 x float> %i.ase, <8 x float> %13, <8 x i32> <i32 0, i32 1, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ash = shufflevector <16 x float> %i.arc, <16 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %14 = shufflevector <16 x float> %i.arc, <16 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = fadd <8 x float> %i.ash, %14
  %i.asi = shufflevector <8 x float> %i.asg, <8 x float> %15, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.asj = shufflevector <16 x float> %i.ari, <16 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %16 = shufflevector <16 x float> %i.ari, <16 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %17 = fadd <8 x float> %i.asj, %16
  %i.ask = shufflevector <8 x float> %i.asi, <8 x float> %17, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 poison, i32 poison, i32 poison>
  %i.asl = shufflevector <16 x float> %i.aro, <16 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %18 = shufflevector <16 x float> %i.aro, <16 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %19 = fadd <8 x float> %i.asl, %18
  %i.asm = shufflevector <8 x float> %i.ask, <8 x float> %19, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 poison>
  %i.asn = shufflevector <16 x float> %i.aru, <16 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %20 = shufflevector <16 x float> %i.aru, <16 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = fadd <8 x float> %i.asn, %20
  %i.aso = shufflevector <8 x float> %i.asm, <8 x float> %21, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 poison>
  %i.asp = shufflevector <16 x float> %i.asa, <16 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %22 = shufflevector <16 x float> %i.asa, <16 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = fadd <8 x float> %i.asp, %22
  %i.asq = shufflevector <8 x float> %i.aso, <8 x float> %23, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  %i.asr = fadd <8 x float> %i.asb, %i.asq
  store <8 x float> %i.asr, ptr %9, align 4, !tbaa !17, !noalias !141
  %i.ass = shufflevector <16 x float> %.sroa.27.0.i.i, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ast = fadd <16 x float> %.sroa.27.0.i.i, %i.ass ; 2 uses
  %i.asu = shufflevector <16 x float> %i.ast, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.asv = fadd <16 x float> %i.ast, %i.asu       ; 2 uses
  %i.asw = shufflevector <16 x float> %i.asv, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.asx = fadd <16 x float> %i.asv, %i.asw       ; 2 uses
  %i.asy = shufflevector <16 x float> %i.asx, <16 x float> poison, <16 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.asz = fadd <16 x float> %i.asx, %i.asy
  %.0.vec.extract.i.2.2.i.i = extractelement <16 x float> %i.asz, i64 0
  %i.ata = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.atb = load float, ptr %i.ata, align 4, !tbaa !17, !noalias !141
  %i.atc = fadd float %.0.vec.extract.i.2.2.i.i, %i.atb
  store float %i.atc, ptr %i.ata, align 4, !tbaa !17, !noalias !141
  br label %_ZN3gmxL21settleTemplateWrapperINS_9SimdFloatENS_9SimdFBoolELi16EPKfEEvRKNS_10SettleDataEiiT2_S4_PffS9_bPA3_fPb.exit

bb.f:                                             ; preds = %bb.b
  br i1 %8, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.atd = shufflevector <1 x float> %i.bp, <1 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ate = shufflevector <1 x float> %i.br, <1 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.atf = shufflevector <16 x float> %i.bt, <16 x float> poison, <16 x i32> zeroinitializer
  %i.atg = shufflevector <1 x float> %i.bv, <1 x float> poison, <16 x i32> zeroinitializer
  %i.ath = icmp slt i32 %i.bl, %i.bn
  br i1 %i.ath, label %.lr.ph.i59.i, label %_ZN3gmxL21settleTemplateWrapperINS_9SimdFloatENS_9SimdFBoolELi16EPKfEEvRKNS_10SettleDataEiiT2_S4_PffS9_bPA3_fPb.exit

.lr.ph.i59.i:                                     ; preds = %bb.g
  %i.ati = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.atj = load <1 x float>, ptr %i.ati, align 8
  %i.atk = shufflevector <1 x float> %i.atj, <1 x float> poison, <16 x i32> zeroinitializer
  %i.atl = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.atm = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.atn = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ato = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 3 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 6 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 6 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.att = getelementptr inbounds nuw i8, ptr %i.ao, i64 128
  %i.atu = getelementptr inbounds nuw i8, ptr %i.ao, i64 192
  %i.atv = getelementptr inbounds nuw i8, ptr %i.ao, i64 256
  %i.atw = getelementptr inbounds nuw i8, ptr %i.ao, i64 320
  %i.atx = getelementptr inbounds nuw i8, ptr %i.ao, i64 384
  %i.aty = getelementptr inbounds nuw i8, ptr %i.ao, i64 448
  %i.atz = getelementptr inbounds nuw i8, ptr %i.ao, i64 512
  %i.aua = fmul <16 x float> %i.bt, %i.bt
  %i.aub = shufflevector <16 x float> %i.aua, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.auc = call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.aub, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.aud = fmul <16 x float> %i.aub, %i.auc
  %i.aue = fmul <16 x float> %i.auc, splat (float -5.000000e-01)
  %i.auf = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aud, <16 x float> %i.auc, <16 x float> splat (float -3.000000e+00))
  %i.aug = fmul <16 x float> %i.aue, %i.auf
  %i.auh = bitcast <16 x float> %i.ate to <8 x i64>
  %i.aui = xor <8 x i64> %i.auh, splat (i64 -9223372034707292160)
  %i.auj = bitcast <8 x i64> %i.aui to <16 x float>
  %i.auk = bitcast <16 x float> %i.atk to <8 x i64>
  %i.aul = xor <8 x i64> %i.auk, splat (i64 -9223372034707292160)
  %i.aum = bitcast <8 x i64> %i.aul to <16 x float>
  %i.aun = sext i32 %i.bl to i64
  %i.auo = sext i32 %i.bn to i64
  br label %.preheader90.preheader.i.i

._crit_edge.loopexit.i71.i:                       ; preds = %.preheader90.preheader.i.i
  %i.aup = icmp ne i16 %i.bkp, 0
  %i.auq = zext i1 %i.aup to i8
  br label %_ZN3gmxL21settleTemplateWrapperINS_9SimdFloatENS_9SimdFBoolELi16EPKfEEvRKNS_10SettleDataEiiT2_S4_PffS9_bPA3_fPb.exit

.preheader90.preheader.i.i:                       ; preds = %.preheader90.preheader.i.i, %.lr.ph.i59.i
  %indvars.iv.i60.i = phi i64 [ %i.aun, %.lr.ph.i59.i ], [ %indvars.iv.next.i70.i, %.preheader90.preheader.i.i ] ; 4 uses
  %.sroa.071.0100.i.i = phi i16 [ 0, %.lr.ph.i59.i ], [ %i.bkp, %.preheader90.preheader.i.i ]
  %i.aur = load ptr, ptr %i.atl, align 8, !tbaa !55
  %i.aus = load ptr, ptr %i.atm, align 8, !tbaa !55
  %i.aut = load ptr, ptr %i.atn, align 8, !tbaa !55
  %i.auu = getelementptr inbounds [4 x i8], ptr %i.aur, i64 %indvars.iv.i60.i
  %i.auv = getelementptr inbounds [4 x i8], ptr %i.aus, i64 %indvars.iv.i60.i ; 2 uses
  %i.auw = getelementptr inbounds [4 x i8], ptr %i.aut, i64 %indvars.iv.i60.i ; 2 uses
  %.val79973.i.i = load <16 x i32>, ptr %i.auu, align 64, !tbaa !46
  %i.aux = mul <16 x i32> %.val79973.i.i, splat (i32 3) ; 9 uses
  %i.auy = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ap, <16 x i32> %i.aux, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.auz = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ato, <16 x i32> %i.aux, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ava = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.atp, <16 x i32> %i.aux, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %.val79874.i.i = load <16 x i32>, ptr %i.auv, align 64, !tbaa !46
  %i.avb = mul <16 x i32> %.val79874.i.i, splat (i32 3) ; 6 uses
  %i.avc = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ap, <16 x i32> %i.avb, <16 x i1> splat (i1 true), i32 4)
  %i.avd = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ato, <16 x i32> %i.avb, <16 x i1> splat (i1 true), i32 4)
  %i.ave = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.atp, <16 x i32> %i.avb, <16 x i1> splat (i1 true), i32 4)
  %.val79775.i.i = load <16 x i32>, ptr %i.auw, align 64, !tbaa !46
  %i.avf = mul <16 x i32> %.val79775.i.i, splat (i32 3) ; 6 uses
  %i.avg = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ap, <16 x i32> %i.avf, <16 x i1> splat (i1 true), i32 4)
  %i.avh = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ato, <16 x i32> %i.avf, <16 x i1> splat (i1 true), i32 4)
  %i.avi = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.atp, <16 x i32> %i.avf, <16 x i1> splat (i1 true), i32 4)
  %i.avj = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aq, <16 x i32> %i.aux, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.avk = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.atq, <16 x i32> %i.aux, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.avl = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.atr, <16 x i32> %i.aux, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.avm = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aq, <16 x i32> %i.avb, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.avn = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.atq, <16 x i32> %i.avb, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.avo = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.atr, <16 x i32> %i.avb, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.avp = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aq, <16 x i32> %i.avf, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.avq = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.atq, <16 x i32> %i.avf, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.avr = call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.atr, <16 x i32> %i.avf, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %.val72.i.i.i61.i = load <16 x float>, ptr %i.ao, align 64, !tbaa !46 ; 4 uses
  %.val71.i.i.i62.i = load <16 x float>, ptr %i.ats, align 64, !tbaa !46 ; 4 uses
  %.val70.i.i.i63.i = load <16 x float>, ptr %i.att, align 64, !tbaa !46 ; 4 uses
  %.val69.i.i.i64.i = load <16 x float>, ptr %i.atu, align 64, !tbaa !46 ; 4 uses
  %.val68.i.i.i65.i = load <16 x float>, ptr %i.atv, align 64, !tbaa !46 ; 4 uses
  %.val67.i.i.i66.i = load <16 x float>, ptr %i.atw, align 64, !tbaa !46 ; 4 uses
  %.val66.i.i.i67.i = load <16 x float>, ptr %i.atx, align 64, !tbaa !46 ; 4 uses
  %.val65.i.i.i68.i = load <16 x float>, ptr %i.aty, align 64, !tbaa !46 ; 4 uses
  %.val.i.i.i69.i = load <16 x float>, ptr %i.atz, align 64, !tbaa !46 ; 4 uses
  %i.avs = fsub <16 x float> %i.avm, %i.avj
  %i.avt = fsub <16 x float> %i.avn, %i.avk
  %i.avu = fsub <16 x float> %i.avo, %i.avl       ; 2 uses
  %i.avv = fmul <16 x float> %i.avu, %.val72.i.i.i61.i
  %i.avw = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.avv, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.avx = fmul <16 x float> %.val71.i.i.i62.i, %i.avw
  %i.avy = fsub <16 x float> %i.avs, %i.avx
  %i.avz = fmul <16 x float> %.val70.i.i.i63.i, %i.avw
  %i.awa = fsub <16 x float> %i.avt, %i.avz       ; 2 uses
  %i.awb = fmul <16 x float> %.val69.i.i.i64.i, %i.avw
  %i.awc = fsub <16 x float> %i.avu, %i.awb       ; 2 uses
  %i.awd = fmul <16 x float> %.val68.i.i.i65.i, %i.awa
  %i.awe = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.awd, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.awf = fmul <16 x float> %.val67.i.i.i66.i, %i.awe
  %i.awg = fsub <16 x float> %i.avy, %i.awf       ; 2 uses
  %i.awh = fmul <16 x float> %.val66.i.i.i67.i, %i.awe
  %i.awi = fsub <16 x float> %i.awa, %i.awh       ; 2 uses
  %i.awj = fmul <16 x float> %.val65.i.i.i68.i, %i.awg
  %i.awk = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.awj, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.awl = fmul <16 x float> %.val.i.i.i69.i, %i.awk
  %i.awm = fsub <16 x float> %i.awg, %i.awl       ; 2 uses
  %i.awn = fsub <16 x float> %i.avp, %i.avj
  %i.awo = fsub <16 x float> %i.avq, %i.avk
  %i.awp = fsub <16 x float> %i.avr, %i.avl       ; 2 uses
  %i.awq = fmul <16 x float> %i.awp, %.val72.i.i.i61.i
  %i.awr = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.awq, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.aws = fmul <16 x float> %.val71.i.i.i62.i, %i.awr
  %i.awt = fsub <16 x float> %i.awn, %i.aws
  %i.awu = fmul <16 x float> %.val70.i.i.i63.i, %i.awr
  %i.awv = fsub <16 x float> %i.awo, %i.awu       ; 2 uses
  %i.aww = fmul <16 x float> %.val69.i.i.i64.i, %i.awr
  %i.awx = fsub <16 x float> %i.awp, %i.aww       ; 2 uses
  %i.awy = fmul <16 x float> %.val68.i.i.i65.i, %i.awv
  %i.awz = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.awy, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.axa = fmul <16 x float> %.val67.i.i.i66.i, %i.awz
  %i.axb = fsub <16 x float> %i.awt, %i.axa       ; 2 uses
  %i.axc = fmul <16 x float> %.val66.i.i.i67.i, %i.awz
  %i.axd = fsub <16 x float> %i.awv, %i.axc       ; 2 uses
  %i.axe = fmul <16 x float> %.val65.i.i.i68.i, %i.axb
  %i.axf = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.axe, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.axg = fmul <16 x float> %.val.i.i.i69.i, %i.axf
  %i.axh = fsub <16 x float> %i.axb, %i.axg       ; 2 uses
  %i.axi = fadd <16 x float> %i.awm, %i.axh
  %i.axj = bitcast <16 x float> %i.axi to <8 x i64>
  %i.axk = xor <8 x i64> %i.axj, splat (i64 -9223372034707292160)
  %i.axl = bitcast <8 x i64> %i.axk to <16 x float>
  %i.axm = fmul <16 x float> %i.atd, %i.axl       ; 6 uses
  %i.axn = fadd <16 x float> %i.awi, %i.axd
  %i.axo = bitcast <16 x float> %i.axn to <8 x i64>
  %i.axp = xor <8 x i64> %i.axo, splat (i64 -9223372034707292160)
  %i.axq = bitcast <8 x i64> %i.axp to <16 x float>
  %i.axr = fmul <16 x float> %i.atd, %i.axq       ; 6 uses
  %i.axs = fadd <16 x float> %i.awc, %i.awx
  %i.axt = bitcast <16 x float> %i.axs to <8 x i64>
  %i.axu = xor <8 x i64> %i.axt, splat (i64 -9223372034707292160)
  %i.axv = bitcast <8 x i64> %i.axu to <16 x float>
  %i.axw = fmul <16 x float> %i.atd, %i.axv       ; 6 uses
  %i.axx = fadd <16 x float> %i.awm, %i.axm       ; 4 uses
  %i.axy = fadd <16 x float> %i.awi, %i.axr       ; 4 uses
  %i.axz = fadd <16 x float> %i.awc, %i.axw       ; 4 uses
  %i.aya = fadd <16 x float> %i.axh, %i.axm       ; 4 uses
  %i.ayb = fadd <16 x float> %i.axd, %i.axr       ; 4 uses
  %i.ayc = fadd <16 x float> %i.awx, %i.axw       ; 4 uses
  %i.ayd = fsub <16 x float> %i.avc, %i.auy
  %i.aye = fsub <16 x float> %i.avd, %i.auz
  %i.ayf = fsub <16 x float> %i.ave, %i.ava       ; 2 uses
  %i.ayg = fmul <16 x float> %i.ayf, %.val72.i.i.i61.i
  %i.ayh = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ayg, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ayi = fmul <16 x float> %.val71.i.i.i62.i, %i.ayh
  %i.ayj = fsub <16 x float> %i.ayd, %i.ayi
  %i.ayk = fmul <16 x float> %.val70.i.i.i63.i, %i.ayh
  %i.ayl = fsub <16 x float> %i.aye, %i.ayk       ; 2 uses
  %i.aym = fmul <16 x float> %.val69.i.i.i64.i, %i.ayh
  %i.ayn = fsub <16 x float> %i.ayf, %i.aym       ; 4 uses
  %i.ayo = fmul <16 x float> %.val68.i.i.i65.i, %i.ayl
  %i.ayp = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ayo, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.ayq = fmul <16 x float> %.val67.i.i.i66.i, %i.ayp
  %i.ayr = fsub <16 x float> %i.ayj, %i.ayq       ; 2 uses
  %i.ays = fmul <16 x float> %.val66.i.i.i67.i, %i.ayp
  %i.ayt = fsub <16 x float> %i.ayl, %i.ays       ; 4 uses
  %i.ayu = fmul <16 x float> %.val65.i.i.i68.i, %i.ayr
  %i.ayv = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ayu, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.ayw = fmul <16 x float> %.val.i.i.i69.i, %i.ayv
  %i.ayx = fsub <16 x float> %i.ayr, %i.ayw       ; 4 uses
  %i.ayy = fsub <16 x float> %i.avg, %i.auy
  %i.ayz = fsub <16 x float> %i.avh, %i.auz
  %i.aza = fsub <16 x float> %i.avi, %i.ava       ; 2 uses
  %i.azb = fmul <16 x float> %i.aza, %.val72.i.i.i61.i
  %i.azc = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.azb, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3gmx7csettleERKNS_10SettleDataEiiPK5t_pbcNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEENS6_IS8_EEfSB_bPA3_fPb:bb.a
  %i.bzj = fmul <16 x float> %i.bxc, %i.bzd
  %i.bzk = fmul <16 x float> %i.bxg, %i.byv
  %i.bzl = fsub <16 x float> %i.bzj, %i.bzk       ; 3 uses
  %i.bzm = fmul <16 x float> %i.bxc, %i.byv
  %i.bzn = fmul <16 x float> %i.bxg, %i.bzd
  %i.bzo = fadd <16 x float> %i.bzm, %i.bzn       ; 3 uses
  %i.bzp = bitcast <16 x float> %i.bxc to <8 x i64>
  %i.bzq = xor <8 x i64> %i.bzp, splat (i64 -9223372034707292160)
  %i.bzr = bitcast <8 x i64> %i.bzq to <16 x float> ; 2 uses
  %i.bzs = fmul <16 x float> %i.bzd, %i.bzr
  %i.bzt = fmul <16 x float> %i.bxh, %i.byv
  %i.bzu = fsub <16 x float> %i.bzs, %i.bzt       ; 3 uses
  %i.bzv = fmul <16 x float> %i.byv, %i.bzr
  %i.bzw = fmul <16 x float> %i.bxh, %i.bzd
  %i.bzx = fadd <16 x float> %i.bzv, %i.bzw       ; 3 uses
  %i.bzy = fmul <16 x float> %i.btu, %i.bzh
  %i.bzz = fmul <16 x float> %i.btx, %i.bzi
  %i.caa = fadd <16 x float> %i.bzy, %i.bzz
  %i.cab = fmul <16 x float> %i.bua, %i.bwf
  %i.cac = fadd <16 x float> %i.cab, %i.caa
  %i.cad = fmul <16 x float> %i.btv, %i.bzh
  %i.cae = fmul <16 x float> %i.bty, %i.bzi
  %i.caf = fadd <16 x float> %i.cad, %i.cae
  %i.cag = fmul <16 x float> %i.bub, %i.bwf
  %i.cah = fadd <16 x float> %i.cag, %i.caf
  %i.cai = fmul <16 x float> %i.btw, %i.bzh
  %i.caj = fmul <16 x float> %i.btz, %i.bzi
  %i.cak = fadd <16 x float> %i.cai, %i.caj
  %i.cal = fmul <16 x float> %i.buc, %i.bwf
  %i.cam = fadd <16 x float> %i.cal, %i.cak
  %i.can = fmul <16 x float> %i.btu, %i.bzl
  %i.cao = fmul <16 x float> %i.btx, %i.bzo
  %i.cap = fadd <16 x float> %i.can, %i.cao
  %i.caq = fmul <16 x float> %i.bua, %i.bvv
  %i.car = fadd <16 x float> %i.caq, %i.cap
  %i.cas = fmul <16 x float> %i.btv, %i.bzl
  %i.cat = fmul <16 x float> %i.bty, %i.bzo
  %i.cau = fadd <16 x float> %i.cas, %i.cat
  %i.cav = fmul <16 x float> %i.bub, %i.bvv
  %i.caw = fadd <16 x float> %i.cav, %i.cau
  %i.cax = fmul <16 x float> %i.btw, %i.bzl
  %i.cay = fmul <16 x float> %i.btz, %i.bzo
  %i.caz = fadd <16 x float> %i.cax, %i.cay
  %i.cba = fmul <16 x float> %i.buc, %i.bvv
  %i.cbb = fadd <16 x float> %i.cba, %i.caz
  %i.cbc = fmul <16 x float> %i.btu, %i.bzu
  %i.cbd = fmul <16 x float> %i.btx, %i.bzx
  %i.cbe = fadd <16 x float> %i.cbc, %i.cbd
  %i.cbf = fmul <16 x float> %i.bua, %i.bwa
  %i.cbg = fadd <16 x float> %i.cbf, %i.cbe
  %i.cbh = fmul <16 x float> %i.btv, %i.bzu
  %i.cbi = fmul <16 x float> %i.bty, %i.bzx
  %i.cbj = fadd <16 x float> %i.cbh, %i.cbi
  %i.cbk = fmul <16 x float> %i.bub, %i.bwa
  %i.cbl = fadd <16 x float> %i.cbk, %i.cbj
  %i.cbm = fmul <16 x float> %i.btw, %i.bzu
  %i.cbn = fmul <16 x float> %i.btz, %i.bzx
  %i.cbo = fadd <16 x float> %i.cbm, %i.cbn
  %i.cbp = fmul <16 x float> %i.buc, %i.bwa
  %i.cbq = fadd <16 x float> %i.cbp, %i.cbo
  %i.cbr = fsub <16 x float> %i.cac, %i.bqy       ; 2 uses
  %i.cbs = fadd <16 x float> %i.bnf, %i.cbr
  %i.cbt = fsub <16 x float> %i.cah, %i.brd       ; 2 uses
  %i.cbu = fadd <16 x float> %i.bng, %i.cbt
  %i.cbv = fsub <16 x float> %i.cam, %i.bri       ; 2 uses
  %i.cbw = fadd <16 x float> %i.bnh, %i.cbv
  %i.cbx = fsub <16 x float> %i.car, %i.brj       ; 2 uses
  %i.cby = fadd <16 x float> %i.bni, %i.cbx
  %i.cbz = fsub <16 x float> %i.caw, %i.brk       ; 2 uses
  %i.cca = fadd <16 x float> %i.bnj, %i.cbz
  %i.ccb = fsub <16 x float> %i.cbb, %i.brl       ; 2 uses
  %i.ccc = fadd <16 x float> %i.bnk, %i.ccb
  %i.ccd = fsub <16 x float> %i.cbg, %i.brm       ; 2 uses
  %i.cce = fadd <16 x float> %i.bnl, %i.ccd
  %i.ccf = fsub <16 x float> %i.cbl, %i.brn       ; 2 uses
  %i.ccg = fadd <16 x float> %i.bnm, %i.ccf
  %i.cch = fsub <16 x float> %i.cbq, %i.bro       ; 2 uses
  %i.cci = fadd <16 x float> %i.bnn, %i.cch
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr %i.aq, <16 x i1> splat (i1 true), <16 x i32> %i.bmt, <16 x float> %i.cbs, i32 4)
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.bll, <16 x i1> splat (i1 true), <16 x i32> %i.bmt, <16 x float> %i.cbu, i32 4)
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.blm, <16 x i1> splat (i1 true), <16 x i32> %i.bmt, <16 x float> %i.cbw, i32 4)
  %.val89858.i.i = load <16 x i32>, ptr %i.bmr, align 64, !tbaa !46
  %i.ccj = mul <16 x i32> %.val89858.i.i, splat (i32 3) ; 3 uses
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr %i.aq, <16 x i1> splat (i1 true), <16 x i32> %i.ccj, <16 x float> %i.cby, i32 4)
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.bll, <16 x i1> splat (i1 true), <16 x i32> %i.ccj, <16 x float> %i.cca, i32 4)
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.blm, <16 x i1> splat (i1 true), <16 x i32> %i.ccj, <16 x float> %i.ccc, i32 4)
  %.val89759.i.i = load <16 x i32>, ptr %i.bms, align 64, !tbaa !46
  %i.cck = mul <16 x i32> %.val89759.i.i, splat (i32 3) ; 3 uses
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr %i.aq, <16 x i1> splat (i1 true), <16 x i32> %i.cck, <16 x float> %i.cce, i32 4)
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.bll, <16 x i1> splat (i1 true), <16 x i32> %i.cck, <16 x float> %i.ccg, i32 4)
  call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.blm, <16 x i1> splat (i1 true), <16 x i32> %i.cck, <16 x float> %i.cci, i32 4)
  %i.ccl = load ptr, ptr %i.bmi, align 8, !tbaa !54
  %i.ccm = getelementptr inbounds [4 x i8], ptr %i.ccl, i64 %indvars.iv.i92.i
  %.val896.i.i = load <16 x float>, ptr %i.ccm, align 64, !tbaa !46 ; 2 uses
  %i.ccn = fmul <16 x float> %i.bla, %.val896.i.i ; 3 uses
  %i.cco = fmul <16 x float> %i.blb, %.val896.i.i ; 6 uses
  %i.ccp = fmul <16 x float> %i.cco, %i.cbx       ; 4 uses
  %i.ccq = fmul <16 x float> %i.cco, %i.ccd       ; 4 uses
  %i.ccr = fmul <16 x float> %i.ccn, %i.cbr
  %i.ccs = fadd <16 x float> %i.ccr, %i.ccp
  %i.cct = fadd <16 x float> %i.ccq, %i.ccs       ; 3 uses
  %i.ccu = fmul <16 x float> %i.cco, %i.cbz       ; 4 uses
  %i.ccv = fmul <16 x float> %i.cco, %i.ccf       ; 4 uses
  %i.ccw = fmul <16 x float> %i.ccn, %i.cbt
  %i.ccx = fadd <16 x float> %i.ccw, %i.ccu
  %i.ccy = fadd <16 x float> %i.ccv, %i.ccx       ; 3 uses
  %i.ccz = fmul <16 x float> %i.cco, %i.ccb       ; 4 uses
  %i.cda = fmul <16 x float> %i.cco, %i.cch       ; 4 uses
  %i.cdb = fmul <16 x float> %i.ccn, %i.cbv
  %i.cdc = fadd <16 x float> %i.cdb, %i.ccz
  %i.cdd = fadd <16 x float> %i.cda, %i.cdc       ; 3 uses
  %i.cde = fmul <16 x float> %i.bmu, %i.cct
  %i.cdf = fmul <16 x float> %i.boi, %i.ccp
  %i.cdg = fadd <16 x float> %i.cdf, %i.cde
  %i.cdh = fmul <16 x float> %i.bpd, %i.ccq
  %i.cdi = fadd <16 x float> %i.cdh, %i.cdg
  %i.cdj = fsub <16 x float> %.sroa.0249.1.i.i, %i.cdi ; 2 uses
  %i.cdk = fmul <16 x float> %i.bmu, %i.ccy
  %i.cdl = fmul <16 x float> %i.boi, %i.ccu
  %i.cdm = fadd <16 x float> %i.cdl, %i.cdk
  %i.cdn = fmul <16 x float> %i.bpd, %i.ccv
  %i.cdo = fadd <16 x float> %i.cdn, %i.cdm
  %i.cdp = fsub <16 x float> %.sroa.6251.1.i.i, %i.cdo ; 2 uses
  %i.cdq = fmul <16 x float> %i.bmu, %i.cdd
  %i.cdr = fmul <16 x float> %i.boi, %i.ccz
  %i.cds = fadd <16 x float> %i.cdr, %i.cdq
  %i.cdt = fmul <16 x float> %i.bpd, %i.cda
  %i.cdu = fadd <16 x float> %i.cdt, %i.cds
  %i.cdv = fsub <16 x float> %.sroa.9.1.i91.i, %i.cdu ; 2 uses
  %i.cdw = fmul <16 x float> %i.bmv, %i.cct
  %i.cdx = fmul <16 x float> %i.boe, %i.ccp
  %i.cdy = fadd <16 x float> %i.cdx, %i.cdw
  %i.cdz = fmul <16 x float> %i.boz, %i.ccq
  %i.cea = fadd <16 x float> %i.cdz, %i.cdy
  %i.ceb = fsub <16 x float> %.sroa.12254.1.i.i, %i.cea ; 2 uses
  %i.cec = fmul <16 x float> %i.bmv, %i.ccy
  %i.ced = fmul <16 x float> %i.boe, %i.ccu
  %i.cee = fadd <16 x float> %i.ced, %i.cec
  %i.cef = fmul <16 x float> %i.boz, %i.ccv
  %i.ceg = fadd <16 x float> %i.cef, %i.cee
  %i.ceh = fsub <16 x float> %.sroa.15.1.i90.i, %i.ceg ; 2 uses
  %i.cei = fmul <16 x float> %i.bmv, %i.cdd
  %i.cej = fmul <16 x float> %i.boe, %i.ccz
  %i.cek = fadd <16 x float> %i.cej, %i.cei
  %i.cel = fmul <16 x float> %i.boz, %i.cda
  %i.cem = fadd <16 x float> %i.cel, %i.cek
  %i.cen = fsub <16 x float> %.sroa.18.1.i89.i, %i.cem ; 2 uses
  %i.ceo = fmul <16 x float> %i.bmw, %i.cct
  %i.cep = fmul <16 x float> %i.bny, %i.ccp
  %i.ceq = fadd <16 x float> %i.cep, %i.ceo
  %i.cer = fmul <16 x float> %i.bot, %i.ccq
  %i.ces = fadd <16 x float> %i.cer, %i.ceq
  %i.cet = fsub <16 x float> %.sroa.21.1.i88.i, %i.ces ; 2 uses
  %i.ceu = fmul <16 x float> %i.bmw, %i.ccy
  %i.cev = fmul <16 x float> %i.bny, %i.ccu
  %i.cew = fadd <16 x float> %i.cev, %i.ceu
  %i.cex = fmul <16 x float> %i.bot, %i.ccv
  %i.cey = fadd <16 x float> %i.cex, %i.cew
  %i.cez = fsub <16 x float> %.sroa.24.1.i87.i, %i.cey ; 2 uses
  %i.cfa = fmul <16 x float> %i.bmw, %i.cdd
  %i.cfb = fmul <16 x float> %i.bny, %i.ccz
  %i.cfc = fadd <16 x float> %i.cfb, %i.cfa
  %i.cfd = fmul <16 x float> %i.bot, %i.cda
  %i.cfe = fadd <16 x float> %i.cfd, %i.cfc
  %i.cff = fsub <16 x float> %.sroa.27.1.i86.i, %i.cfe ; 2 uses
  %i.cfg = fcmp ole <16 x float> %i.bwi, splat (float f0x2B8CBCCC)
  %i.cfh = bitcast <16 x i1> %i.cfg to i16
  %i.cfi = or i16 %.sroa.052.091.i.i, %i.cfh      ; 2 uses
  %indvars.iv.next.i102.i = add nsw i64 %indvars.iv.i92.i, 16 ; 2 uses
  %i.cfj = icmp slt i64 %indvars.iv.next.i102.i, %i.bmk
  br i1 %i.cfj, label %.preheader74.preheader.i.i, label %.preheader60.loopexit.i.i, !llvm.loop !124

_ZN3gmxL14settleTemplateINS_9SimdFloatENS_9SimdFBoolELi16EPKfLb0ELb1EEEvRKNS_10SettleDataEiiT2_S4_PffS9_PA3_fPb.exit.i: ; preds = %.preheader60.loopexit.i.i, %bb.h
  %.sroa.27.0.i72.i = phi <16 x float> [ %i.cff, %.preheader60.loopexit.i.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %.sroa.24.0.i73.i = phi <16 x float> [ %i.cez, %.preheader60.loopexit.i.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %.sroa.21.0.i74.i = phi <16 x float> [ %i.cet, %.preheader60.loopexit.i.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %.sroa.18.0.i75.i = phi <16 x float> [ %i.cen, %.preheader60.loopexit.i.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %.sroa.15.0.i76.i = phi <16 x float> [ %i.ceh, %.preheader60.loopexit.i.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %.sroa.12254.0.i.i = phi <16 x float> [ %i.ceb, %.preheader60.loopexit.i.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %.sroa.9.0.i77.i = phi <16 x float> [ %i.cdv, %.preheader60.loopexit.i.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %.sroa.6251.0.i.i = phi <16 x float> [ %i.cdp, %.preheader60.loopexit.i.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %.sroa.0249.0.i.i = phi <16 x float> [ %i.cdj, %.preheader60.loopexit.i.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %.sroa.052.0.lcssa.i.i = phi i8 [ %i.bmm, %.preheader60.loopexit.i.i ], [ 0, %bb.h ]
  %i.cfk = shufflevector <16 x float> %.sroa.0249.0.i.i, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cfl = fadd <16 x float> %.sroa.0249.0.i.i, %i.cfk ; 2 uses
  %i.cfm = shufflevector <16 x float> %i.cfl, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.cfn = fadd <16 x float> %i.cfl, %i.cfm       ; 2 uses
  %i.cfo = shufflevector <16 x float> %i.cfn, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.cfp = fadd <16 x float> %i.cfn, %i.cfo       ; 2 uses
  %i.cfq = shufflevector <16 x float> %.sroa.6251.0.i.i, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cfr = fadd <16 x float> %.sroa.6251.0.i.i, %i.cfq ; 2 uses
  %i.cfs = shufflevector <16 x float> %i.cfr, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.cft = fadd <16 x float> %i.cfr, %i.cfs       ; 2 uses
  %i.cfu = shufflevector <16 x float> %i.cft, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.cfv = fadd <16 x float> %i.cft, %i.cfu       ; 2 uses
  %i.cfw = shufflevector <16 x float> %.sroa.9.0.i77.i, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cfx = fadd <16 x float> %.sroa.9.0.i77.i, %i.cfw ; 2 uses
  %i.cfy = shufflevector <16 x float> %i.cfx, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.cfz = fadd <16 x float> %i.cfx, %i.cfy       ; 2 uses
  %i.cga = shufflevector <16 x float> %i.cfz, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.cgb = fadd <16 x float> %i.cfz, %i.cga       ; 2 uses
  %i.cgc = shufflevector <16 x float> %.sroa.12254.0.i.i, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cgd = fadd <16 x float> %.sroa.12254.0.i.i, %i.cgc ; 2 uses
  %i.cge = shufflevector <16 x float> %i.cgd, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.cgf = fadd <16 x float> %i.cgd, %i.cge       ; 2 uses
  %i.cgg = shufflevector <16 x float> %i.cgf, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.cgh = fadd <16 x float> %i.cgf, %i.cgg       ; 2 uses
  %i.cgi = shufflevector <16 x float> %.sroa.15.0.i76.i, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cgj = fadd <16 x float> %.sroa.15.0.i76.i, %i.cgi ; 2 uses
  %i.cgk = shufflevector <16 x float> %i.cgj, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.cgl = fadd <16 x float> %i.cgj, %i.cgk       ; 2 uses
  %i.cgm = shufflevector <16 x float> %i.cgl, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.cgn = fadd <16 x float> %i.cgl, %i.cgm       ; 2 uses
  %i.cgo = shufflevector <16 x float> %.sroa.18.0.i75.i, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cgp = fadd <16 x float> %.sroa.18.0.i75.i, %i.cgo ; 2 uses
  %i.cgq = shufflevector <16 x float> %i.cgp, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.cgr = fadd <16 x float> %i.cgp, %i.cgq       ; 2 uses
  %i.cgs = shufflevector <16 x float> %i.cgr, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.cgt = fadd <16 x float> %i.cgr, %i.cgs       ; 2 uses
  %i.cgu = shufflevector <16 x float> %.sroa.21.0.i74.i, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cgv = fadd <16 x float> %.sroa.21.0.i74.i, %i.cgu ; 2 uses
  %i.cgw = shufflevector <16 x float> %i.cgv, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.cgx = fadd <16 x float> %i.cgv, %i.cgw       ; 2 uses
  %i.cgy = shufflevector <16 x float> %i.cgx, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.cgz = fadd <16 x float> %i.cgx, %i.cgy       ; 2 uses
  %i.cha = shufflevector <16 x float> %.sroa.24.0.i73.i, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.chb = fadd <16 x float> %.sroa.24.0.i73.i, %i.cha ; 2 uses
  %i.chc = shufflevector <16 x float> %i.chb, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.chd = fadd <16 x float> %i.chb, %i.chc       ; 2 uses
  %i.che = shufflevector <16 x float> %i.chd, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.chf = fadd <16 x float> %i.chd, %i.che       ; 2 uses
  %i.chg = load <8 x float>, ptr %9, align 4, !tbaa !17
  %i.chh = shufflevector <16 x float> %i.cfp, <16 x float> %i.cfv, <8 x i32> <i32 0, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.chi = shufflevector <16 x float> %i.cfp, <16 x float> %i.cfv, <8 x i32> <i32 1, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.chj = fadd <8 x float> %i.chh, %i.chi
  %i.chk = shufflevector <16 x float> %i.cgb, <16 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %24 = shufflevector <16 x float> %i.cgb, <16 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %25 = fadd <8 x float> %i.chk, %24
  %i.chl = shufflevector <8 x float> %i.chj, <8 x float> %25, <8 x i32> <i32 0, i32 1, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.chm = shufflevector <16 x float> %i.cgh, <16 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %26 = shufflevector <16 x float> %i.cgh, <16 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %27 = fadd <8 x float> %i.chm, %26
  %i.chn = shufflevector <8 x float> %i.chl, <8 x float> %27, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cho = shufflevector <16 x float> %i.cgn, <16 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %28 = shufflevector <16 x float> %i.cgn, <16 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %29 = fadd <8 x float> %i.cho, %28
  %i.chp = shufflevector <8 x float> %i.chn, <8 x float> %29, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 poison, i32 poison, i32 poison>
  %i.chq = shufflevector <16 x float> %i.cgt, <16 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %30 = shufflevector <16 x float> %i.cgt, <16 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %31 = fadd <8 x float> %i.chq, %30
  %i.chr = shufflevector <8 x float> %i.chp, <8 x float> %31, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 poison>
  %i.chs = shufflevector <16 x float> %i.cgz, <16 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %32 = shufflevector <16 x float> %i.cgz, <16 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %33 = fadd <8 x float> %i.chs, %32
  %i.cht = shufflevector <8 x float> %i.chr, <8 x float> %33, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 poison>
  %i.chu = shufflevector <16 x float> %i.chf, <16 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %34 = shufflevector <16 x float> %i.chf, <16 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %35 = fadd <8 x float> %i.chu, %34
  %i.chv = shufflevector <8 x float> %i.cht, <8 x float> %35, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  %i.chw = fadd <8 x float> %i.chg, %i.chv
  store <8 x float> %i.chw, ptr %9, align 4, !tbaa !17
  %i.chx = shufflevector <16 x float> %.sroa.27.0.i72.i, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.chy = fadd <16 x float> %.sroa.27.0.i72.i, %i.chx ; 2 uses
  %i.chz = shufflevector <16 x float> %i.chy, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.cia = fadd <16 x float> %i.chy, %i.chz       ; 2 uses
  %i.cib = shufflevector <16 x float> %i.cia, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.cic = fadd <16 x float> %i.cia, %i.cib       ; 2 uses
  %i.cid = shufflevector <16 x float> %i.cic, <16 x float> poison, <16 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cie = fadd <16 x float> %i.cic, %i.cid
  %.0.vec.extract.i.2.2.i84.i = extractelement <16 x float> %i.cie, i64 0
  %i.cif = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.cig = load float, ptr %i.cif, align 4, !tbaa !17
  %i.cih = fadd float %.0.vec.extract.i.2.2.i84.i, %i.cig
  store float %i.cih, ptr %i.cif, align 4, !tbaa !17
  br label %_ZN3gmxL21settleTemplateWrapperINS_9SimdFloatENS_9SimdFBoolELi16EPKfEEvRKNS_10SettleDataEiiT2_S4_PffS9_bPA3_fPb.exit

_ZN3gmxL21settleTemplateWrapperINS_9SimdFloatENS_9SimdFBoolELi16EPKfEEvRKNS_10SettleDataEiiT2_S4_PffS9_bPA3_fPb.exit: ; preds = %bb.d, %._crit_edge.loopexit.i.i, %_ZN3gmxL14settleTemplateINS_9SimdFloatENS_9SimdFBoolELi16EPKfLb1ELb1EEEvRKNS_10SettleDataEiiT2_S4_PffS9_PA3_fPb.exit.i, %bb.g, %._crit_edge.loopexit.i71.i, %_ZN3gmxL14settleTemplateINS_9SimdFloatENS_9SimdFBoolELi16EPKfLb0ELb1EEEvRKNS_10SettleDataEiiT2_S4_PffS9_PA3_fPb.exit.i
  %.sroa.071.0.lcssa.i.sink.i = phi i8 [ %i.dn, %._crit_edge.loopexit.i.i ], [ %.sroa.052.0.lcssa.i.i, %_ZN3gmxL14settleTemplateINS_9SimdFloatENS_9SimdFBoolELi16EPKfLb0ELb1EEEvRKNS_10SettleDataEiiT2_S4_PffS9_PA3_fPb.exit.i ], [ %.sroa.01068.0.lcssa.i.i, %_ZN3gmxL14settleTemplateINS_9SimdFloatENS_9SimdFBoolELi16EPKfLb1ELb1EEEvRKNS_10SettleDataEiiT2_S4_PffS9_PA3_fPb.exit.i ], [ 0, %bb.d ], [ 0, %bb.g ], [ %i.auq, %._crit_edge.loopexit.i71.i ]
  store i8 %.sroa.071.0.lcssa.i.sink.i, ptr %10, align 1, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #18
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %11, i32 noundef 1, ptr noundef null)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0 = phi ptr [ %11, %bb.j ], [ %3, %bb.i ]     ; 16 uses
  %i.cii = getelementptr inbounds nuw i8, ptr %0, i64 176
  %36 = load <1 x i32>, ptr %i.cii, align 8
  %i.cij = add i32 %1, -1
  %i.cik = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.cil = shufflevector <2 x i32> %i.cik, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cim = add nsw <2 x i32> %i.cil, <i32 0, i32 1>
  %i.cin = shufflevector <1 x i32> %36, <1 x i32> poison, <2 x i32> zeroinitializer
  %i.cio = mul nsw <2 x i32> %i.cin, %i.cim
  %i.cip = insertelement <2 x i32> poison, i32 %i.cij, i64 0
  %i.ciq = shufflevector <2 x i32> %i.cip, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cir = add <2 x i32> %i.cio, %i.ciq
  %i.cis = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.cit = shufflevector <2 x i32> %i.cis, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ciu = sdiv <2 x i32> %i.cir, %i.cit          ; 2 uses
  %i.civ = extractelement <2 x i32> %i.ciu, i64 1 ; 8 uses
  %i.ciw = extractelement <2 x i32> %i.ciu, i64 0 ; 8 uses
  %.not.i29 = icmp eq ptr %i.ar, null
  %i.cix = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %.not.i29, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ciy = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ciz = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.cja = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %8, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.cjb = load float, ptr %i.cix, align 8, !tbaa !13, !noalias !143 ; 2 uses
  %i.cjc = load float, ptr %i.ciy, align 4, !tbaa !16, !noalias !143 ; 2 uses
  %i.cjd = load float, ptr %i.ciz, align 4, !tbaa !22, !noalias !143 ; 3 uses
  %i.cje = load float, ptr %i.cja, align 8, !tbaa !18, !noalias !143
  %i.cjf = icmp slt i32 %i.ciw, %i.civ
  br i1 %i.cjf, label %.lr.ph.i.i30, label %_ZN3gmxL21settleTemplateWrapperIfbLi1EPK5t_pbcEEvRKNS_10SettleDataEiiT2_PKfPffSA_bPA3_fPb.exit

.lr.ph.i.i30:                                     ; preds = %bb.m
  %i.cjg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cjh = load float, ptr %i.cjg, align 8, !tbaa !23, !noalias !143
  %i.cji = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cjj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cjk = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cjl = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.cjm = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.cjn = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.cjo = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.cjq = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.cjr = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.cjs = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 3 uses
  %i.cju = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.cjv = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 3 uses
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cjy = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.cjz = fmul float %i.cjd, %i.cjd
  %sqrt4.i.i = call float @llvm.sqrt.f32(float %i.cjz)
  %i.cka = fdiv float 1.000000e+00, %sqrt4.i.i
  %i.ckb = fneg float %i.cjc
  %i.ckc = fneg float %i.cjh
  %i.ckd = sext i32 %i.ciw to i64
  %i.cke = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ckg = insertelement <2 x float> poison, float %6, i64 0
  %i.ckh = shufflevector <2 x float> %i.ckg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cki = insertelement <2 x float> poison, float %i.cjb, i64 0
  %i.ckj = shufflevector <2 x float> %i.cki, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader5.preheader.i.i

._crit_edge.loopexit.i.i33:                       ; preds = %.preheader5.preheader.i.i
  %i.ckk = zext i1 %i.cxh to i8
  br label %_ZN3gmxL21settleTemplateWrapperIfbLi1EPK5t_pbcEEvRKNS_10SettleDataEiiT2_PKfPffSA_bPA3_fPb.exit

.preheader5.preheader.i.i:                        ; preds = %.preheader5.preheader.i.i, %.lr.ph.i.i30
  %indvars.iv.i.i31 = phi i64 [ %i.ckd, %.lr.ph.i.i30 ], [ %indvars.iv.next.i.i32, %.preheader5.preheader.i.i ] ; 4 uses
  %.029717.i.i = phi i1 [ false, %.lr.ph.i.i30 ], [ %i.cxh, %.preheader5.preheader.i.i ]
  %i.ckl = load ptr, ptr %i.cji, align 8, !tbaa !55, !noalias !143
  %i.ckm = getelementptr inbounds [4 x i8], ptr %i.ckl, i64 %indvars.iv.i.i31 ; 3 uses
  %i.ckn = load ptr, ptr %i.cjj, align 8, !tbaa !55, !noalias !143
  %i.cko = getelementptr inbounds [4 x i8], ptr %i.ckn, i64 %indvars.iv.i.i31 ; 3 uses
  %i.ckp = load ptr, ptr %i.cjk, align 8, !tbaa !55, !noalias !143
  %i.ckq = getelementptr inbounds [4 x i8], ptr %i.ckp, i64 %indvars.iv.i.i31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #18, !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #18, !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #18, !noalias !143
  %.val305.i.i = load i32, ptr %i.ckm, align 4, !tbaa !43, !noalias !143
  %i.ckr = mul nsw i32 %.val305.i.i, 3
  %i.cks = sext i32 %i.ckr to i64
  %i.ckt = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.cks ; 3 uses
  %i.cku = load float, ptr %i.ckt, align 4, !tbaa !17, !noalias !143
  store float %i.cku, ptr %i.ae, align 4, !tbaa !17, !noalias !143
  %i.ckv = getelementptr i8, ptr %i.ckt, i64 4
  %i.ckw = load float, ptr %i.ckv, align 4, !tbaa !17, !noalias !143
  store float %i.ckw, ptr %i.cjl, align 4, !tbaa !17, !noalias !143
  %i.ckx = getelementptr i8, ptr %i.ckt, i64 8
  %i.cky = load float, ptr %i.ckx, align 4, !tbaa !17, !noalias !143
  store float %i.cky, ptr %i.cjm, align 4, !tbaa !17, !noalias !143
  %.val304.i.i = load i32, ptr %i.cko, align 4, !tbaa !43, !noalias !143
  %i.ckz = mul nsw i32 %.val304.i.i, 3
  %i.cla = sext i32 %i.ckz to i64
  %i.clb = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.cla ; 3 uses
  %i.clc = load float, ptr %i.clb, align 4, !tbaa !17, !noalias !143
  store float %i.clc, ptr %i.af, align 4, !tbaa !17, !noalias !143
  %i.cld = getelementptr i8, ptr %i.clb, i64 4
  %i.cle = load float, ptr %i.cld, align 4, !tbaa !17, !noalias !143
  store float %i.cle, ptr %i.cjn, align 4, !tbaa !17, !noalias !143
  %i.clf = getelementptr i8, ptr %i.clb, i64 8
  %i.clg = load float, ptr %i.clf, align 4, !tbaa !17, !noalias !143
  store float %i.clg, ptr %i.cjo, align 4, !tbaa !17, !noalias !143
  %.val303.i.i = load i32, ptr %i.ckq, align 4, !tbaa !43, !noalias !143
  %i.clh = mul nsw i32 %.val303.i.i, 3
  %i.cli = sext i32 %i.clh to i64
  %i.clj = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.cli ; 3 uses
  %i.clk = load float, ptr %i.clj, align 4, !tbaa !17, !noalias !143
  store float %i.clk, ptr %i.ag, align 4, !tbaa !17, !noalias !143
  %i.cll = getelementptr i8, ptr %i.clj, i64 4
  %i.clm = load float, ptr %i.cll, align 4, !tbaa !17, !noalias !143
  store float %i.clm, ptr %i.cjp, align 4, !tbaa !17, !noalias !143
  %i.cln = getelementptr i8, ptr %i.clj, i64 8
  %i.clo = load float, ptr %i.cln, align 4, !tbaa !17, !noalias !143
  store float %i.clo, ptr %i.cjq, align 4, !tbaa !17, !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #18, !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #18, !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #18, !noalias !143
  %.val302.i.i = load i32, ptr %i.ckm, align 4, !tbaa !43, !noalias !143
  %i.clp = mul nsw i32 %.val302.i.i, 3
  %i.clq = sext i32 %i.clp to i64
  %i.clr = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.clq ; 3 uses
  %i.cls = load float, ptr %i.clr, align 4, !tbaa !17, !noalias !143
  store float %i.cls, ptr %i.ah, align 8, !tbaa !17, !noalias !143
  %i.clt = getelementptr i8, ptr %i.clr, i64 4
  %i.clu = load float, ptr %i.clt, align 4, !tbaa !17, !noalias !143
  store float %i.clu, ptr %i.cjr, align 4, !tbaa !17, !noalias !143
  %i.clv = getelementptr i8, ptr %i.clr, i64 8
  %i.clw = load float, ptr %i.clv, align 4, !tbaa !17, !noalias !143
  store float %i.clw, ptr %i.cjs, align 8, !tbaa !17, !noalias !143
  %.val301.i.i = load i32, ptr %i.cko, align 4, !tbaa !43, !noalias !143
  %i.clx = mul nsw i32 %.val301.i.i, 3
  %i.cly = sext i32 %i.clx to i64
  %i.clz = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.cly ; 3 uses
  %i.cma = load float, ptr %i.clz, align 4, !tbaa !17, !noalias !143
  store float %i.cma, ptr %i.ai, align 4, !tbaa !17, !noalias !143
  %i.cmb = getelementptr i8, ptr %i.clz, i64 4
  %i.cmc = load float, ptr %i.cmb, align 4, !tbaa !17, !noalias !143
  store float %i.cmc, ptr %i.cjt, align 4, !tbaa !17, !noalias !143
  %i.cmd = getelementptr i8, ptr %i.clz, i64 8
  %i.cme = load float, ptr %i.cmd, align 4, !tbaa !17, !noalias !143
  store float %i.cme, ptr %i.cju, align 4, !tbaa !17, !noalias !143
  %.val300.i.i = load i32, ptr %i.ckq, align 4, !tbaa !43, !noalias !143
  %i.cmf = mul nsw i32 %.val300.i.i, 3
  %i.cmg = sext i32 %i.cmf to i64
  %i.cmh = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.cmg ; 3 uses
  %i.cmi = load float, ptr %i.cmh, align 4, !tbaa !17, !noalias !143
  store float %i.cmi, ptr %i.aj, align 4, !tbaa !17, !noalias !143
  %i.cmj = getelementptr i8, ptr %i.cmh, i64 4
  %i.cmk = load float, ptr %i.cmj, align 4, !tbaa !17, !noalias !143
  store float %i.cmk, ptr %i.cjv, align 4, !tbaa !17, !noalias !143
  %i.cml = getelementptr i8, ptr %i.cmh, i64 8
  %i.cmm = load float, ptr %i.cml, align 4, !tbaa !17, !noalias !143
  store float %i.cmm, ptr %i.cjw, align 4, !tbaa !17, !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #18, !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #18, !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #18, !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #18, !noalias !143
  %i.cmn = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %.0, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ak), !noalias !143 ; 0 uses
  %i.cmo = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %.0, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.al), !noalias !143 ; 0 uses
  %i.cmp = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %.0, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.am), !noalias !143 ; 0 uses
  %i.cmq = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %.0, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.an), !noalias !143 ; 0 uses
  %i.cmr = load float, ptr %i.am, align 4, !tbaa !17, !noalias !143 ; 2 uses
  %i.cms = load float, ptr %i.an, align 4, !tbaa !17, !noalias !143 ; 2 uses
  %i.cmt = load <2 x float>, ptr %i.ckf, align 4, !tbaa !17, !noalias !143 ; 2 uses
  %i.cmu = load float, ptr %i.cjx, align 8, !tbaa !17, !noalias !143 ; 4 uses
  %i.cmv = load float, ptr %i.cjy, align 8, !tbaa !17, !noalias !143 ; 4 uses
  %i.cmw = load <2 x float>, ptr %i.al, align 8, !tbaa !17, !noalias !143 ; 4 uses
  %i.cmx = extractelement <2 x float> %i.cmw, i64 1 ; 3 uses
  %i.cmy = fneg float %i.cmx
  %i.cmz = fmul float %i.cmv, %i.cmy
  %i.cna = load <2 x float>, ptr %i.ak, align 8, !tbaa !17, !noalias !143 ; 4 uses
  %i.cnb = extractelement <2 x float> %i.cna, i64 1 ; 3 uses
  %i.cnc = shufflevector <2 x float> %i.cmw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cnd = insertelement <2 x float> %i.cnc, float %i.cmu, i64 0
  %i.cne = fneg <2 x float> %i.cnd
  %i.cnf = fmul <2 x float> %i.cna, %i.cne
  %i.cng = shufflevector <2 x float> %i.cna, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cnh = insertelement <2 x float> %i.cng, float %i.cmv, i64 0
  %i.cni = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cnh, <2 x float> %i.cmw, <2 x float> %i.cnf) ; 5 uses
  %i.cnj = extractelement <2 x float> %i.cni, i64 0 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.cni, %i.cni
  %i.cnk = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cnl = extractelement <2 x float> %i.cna, i64 0 ; 2 uses
  %i.cnm = extractelement <2 x float> %i.cmw, i64 0 ; 2 uses
  %i.cnn = fadd float %i.cmr, %i.cms
  %i.cno = fneg float %i.cnn
  %i.cnp = fmul float %i.cjb, %i.cno              ; 6 uses
  %i.cnq = load <2 x float>, ptr %i.cke, align 4, !tbaa !17, !noalias !143 ; 3 uses
  %i.cnr = fadd <2 x float> %i.cnq, %i.cmt
  %i.cns = fneg <2 x float> %i.cnr
  %i.cnt = fmul <2 x float> %i.ckj, %i.cns        ; 7 uses
  %i.cnu = fadd float %i.cmr, %i.cnp              ; 4 uses
  %i.cnv = extractelement <2 x float> %i.cnt, i64 0 ; 2 uses
  %foldExtExtBinop242 = fadd <2 x float> %i.cnq, %i.cnt ; 2 uses
  %i.cnw = extractelement <2 x float> %foldExtExtBinop242, i64 0 ; 3 uses
  %i.cnx = extractelement <2 x float> %i.cnt, i64 1 ; 4 uses
  %foldExtExtBinop244 = fadd <2 x float> %i.cnq, %i.cnt
  %i.cny = extractelement <2 x float> %foldExtExtBinop244, i64 1 ; 4 uses
  %i.cnz = fadd float %i.cms, %i.cnp              ; 4 uses
  %i.coa = fadd <2 x float> %i.cmt, %i.cnt        ; 4 uses
end_hunk_1
