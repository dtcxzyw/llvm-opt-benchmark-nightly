Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_dipoles?download=true
inline.NumInlined: 537
inline.NumDeleted: 165
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZL6do_dipPK10t_topology7PbcTypefPKcS4_S4_S4_S4_S4_S4_S4_bS4_S4_bS4_bPiiiS4_fbbS4_S5_PS5_ffffS5_ibiS4_S4_PK16gmx_output_env_t:._crit_edge.i.i
  store float %i.aje, ptr %i.ajh, align 4, !tbaa !12
  %i.aji = load float, ptr %i.uu, align 4, !tbaa !12
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajh, i64 4
  store float %i.aji, ptr %i.ajj, align 4, !tbaa !12
  %i.ajk = load float, ptr %i.uv, align 4, !tbaa !12
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  store float %i.ajk, ptr %i.ajl, align 4, !tbaa !12
  br label %bb.db

bb.db:                                            ; preds = %.loopexit, %.loopexit, %bb.da
  %i.ajm = load <2 x float>, ptr %i.ut, align 4, !tbaa !12 ; 3 uses
  %i.ajn = fpext <2 x float> %i.ajm to <2 x double>
  %i.ajo = fadd <2 x double> %i.ui, %i.ajn        ; 2 uses
  %i.ajp = fmul <2 x float> %i.ajm, %i.ajm
  %i.ajq = fpext <2 x float> %i.ajp to <2 x double> ; 2 uses
  %shift = shufflevector <2 x double> %i.ajq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop105 = fadd <2 x double> %shift, %i.ajq
  %i.ajr = extractelement <2 x double> %foldExtExtBinop105, i64 0
  %i.ajs = load float, ptr %i.uv, align 4, !tbaa !12 ; 3 uses
  %i.ajt = fpext float %i.ajs to double
  %i.aju = fadd double %.sroa.16.2, %i.ajt        ; 2 uses
  %i.ajv = fmul float %i.ajs, %i.ajs
  %i.ajw = fpext float %i.ajv to double
  %i.ajx = fadd double %i.ajr, %i.ajw
  %i.ajy = call double @sqrt(double noundef %i.ajx) #22 ; 2 uses
  %i.ajz = fadd double %.2488217, %i.ajy          ; 2 uses
  %i.aka = fmul double %i.ajy, %i.ru
  %i.akb = fdiv double %i.aka, %i.oz
  %i.akc = call double @llvm.rint.f64(double %i.akb)
  %i.akd = fptosi double %i.akc to i32            ; 2 uses
  %.not = icmp sgt i32 %i.akd, %i.pb
  br i1 %.not, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ake = sext i32 %i.akd to i64
  %i.akf = getelementptr inbounds [4 x i8], ptr %i.pe, i64 %i.ake ; 2 uses
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !10
  %i.akh = add nsw i32 %i.akg, 1
  store i32 %i.akh, ptr %i.akf, align 4, !tbaa !10
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.aki = load ptr, ptr %i.an, align 8, !tbaa !16
  %.not674 = icmp eq ptr %i.aki, null
  br i1 %.not674, label %bb.do, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.akj = getelementptr inbounds nuw [12 x i8], ptr %.0101, i64 %indvars.iv313 ; 4 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 4
  store <2 x float> zeroinitializer, ptr %i.akj, align 4, !tbaa !12
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akj, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.akl, align 4, !tbaa !12
  %i.akm = load float, ptr %i.ut, align 4, !tbaa !12 ; 2 uses
  %i.akn = load float, ptr %i.uu, align 4, !tbaa !12 ; 2 uses
  %i.ako = fmul float %i.akn, %i.akn
  %i.akp = call float @llvm.fmuladd.f32(float %i.akm, float %i.akm, float %i.ako)
  %i.akq = load float, ptr %i.uv, align 4, !tbaa !12 ; 2 uses
  %i.akr = call float @llvm.fmuladd.f32(float %i.akq, float %i.akq, float %i.akp)
  %sqrt17.i = call float @llvm.sqrt.f32(float %i.akr)
  store float %sqrt17.i, ptr %i.akj, align 4, !tbaa !12
  %i.aks = load float, ptr %i.uu, align 4, !tbaa !12
  %i.akt = load float, ptr %i.ut, align 4, !tbaa !12
  %i.aku = call noundef float @atan2f(float noundef %i.aks, float noundef %i.akt) #22 ; 4 uses
  store float %i.aku, ptr %i.akk, align 4, !tbaa !12
  %i.akv = load float, ptr %i.ut, align 4, !tbaa !12 ; 2 uses
  %i.akw = load float, ptr %i.uu, align 4, !tbaa !12 ; 2 uses
  %i.akx = fmul float %i.akw, %i.akw
  %i.aky = call float @llvm.fmuladd.f32(float %i.akv, float %i.akv, float %i.akx)
  %sqrt.i969 = call float @llvm.sqrt.f32(float %i.aky)
  %i.akz = load float, ptr %i.uv, align 4, !tbaa !12
  %i.ala = call noundef float @atan2f(float noundef %sqrt.i969, float noundef %i.akz) #22 ; 5 uses
  store float %i.ala, ptr %i.akl, align 4, !tbaa !12
  %i.alb = fpext float %i.aku to double           ; 6 uses
  %i.alc = fcmp ogt double %i.alb, f0xC00921FB54442D18
  %i.ald = fcmp olt double %i.alb, f0xBFF921FB54442D18
  %or.cond682 = and i1 %i.alc, %i.ald
  br i1 %or.cond682, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.ale = fpext float %i.ala to double
  %i.alf = fcmp olt double %i.ale, f0x3FF921FB54442D18
  %. = select i1 %i.alf, i32 1, i32 2
  br label %bb.dm

bb.dg:                                            ; preds = %bb.de
  %i.alg = fcmp ogt double %i.alb, f0xBFF921FB54442D18
  %i.alh = fcmp olt float %i.aku, 0.000000e+00
  %or.cond683 = and i1 %i.alh, %i.alg
  br i1 %or.cond683, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ali = fpext float %i.ala to double
  %i.alj = fcmp olt double %i.ali, f0x3FF921FB54442D18
  %.684 = select i1 %i.alj, i32 3, i32 4
  br label %bb.dm

bb.di:                                            ; preds = %bb.dg
  %i.alk = fcmp ogt float %i.aku, 0.000000e+00
  %i.all = fcmp olt double %i.alb, f0x3FF921FB54442D18
  %or.cond686 = and i1 %i.alk, %i.all
  br i1 %or.cond686, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.alm = fpext float %i.ala to double
  %i.aln = fcmp olt double %i.alm, f0x3FF921FB54442D18
  %.687 = select i1 %i.aln, i32 5, i32 6
  br label %bb.dm

bb.dk:                                            ; preds = %bb.di
  %i.alo = fcmp ogt double %i.alb, f0x3FF921FB54442D18
  %i.alp = fcmp olt double %i.alb, f0x400921FB54442D18
  %or.cond688 = and i1 %i.alo, %i.alp
  br i1 %or.cond688, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.alq = fpext float %i.ala to double
  %i.alr = fcmp olt double %i.alq, f0x3FF921FB54442D18
  %.689 = select i1 %i.alr, i32 7, i32 8
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dj, %bb.dh, %bb.df, %bb.dk
  %.3516 = phi i32 [ %., %bb.df ], [ %.2515215, %bb.dk ], [ %.684, %bb.dh ], [ %.689, %bb.dl ], [ %.687, %bb.dj ] ; 3 uses
  br i1 %.not675, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.als = add nuw nsw i32 %indvars315, 1
  %i.alt = load ptr, ptr %i.ap, align 8, !tbaa !126
  %i.alu = sext i32 %i.up to i64
  %i.alv = getelementptr inbounds [12 x i8], ptr %i.alt, i64 %i.alu ; 2 uses
  %i.alw = load float, ptr %i.alv, align 4, !tbaa !12 ; 2 uses
  %i.alx = fpext float %i.alw to double
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alv, i64 4
  %i.alz = load float, ptr %i.ut, align 4, !tbaa !12
  %i.ama = fdiv float %i.alz, 2.500000e+01
  %i.amb = fadd float %i.alw, %i.ama
  %i.amc = fpext float %i.amb to double
  %i.amd = load <2 x float>, ptr %i.uu, align 4, !tbaa !12
  %i.ame = fdiv <2 x float> %i.amd, splat (float 2.500000e+01)
  %i.amf = load <2 x float>, ptr %i.aly, align 4, !tbaa !12 ; 2 uses
  %i.amg = fpext <2 x float> %i.amf to <2 x double> ; 2 uses
  %i.amh = fadd <2 x float> %i.amf, %i.ame
  %i.ami = fpext <2 x float> %i.amh to <2 x double> ; 2 uses
  %i.amj = extractelement <2 x double> %i.amg, i64 0
  %i.amk = extractelement <2 x double> %i.amg, i64 1
  %i.aml = extractelement <2 x double> %i.ami, i64 0
  %i.amm = extractelement <2 x double> %i.ami, i64 1
  %i.amn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0522, ptr noundef nonnull @.str.172, i32 noundef %i.als, double noundef %i.alx, double noundef %i.amj, double noundef %i.amk, double noundef %i.amc, double noundef %i.aml, double noundef %i.amm, i32 noundef %.3516, i32 noundef %i.up, i32 noundef %indvars315) #22 ; 0 uses
  br label %bb.do

bb.do:                                            ; preds = %bb.dm, %bb.dn, %bb.dd
  %.4517 = phi i32 [ %.3516, %bb.dn ], [ %.3516, %bb.dm ], [ %.2515215, %bb.dd ] ; 2 uses
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1 ; 2 uses
  %i.amo = load i32, ptr %i.ue, align 4, !tbaa !10
  %i.amp = sext i32 %i.amo to i64
  %i.amq = icmp slt i64 %indvars.iv.next314, %i.amp
  br i1 %i.amq, label %bb.cl, label %._crit_edge, !llvm.loop !97

._crit_edge:                                      ; preds = %bb.do, %.preheader
  %.sroa.16.3 = phi double [ %.sroa.16.1, %.preheader ], [ %i.aju, %bb.do ] ; 2 uses
  %.2515.lcssa = phi i32 [ %.1514220, %.preheader ], [ %.4517, %bb.do ] ; 2 uses
  %.2488.lcssa = phi double [ %.1487222, %.preheader ], [ %i.ajz, %bb.do ] ; 2 uses
  %i.amr = phi <2 x double> [ %i.ud, %.preheader ], [ %i.ajo, %bb.do ] ; 2 uses
  br i1 %.not675, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %._crit_edge
  %i.ams = load float, ptr %i.as, align 4, !tbaa !12
  %i.amt = fpext float %i.ams to double
  %i.amu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0522, ptr noundef nonnull @.str.173, double noundef %i.amt) #22 ; 0 uses
  %i.amv = load float, ptr %i.at, align 16, !tbaa !12
  %i.amw = fpext float %i.amv to double
  %i.amx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0522, ptr noundef nonnull @.str.174, double noundef %i.amw) #22 ; 0 uses
  %i.amy = load float, ptr %i.rv, align 16, !tbaa !12
  %i.amz = fpext float %i.amy to double
  %i.ana = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0522, ptr noundef nonnull @.str.175, double noundef %i.amz) #22 ; 0 uses
  %i.anb = load float, ptr %i.rw, align 16, !tbaa !12
  %i.anc = fpext float %i.anb to double
  %i.and = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0522, ptr noundef nonnull @.str.176, double noundef %i.anc) #22 ; 0 uses
  %fwrite672 = call i64 @fwrite(ptr nonnull @.str.177, i64 36, i64 1, ptr nonnull %.0522) ; 0 uses
  %fwrite673 = call i64 @fwrite(ptr nonnull @.str.178, i64 34, i64 1, ptr nonnull %.0522) ; 0 uses
  br label %bb.dq

bb.dq:                                            ; preds = %._crit_edge, %bb.dp
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1 ; 2 uses
  %exitcond320.not = icmp eq i64 %indvars.iv.next317, %wide.trip.count165.i
  br i1 %exitcond320.not, label %.preheader138, label %.preheader, !llvm.loop !98

bb.dr:                                            ; preds = %.preheader138
  br i1 %i.rj, label %.lr.ph77.i, label %bb.du

.lr.ph77.i:                                       ; preds = %bb.dr, %.loopexit.i973
  %indvars.iv92.i = phi i64 [ %indvars.iv.next93.i, %.loopexit.i973 ], [ 0, %bb.dr ] ; 2 uses
  %indvars.iv89.in.i = phi i32 [ %indvars.iv89.i, %.loopexit.i973 ], [ %.0499122, %bb.dr ]
  %indvars.iv.i972 = phi i64 [ %indvars.iv.next.i974, %.loopexit.i973 ], [ 1, %bb.dr ] ; 2 uses
  %.076.i = phi double [ %i.aor, %.loopexit.i973 ], [ 0.000000e+00, %bb.dr ]
  %.03773.i = phi double [ %.2.i, %.loopexit.i973 ], [ 0.000000e+00, %bb.dr ] ; 2 uses
  %.03872.i = phi i32 [ %.240.i, %.loopexit.i973 ], [ 0, %bb.dr ] ; 2 uses
  %i.ane = phi <2 x double> [ %i.aon, %.loopexit.i973 ], [ zeroinitializer, %bb.dr ]
  %indvars.iv89.i = add i32 %indvars.iv89.in.i, -1 ; 2 uses
  %i.anf = getelementptr inbounds nuw [12 x i8], ptr %i.gc, i64 %indvars.iv92.i ; 2 uses
  %i.ang = load <2 x float>, ptr %i.anf, align 4, !tbaa !12
  %i.anh = fpext <2 x float> %i.ang to <2 x double> ; 4 uses
  %i.ani = extractelement <2 x double> %i.anh, i64 0 ; 4 uses
  %83 = call double @llvm.fmuladd.f64(double %i.ani, double %i.ani, double 0.000000e+00)
  %i.anj = extractelement <2 x double> %i.anh, i64 1 ; 4 uses
  %i.ank = call double @llvm.fmuladd.f64(double %i.anj, double %i.anj, double %83)
  %i.anl = getelementptr inbounds nuw i8, ptr %i.anf, i64 8
  %i.anm = load float, ptr %i.anl, align 4, !tbaa !12
  %i.ann = fpext float %i.anm to double           ; 5 uses
  %i.ano = call double @llvm.fmuladd.f64(double %i.ann, double %i.ann, double %i.ank) ; 3 uses
  %i.anp = fcmp ogt double %i.ano, 0.000000e+00
  br i1 %i.anp, label %bb.ds, label %_ZL9cos_anglePKfS0_.exit52.i

bb.ds:                                            ; preds = %.lr.ph77.i
  %sqrt.i977 = call nnan double @llvm.sqrt.f64(double %i.ano)
  %i.anq = fdiv nnan double 1.000000e+00, %sqrt.i977 ; 2 uses
  %i.anr = fadd <2 x double> %i.anh, <double 0.000000e+00, double -0.000000e+00>
  %i.ans = call double @llvm.fmuladd.f64(double %i.ani, double 0.000000e+00, double 0.000000e+00) ; 2 uses
  %i.ant = shufflevector <2 x double> %i.anh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.anu = insertelement <2 x double> %i.ant, double %i.ans, i64 1
  %i.anv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.anu, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> %i.anr)
  %i.anw = insertelement <2 x double> poison, double %i.ann, i64 0
  %i.anx = shufflevector <2 x double> %i.anw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.any = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.anx, <2 x double> zeroinitializer, <2 x double> %i.anv)
  %i.anz = insertelement <2 x double> poison, double %i.anq, i64 0
  %i.aoa = shufflevector <2 x double> %i.anz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aob = fmul <2 x double> %i.any, %i.aoa
  %i.aoc = fptrunc <2 x double> %i.aob to <2 x float>
  %i.aod = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aoc) ; 2 uses
  %i.aoe = fcmp ogt <2 x float> %i.aod, splat (float 1.000000e+00)
  %i.aof = select <2 x i1> %i.aoe, <2 x float> splat (float 1.000000e+00), <2 x float> %i.aod
  %i.aog = fpext <2 x float> %i.aof to <2 x double>
  %i.aoh = call double @llvm.fmuladd.f64(double %i.anj, double 0.000000e+00, double %i.ans)
  %i.aoi = fadd double %i.aoh, %i.ann
  %i.aoj = fmul double %i.aoi, %i.anq
  %i.aok = fptrunc double %i.aoj to float
  %i.aol = call float @llvm.fabs.f32(float %i.aok)
  br label %_ZL9cos_anglePKfS0_.exit52.i

_ZL9cos_anglePKfS0_.exit52.i:                     ; preds = %.lr.ph77.i, %bb.ds
  %.026.i49.i = phi float [ %i.aol, %bb.ds ], [ 1.000000e+00, %.lr.ph77.i ] ; 2 uses
  %i.aom = phi <2 x double> [ %i.aog, %bb.ds ], [ splat (double 1.000000e+00), %.lr.ph77.i ]
  %i.aon = fadd <2 x double> %i.ane, %i.aom       ; 2 uses
  %i.aoo = fcmp ogt float %.026.i49.i, 1.000000e+00
  %i.aop = select i1 %i.aoo, float 1.000000e+00, float %.026.i49.i
  %i.aoq = fpext float %i.aop to double
  %i.aor = fadd double %.076.i, %i.aoq            ; 2 uses
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 3 uses
  %i.aos = icmp samesign ult i64 %indvars.iv.next93.i, %i.rx
  %or.cond.i = select i1 %10, i1 %i.aos, i1 false
  br i1 %or.cond.i, label %.lr.ph.i975, label %.loopexit.i973

.lr.ph.i975:                                      ; preds = %_ZL9cos_anglePKfS0_.exit52.i, %_ZL9cos_anglePKfS0_.exit56.i
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i, %_ZL9cos_anglePKfS0_.exit56.i ], [ %indvars.iv.i972, %_ZL9cos_anglePKfS0_.exit52.i ] ; 2 uses
  %.168.i = phi double [ %i.apq, %_ZL9cos_anglePKfS0_.exit56.i ], [ %.03773.i, %_ZL9cos_anglePKfS0_.exit52.i ]
  %i.aot = getelementptr inbounds nuw [12 x i8], ptr %i.gc, i64 %indvars.iv87.i ; 3 uses
  %i.aou = load float, ptr %i.aot, align 4, !tbaa !12
  %i.aov = fpext float %i.aou to double           ; 3 uses
  %84 = call double @llvm.fmuladd.f64(double %i.aov, double %i.aov, double 0.000000e+00)
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aot, i64 4
  %i.aox = load float, ptr %i.aow, align 4, !tbaa !12
  %i.aoy = fpext float %i.aox to double           ; 3 uses
  %i.aoz = call double @llvm.fmuladd.f64(double %i.aoy, double %i.aoy, double %84)
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aot, i64 8
  %i.apb = load float, ptr %i.apa, align 4, !tbaa !12
  %i.apc = fpext float %i.apb to double           ; 3 uses
  %i.apd = call double @llvm.fmuladd.f64(double %i.apc, double %i.apc, double %i.aoz)
  %i.ape = fmul double %i.ano, %i.apd             ; 2 uses
  %i.apf = fcmp ogt double %i.ape, 0.000000e+00
  br i1 %i.apf, label %bb.dt, label %_ZL9cos_anglePKfS0_.exit56.i

bb.dt:                                            ; preds = %.lr.ph.i975
  %i.apg = call double @llvm.fmuladd.f64(double %i.ani, double %i.aov, double 0.000000e+00)
  %i.aph = call double @llvm.fmuladd.f64(double %i.anj, double %i.aoy, double %i.apg)
  %i.api = call double @llvm.fmuladd.f64(double %i.ann, double %i.apc, double %i.aph)
  %sqrt65.i = call nnan double @llvm.sqrt.f64(double %i.ape)
  %i.apj = fdiv nnan double 1.000000e+00, %sqrt65.i
  %i.apk = fmul double %i.api, %i.apj
  %i.apl = fptrunc double %i.apk to float
  %i.apm = call float @llvm.fabs.f32(float %i.apl)
  br label %_ZL9cos_anglePKfS0_.exit56.i

_ZL9cos_anglePKfS0_.exit56.i:                     ; preds = %bb.dt, %.lr.ph.i975
  %.026.i53.i = phi float [ %i.apm, %bb.dt ], [ 1.000000e+00, %.lr.ph.i975 ] ; 2 uses
  %i.apn = fcmp ogt float %.026.i53.i, 1.000000e+00
  %i.apo = select i1 %i.apn, float 1.000000e+00, float %.026.i53.i
  %i.app = fpext float %i.apo to double
  %i.apq = fadd double %.168.i, %i.app            ; 2 uses
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %exitcond.not.i976 = icmp eq i64 %indvars.iv.next88.i, %i.rx
  br i1 %exitcond.not.i976, label %.loopexit.loopexit.i, label %.lr.ph.i975, !llvm.loop !99

.loopexit.loopexit.i:                             ; preds = %_ZL9cos_anglePKfS0_.exit56.i
  %i.apr = add i32 %.03872.i, %indvars.iv89.i
  br label %.loopexit.i973

.loopexit.i973:                                   ; preds = %.loopexit.loopexit.i, %_ZL9cos_anglePKfS0_.exit52.i
  %.240.i = phi i32 [ %.03872.i, %_ZL9cos_anglePKfS0_.exit52.i ], [ %i.apr, %.loopexit.loopexit.i ] ; 2 uses
  %.2.i = phi double [ %.03773.i, %_ZL9cos_anglePKfS0_.exit52.i ], [ %i.apq, %.loopexit.loopexit.i ] ; 2 uses
  %indvars.iv.next.i974 = add nuw nsw i64 %indvars.iv.i972, 1
  %exitcond96.not.i = icmp eq i64 %indvars.iv.next93.i, %i.rx
  br i1 %exitcond96.not.i, label %._crit_edge.loopexit.i, label %.lr.ph77.i, !llvm.loop !100

._crit_edge.loopexit.i:                           ; preds = %.loopexit.i973
  %i.aps = sitofp i32 %.240.i to double
  %i.apt = fdiv double %.2.i, %i.aps
  %i.apu = fptrunc double %i.apt to float
  %i.apv = fpext float %i.apu to double
  br label %bb.du

bb.du:                                            ; preds = %._crit_edge.loopexit.i, %bb.dr
  %.0.lcssa.i971 = phi double [ 0.000000e+00, %bb.dr ], [ %i.aor, %._crit_edge.loopexit.i ]
  %i.apw = phi double [ +qnan, %bb.dr ], [ %i.apv, %._crit_edge.loopexit.i ]
  %i.apx = phi <2 x double> [ zeroinitializer, %bb.dr ], [ %i.aon, %._crit_edge.loopexit.i ]
  %i.apy = fdiv <2 x double> %i.apx, %i.ti
  %i.apz = fdiv double %.0.lcssa.i971, %i.ry
  %i.aqa = fptrunc double %i.apz to float
  %i.aqb = fptrunc <2 x double> %i.apy to <2 x float>
  %i.aqc = fpext <2 x float> %i.aqb to <2 x double> ; 5 uses
  %i.aqd = fadd <2 x double> %i.aqc, splat (double -5.000000e-01) ; 2 uses
  %i.aqe = fmul <2 x double> %i.aqd, %i.aqd       ; 2 uses
  %shift107 = shufflevector <2 x double> %i.aqe, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop108 = fadd <2 x double> %i.aqe, %shift107
  %i.aqf = extractelement <2 x double> %foldExtExtBinop108, i64 0
  %i.aqg = fpext float %i.aqa to double           ; 3 uses
  %i.aqh = fadd double %i.aqg, -5.000000e-01      ; 2 uses
  %i.aqi = fmul double %i.aqh, %i.aqh
  %i.aqj = fadd double %i.aqf, %i.aqi
  %sqrt125 = call double @llvm.sqrt.f64(double %i.aqj)
  %i.aqk = fptrunc double %sqrt125 to float
  %i.aql = load float, ptr %i.as, align 4, !tbaa !12
  %i.aqm = fpext float %i.aql to double           ; 2 uses
  %i.aqn = fpext float %i.aqk to double           ; 2 uses
  br i1 %10, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.aqo = extractelement <2 x double> %i.aqc, i64 0
  %i.aqp = extractelement <2 x double> %i.aqc, i64 1
  %i.aqq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0523, ptr noundef nonnull @.str.179, double noundef %i.aqm, double noundef %i.apw, double noundef %i.aqn, double noundef %i.aqo, double noundef %i.aqp, double noundef %i.aqg) #22 ; 0 uses
  br label %bb.dx

bb.dw:                                            ; preds = %bb.du
  %i.aqr = extractelement <2 x double> %i.aqc, i64 0
  %i.aqs = extractelement <2 x double> %i.aqc, i64 1
  %i.aqt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0523, ptr noundef nonnull @.str.180, double noundef %i.aqm, double noundef %i.aqn, double noundef %i.aqr, double noundef %i.aqs, double noundef %i.aqg) #22 ; 0 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dv, %bb.dw, %.preheader138
  br i1 %13, label %bb.dy, label %bb.eu

bb.dy:                                            ; preds = %bb.dx
  %i.aqu = load ptr, ptr %i.rl, align 8, !tbaa !29 ; 4 uses
  %i.aqv = load ptr, ptr %i.ap, align 8, !tbaa !126 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #22
  br i1 %i.rk, label %.preheader.i, label %.invoke

.preheader.i:                                     ; preds = %bb.dy, %._crit_edge140.i
  %indvars.iv162.i = phi i64 [ %indvars.iv.next163.i, %._crit_edge140.i ], [ 0, %bb.dy ] ; 6 uses
  %i.aqw = getelementptr inbounds nuw [8 x i8], ptr @_ZZL6do_gkrP8t_gkrbiniPiPS1_PKiPA3_fS6_7PbcTypePA3_KfPK6t_atomS4_E3xcm, i64 %indvars.iv162.i ; 2 uses
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !126 ; 2 uses
  %.not131.i = icmp eq ptr %i.aqx, null
  br i1 %.not131.i, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %.preheader.i
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv162.i
  %i.aqz = load i32, ptr %i.aqy, align 4, !tbaa !10
  %i.ara = sext i32 %i.aqz to i64
  %i.arb = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.100, i32 noundef 219, i64 noundef range(i64 -2147483648, 2147483648) %i.ara, i64 noundef 12)
          to label %.noexc991 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc991:                                        ; preds = %bb.dz
  store ptr %i.arb, ptr %i.aqw, align 8, !tbaa !126
  br label %bb.ea

bb.ea:                                            ; preds = %.noexc991, %.preheader.i
  %i.arc = phi ptr [ %i.arb, %.noexc991 ], [ %i.aqx, %.preheader.i ] ; 4 uses
  %i.ard = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv162.i
  %i.are = load i32, ptr %i.ard, align 4, !tbaa !10 ; 4 uses
  %i.arf = icmp sgt i32 %i.are, 0
  br i1 %i.arf, label %.lr.ph139.i, label %._crit_edge140.i

.lr.ph139.i:                                      ; preds = %bb.ea
  %i.arg = getelementptr inbounds nuw [8 x i8], ptr %23, i64 %indvars.iv162.i
  %i.arh = load ptr, ptr %i.arg, align 8, !tbaa !27 ; 4 uses
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %indvars.iv162.i
  %i.arj = load i32, ptr %i.ari, align 4, !tbaa !10 ; 4 uses
  %i.ark = icmp sgt i32 %i.arj, 0
  %wide.trip.count160.i = zext nneg i32 %i.are to i64 ; 3 uses
  br i1 %i.ark, label %.lr.ph139.split.us.i.preheader, label %.lr.ph139.split.i

.lr.ph139.split.us.i.preheader:                   ; preds = %.lr.ph139.i
  %xtraiter195 = and i64 %wide.trip.count160.i, 1
  %i.arl = icmp eq i32 %i.are, 1
  br i1 %i.arl, label %.lr.ph139.split.us.i.epil.preheader, label %.lr.ph139.split.us.i.preheader.new

.lr.ph139.split.us.i.preheader.new:               ; preds = %.lr.ph139.split.us.i.preheader
  %unroll_iter = and i64 %wide.trip.count160.i, 2147483646
  br label %.lr.ph139.split.us.i

.lr.ph139.split.us.i:                             ; preds = %.lr.ph139.split.us.i, %.lr.ph139.split.us.i.preheader.new
  %indvars.iv157.i = phi i64 [ 0, %.lr.ph139.split.us.i.preheader.new ], [ %indvars.iv.next158.i.1, %.lr.ph139.split.us.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph139.split.us.i.preheader.new ], [ %niter.next.1, %.lr.ph139.split.us.i ]
  %i.arm = getelementptr inbounds nuw [4 x i8], ptr %i.arh, i64 %indvars.iv157.i
  %i.arn = load i32, ptr %i.arm, align 4, !tbaa !10
  %i.aro = sext i32 %i.arn to i64
  %i.arp = getelementptr inbounds [4 x i8], ptr %i.aqu, i64 %i.aro
  %i.arq = load i32, ptr %i.arp, align 4, !tbaa !10
  %i.arr = add nsw i32 %i.arq, %i.arj
  %i.ars = sext i32 %i.arr to i64
  %i.art = getelementptr [12 x i8], ptr %i.aqv, i64 %i.ars ; 3 uses
  %i.aru = getelementptr i8, ptr %i.art, i64 -12
  %i.arv = getelementptr inbounds nuw [12 x i8], ptr %i.arc, i64 %indvars.iv157.i ; 3 uses
  %i.arw = load float, ptr %i.aru, align 4, !tbaa !12
  store float %i.arw, ptr %i.arv, align 4, !tbaa !12
  %i.arx = getelementptr i8, ptr %i.art, i64 -8
  %i.ary = load float, ptr %i.arx, align 4, !tbaa !12
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arv, i64 4
  store float %i.ary, ptr %i.arz, align 4, !tbaa !12
  %i.asa = getelementptr i8, ptr %i.art, i64 -4
  %i.asb = load float, ptr %i.asa, align 4, !tbaa !12
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arv, i64 8
  store float %i.asb, ptr %i.asc, align 4, !tbaa !12
  %indvars.iv.next158.i = or disjoint i64 %indvars.iv157.i, 1 ; 2 uses
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %i.arh, i64 %indvars.iv.next158.i
  %i.ase = load i32, ptr %i.asd, align 4, !tbaa !10
  %i.asf = sext i32 %i.ase to i64
  %i.asg = getelementptr inbounds [4 x i8], ptr %i.aqu, i64 %i.asf
  %i.ash = load i32, ptr %i.asg, align 4, !tbaa !10
  %i.asi = add nsw i32 %i.ash, %i.arj
  %i.asj = sext i32 %i.asi to i64
  %i.ask = getelementptr [12 x i8], ptr %i.aqv, i64 %i.asj ; 3 uses
  %i.asl = getelementptr i8, ptr %i.ask, i64 -12
  %i.asm = getelementptr inbounds nuw [12 x i8], ptr %i.arc, i64 %indvars.iv.next158.i ; 3 uses
  %i.asn = load float, ptr %i.asl, align 4, !tbaa !12
  store float %i.asn, ptr %i.asm, align 4, !tbaa !12
  %i.aso = getelementptr i8, ptr %i.ask, i64 -8
  %i.asp = load float, ptr %i.aso, align 4, !tbaa !12
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asm, i64 4
  store float %i.asp, ptr %i.asq, align 4, !tbaa !12
  %i.asr = getelementptr i8, ptr %i.ask, i64 -4
  %i.ass = load float, ptr %i.asr, align 4, !tbaa !12
  %i.ast = getelementptr inbounds nuw i8, ptr %i.asm, i64 8
  store float %i.ass, ptr %i.ast, align 4, !tbaa !12
  %indvars.iv.next158.i.1 = add nuw nsw i64 %indvars.iv157.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge140.i.loopexit.unr-lcssa, label %.lr.ph139.split.us.i, !llvm.loop !101

.lr.ph139.split.i:                                ; preds = %.lr.ph139.i, %._crit_edge.i983
  %indvars.iv152.i = phi i64 [ %indvars.iv.next153.i, %._crit_edge.i983 ], [ 0, %.lr.ph139.i ] ; 3 uses
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %i.arh, i64 %indvars.iv152.i
  %i.asv = load i32, ptr %i.asu, align 4, !tbaa !10
  %i.asw = sext i32 %i.asv to i64
  %i.asx = getelementptr inbounds [4 x i8], ptr %i.aqu, i64 %i.asw ; 2 uses
  %i.asy = load i32, ptr %i.asx, align 4, !tbaa !10 ; 2 uses
  %i.asz = getelementptr i8, ptr %i.asx, i64 4
  %i.ata = load i32, ptr %i.asz, align 4, !tbaa !10 ; 2 uses
  %i.atb = getelementptr inbounds nuw [12 x i8], ptr %i.arc, i64 %indvars.iv152.i ; 7 uses
end_hunk_0
begin_hunk_1_@_ZL6do_dipPK10t_topology7PbcTypefPKcS4_S4_S4_S4_S4_S4_S4_bS4_S4_bS4_bPiiiS4_fbbS4_S5_PS5_ffffS5_ibiS4_S4_PK16gmx_output_env_t:._crit_edge.i.i
  %indvars.iv157.i.epil.init = phi i64 [ 0, %.lr.ph139.split.us.i.preheader ], [ %indvars.iv.next158.i.1, %._crit_edge140.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod197 = trunc i32 %i.are to i1
  call void @llvm.assume(i1 %lcmp.mod197)
  %i.avi = getelementptr inbounds nuw [4 x i8], ptr %i.arh, i64 %indvars.iv157.i.epil.init
  %i.avj = load i32, ptr %i.avi, align 4, !tbaa !10
  %i.avk = sext i32 %i.avj to i64
  %i.avl = getelementptr inbounds [4 x i8], ptr %i.aqu, i64 %i.avk
  %i.avm = load i32, ptr %i.avl, align 4, !tbaa !10
  %i.avn = add nsw i32 %i.avm, %i.arj
  %i.avo = sext i32 %i.avn to i64
  %i.avp = getelementptr [12 x i8], ptr %i.aqv, i64 %i.avo ; 3 uses
  %i.avq = getelementptr i8, ptr %i.avp, i64 -12
  %i.avr = getelementptr inbounds nuw [12 x i8], ptr %i.arc, i64 %indvars.iv157.i.epil.init ; 3 uses
  %i.avs = load float, ptr %i.avq, align 4, !tbaa !12
  store float %i.avs, ptr %i.avr, align 4, !tbaa !12
  %i.avt = getelementptr i8, ptr %i.avp, i64 -8
  %i.avu = load float, ptr %i.avt, align 4, !tbaa !12
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avr, i64 4
  store float %i.avu, ptr %i.avv, align 4, !tbaa !12
  %i.avw = getelementptr i8, ptr %i.avp, i64 -4
  %i.avx = load float, ptr %i.avw, align 4, !tbaa !12
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avr, i64 8
  store float %i.avx, ptr %i.avy, align 4, !tbaa !12
  br label %._crit_edge140.i

._crit_edge140.i:                                 ; preds = %._crit_edge.i983, %.lr.ph139.split.us.i.epil.preheader, %._crit_edge140.i.loopexit.unr-lcssa, %bb.ea
  %indvars.iv.next163.i = add nuw nsw i64 %indvars.iv162.i, 1 ; 2 uses
  %exitcond166.not.i = icmp eq i64 %indvars.iv.next163.i, %wide.trip.count165.i
  br i1 %exitcond166.not.i, label %bb.eb, label %.preheader.i, !llvm.loop !103

bb.eb:                                            ; preds = %._crit_edge140.i
  invoke void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %51, i32 noundef %1, ptr noundef nonnull %i.at)
          to label %.noexc992 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc992:                                        ; preds = %bb.eb
  %i.avz = load i32, ptr %22, align 4, !tbaa !10  ; 2 uses
  %i.awa = icmp sgt i32 %i.avz, 0
  br i1 %i.awa, label %.lr.ph147.i, label %_ZL6do_gkrP8t_gkrbiniPiPS1_PKiPA3_fS6_7PbcTypePA3_KfPK6t_atomS4_.exit

.lr.ph147.i:                                      ; preds = %.noexc992
  %.pre.i = load i32, ptr %i.rz, align 4, !tbaa !10
  br label %bb.ec

.loopexit.loopexit.i979:                          ; preds = %_ZL7add2gkrP8t_gkrbinfff.exit.i
  %.pre173.i = load i32, ptr %22, align 4, !tbaa !10
  br label %.loopexit.i978

.loopexit.i978:                                   ; preds = %bb.ec, %.loopexit.loopexit.i979
  %i.awb = phi i32 [ %.pre173.i, %.loopexit.loopexit.i979 ], [ %i.awf, %bb.ec ] ; 2 uses
  %i.awc = phi i32 [ %i.bcv, %.loopexit.loopexit.i979 ], [ %i.awg, %bb.ec ]
  %i.awd = sext i32 %i.awb to i64
  %i.awe = icmp slt i64 %indvars.iv.next171.i, %i.awd
  br i1 %i.awe, label %bb.ec, label %_ZL6do_gkrP8t_gkrbiniPiPS1_PKiPA3_fS6_7PbcTypePA3_KfPK6t_atomS4_.exit, !llvm.loop !104

bb.ec:                                            ; preds = %.loopexit.i978, %.lr.ph147.i
  %i.awf = phi i32 [ %i.avz, %.lr.ph147.i ], [ %i.awb, %.loopexit.i978 ]
  %i.awg = phi i32 [ %.pre.i, %.lr.ph147.i ], [ %i.awc, %.loopexit.i978 ] ; 2 uses
  %indvars.iv170.i = phi i64 [ 0, %.lr.ph147.i ], [ %indvars.iv.next171.i, %.loopexit.i978 ] ; 4 uses
  %i.awh = load ptr, ptr %23, align 8, !tbaa !27
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.awh, i64 %indvars.iv170.i
  %i.awj = load i32, ptr %i.awi, align 4, !tbaa !10 ; 2 uses
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 3 uses
  %i.awk = trunc nuw nsw i64 %indvars.iv.next171.i to i32
  %i.awl = select i1 %i.eg, i32 0, i32 %i.awk     ; 2 uses
  %i.awm = icmp slt i32 %i.awl, %i.awg
  br i1 %i.awm, label %.lr.ph144.i, label %.loopexit.i978

.lr.ph144.i:                                      ; preds = %bb.ec
  %i.awn = sext i32 %i.awj to i64
  %i.awo = getelementptr inbounds [12 x i8], ptr %i.gc, i64 %i.awn ; 6 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 4 ; 2 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awo, i64 8 ; 4 uses
  %i.awr = zext nneg i32 %i.awl to i64
  br label %bb.ed

bb.ed:                                            ; preds = %_ZL7add2gkrP8t_gkrbinfff.exit.i, %.lr.ph144.i
  %indvars.iv167.i = phi i64 [ %i.awr, %.lr.ph144.i ], [ %indvars.iv.next168.i, %_ZL7add2gkrP8t_gkrbinfff.exit.i ] ; 4 uses
  %i.aws = load ptr, ptr %i.sa, align 8, !tbaa !27
  %i.awt = getelementptr inbounds nuw [4 x i8], ptr %i.aws, i64 %indvars.iv167.i
  %i.awu = load i32, ptr %i.awt, align 4, !tbaa !10 ; 2 uses
  %i.awv = load float, ptr %i.awo, align 4, !tbaa !12 ; 2 uses
  %i.aww = load float, ptr %i.awp, align 4, !tbaa !12 ; 2 uses
  %i.awx = fmul float %i.aww, %i.aww
  %i.awy = call float @llvm.fmuladd.f32(float %i.awv, float %i.awv, float %i.awx)
  %i.awz = load float, ptr %i.awq, align 4, !tbaa !12 ; 2 uses
  %i.axa = call noundef float @llvm.fmuladd.f32(float %i.awz, float %i.awz, float %i.awy)
  %i.axb = fcmp ogt float %i.axa, 0.000000e+00
  br i1 %i.axb, label %bb.ee, label %_ZL7add2gkrP8t_gkrbinfff.exit.i

bb.ee:                                            ; preds = %bb.ed
  %i.axc = sext i32 %i.awu to i64
  %i.axd = getelementptr inbounds [12 x i8], ptr %i.gc, i64 %i.axc ; 6 uses
  %i.axe = load float, ptr %i.axd, align 4, !tbaa !12 ; 2 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axd, i64 4 ; 2 uses
  %i.axg = load float, ptr %i.axf, align 4, !tbaa !12 ; 2 uses
  %i.axh = fmul float %i.axg, %i.axg
  %i.axi = call float @llvm.fmuladd.f32(float %i.axe, float %i.axe, float %i.axh)
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axd, i64 8 ; 4 uses
  %i.axk = load float, ptr %i.axj, align 4, !tbaa !12 ; 2 uses
  %i.axl = call noundef float @llvm.fmuladd.f32(float %i.axk, float %i.axk, float %i.axi)
  %i.axm = fcmp ogt float %i.axl, 0.000000e+00
  br i1 %i.axm, label %bb.ef, label %_ZL7add2gkrP8t_gkrbinfff.exit.i

bb.ef:                                            ; preds = %bb.ee
  %i.axn = load ptr, ptr @_ZZL6do_gkrP8t_gkrbiniPiPS1_PKiPA3_fS6_7PbcTypePA3_KfPK6t_atomS4_E3xcm, align 16, !tbaa !126
  %i.axo = getelementptr inbounds nuw [12 x i8], ptr %i.axn, i64 %indvars.iv170.i
  %i.axp = load ptr, ptr %i.sb, align 8, !tbaa !126
  %i.axq = getelementptr inbounds nuw [12 x i8], ptr %i.axp, i64 %indvars.iv167.i
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %51, ptr noundef %i.axo, ptr noundef %i.axq, ptr noundef nonnull %i.l)
          to label %.noexc993 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc993:                                        ; preds = %bb.ef
  %i.axr = load float, ptr %i.l, align 4, !tbaa !12 ; 2 uses
  %i.axs = load float, ptr %i.sc, align 4, !tbaa !12 ; 2 uses
  %i.axt = fmul float %i.axs, %i.axs
  %i.axu = call float @llvm.fmuladd.f32(float %i.axr, float %i.axr, float %i.axt)
  %i.axv = load float, ptr %i.sd, align 4, !tbaa !12 ; 2 uses
  %i.axw = call noundef float @llvm.fmuladd.f32(float %i.axv, float %i.axv, float %i.axu)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.axw) ; 2 uses
  %i.axx = load i8, ptr %i.se, align 8, !tbaa !143, !range !54, !noundef !55
  %i.axy = trunc nuw i8 %i.axx to i1
  br i1 %i.axy, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %.noexc993
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #22
  %i.axz = load ptr, ptr @_ZZL6do_gkrP8t_gkrbiniPiPS1_PKiPA3_fS6_7PbcTypePA3_KfPK6t_atomS4_E3xcm, align 16, !tbaa !126
  %i.aya = getelementptr inbounds nuw [12 x i8], ptr %i.axz, i64 %indvars.iv170.i ; 3 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 4
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.aya, i64 8
  %i.ayd = load ptr, ptr %i.sb, align 8, !tbaa !126
  %i.aye = getelementptr inbounds nuw [12 x i8], ptr %i.ayd, i64 %indvars.iv167.i ; 3 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aye, i64 4
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.aye, i64 8
  %i.ayh = load float, ptr %i.aya, align 4, !tbaa !12 ; 2 uses
  store float %i.ayh, ptr %i.n, align 4, !tbaa !12
  %i.ayi = load float, ptr %i.ayb, align 4, !tbaa !12 ; 2 uses
  store float %i.ayi, ptr %i.sf, align 4, !tbaa !12
  %i.ayj = load float, ptr %i.ayc, align 4, !tbaa !12 ; 2 uses
  store float %i.ayj, ptr %i.sg, align 4, !tbaa !12
  %i.ayk = insertelement <2 x float> poison, float %i.ayh, i64 0
  %i.ayl = insertelement <2 x float> %i.ayk, float %i.ayi, i64 1
  %i.aym = load float, ptr %i.aye, align 4, !tbaa !12 ; 2 uses
  store float %i.aym, ptr %i.o, align 4, !tbaa !12
  %i.ayn = load float, ptr %i.ayf, align 4, !tbaa !12 ; 2 uses
  store float %i.ayn, ptr %i.sh, align 4, !tbaa !12
  %i.ayo = load float, ptr %i.ayg, align 4, !tbaa !12 ; 2 uses
  store float %i.ayo, ptr %i.si, align 4, !tbaa !12
  %i.ayp = load <2 x float>, ptr %i.awo, align 4, !tbaa !12
  %i.ayq = fadd <2 x float> %i.ayl, %i.ayp
  %i.ayr = load float, ptr %i.awq, align 4, !tbaa !12
  %i.ays = fadd float %i.ayj, %i.ayr
  store <2 x float> %i.ayq, ptr %i.m, align 8, !tbaa !12
  store float %i.ays, ptr %i.sj, align 8, !tbaa !12
  %i.ayt = load <2 x float>, ptr %i.axd, align 4, !tbaa !12
  %i.ayu = insertelement <2 x float> poison, float %i.aym, i64 0
  %i.ayv = insertelement <2 x float> %i.ayu, float %i.ayn, i64 1
  %i.ayw = fadd <2 x float> %i.ayv, %i.ayt
  %i.ayx = load float, ptr %i.axj, align 4, !tbaa !12
  %i.ayy = fadd float %i.ayo, %i.ayx
  store <2 x float> %i.ayw, ptr %i.p, align 8, !tbaa !12
  store float %i.ayy, ptr %i.sk, align 8, !tbaa !12
  %i.ayz = invoke noundef float @_Z9dih_anglePKfS0_S0_S0_PK5t_pbcPfS4_S4_S4_S4_PiS5_S5_(ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %51, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull %i.x)
          to label %.noexc994 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc994:                                        ; preds = %bb.eg
  %i.aza = call noundef float @cosf(float noundef %i.ayz) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #22
  %i.azb = fpext float %i.ayz to double
  %i.azc = fadd double %i.azb, f0x400921FB54442D18
  br label %bb.ej

bb.eh:                                            ; preds = %.noexc993
  %i.azd = load float, ptr %i.awq, align 4, !tbaa !12
  %i.aze = load float, ptr %i.axj, align 4, !tbaa !12
  %i.azf = load <2 x float>, ptr %i.awo, align 4, !tbaa !12 ; 2 uses
  %i.azg = load <2 x float>, ptr %i.axd, align 4, !tbaa !12 ; 2 uses
  %i.azh = shufflevector <2 x float> %i.azf, <2 x float> %i.azg, <2 x i32> <i32 0, i32 2>
  %i.azi = fpext <2 x float> %i.azh to <2 x double> ; 4 uses
  %85 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.azi, <2 x double> %i.azi, <2 x double> zeroinitializer)
  %i.azj = shufflevector <2 x float> %i.azf, <2 x float> %i.azg, <2 x i32> <i32 1, i32 3>
  %i.azk = fpext <2 x float> %i.azj to <2 x double> ; 4 uses
  %i.azl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.azk, <2 x double> %i.azk, <2 x double> %85)
  %i.azm = insertelement <2 x float> poison, float %i.azd, i64 0
  %i.azn = insertelement <2 x float> %i.azm, float %i.aze, i64 1
  %i.azo = fpext <2 x float> %i.azn to <2 x double> ; 4 uses
  %i.azp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.azo, <2 x double> %i.azo, <2 x double> %i.azl) ; 2 uses
  %shift110 = shufflevector <2 x double> %i.azp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop111 = fmul <2 x double> %i.azp, %shift110
  %i.azq = extractelement <2 x double> %foldExtExtBinop111, i64 0 ; 2 uses
  %i.azr = fcmp ogt double %i.azq, 0.000000e+00
  br i1 %i.azr, label %bb.ei, label %_ZL9cos_anglePKfS0_.exit.i

bb.ei:                                            ; preds = %bb.eh
  %i.azs = extractelement <2 x double> %i.azi, i64 0
  %i.azt = extractelement <2 x double> %i.azi, i64 1
  %i.azu = call double @llvm.fmuladd.f64(double %i.azs, double %i.azt, double 0.000000e+00)
  %i.azv = extractelement <2 x double> %i.azk, i64 0
  %i.azw = extractelement <2 x double> %i.azk, i64 1
  %i.azx = call double @llvm.fmuladd.f64(double %i.azv, double %i.azw, double %i.azu)
  %i.azy = extractelement <2 x double> %i.azo, i64 0
  %i.azz = extractelement <2 x double> %i.azo, i64 1
  %i.baa = call double @llvm.fmuladd.f64(double %i.azy, double %i.azz, double %i.azx)
  %sqrt.i982 = call nnan double @llvm.sqrt.f64(double %i.azq)
  %i.bab = fdiv nnan double 1.000000e+00, %sqrt.i982
  %i.bac = fmul double %i.baa, %i.bab
  %i.bad = fptrunc double %i.bac to float
  br label %_ZL9cos_anglePKfS0_.exit.i

_ZL9cos_anglePKfS0_.exit.i:                       ; preds = %bb.ei, %bb.eh
  %.026.i.i = phi float [ %i.bad, %bb.ei ], [ 1.000000e+00, %bb.eh ] ; 3 uses
  %i.bae = fcmp ogt float %.026.i.i, 1.000000e+00
  %i.baf = fcmp olt float %.026.i.i, -1.000000e+00
  %..026.i.i = select i1 %i.baf, float -1.000000e+00, float %.026.i.i
  %.027.i.i = select i1 %i.bae, float 1.000000e+00, float %..026.i.i
  br label %bb.ej

bb.ej:                                            ; preds = %_ZL9cos_anglePKfS0_.exit.i, %.noexc994
  %.0121.i = phi float [ %i.aza, %.noexc994 ], [ %.027.i.i, %_ZL9cos_anglePKfS0_.exit.i ] ; 4 uses
  %.0.i = phi double [ %i.azc, %.noexc994 ], [ f0x400921FB54442D18, %_ZL9cos_anglePKfS0_.exit.i ]
  %i.bag = load ptr, ptr @debug, align 8, !tbaa !130 ; 2 uses
  %.not.i980 = icmp ne ptr %i.bag, null           ; 2 uses
  %i.bah = fcmp uno float %.0121.i, 0.000000e+00
  %or.cond.i981 = select i1 %.not.i980, i1 true, i1 %i.bah
  br i1 %or.cond.i981, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.bai = load ptr, ptr @stderr, align 8
  %i.baj = select i1 %.not.i980, ptr %i.bag, ptr %i.bai
  %i.bak = load float, ptr %i.awo, align 4, !tbaa !12 ; 3 uses
  %i.bal = fpext float %i.bak to double
  %i.bam = load float, ptr %i.awp, align 4, !tbaa !12 ; 3 uses
  %i.ban = fpext float %i.bam to double
  %i.bao = load float, ptr %i.awq, align 4, !tbaa !12 ; 3 uses
  %i.bap = fpext float %i.bao to double
  %i.baq = fmul float %i.bam, %i.bam
  %i.bar = call float @llvm.fmuladd.f32(float %i.bak, float %i.bak, float %i.baq)
  %i.bas = call noundef float @llvm.fmuladd.f32(float %i.bao, float %i.bao, float %i.bar)
  %sqrt.i132.i = call noundef float @llvm.sqrt.f32(float %i.bas)
  %i.bat = fpext float %sqrt.i132.i to double
  %i.bau = load float, ptr %i.axd, align 4, !tbaa !12 ; 3 uses
  %i.bav = fpext float %i.bau to double
  %i.baw = load float, ptr %i.axf, align 4, !tbaa !12 ; 3 uses
  %i.bax = fpext float %i.baw to double
  %i.bay = load float, ptr %i.axj, align 4, !tbaa !12 ; 3 uses
  %i.baz = fpext float %i.bay to double
  %i.bba = fmul float %i.baw, %i.baw
  %i.bbb = call float @llvm.fmuladd.f32(float %i.bau, float %i.bau, float %i.bba)
  %i.bbc = call noundef float @llvm.fmuladd.f32(float %i.bay, float %i.bay, float %i.bbb)
  %sqrt.i133.i = call noundef float @llvm.sqrt.f32(float %i.bbc)
  %i.bbd = fpext float %sqrt.i133.i to double
  %i.bbe = fpext float %sqrt.i.i to double
  %i.bbf = fpext float %.0121.i to double
  %i.bbg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.baj, ptr noundef nonnull @.str.234, i32 noundef %i.awj, double noundef %i.bal, double noundef %i.ban, double noundef %i.bap, double noundef %i.bat, i32 noundef %i.awu, double noundef %i.bav, double noundef %i.bax, double noundef %i.baz, double noundef %i.bbd, double noundef %i.bbe, double noundef %i.bbf) #22 ; 0 uses
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.bbh = load float, ptr %i.sl, align 4, !tbaa !136
  %i.bbi = fdiv float %sqrt.i.i, %i.bbh
  %i.bbj = call float @llvm.rint.f32(float %i.bbi)
  %i.bbk = fptosi float %i.bbj to i32             ; 4 uses
  %i.bbl = load i32, ptr %.0102, align 8, !tbaa !137
  %i.bbm = icmp sgt i32 %i.bbl, %i.bbk
  br i1 %i.bbm, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.bbn = load ptr, ptr %i.sm, align 8, !tbaa !148
  %i.bbo = sext i32 %i.bbk to i64                 ; 2 uses
  %i.bbp = getelementptr inbounds [4 x i8], ptr %i.bbn, i64 %i.bbo ; 2 uses
  %i.bbq = load float, ptr %i.bbp, align 4, !tbaa !12
  %i.bbr = fadd float %.0121.i, %i.bbq
  store float %i.bbr, ptr %i.bbp, align 4, !tbaa !12
  %i.bbs = load ptr, ptr %i.sn, align 8, !tbaa !149
  %i.bbt = getelementptr inbounds [4 x i8], ptr %i.bbs, i64 %i.bbo ; 2 uses
  %i.bbu = load i32, ptr %i.bbt, align 4, !tbaa !10
  %i.bbv = add nsw i32 %i.bbu, 1
  store i32 %i.bbv, ptr %i.bbt, align 4, !tbaa !10
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.bbw = load i32, ptr %i.so, align 4, !tbaa !138
  %i.bbx = icmp sgt i32 %i.bbw, %i.bbk
  br i1 %i.bbx, label %bb.eo, label %_ZL7add2gkrP8t_gkrbinfff.exit.i

bb.eo:                                            ; preds = %bb.en
  %i.bby = call noundef float @acosf(float noundef %.0121.i) #22 ; 2 uses
  %i.bbz = load i8, ptr %i.se, align 8, !tbaa !143, !range !54, !noundef !55
  %i.bca = trunc nuw i8 %i.bbz to i1
  %i.bcb = load i32, ptr %i.sp, align 8, !tbaa !141 ; 3 uses
  br i1 %i.bca, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.bcc = sitofp i32 %i.bcb to double
  %i.bcd = fmul double %.0.i, %i.bcc
  %i.bce = fdiv double %i.bcd, f0x401921FB54442D18
  br label %bb.er

bb.eq:                                            ; preds = %bb.eo
  %i.bcf = sitofp i32 %i.bcb to float
  %i.bcg = fmul float %i.bby, %i.bcf
  %i.bch = fpext float %i.bcg to double
  %i.bci = fdiv double %i.bch, f0x400921FB54442D18
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %storemerge.in.i.i = phi double [ %i.bci, %bb.eq ], [ %i.bce, %bb.ep ]
  %storemerge.i.i = fptosi double %storemerge.in.i.i to i32
  %i.bcj = add nsw i32 %i.bcb, -1
  %.sroa.speculated27.i.i = call i32 @llvm.smax.i32(i32 %storemerge.i.i, i32 0)
  %.sroa.speculated.i.i = call i32 @llvm.smin.i32(i32 %.sroa.speculated27.i.i, i32 %i.bcj) ; 2 uses
  %i.bck = load ptr, ptr @debug, align 8, !tbaa !130 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bck, null
  br i1 %.not.i.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.bcl = fpext float %i.bby to double
  %i.bcm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bck, ptr noundef nonnull @.str.237, double noundef %i.bcl, i32 noundef %.sroa.speculated.i.i) #22 ; 0 uses
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.bcn = load ptr, ptr %i.sq, align 8, !tbaa !142
  %i.bco = sext i32 %i.bbk to i64
  %i.bcp = getelementptr inbounds [8 x i8], ptr %i.bcn, i64 %i.bco
  %i.bcq = load ptr, ptr %i.bcp, align 8, !tbaa !126
  %i.bcr = sext i32 %.sroa.speculated.i.i to i64
  %i.bcs = getelementptr inbounds [4 x i8], ptr %i.bcq, i64 %i.bcr ; 2 uses
  %i.bct = load float, ptr %i.bcs, align 4, !tbaa !12
  %i.bcu = fadd float %i.bct, 1.000000e+00
  store float %i.bcu, ptr %i.bcs, align 4, !tbaa !12
  br label %_ZL7add2gkrP8t_gkrbinfff.exit.i

_ZL7add2gkrP8t_gkrbinfff.exit.i:                  ; preds = %bb.et, %bb.en, %bb.ee, %bb.ed
  %indvars.iv.next168.i = add nuw nsw i64 %indvars.iv167.i, 1 ; 2 uses
  %i.bcv = load i32, ptr %i.rz, align 4, !tbaa !10 ; 2 uses
  %i.bcw = trunc nuw i64 %indvars.iv.next168.i to i32
  %i.bcx = icmp sgt i32 %i.bcv, %i.bcw
  br i1 %i.bcx, label %bb.ed, label %.loopexit.loopexit.i979, !llvm.loop !105

_ZL6do_gkrP8t_gkrbiniPiPS1_PKiPA3_fS6_7PbcTypePA3_KfPK6t_atomS4_.exit: ; preds = %.loopexit.i978, %.noexc992
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  br label %bb.eu

bb.eu:                                            ; preds = %_ZL6do_gkrP8t_gkrbiniPiPS1_PKiPA3_fS6_7PbcTypePA3_KfPK6t_atomS4_.exit, %bb.dx
  br i1 %i.fp, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.bcy = load ptr, ptr %.0103, align 8, !tbaa !126
  %.idx653 = mul nuw nsw i64 %indvars.iv329, 12
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcy, i64 %.idx653 ; 2 uses
  %i.bda = fptrunc <2 x double> %i.tz to <2 x float>
  store <2 x float> %i.bda, ptr %i.bcz, align 4, !tbaa !12
  %i.bdb = fptrunc double %.sroa.16.0 to float
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bcz, i64 8
  store float %i.bdb, ptr %i.bdc, align 4, !tbaa !12
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  br i1 %i.sr, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.bdd = trunc nuw nsw i64 %indvars.iv329 to i32
  %i.bde = srem i32 %i.bdd, %29
  %i.bdf = icmp eq i32 %i.bde, 0
  br i1 %i.bdf, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.bdg = load float, ptr %i.as, align 4, !tbaa !12
  %i.bdh = fpext float %i.bdg to double
  %shift113 = shufflevector <2 x double> %i.ua, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop114 = fadd <2 x double> %i.ua, %shift113
  %i.bdi = extractelement <2 x double> %foldExtExtBinop114, i64 0
  %i.bdj = fadd double %i.bdi, %i.ub
  %i.bdk = call double @sqrt(double noundef %i.bdj) #22
  %i.bdl = extractelement <2 x double> %i.tz, i64 0
  %i.bdm = extractelement <2 x double> %i.tz, i64 1
  %i.bdn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gt, ptr noundef nonnull @.str.181, double noundef %i.bdh, double noundef %i.bdl, double noundef %i.bdm, double noundef %.sroa.16.0, double noundef %i.bdk) #22 ; 0 uses
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
end_hunk_1
