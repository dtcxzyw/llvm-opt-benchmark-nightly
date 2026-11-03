Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_dipoles?download=true
inline.NumInlined: 537
inline.NumDeleted: 165
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZL6do_dipPK10t_topology7PbcTypefPKcS4_S4_S4_S4_S4_S4_S4_bS4_S4_bS4_bPiiiS4_fbbS4_S5_PS5_ffffS5_ibiS4_S4_PK16gmx_output_env_t:._crit_edge.i.i
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
  br i1 %i.rj, label %.lr.ph76.i, label %bb.du

.lr.ph76.i:                                       ; preds = %bb.dr, %.loopexit.i973
  %indvars.iv91.i.a = phi i64 [ %indvars.iv.next92.i.a, %.loopexit.i973 ], [ 0, %bb.dr ] ; 2 uses
  %indvars.iv88.in.i = phi i32 [ %indvars.iv88.i, %.loopexit.i973 ], [ %.0499122, %bb.dr ]
  %indvars.iv.i972 = phi i64 [ %indvars.iv.next.i974, %.loopexit.i973 ], [ 1, %bb.dr ] ; 2 uses
  %.075.i = phi double [ %i.aos, %.loopexit.i973 ], [ 0.000000e+00, %bb.dr ]
  %.03772.i = phi double [ %.2.i, %.loopexit.i973 ], [ 0.000000e+00, %bb.dr ] ; 2 uses
  %.03871.i = phi i32 [ %.240.i, %.loopexit.i973 ], [ 0, %bb.dr ] ; 2 uses
  %i.ane = phi <2 x double> [ %i.aoo, %.loopexit.i973 ], [ zeroinitializer, %bb.dr ]
  %indvars.iv88.i = add i32 %indvars.iv88.in.i, -1 ; 2 uses
  %i.anf = getelementptr inbounds nuw [12 x i8], ptr %i.gc, i64 %indvars.iv91.i.a ; 2 uses
  %i.ang = load <2 x float>, ptr %i.anf, align 4, !tbaa !12
  %i.anh = fpext <2 x float> %i.ang to <2 x double> ; 4 uses
  %i.ani = extractelement <2 x double> %i.anh, i64 0 ; 4 uses
  %i.anj = call double @llvm.fmuladd.f64(double %i.ani, double %i.ani, double 0.000000e+00)
  %i.ank = extractelement <2 x double> %i.anh, i64 1 ; 4 uses
  %i.anl = call double @llvm.fmuladd.f64(double %i.ank, double %i.ank, double %i.anj)
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anf, i64 8
  %i.ann = load float, ptr %i.anm, align 4, !tbaa !12
  %i.ano = fpext float %i.ann to double           ; 5 uses
  %i.anp = call double @llvm.fmuladd.f64(double %i.ano, double %i.ano, double %i.anl) ; 3 uses
  %i.anq = fcmp ogt double %i.anp, 0.000000e+00
  br i1 %i.anq, label %bb.ds, label %_ZL9cos_anglePKfS0_.exit52.i

bb.ds:                                            ; preds = %.lr.ph76.i
  %sqrt.i977 = call nnan double @llvm.sqrt.f64(double %i.anp)
  %i.anr = fdiv nnan double 1.000000e+00, %sqrt.i977 ; 2 uses
  %i.ans = fadd <2 x double> %i.anh, <double 0.000000e+00, double -0.000000e+00>
  %i.ant = call double @llvm.fmuladd.f64(double %i.ani, double 0.000000e+00, double 0.000000e+00) ; 2 uses
  %i.anu = shufflevector <2 x double> %i.anh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.anv = insertelement <2 x double> %i.anu, double %i.ant, i64 1
  %i.anw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.anv, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> %i.ans)
  %i.anx = insertelement <2 x double> poison, double %i.ano, i64 0
  %i.any = shufflevector <2 x double> %i.anx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.anz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.any, <2 x double> zeroinitializer, <2 x double> %i.anw)
  %i.aoa = insertelement <2 x double> poison, double %i.anr, i64 0
  %i.aob = shufflevector <2 x double> %i.aoa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aoc = fmul <2 x double> %i.anz, %i.aob
  %i.aod = fptrunc <2 x double> %i.aoc to <2 x float>
  %i.aoe = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aod) ; 2 uses
  %i.aof = fcmp ogt <2 x float> %i.aoe, splat (float 1.000000e+00)
  %i.aog = select <2 x i1> %i.aof, <2 x float> splat (float 1.000000e+00), <2 x float> %i.aoe
  %i.aoh = fpext <2 x float> %i.aog to <2 x double>
  %i.aoi = call double @llvm.fmuladd.f64(double %i.ank, double 0.000000e+00, double %i.ant)
  %i.aoj = fadd double %i.aoi, %i.ano
  %i.aok = fmul double %i.aoj, %i.anr
  %i.aol = fptrunc double %i.aok to float
  %i.aom = call float @llvm.fabs.f32(float %i.aol)
  br label %_ZL9cos_anglePKfS0_.exit52.i

_ZL9cos_anglePKfS0_.exit52.i:                     ; preds = %.lr.ph76.i, %bb.ds
  %.026.i49.i = phi float [ %i.aom, %bb.ds ], [ 1.000000e+00, %.lr.ph76.i ] ; 2 uses
  %i.aon = phi <2 x double> [ %i.aoh, %bb.ds ], [ splat (double 1.000000e+00), %.lr.ph76.i ]
  %i.aoo = fadd <2 x double> %i.ane, %i.aon       ; 2 uses
  %i.aop = fcmp ogt float %.026.i49.i, 1.000000e+00
  %i.aoq = select i1 %i.aop, float 1.000000e+00, float %.026.i49.i
  %i.aor = fpext float %i.aoq to double
  %i.aos = fadd double %.075.i, %i.aor            ; 2 uses
  %indvars.iv.next92.i.a = add nuw nsw i64 %indvars.iv91.i.a, 1 ; 3 uses
  %i.aot = icmp samesign ult i64 %indvars.iv.next92.i.a, %i.rx
  %or.cond.i = select i1 %10, i1 %i.aot, i1 false
  br i1 %or.cond.i, label %.lr.ph.i975, label %.loopexit.i973

.lr.ph.i975:                                      ; preds = %_ZL9cos_anglePKfS0_.exit52.i, %_ZL9cos_anglePKfS0_.exit56.i
  %indvars.iv86.i = phi i64 [ %indvars.iv.next87.i, %_ZL9cos_anglePKfS0_.exit56.i ], [ %indvars.iv.i972, %_ZL9cos_anglePKfS0_.exit52.i ] ; 2 uses
  %.167.i = phi double [ %i.apt, %_ZL9cos_anglePKfS0_.exit56.i ], [ %.03772.i, %_ZL9cos_anglePKfS0_.exit52.i ]
  %i.aou = getelementptr inbounds nuw [12 x i8], ptr %i.gc, i64 %indvars.iv86.i ; 3 uses
  %i.aov = load float, ptr %i.aou, align 4, !tbaa !12
  %i.aow = fpext float %i.aov to double           ; 3 uses
  %i.aox = call double @llvm.fmuladd.f64(double %i.aow, double %i.aow, double 0.000000e+00)
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aou, i64 4
  %i.aoz = load float, ptr %i.aoy, align 4, !tbaa !12
  %i.apa = fpext float %i.aoz to double           ; 3 uses
  %i.apb = call double @llvm.fmuladd.f64(double %i.apa, double %i.apa, double %i.aox)
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aou, i64 8
  %i.apd = load float, ptr %i.apc, align 4, !tbaa !12
  %i.ape = fpext float %i.apd to double           ; 3 uses
  %i.apf = call double @llvm.fmuladd.f64(double %i.ape, double %i.ape, double %i.apb)
  %i.apg = fmul double %i.anp, %i.apf             ; 2 uses
  %i.aph = fcmp ogt double %i.apg, 0.000000e+00
  br i1 %i.aph, label %bb.dt, label %_ZL9cos_anglePKfS0_.exit56.i

bb.dt:                                            ; preds = %.lr.ph.i975
  %i.api = call double @llvm.fmuladd.f64(double %i.ani, double %i.aow, double 0.000000e+00)
  %i.apj = call double @llvm.fmuladd.f64(double %i.ank, double %i.apa, double %i.api)
  %i.apk = call double @llvm.fmuladd.f64(double %i.ano, double %i.ape, double %i.apj)
  %i.apl = call nnan double @llvm.sqrt.f64(double %i.apg)
  %i.apm = fdiv nnan double 1.000000e+00, %i.apl
  %i.apn = fmul double %i.apk, %i.apm
  %i.apo = fptrunc double %i.apn to float
  %i.app = call float @llvm.fabs.f32(float %i.apo)
  br label %_ZL9cos_anglePKfS0_.exit56.i

_ZL9cos_anglePKfS0_.exit56.i:                     ; preds = %bb.dt, %.lr.ph.i975
  %.026.i53.i = phi float [ %i.app, %bb.dt ], [ 1.000000e+00, %.lr.ph.i975 ] ; 2 uses
  %i.apq = fcmp ogt float %.026.i53.i, 1.000000e+00
  %i.apr = select i1 %i.apq, float 1.000000e+00, float %.026.i53.i
  %i.aps = fpext float %i.apr to double
  %i.apt = fadd double %.167.i, %i.aps            ; 2 uses
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i, 1 ; 2 uses
  %exitcond.not.i976 = icmp eq i64 %indvars.iv.next87.i, %i.rx
  br i1 %exitcond.not.i976, label %.loopexit.loopexit.i, label %.lr.ph.i975, !llvm.loop !99

.loopexit.loopexit.i:                             ; preds = %_ZL9cos_anglePKfS0_.exit56.i
  %i.apu = add i32 %.03871.i, %indvars.iv88.i
  br label %.loopexit.i973

.loopexit.i973:                                   ; preds = %.loopexit.loopexit.i, %_ZL9cos_anglePKfS0_.exit52.i
  %.240.i = phi i32 [ %.03871.i, %_ZL9cos_anglePKfS0_.exit52.i ], [ %i.apu, %.loopexit.loopexit.i ] ; 2 uses
  %.2.i = phi double [ %.03772.i, %_ZL9cos_anglePKfS0_.exit52.i ], [ %i.apt, %.loopexit.loopexit.i ] ; 2 uses
  %indvars.iv.next.i974 = add nuw nsw i64 %indvars.iv.i972, 1
  %exitcond95.not.i.a = icmp eq i64 %indvars.iv.next92.i.a, %i.rx
  br i1 %exitcond95.not.i.a, label %._crit_edge.loopexit.i, label %.lr.ph76.i, !llvm.loop !100

._crit_edge.loopexit.i:                           ; preds = %.loopexit.i973
  %i.apv = sitofp i32 %.240.i to double
  %i.apw = fdiv double %.2.i, %i.apv
  %i.apx = fptrunc double %i.apw to float
  %i.apy = fpext float %i.apx to double
  br label %bb.du

bb.du:                                            ; preds = %._crit_edge.loopexit.i, %bb.dr
  %.0.lcssa.i971 = phi double [ 0.000000e+00, %bb.dr ], [ %i.aos, %._crit_edge.loopexit.i ]
  %i.apz = phi double [ +qnan, %bb.dr ], [ %i.apy, %._crit_edge.loopexit.i ]
  %i.aqa = phi <2 x double> [ zeroinitializer, %bb.dr ], [ %i.aoo, %._crit_edge.loopexit.i ]
  %i.aqb = fdiv <2 x double> %i.aqa, %i.ti
  %i.aqc = fdiv double %.0.lcssa.i971, %i.ry
  %i.aqd = fptrunc double %i.aqc to float
  %i.aqe = fptrunc <2 x double> %i.aqb to <2 x float>
  %i.aqf = fpext <2 x float> %i.aqe to <2 x double> ; 5 uses
  %i.aqg = fadd <2 x double> %i.aqf, splat (double -5.000000e-01) ; 2 uses
  %i.aqh = fmul <2 x double> %i.aqg, %i.aqg       ; 2 uses
  %shift107 = shufflevector <2 x double> %i.aqh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop108 = fadd <2 x double> %i.aqh, %shift107
  %i.aqi = extractelement <2 x double> %foldExtExtBinop108, i64 0
  %i.aqj = fpext float %i.aqd to double           ; 3 uses
  %i.aqk = fadd double %i.aqj, -5.000000e-01      ; 2 uses
  %i.aql = fmul double %i.aqk, %i.aqk
  %i.aqm = fadd double %i.aqi, %i.aql
  %sqrt125 = call double @llvm.sqrt.f64(double %i.aqm)
  %i.aqn = fptrunc double %sqrt125 to float
  %i.aqo = load float, ptr %i.as, align 4, !tbaa !12
  %i.aqp = fpext float %i.aqo to double           ; 2 uses
  %i.aqq = fpext float %i.aqn to double           ; 2 uses
  br i1 %10, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.aqr = extractelement <2 x double> %i.aqf, i64 0
  %i.aqs = extractelement <2 x double> %i.aqf, i64 1
  %i.aqt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0523, ptr noundef nonnull @.str.179, double noundef %i.aqp, double noundef %i.apz, double noundef %i.aqq, double noundef %i.aqr, double noundef %i.aqs, double noundef %i.aqj) #22 ; 0 uses
  br label %bb.dx

bb.dw:                                            ; preds = %bb.du
  %i.aqu = extractelement <2 x double> %i.aqf, i64 0
  %i.aqv = extractelement <2 x double> %i.aqf, i64 1
  %i.aqw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0523, ptr noundef nonnull @.str.180, double noundef %i.aqp, double noundef %i.aqq, double noundef %i.aqu, double noundef %i.aqv, double noundef %i.aqj) #22 ; 0 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dv, %bb.dw, %.preheader138
  br i1 %13, label %bb.dy, label %bb.eu

bb.dy:                                            ; preds = %bb.dx
  %i.aqx = load ptr, ptr %i.rl, align 8, !tbaa !29 ; 4 uses
  %i.aqy = load ptr, ptr %i.ap, align 8, !tbaa !126 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #22
  br i1 %i.rk, label %.preheader.i, label %.invoke

.preheader.i:                                     ; preds = %bb.dy, %._crit_edge140.i
  %indvars.iv162.i = phi i64 [ %indvars.iv.next163.i, %._crit_edge140.i ], [ 0, %bb.dy ] ; 6 uses
  %i.aqz = getelementptr inbounds nuw [8 x i8], ptr @_ZZL6do_gkrP8t_gkrbiniPiPS1_PKiPA3_fS6_7PbcTypePA3_KfPK6t_atomS4_E3xcm, i64 %indvars.iv162.i ; 2 uses
  %i.ara = load ptr, ptr %i.aqz, align 8, !tbaa !126 ; 2 uses
  %.not131.i = icmp eq ptr %i.ara, null
  br i1 %.not131.i, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %.preheader.i
  %i.arb = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv162.i
  %i.arc = load i32, ptr %i.arb, align 4, !tbaa !10
  %i.ard = sext i32 %i.arc to i64
  %i.are = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.100, i32 noundef 219, i64 noundef range(i64 -2147483648, 2147483648) %i.ard, i64 noundef 12)
          to label %.noexc990 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc990:                                        ; preds = %bb.dz
  store ptr %i.are, ptr %i.aqz, align 8, !tbaa !126
  br label %bb.ea

bb.ea:                                            ; preds = %.noexc990, %.preheader.i
  %i.arf = phi ptr [ %i.are, %.noexc990 ], [ %i.ara, %.preheader.i ] ; 4 uses
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv162.i
  %i.arh = load i32, ptr %i.arg, align 4, !tbaa !10 ; 4 uses
  %i.ari = icmp sgt i32 %i.arh, 0
  br i1 %i.ari, label %.lr.ph139.i, label %._crit_edge140.i

.lr.ph139.i:                                      ; preds = %bb.ea
  %i.arj = getelementptr inbounds nuw [8 x i8], ptr %23, i64 %indvars.iv162.i
  %i.ark = load ptr, ptr %i.arj, align 8, !tbaa !27 ; 4 uses
  %i.arl = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %indvars.iv162.i
  %i.arm = load i32, ptr %i.arl, align 4, !tbaa !10 ; 4 uses
  %i.arn = icmp sgt i32 %i.arm, 0
  %wide.trip.count160.i = zext nneg i32 %i.arh to i64 ; 3 uses
  br i1 %i.arn, label %.lr.ph139.split.us.i.preheader, label %.lr.ph139.split.i

.lr.ph139.split.us.i.preheader:                   ; preds = %.lr.ph139.i
  %xtraiter195 = and i64 %wide.trip.count160.i, 1
  %i.aro = icmp eq i32 %i.arh, 1
  br i1 %i.aro, label %.lr.ph139.split.us.i.epil.preheader, label %.lr.ph139.split.us.i.preheader.new

.lr.ph139.split.us.i.preheader.new:               ; preds = %.lr.ph139.split.us.i.preheader
  %unroll_iter = and i64 %wide.trip.count160.i, 2147483646
  br label %.lr.ph139.split.us.i

.lr.ph139.split.us.i:                             ; preds = %.lr.ph139.split.us.i, %.lr.ph139.split.us.i.preheader.new
  %indvars.iv157.i = phi i64 [ 0, %.lr.ph139.split.us.i.preheader.new ], [ %indvars.iv.next158.i.1, %.lr.ph139.split.us.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph139.split.us.i.preheader.new ], [ %niter.next.1, %.lr.ph139.split.us.i ]
  %i.arp = getelementptr inbounds nuw [4 x i8], ptr %i.ark, i64 %indvars.iv157.i
  %i.arq = load i32, ptr %i.arp, align 4, !tbaa !10
  %i.arr = sext i32 %i.arq to i64
  %i.ars = getelementptr inbounds [4 x i8], ptr %i.aqx, i64 %i.arr
  %i.art = load i32, ptr %i.ars, align 4, !tbaa !10
  %i.aru = add nsw i32 %i.art, %i.arm
  %i.arv = sext i32 %i.aru to i64
  %i.arw = getelementptr [12 x i8], ptr %i.aqy, i64 %i.arv ; 3 uses
  %i.arx = getelementptr i8, ptr %i.arw, i64 -12
  %i.ary = getelementptr inbounds nuw [12 x i8], ptr %i.arf, i64 %indvars.iv157.i ; 3 uses
  %i.arz = load float, ptr %i.arx, align 4, !tbaa !12
  store float %i.arz, ptr %i.ary, align 4, !tbaa !12
  %i.asa = getelementptr i8, ptr %i.arw, i64 -8
  %i.asb = load float, ptr %i.asa, align 4, !tbaa !12
  %i.asc = getelementptr inbounds nuw i8, ptr %i.ary, i64 4
  store float %i.asb, ptr %i.asc, align 4, !tbaa !12
  %i.asd = getelementptr i8, ptr %i.arw, i64 -4
  %i.ase = load float, ptr %i.asd, align 4, !tbaa !12
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ary, i64 8
  store float %i.ase, ptr %i.asf, align 4, !tbaa !12
  %indvars.iv.next158.i = or disjoint i64 %indvars.iv157.i, 1 ; 2 uses
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %i.ark, i64 %indvars.iv.next158.i
  %i.ash = load i32, ptr %i.asg, align 4, !tbaa !10
  %i.asi = sext i32 %i.ash to i64
  %i.asj = getelementptr inbounds [4 x i8], ptr %i.aqx, i64 %i.asi
  %i.ask = load i32, ptr %i.asj, align 4, !tbaa !10
  %i.asl = add nsw i32 %i.ask, %i.arm
  %i.asm = sext i32 %i.asl to i64
  %i.asn = getelementptr [12 x i8], ptr %i.aqy, i64 %i.asm ; 3 uses
  %i.aso = getelementptr i8, ptr %i.asn, i64 -12
  %i.asp = getelementptr inbounds nuw [12 x i8], ptr %i.arf, i64 %indvars.iv.next158.i ; 3 uses
  %i.asq = load float, ptr %i.aso, align 4, !tbaa !12
  store float %i.asq, ptr %i.asp, align 4, !tbaa !12
  %i.asr = getelementptr i8, ptr %i.asn, i64 -8
  %i.ass = load float, ptr %i.asr, align 4, !tbaa !12
  %i.ast = getelementptr inbounds nuw i8, ptr %i.asp, i64 4
  store float %i.ass, ptr %i.ast, align 4, !tbaa !12
  %i.asu = getelementptr i8, ptr %i.asn, i64 -4
  %i.asv = load float, ptr %i.asu, align 4, !tbaa !12
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asp, i64 8
  store float %i.asv, ptr %i.asw, align 4, !tbaa !12
  %indvars.iv.next158.i.1 = add nuw nsw i64 %indvars.iv157.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge140.i.loopexit.unr-lcssa, label %.lr.ph139.split.us.i, !llvm.loop !101

.lr.ph139.split.i:                                ; preds = %.lr.ph139.i, %._crit_edge.i982
  %indvars.iv152.i = phi i64 [ %indvars.iv.next153.i, %._crit_edge.i982 ], [ 0, %.lr.ph139.i ] ; 3 uses
  %i.asx = getelementptr inbounds nuw [4 x i8], ptr %i.ark, i64 %indvars.iv152.i
  %i.asy = load i32, ptr %i.asx, align 4, !tbaa !10
  %i.asz = sext i32 %i.asy to i64
  %i.ata = getelementptr inbounds [4 x i8], ptr %i.aqx, i64 %i.asz ; 2 uses
  %i.atb = load i32, ptr %i.ata, align 4, !tbaa !10 ; 2 uses
  %i.atc = getelementptr i8, ptr %i.ata, i64 4
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !10 ; 2 uses
  %i.ate = getelementptr inbounds nuw [12 x i8], ptr %i.arf, i64 %indvars.iv152.i ; 7 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ate, i64 4 ; 4 uses
  store <2 x float> zeroinitializer, ptr %i.ate, align 4, !tbaa !12
  %i.atg = getelementptr inbounds nuw i8, ptr %i.ate, i64 8 ; 5 uses
  store float 0.000000e+00, ptr %i.atg, align 4, !tbaa !12
  %i.ath = icmp slt i32 %i.atb, %i.atd
  br i1 %i.ath, label %.lr.ph.preheader.i983, label %._crit_edge.i982

.lr.ph.preheader.i983:                            ; preds = %.lr.ph139.split.i
  %i.ati = sext i32 %i.atb to i64                 ; 6 uses
  %wide.trip.count.i984 = sext i32 %i.atd to i64  ; 3 uses
  %i.atj = sub nsw i64 %wide.trip.count.i984, %i.ati
  %xtraiter189 = and i64 %i.atj, 1
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph.i985.prol.loopexit, label %.lr.ph.i985.prol

.lr.ph.i985.prol:                                 ; preds = %.lr.ph.preheader.i983
  %i.atk = getelementptr inbounds [36 x i8], ptr %i.fn, i64 %i.ati
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atk, i64 4
end_hunk_0
begin_hunk_1_@_ZL6do_dipPK10t_topology7PbcTypefPKcS4_S4_S4_S4_S4_S4_S4_bS4_S4_bS4_bPiiiS4_fbbS4_S5_PS5_ffffS5_ibiS4_S4_PK16gmx_output_env_t:._crit_edge.i.i

._crit_edge140.i:                                 ; preds = %._crit_edge.i982, %.lr.ph139.split.us.i.epil.preheader, %._crit_edge140.i.loopexit.unr-lcssa, %bb.ea
  %indvars.iv.next163.i = add nuw nsw i64 %indvars.iv162.i, 1 ; 2 uses
  %exitcond166.not.i = icmp eq i64 %indvars.iv.next163.i, %wide.trip.count165.i
  br i1 %exitcond166.not.i, label %bb.eb, label %.preheader.i, !llvm.loop !103

bb.eb:                                            ; preds = %._crit_edge140.i
  invoke void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %51, i32 noundef %1, ptr noundef nonnull %i.at)
          to label %.noexc991 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc991:                                        ; preds = %bb.eb
  %i.awc = load i32, ptr %22, align 4, !tbaa !10  ; 2 uses
  %i.awd = icmp sgt i32 %i.awc, 0
  br i1 %i.awd, label %.lr.ph147.i, label %_ZL6do_gkrP8t_gkrbiniPiPS1_PKiPA3_fS6_7PbcTypePA3_KfPK6t_atomS4_.exit

.lr.ph147.i:                                      ; preds = %.noexc991
  %.pre.i = load i32, ptr %i.rz, align 4, !tbaa !10
  br label %bb.ec

.loopexit.loopexit.i979:                          ; preds = %_ZL7add2gkrP8t_gkrbinfff.exit.i
  %.pre173.i = load i32, ptr %22, align 4, !tbaa !10
  br label %.loopexit.i978

.loopexit.i978:                                   ; preds = %bb.ec, %.loopexit.loopexit.i979
  %i.awe = phi i32 [ %.pre173.i, %.loopexit.loopexit.i979 ], [ %i.awi, %bb.ec ] ; 2 uses
  %i.awf = phi i32 [ %i.bda, %.loopexit.loopexit.i979 ], [ %i.awj, %bb.ec ]
  %i.awg = sext i32 %i.awe to i64
  %i.awh = icmp slt i64 %indvars.iv.next171.i, %i.awg
  br i1 %i.awh, label %bb.ec, label %_ZL6do_gkrP8t_gkrbiniPiPS1_PKiPA3_fS6_7PbcTypePA3_KfPK6t_atomS4_.exit, !llvm.loop !104

bb.ec:                                            ; preds = %.loopexit.i978, %.lr.ph147.i
  %i.awi = phi i32 [ %i.awc, %.lr.ph147.i ], [ %i.awe, %.loopexit.i978 ]
  %i.awj = phi i32 [ %.pre.i, %.lr.ph147.i ], [ %i.awf, %.loopexit.i978 ] ; 2 uses
  %indvars.iv170.i = phi i64 [ 0, %.lr.ph147.i ], [ %indvars.iv.next171.i, %.loopexit.i978 ] ; 4 uses
  %i.awk = load ptr, ptr %23, align 8, !tbaa !27
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %i.awk, i64 %indvars.iv170.i
  %i.awm = load i32, ptr %i.awl, align 4, !tbaa !10 ; 2 uses
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 3 uses
  %i.awn = trunc nuw nsw i64 %indvars.iv.next171.i to i32
  %i.awo = select i1 %i.eg, i32 0, i32 %i.awn     ; 2 uses
  %i.awp = icmp slt i32 %i.awo, %i.awj
  br i1 %i.awp, label %.lr.ph144.i, label %.loopexit.i978

.lr.ph144.i:                                      ; preds = %bb.ec
  %i.awq = sext i32 %i.awm to i64
  %i.awr = getelementptr inbounds [12 x i8], ptr %i.gc, i64 %i.awq ; 6 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 4 ; 2 uses
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awr, i64 8 ; 4 uses
  %i.awu = zext nneg i32 %i.awo to i64
  br label %bb.ed

bb.ed:                                            ; preds = %_ZL7add2gkrP8t_gkrbinfff.exit.i, %.lr.ph144.i
  %indvars.iv167.i = phi i64 [ %i.awu, %.lr.ph144.i ], [ %indvars.iv.next168.i, %_ZL7add2gkrP8t_gkrbinfff.exit.i ] ; 4 uses
  %i.awv = load ptr, ptr %i.sa, align 8, !tbaa !27
  %i.aww = getelementptr inbounds nuw [4 x i8], ptr %i.awv, i64 %indvars.iv167.i
  %i.awx = load i32, ptr %i.aww, align 4, !tbaa !10 ; 2 uses
  %i.awy = load float, ptr %i.awr, align 4, !tbaa !12 ; 2 uses
  %i.awz = load float, ptr %i.aws, align 4, !tbaa !12 ; 2 uses
  %i.axa = fmul float %i.awz, %i.awz
  %i.axb = call float @llvm.fmuladd.f32(float %i.awy, float %i.awy, float %i.axa)
  %i.axc = load float, ptr %i.awt, align 4, !tbaa !12 ; 2 uses
  %i.axd = call noundef float @llvm.fmuladd.f32(float %i.axc, float %i.axc, float %i.axb)
  %i.axe = fcmp ogt float %i.axd, 0.000000e+00
  br i1 %i.axe, label %bb.ee, label %_ZL7add2gkrP8t_gkrbinfff.exit.i

bb.ee:                                            ; preds = %bb.ed
  %i.axf = sext i32 %i.awx to i64
  %i.axg = getelementptr inbounds [12 x i8], ptr %i.gc, i64 %i.axf ; 6 uses
  %i.axh = load float, ptr %i.axg, align 4, !tbaa !12 ; 2 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axg, i64 4 ; 2 uses
  %i.axj = load float, ptr %i.axi, align 4, !tbaa !12 ; 2 uses
  %i.axk = fmul float %i.axj, %i.axj
  %i.axl = call float @llvm.fmuladd.f32(float %i.axh, float %i.axh, float %i.axk)
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axg, i64 8 ; 4 uses
  %i.axn = load float, ptr %i.axm, align 4, !tbaa !12 ; 2 uses
  %i.axo = call noundef float @llvm.fmuladd.f32(float %i.axn, float %i.axn, float %i.axl)
  %i.axp = fcmp ogt float %i.axo, 0.000000e+00
  br i1 %i.axp, label %bb.ef, label %_ZL7add2gkrP8t_gkrbinfff.exit.i

bb.ef:                                            ; preds = %bb.ee
  %i.axq = load ptr, ptr @_ZZL6do_gkrP8t_gkrbiniPiPS1_PKiPA3_fS6_7PbcTypePA3_KfPK6t_atomS4_E3xcm, align 16, !tbaa !126
  %i.axr = getelementptr inbounds nuw [12 x i8], ptr %i.axq, i64 %indvars.iv170.i
  %i.axs = load ptr, ptr %i.sb, align 8, !tbaa !126
  %i.axt = getelementptr inbounds nuw [12 x i8], ptr %i.axs, i64 %indvars.iv167.i
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %51, ptr noundef %i.axr, ptr noundef %i.axt, ptr noundef nonnull %i.l)
          to label %.noexc992 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc992:                                        ; preds = %bb.ef
  %i.axu = load float, ptr %i.l, align 4, !tbaa !12 ; 2 uses
  %i.axv = load float, ptr %i.sc, align 4, !tbaa !12 ; 2 uses
  %i.axw = fmul float %i.axv, %i.axv
  %i.axx = call float @llvm.fmuladd.f32(float %i.axu, float %i.axu, float %i.axw)
  %i.axy = load float, ptr %i.sd, align 4, !tbaa !12 ; 2 uses
  %i.axz = call noundef float @llvm.fmuladd.f32(float %i.axy, float %i.axy, float %i.axx)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.axz) ; 2 uses
  %i.aya = load i8, ptr %i.se, align 8, !tbaa !143, !range !54, !noundef !55
  %i.ayb = trunc nuw i8 %i.aya to i1
  br i1 %i.ayb, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %.noexc992
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
  %i.ayc = load ptr, ptr @_ZZL6do_gkrP8t_gkrbiniPiPS1_PKiPA3_fS6_7PbcTypePA3_KfPK6t_atomS4_E3xcm, align 16, !tbaa !126
  %i.ayd = getelementptr inbounds nuw [12 x i8], ptr %i.ayc, i64 %indvars.iv170.i ; 3 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayd, i64 4
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.ayd, i64 8
  %i.ayg = load ptr, ptr %i.sb, align 8, !tbaa !126
  %i.ayh = getelementptr inbounds nuw [12 x i8], ptr %i.ayg, i64 %indvars.iv167.i ; 3 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayh, i64 4
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayh, i64 8
  %i.ayk = load float, ptr %i.ayd, align 4, !tbaa !12 ; 2 uses
  store float %i.ayk, ptr %i.n, align 4, !tbaa !12
  %i.ayl = load float, ptr %i.aye, align 4, !tbaa !12 ; 2 uses
  store float %i.ayl, ptr %i.sf, align 4, !tbaa !12
  %i.aym = load float, ptr %i.ayf, align 4, !tbaa !12 ; 2 uses
  store float %i.aym, ptr %i.sg, align 4, !tbaa !12
  %i.ayn = insertelement <2 x float> poison, float %i.ayk, i64 0
  %i.ayo = insertelement <2 x float> %i.ayn, float %i.ayl, i64 1
  %i.ayp = load float, ptr %i.ayh, align 4, !tbaa !12 ; 2 uses
  store float %i.ayp, ptr %i.o, align 4, !tbaa !12
  %i.ayq = load float, ptr %i.ayi, align 4, !tbaa !12 ; 2 uses
  store float %i.ayq, ptr %i.sh, align 4, !tbaa !12
  %i.ayr = load float, ptr %i.ayj, align 4, !tbaa !12 ; 2 uses
  store float %i.ayr, ptr %i.si, align 4, !tbaa !12
  %i.ays = load <2 x float>, ptr %i.awr, align 4, !tbaa !12
  %i.ayt = fadd <2 x float> %i.ayo, %i.ays
  %i.ayu = load float, ptr %i.awt, align 4, !tbaa !12
  %i.ayv = fadd float %i.aym, %i.ayu
  store <2 x float> %i.ayt, ptr %i.m, align 8, !tbaa !12
  store float %i.ayv, ptr %i.sj, align 8, !tbaa !12
  %i.ayw = load <2 x float>, ptr %i.axg, align 4, !tbaa !12
  %i.ayx = insertelement <2 x float> poison, float %i.ayp, i64 0
  %i.ayy = insertelement <2 x float> %i.ayx, float %i.ayq, i64 1
  %i.ayz = fadd <2 x float> %i.ayy, %i.ayw
  %i.aza = load float, ptr %i.axm, align 4, !tbaa !12
  %i.azb = fadd float %i.ayr, %i.aza
  store <2 x float> %i.ayz, ptr %i.p, align 8, !tbaa !12
  store float %i.azb, ptr %i.sk, align 8, !tbaa !12
  %i.azc = invoke noundef float @_Z9dih_anglePKfS0_S0_S0_PK5t_pbcPfS4_S4_S4_S4_PiS5_S5_(ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %51, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull %i.x)
          to label %.noexc993 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc993:                                        ; preds = %bb.eg
  %i.azd = call noundef float @cosf(float noundef %i.azc) #22
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
  %i.aze = fpext float %i.azc to double
  %i.azf = fadd double %i.aze, f0x400921FB54442D18
  br label %bb.ej

bb.eh:                                            ; preds = %.noexc992
  %i.azg = load float, ptr %i.awt, align 4, !tbaa !12
  %i.azh = load float, ptr %i.axm, align 4, !tbaa !12
  %i.azi = load <2 x float>, ptr %i.awr, align 4, !tbaa !12 ; 2 uses
  %i.azj = load <2 x float>, ptr %i.axg, align 4, !tbaa !12 ; 2 uses
  %i.azk = shufflevector <2 x float> %i.azi, <2 x float> %i.azj, <2 x i32> <i32 0, i32 2>
  %i.azl = fpext <2 x float> %i.azk to <2 x double> ; 4 uses
  %i.azm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.azl, <2 x double> %i.azl, <2 x double> zeroinitializer)
  %i.azn = shufflevector <2 x float> %i.azi, <2 x float> %i.azj, <2 x i32> <i32 1, i32 3>
  %i.azo = fpext <2 x float> %i.azn to <2 x double> ; 4 uses
  %i.azp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.azo, <2 x double> %i.azo, <2 x double> %i.azm)
  %i.azq = insertelement <2 x float> poison, float %i.azg, i64 0
  %i.azr = insertelement <2 x float> %i.azq, float %i.azh, i64 1
  %i.azs = fpext <2 x float> %i.azr to <2 x double> ; 4 uses
  %i.azt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.azs, <2 x double> %i.azs, <2 x double> %i.azp) ; 2 uses
  %shift110 = shufflevector <2 x double> %i.azt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop111 = fmul <2 x double> %i.azt, %shift110
  %i.azu = extractelement <2 x double> %foldExtExtBinop111, i64 0 ; 2 uses
  %i.azv = fcmp ogt double %i.azu, 0.000000e+00
  br i1 %i.azv, label %bb.ei, label %_ZL9cos_anglePKfS0_.exit.i

bb.ei:                                            ; preds = %bb.eh
  %i.azw = extractelement <2 x double> %i.azl, i64 0
  %i.azx = extractelement <2 x double> %i.azl, i64 1
  %i.azy = call double @llvm.fmuladd.f64(double %i.azw, double %i.azx, double 0.000000e+00)
  %i.azz = extractelement <2 x double> %i.azo, i64 0
  %i.baa = extractelement <2 x double> %i.azo, i64 1
  %i.bab = call double @llvm.fmuladd.f64(double %i.azz, double %i.baa, double %i.azy)
  %i.bac = extractelement <2 x double> %i.azs, i64 0
  %i.bad = extractelement <2 x double> %i.azs, i64 1
  %i.bae = call double @llvm.fmuladd.f64(double %i.bac, double %i.bad, double %i.bab)
  %i.baf = call nnan double @llvm.sqrt.f64(double %i.azu)
  %i.bag = fdiv nnan double 1.000000e+00, %i.baf
  %i.bah = fmul double %i.bae, %i.bag
  %i.bai = fptrunc double %i.bah to float
  br label %_ZL9cos_anglePKfS0_.exit.i

_ZL9cos_anglePKfS0_.exit.i:                       ; preds = %bb.ei, %bb.eh
  %.026.i.i = phi float [ %i.bai, %bb.ei ], [ 1.000000e+00, %bb.eh ] ; 3 uses
  %i.baj = fcmp ogt float %.026.i.i, 1.000000e+00
  %i.bak = fcmp olt float %.026.i.i, -1.000000e+00
  %..026.i.i = select i1 %i.bak, float -1.000000e+00, float %.026.i.i
  %.027.i.i = select i1 %i.baj, float 1.000000e+00, float %..026.i.i
  br label %bb.ej

bb.ej:                                            ; preds = %_ZL9cos_anglePKfS0_.exit.i, %.noexc993
  %.0121.i = phi float [ %i.azd, %.noexc993 ], [ %.027.i.i, %_ZL9cos_anglePKfS0_.exit.i ] ; 4 uses
  %.0.i = phi double [ %i.azf, %.noexc993 ], [ f0x400921FB54442D18, %_ZL9cos_anglePKfS0_.exit.i ]
  %i.bal = load ptr, ptr @debug, align 8, !tbaa !130 ; 2 uses
  %.not.i980 = icmp ne ptr %i.bal, null           ; 2 uses
  %i.bam = fcmp uno float %.0121.i, 0.000000e+00
  %or.cond.i981 = select i1 %.not.i980, i1 true, i1 %i.bam
  br i1 %or.cond.i981, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.ban = load ptr, ptr @stderr, align 8
  %i.bao = select i1 %.not.i980, ptr %i.bal, ptr %i.ban
  %i.bap = load float, ptr %i.awr, align 4, !tbaa !12 ; 3 uses
  %i.baq = fpext float %i.bap to double
  %i.bar = load float, ptr %i.aws, align 4, !tbaa !12 ; 3 uses
  %i.bas = fpext float %i.bar to double
  %i.bat = load float, ptr %i.awt, align 4, !tbaa !12 ; 3 uses
  %i.bau = fpext float %i.bat to double
  %i.bav = fmul float %i.bar, %i.bar
  %i.baw = call float @llvm.fmuladd.f32(float %i.bap, float %i.bap, float %i.bav)
  %i.bax = call noundef float @llvm.fmuladd.f32(float %i.bat, float %i.bat, float %i.baw)
  %sqrt.i132.i = call noundef float @llvm.sqrt.f32(float %i.bax)
  %i.bay = fpext float %sqrt.i132.i to double
  %i.baz = load float, ptr %i.axg, align 4, !tbaa !12 ; 3 uses
  %i.bba = fpext float %i.baz to double
  %i.bbb = load float, ptr %i.axi, align 4, !tbaa !12 ; 3 uses
  %i.bbc = fpext float %i.bbb to double
  %i.bbd = load float, ptr %i.axm, align 4, !tbaa !12 ; 3 uses
  %i.bbe = fpext float %i.bbd to double
  %i.bbf = fmul float %i.bbb, %i.bbb
  %i.bbg = call float @llvm.fmuladd.f32(float %i.baz, float %i.baz, float %i.bbf)
  %i.bbh = call noundef float @llvm.fmuladd.f32(float %i.bbd, float %i.bbd, float %i.bbg)
  %sqrt.i133.i = call noundef float @llvm.sqrt.f32(float %i.bbh)
  %i.bbi = fpext float %sqrt.i133.i to double
  %i.bbj = fpext float %sqrt.i.i to double
  %i.bbk = fpext float %.0121.i to double
  %i.bbl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bao, ptr noundef nonnull @.str.234, i32 noundef %i.awm, double noundef %i.baq, double noundef %i.bas, double noundef %i.bau, double noundef %i.bay, i32 noundef %i.awx, double noundef %i.bba, double noundef %i.bbc, double noundef %i.bbe, double noundef %i.bbi, double noundef %i.bbj, double noundef %i.bbk) #22 ; 0 uses
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.bbm = load float, ptr %i.sl, align 4, !tbaa !136
  %i.bbn = fdiv float %sqrt.i.i, %i.bbm
  %i.bbo = call float @llvm.rint.f32(float %i.bbn)
  %i.bbp = fptosi float %i.bbo to i32             ; 4 uses
  %i.bbq = load i32, ptr %.0102, align 8, !tbaa !137
  %i.bbr = icmp sgt i32 %i.bbq, %i.bbp
  br i1 %i.bbr, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.bbs = load ptr, ptr %i.sm, align 8, !tbaa !148
  %i.bbt = sext i32 %i.bbp to i64                 ; 2 uses
  %i.bbu = getelementptr inbounds [4 x i8], ptr %i.bbs, i64 %i.bbt ; 2 uses
  %i.bbv = load float, ptr %i.bbu, align 4, !tbaa !12
  %i.bbw = fadd float %.0121.i, %i.bbv
  store float %i.bbw, ptr %i.bbu, align 4, !tbaa !12
  %i.bbx = load ptr, ptr %i.sn, align 8, !tbaa !149
  %i.bby = getelementptr inbounds [4 x i8], ptr %i.bbx, i64 %i.bbt ; 2 uses
  %i.bbz = load i32, ptr %i.bby, align 4, !tbaa !10
  %i.bca = add nsw i32 %i.bbz, 1
  store i32 %i.bca, ptr %i.bby, align 4, !tbaa !10
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.bcb = load i32, ptr %i.so, align 4, !tbaa !138
  %i.bcc = icmp sgt i32 %i.bcb, %i.bbp
  br i1 %i.bcc, label %bb.eo, label %_ZL7add2gkrP8t_gkrbinfff.exit.i

bb.eo:                                            ; preds = %bb.en
  %i.bcd = call noundef float @acosf(float noundef %.0121.i) #22 ; 2 uses
  %i.bce = load i8, ptr %i.se, align 8, !tbaa !143, !range !54, !noundef !55
  %i.bcf = trunc nuw i8 %i.bce to i1
  %i.bcg = load i32, ptr %i.sp, align 8, !tbaa !141 ; 3 uses
  br i1 %i.bcf, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.bch = sitofp i32 %i.bcg to double
  %i.bci = fmul double %.0.i, %i.bch
  %i.bcj = fdiv double %i.bci, f0x401921FB54442D18
  br label %bb.er

bb.eq:                                            ; preds = %bb.eo
  %i.bck = sitofp i32 %i.bcg to float
  %i.bcl = fmul float %i.bcd, %i.bck
  %i.bcm = fpext float %i.bcl to double
  %i.bcn = fdiv double %i.bcm, f0x400921FB54442D18
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %storemerge.in.i.i = phi double [ %i.bcn, %bb.eq ], [ %i.bcj, %bb.ep ]
  %storemerge.i.i = fptosi double %storemerge.in.i.i to i32
  %i.bco = add nsw i32 %i.bcg, -1
  %.sroa.speculated27.i.i = call i32 @llvm.smax.i32(i32 %storemerge.i.i, i32 0)
  %.sroa.speculated.i.i = call i32 @llvm.smin.i32(i32 %.sroa.speculated27.i.i, i32 %i.bco) ; 2 uses
  %i.bcp = load ptr, ptr @debug, align 8, !tbaa !130 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bcp, null
  br i1 %.not.i.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.bcq = fpext float %i.bcd to double
  %i.bcr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bcp, ptr noundef nonnull @.str.237, double noundef %i.bcq, i32 noundef %.sroa.speculated.i.i) #22 ; 0 uses
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.bcs = load ptr, ptr %i.sq, align 8, !tbaa !142
  %i.bct = sext i32 %i.bbp to i64
  %i.bcu = getelementptr inbounds [8 x i8], ptr %i.bcs, i64 %i.bct
  %i.bcv = load ptr, ptr %i.bcu, align 8, !tbaa !126
  %i.bcw = sext i32 %.sroa.speculated.i.i to i64
  %i.bcx = getelementptr inbounds [4 x i8], ptr %i.bcv, i64 %i.bcw ; 2 uses
  %i.bcy = load float, ptr %i.bcx, align 4, !tbaa !12
  %i.bcz = fadd float %i.bcy, 1.000000e+00
  store float %i.bcz, ptr %i.bcx, align 4, !tbaa !12
  br label %_ZL7add2gkrP8t_gkrbinfff.exit.i

_ZL7add2gkrP8t_gkrbinfff.exit.i:                  ; preds = %bb.et, %bb.en, %bb.ee, %bb.ed
  %indvars.iv.next168.i = add nuw nsw i64 %indvars.iv167.i, 1 ; 2 uses
  %i.bda = load i32, ptr %i.rz, align 4, !tbaa !10 ; 2 uses
  %i.bdb = trunc nuw i64 %indvars.iv.next168.i to i32
  %i.bdc = icmp sgt i32 %i.bda, %i.bdb
  br i1 %i.bdc, label %bb.ed, label %.loopexit.loopexit.i979, !llvm.loop !105

_ZL6do_gkrP8t_gkrbiniPiPS1_PKiPA3_fS6_7PbcTypePA3_KfPK6t_atomS4_.exit: ; preds = %.loopexit.i978, %.noexc991
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  br label %bb.eu

bb.eu:                                            ; preds = %_ZL6do_gkrP8t_gkrbiniPiPS1_PKiPA3_fS6_7PbcTypePA3_KfPK6t_atomS4_.exit, %bb.dx
  br i1 %i.fp, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.bdd = load ptr, ptr %.0103, align 8, !tbaa !126
  %.idx653 = mul nuw nsw i64 %indvars.iv329, 12
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %.idx653 ; 2 uses
  %i.bdf = fptrunc <2 x double> %i.tz to <2 x float>
  store <2 x float> %i.bdf, ptr %i.bde, align 4, !tbaa !12
  %i.bdg = fptrunc double %.sroa.16.0 to float
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bde, i64 8
  store float %i.bdg, ptr %i.bdh, align 4, !tbaa !12
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  br i1 %i.sr, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.bdi = trunc nuw nsw i64 %indvars.iv329 to i32
  %i.bdj = srem i32 %i.bdi, %29
  %i.bdk = icmp eq i32 %i.bdj, 0
  br i1 %i.bdk, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.bdl = load float, ptr %i.as, align 4, !tbaa !12
  %i.bdm = fpext float %i.bdl to double
  %shift113 = shufflevector <2 x double> %i.ua, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop114 = fadd <2 x double> %i.ua, %shift113
  %i.bdn = extractelement <2 x double> %foldExtExtBinop114, i64 0
  %i.bdo = fadd double %i.bdn, %i.ub
  %i.bdp = call double @sqrt(double noundef %i.bdo) #22
  %i.bdq = extractelement <2 x double> %i.tz, i64 0
  %i.bdr = extractelement <2 x double> %i.tz, i64 1
  %i.bds = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gt, ptr noundef nonnull @.str.181, double noundef %i.bdm, double noundef %i.bdq, double noundef %i.bdr, double noundef %.sroa.16.0, double noundef %i.bdp) #22 ; 0 uses
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.bdt = fadd <2 x double> %i.tz, %i.tj         ; 5 uses
  %i.bdu = fadd <2 x double> %i.ua, %i.tk         ; 3 uses
  %i.bdv = fadd double %.sroa.16.0, %.sroa.12351.0 ; 4 uses
  %i.bdw = fadd double %i.ub, %.sroa.12.0         ; 3 uses
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1 ; 2 uses
  %i.bdx = trunc nuw i64 %indvars.iv.next330 to i32 ; 8 uses
  %i.bdy = uitofp nneg i32 %i.bdx to double       ; 7 uses
  %i.bdz = fdiv double 1.000000e+00, %i.bdy       ; 4 uses
  %i.bea = extractelement <2 x double> %i.bdu, i64 0 ; 2 uses
  %i.beb = extractelement <2 x double> %i.bdu, i64 1 ; 2 uses
  %i.bec = fadd double %i.bea, %i.beb
  %i.bed = fadd double %i.bec, %i.bdw
  %i.bee = fmul double %i.bdz, %i.bed             ; 4 uses
  %foldExtExtBinop116 = fmul <2 x double> %i.bdt, %i.bdt
  %i.bef = extractelement <2 x double> %foldExtExtBinop116, i64 1
  %i.beg = extractelement <2 x double> %i.bdt, i64 0 ; 2 uses
  %i.beh = call double @llvm.fmuladd.f64(double %i.beg, double %i.beg, double %i.bef)
  %i.bei = call double @llvm.fmuladd.f64(double %i.bdv, double %i.bdv, double %i.beh)
  %i.bej = fmul double %i.bdz, %i.bei
  %i.bek = fmul double %i.bdz, %i.bej             ; 4 uses
  %i.bel = fsub double %i.bee, %i.bek             ; 4 uses
  %i.bem = load float, ptr %i.at, align 16, !tbaa !12
  %i.ben = load float, ptr %i.rv, align 16, !tbaa !12 ; 2 uses
  %i.beo = load float, ptr %i.rw, align 16, !tbaa !12 ; 2 uses
  %i.bep = load float, ptr %i.su, align 4, !tbaa !12 ; 2 uses
end_hunk_1
