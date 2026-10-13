Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_current?download=true
inline.NumInlined: 251
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z11gmx_currentiPPc:bb.a
  %i.aia = load float, ptr %i.ahz, align 4, !tbaa !24 ; 2 uses
  %i.aib = fmul float %i.ahy, %i.aia              ; 2 uses
  store float %i.aib, ptr %i.ahw, align 4, !tbaa !24
  %i.aic = insertelement <2 x float> poison, float %i.aia, i64 0
  %i.aid = shufflevector <2 x float> %i.aic, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aie = fmul <2 x float> %i.ahv, %i.aid        ; 3 uses
  %i.aif = extractelement <2 x float> %i.aie, i64 0
  store float %i.aif, ptr %i.ahq, align 4, !tbaa !24
  %i.aig = extractelement <2 x float> %i.aie, i64 1
  store float %i.aig, ptr %i.ahr, align 4, !tbaa !24
  %i.aih = load <2 x float>, ptr %i.ahf, align 4, !tbaa !24
  %i.aii = fadd <2 x float> %i.aie, %i.aih
  %i.aij = load float, ptr %i.ahh, align 4, !tbaa !24
  %i.aik = fadd float %i.aib, %i.aij
  store <2 x float> %i.aii, ptr %i.ahf, align 4, !tbaa !24
  store float %i.aik, ptr %i.ahh, align 4, !tbaa !24
  %indvars.iv.next608.i = add nuw nsw i64 %indvars.iv607.i, 1 ; 2 uses
  %exitcond611.not.i = icmp eq i64 %indvars.iv.next608.i, %wide.trip.count602.i
  br i1 %exitcond611.not.i, label %._crit_edge554.i, label %bb.cv, !llvm.loop !65

._crit_edge554.i:                                 ; preds = %bb.cv, %bb.cu
  %i.ail = load float, ptr %i.sx, align 4, !tbaa !24
  %i.aim = fpext float %i.ail to double
  %i.ain = getelementptr inbounds nuw [12 x i8], ptr %.1492.i, i64 %indvar.i ; 3 uses
  %i.aio = load float, ptr %i.ain, align 4, !tbaa !24
  %i.aip = fpext float %i.aio to double
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.ain, i64 4
  %i.air = load float, ptr %i.aiq, align 4, !tbaa !24
  %i.ais = fpext float %i.air to double
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ain, i64 8
  %i.aiu = load float, ptr %i.ait, align 4, !tbaa !24
  %i.aiv = fpext float %i.aiu to double
  %i.aiw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.054, ptr noundef nonnull @.str.96, double noundef %i.aim, double noundef %i.aip, double noundef %i.ais, double noundef %i.aiv) #18 ; 0 uses
  br i1 %or.cond.i, label %bb.cw, label %.loopexit.i

bb.cw:                                            ; preds = %._crit_edge554.i
  %i.aix = srem i32 %.0303.i, %i.qs
  %i.aiy = icmp eq i32 %i.aix, 0
  %i.aiz = icmp sgt i32 %.0303.i, -1
  %or.cond559.i = and i1 %i.aiz, %i.aiy
  br i1 %or.cond559.i, label %.lr.ph556.i, label %.loopexit.i

.lr.ph556.i:                                      ; preds = %bb.cw, %bb.da
  %indvars.iv612.i = phi i64 [ %indvars.iv.next613.i, %bb.da ], [ %i.ahd, %bb.cw ] ; 6 uses
  br i1 %i.bt, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.lr.ph556.i
  %i.aja = getelementptr inbounds nuw [12 x i8], ptr %.1492.i, i64 %indvars.iv612.i ; 3 uses
  %i.ajb = load float, ptr %i.ahf, align 4, !tbaa !24
  %i.ajc = load float, ptr %i.aja, align 4, !tbaa !24
  %i.ajd = load float, ptr %i.ahg, align 4, !tbaa !24
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aja, i64 4
  %i.ajf = load float, ptr %i.aje, align 4, !tbaa !24
  %i.ajg = fmul float %i.ajd, %i.ajf
  %i.ajh = call float @llvm.fmuladd.f32(float %i.ajb, float %i.ajc, float %i.ajg)
  %i.aji = load float, ptr %i.ahh, align 4, !tbaa !24
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aja, i64 8
  %i.ajk = load float, ptr %i.ajj, align 4, !tbaa !24
  %i.ajl = call noundef float @llvm.fmuladd.f32(float %i.aji, float %i.ajk, float %i.ajh)
  %i.ajm = sub nuw nsw i64 %i.ahd, %indvars.iv612.i
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %.1506.i, i64 %i.ajm ; 2 uses
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !24
  %i.ajp = fadd float %i.ajo, %i.ajl
  store float %i.ajp, ptr %i.ajn, align 4, !tbaa !24
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.lr.ph556.i
  br i1 %i.bu, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %.1483.i, i64 %indvars.iv612.i
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !10
  %i.ajs = sext i32 %i.ajr to i64
  %i.ajt = getelementptr inbounds [12 x i8], ptr %.1498.i, i64 %i.ajs ; 3 uses
  %i.aju = load float, ptr %i.ajt, align 4, !tbaa !24
  %i.ajv = load float, ptr %i.ahf, align 4, !tbaa !24
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajt, i64 4
  %i.ajx = load float, ptr %i.ajw, align 4, !tbaa !24
  %i.ajy = load float, ptr %i.ahg, align 4, !tbaa !24
  %i.ajz = fmul float %i.ajx, %i.ajy
  %i.aka = call float @llvm.fmuladd.f32(float %i.aju, float %i.ajv, float %i.ajz)
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajt, i64 8
  %i.akc = load float, ptr %i.akb, align 4, !tbaa !24
  %i.akd = load float, ptr %i.ahh, align 4, !tbaa !24
  %i.ake = call noundef float @llvm.fmuladd.f32(float %i.akc, float %i.akd, float %i.aka)
  %i.akf = sub nuw nsw i64 %i.ahd, %indvars.iv612.i
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %.2501.i, i64 %i.akf ; 2 uses
  %i.akh = load float, ptr %i.akg, align 4, !tbaa !24
  %i.aki = fadd float %i.akh, %i.ake
  store float %i.aki, ptr %i.akg, align 4, !tbaa !24
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %indvars.iv.next613.i = add nsw i64 %indvars.iv612.i, -1
  %i.akj = icmp sgt i64 %indvars.iv612.i, 0
  br i1 %i.akj, label %.lr.ph556.i, label %.loopexit.i, !llvm.loop !66

.loopexit.i:                                      ; preds = %bb.da, %bb.cw, %._crit_edge554.i
  %i.akk = add nsw i32 %.0303.i, 1
  br label %bb.db

bb.db:                                            ; preds = %.loopexit.i, %.loopexit509.i
  %.2507.i = phi ptr [ %.1506.i, %.loopexit.i ], [ %.0505.i, %.loopexit509.i ] ; 4 uses
  %.3502.i = phi ptr [ %.2501.i, %.loopexit.i ], [ %.0499.i, %.loopexit509.i ] ; 3 uses
  %.2493.i = phi ptr [ %.1492.i, %.loopexit.i ], [ %.0491.i, %.loopexit509.i ] ; 3 uses
  %.2484.i = phi ptr [ %.1483.i, %.loopexit.i ], [ %.0482.i, %.loopexit509.i ] ; 5 uses
  %.2310.i = phi i32 [ %.1309.i, %.loopexit.i ], [ %.0308.i, %.loopexit509.i ]
  %.1304.i = phi i32 [ %i.akk, %.loopexit.i ], [ %.0303.i, %.loopexit509.i ] ; 4 uses
  %.2289.i = phi i32 [ %.1288.i, %.loopexit.i ], [ %.0287.i, %.loopexit509.i ] ; 6 uses
  %.2.i = phi i32 [ %spec.select.i, %.loopexit.i ], [ %.0.i, %.loopexit509.i ] ; 6 uses
  %i.akl = load float, ptr %i.rb, align 4, !tbaa !24
  %i.akm = load float, ptr %i.re, align 4, !tbaa !24 ; 2 uses
  %i.akn = load float, ptr %i.rg, align 4, !tbaa !24 ; 2 uses
  %i.ako = load float, ptr %i.rh, align 8, !tbaa !24 ; 2 uses
  %i.akp = load float, ptr %i.rp, align 8, !tbaa !24 ; 2 uses
  %i.akq = load float, ptr %i.rd, align 8, !tbaa !24
  %i.akr = load float, ptr %i.rq, align 8, !tbaa !24 ; 2 uses
  %i.aks = load float, ptr %i.rr, align 4, !tbaa !24
  %i.akt = load float, ptr %i.rf, align 4, !tbaa !24
  %i.aku = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  %i.akv = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  %i.akw = load float, ptr %i.akv, align 4, !tbaa !24 ; 5 uses
  %i.akx = getelementptr inbounds nuw [12 x i8], ptr %.1498.i, i64 %indvar.i ; 4 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 4 ; 2 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akx, i64 8 ; 2 uses
  %i.ala = load float, ptr %i.akz, align 4, !tbaa !24 ; 4 uses
  %i.alb = load float, ptr %i.sx, align 4, !tbaa !24
  %i.alc = fpext float %i.alb to double
  %i.ald = fpext float %i.akw to double
  %i.ale = load <2 x float>, ptr %i.yr, align 4, !tbaa !24 ; 3 uses
  %i.alf = load float, ptr %i.aku, align 4, !tbaa !24 ; 4 uses
  %i.alg = load <2 x float>, ptr %i.akx, align 4, !tbaa !24 ; 3 uses
  %i.alh = load float, ptr %i.aky, align 4, !tbaa !24 ; 3 uses
  %i.ali = shufflevector <2 x float> %i.ale, <2 x float> %i.alg, <2 x i32> <i32 0, i32 2>
  %i.alj = fadd <2 x float> %i.ru, %i.ali         ; 5 uses
  %i.alk = shufflevector <2 x float> %i.ale, <2 x float> %i.alg, <2 x i32> <i32 1, i32 3>
  %i.all = fadd <2 x float> %i.rv, %i.alk         ; 5 uses
  %i.alm = insertelement <2 x float> poison, float %i.akw, i64 0
  %i.aln = insertelement <2 x float> %i.alm, float %i.ala, i64 1
  %i.alo = fadd <2 x float> %i.rt, %i.aln         ; 5 uses
  %i.alp = fmul float %i.alf, %i.alf
  %i.alq = extractelement <2 x float> %i.ale, i64 0 ; 4 uses
  %i.alr = call float @llvm.fmuladd.f32(float %i.alq, float %i.alq, float %i.alp)
  %i.als = call noundef float @llvm.fmuladd.f32(float %i.akw, float %i.akw, float %i.alr)
  %i.alt = fadd float %.0299.i, %i.als            ; 2 uses
  %i.alu = fmul float %i.alh, %i.alh
  %i.alv = extractelement <2 x float> %i.alg, i64 0 ; 3 uses
  %i.alw = call float @llvm.fmuladd.f32(float %i.alv, float %i.alv, float %i.alu)
  %i.alx = call noundef float @llvm.fmuladd.f32(float %i.ala, float %i.ala, float %i.alw)
  %i.aly = fadd float %.0297.i, %i.alx            ; 2 uses
  %i.alz = fpext float %i.alq to double
  %i.ama = fpext float %i.alf to double
  %i.amb = fdiv float %i.alt, %i.sd               ; 3 uses
  %i.amc = fpext float %i.amb to double           ; 3 uses
  %i.amd = fmul <2 x float> %i.all, %i.all
  %i.ame = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.alj, <2 x float> %i.alj, <2 x float> %i.amd)
  %i.amf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.alo, <2 x float> %i.alo, <2 x float> %i.ame)
  %i.amg = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.amf)
  %i.amh = fdiv float %i.aly, %i.sd               ; 3 uses
  %i.ami = fpext float %i.amh to double           ; 4 uses
  %i.amj = insertelement <2 x float> poison, float %i.sd, i64 0
  %i.amk = shufflevector <2 x float> %i.amj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aml = fdiv <2 x float> %i.amg, %i.amk
  %i.amm = fpext <2 x float> %i.aml to <2 x double> ; 2 uses
  %i.amn = extractelement <2 x double> %i.amm, i64 0
  %i.amo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ns, ptr noundef nonnull @.str.97, double noundef %i.alc, double noundef %i.alz, double noundef %i.ama, double noundef %i.ald, double noundef %i.amc, double noundef %i.amn) #18 ; 0 uses
  %i.amp = load float, ptr %i.sx, align 4, !tbaa !24
  %i.amq = fpext float %i.amp to double
  %i.amr = load float, ptr %i.akx, align 4, !tbaa !24
  %i.ams = fpext float %i.amr to double
  %i.amt = load float, ptr %i.aky, align 4, !tbaa !24
  %i.amu = fpext float %i.amt to double
  %i.amv = load float, ptr %i.akz, align 4, !tbaa !24
  %i.amw = fpext float %i.amv to double
  %i.amx = extractelement <2 x double> %i.amm, i64 1
  %i.amy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.os, ptr noundef nonnull @.str.97, double noundef %i.amq, double noundef %i.ams, double noundef %i.amu, double noundef %i.amw, double noundef %i.ami, double noundef %i.amx) #18 ; 0 uses
  %i.amz = invoke noundef zeroext i1 @_Z15read_next_framePK16gmx_output_env_tP11t_trxstatusP10t_trxframe(ptr noundef %i.qv, ptr noundef %i.qq, ptr noundef nonnull align 8 %3)
          to label %.noexc235 unwind label %.loopexit.split-lp.loopexit

.noexc235:                                        ; preds = %bb.db
  %i.ana = fmul float %i.alf, %i.alh
  %i.anb = call float @llvm.fmuladd.f32(float %i.alv, float %i.alq, float %i.ana)
  %i.anc = call noundef float @llvm.fmuladd.f32(float %i.ala, float %i.akw, float %i.anb)
  %i.and = fadd float %.0298.i, %i.anc            ; 2 uses
  %i.ane = fneg float %i.aks                      ; 2 uses
  %i.anf = fmul float %i.akm, %i.ane
  %i.ang = call float @llvm.fmuladd.f32(float %i.akr, float %i.akp, float %i.anf)
  %i.anh = fneg float %i.akp
  %i.ani = fmul float %i.ako, %i.anh
  %i.anj = call float @llvm.fmuladd.f32(float %i.akm, float %i.akn, float %i.ani)
  %i.ank = fmul float %i.ako, %i.ane
  %i.anl = call float @llvm.fmuladd.f32(float %i.akr, float %i.akn, float %i.ank)
  %i.anm = fneg float %i.anl
  %i.ann = fmul float %i.akq, %i.anm
  %i.ano = call float @llvm.fmuladd.f32(float %i.akl, float %i.anj, float %i.ann)
  %i.anp = call noundef float @llvm.fmuladd.f32(float %i.akt, float %i.ang, float %i.ano)
  %i.anq = fadd float %.0300.i, %i.anp            ; 2 uses
  br i1 %i.amz, label %bb.ca, label %bb.dc, !llvm.loop !67

bb.dc:                                            ; preds = %.noexc235
  %.1504.i781.le = ptrtoaddr ptr %.1504.i to i64  ; 2 uses
  %.1488.i784.le = ptrtoaddr ptr %.1488.i to i64  ; 2 uses
  invoke void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef %i.qz)
          to label %.noexc236 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc236:                                        ; preds = %bb.dc
  %i.anr = fdiv float %i.anq, %i.sd
  %i.ans = fpext float %i.anr to double           ; 3 uses
  %i.ant = fpext float %i.ql to double            ; 3 uses
  %i.anu = fmul double %i.ans, f0x3B30B0E6D55E647C
  %i.anv = fmul double %i.anu, %i.ant
  %i.anw = fmul double %i.anv, 1.000000e-09
  %i.anx = fmul double %i.anw, 6.000000e+00
  %i.any = fdiv double f0x3821784AE0000000, %i.anx
  %i.anz = fptrunc double %i.any to float         ; 2 uses
  %i.aoa = load ptr, ptr @stderr, align 8, !tbaa !120
  %i.aob = fpext float %i.anz to double           ; 7 uses
  %i.aoc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aoa, ptr noundef nonnull @.str.98, double noundef %i.aob) #21 ; 0 uses
  %i.aod = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pr, ptr noundef nonnull @.str.127, double noundef %i.aob) #18 ; 0 uses
  %wide.trip.count.i342.i = and i64 %indvar.next.i, 4294967295
  br label %.lr.ph.i343.i

.lr.ph.i343.i:                                    ; preds = %bb.de, %.noexc236
  %indvars.iv.i344.i = phi i64 [ 0, %.noexc236 ], [ %indvars.iv.next.i345.i, %bb.de ] ; 4 uses
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %indvars.iv.i344.i
  %i.aof = load float, ptr %i.aoe, align 4, !tbaa !24 ; 2 uses
  %i.aog = fcmp une float %i.aof, 0.000000e+00
  br i1 %i.aog, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %.lr.ph.i343.i
  %i.aoh = fdiv float %i.anz, %i.aof
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr %.1488.i, i64 %indvars.iv.i344.i ; 2 uses
  %i.aoj = load float, ptr %i.aoi, align 4, !tbaa !24
  %i.aok = fmul float %i.aoh, %i.aoj              ; 2 uses
  store float %i.aok, ptr %i.aoi, align 4, !tbaa !24
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %.1504.i, i64 %indvars.iv.i344.i
  %i.aom = load float, ptr %i.aol, align 4, !tbaa !24
  %i.aon = fpext float %i.aom to double
  %i.aoo = fpext float %i.aok to double
  %i.aop = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pr, ptr noundef nonnull @.str.128, double noundef %i.aon, double noundef %i.aoo) #18 ; 0 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %.lr.ph.i343.i
  %indvars.iv.next.i345.i = add nuw nsw i64 %indvars.iv.i344.i, 1 ; 2 uses
  %exitcond.not.i346.i = icmp eq i64 %indvars.iv.next.i345.i, %wide.trip.count.i342.i
  br i1 %exitcond.not.i346.i, label %_ZL10calc_mjdspP8_IO_FILEfPfS1_iPKf.exit.i, label %.lr.ph.i343.i, !llvm.loop !68

_ZL10calc_mjdspP8_IO_FILEfPfS1_iPKf.exit.i:       ; preds = %bb.de
  %i.aoq = fmul double %i.ans, f0x3F5C270F9F4566A8
  %i.aor = fmul double %i.aoq, f0x3F81072C483AF26D
  %i.aos = fmul double %i.aor, %i.ant
  %i.aot = fdiv double 1.000000e+00, %i.aos
  %i.aou = fptrunc double %i.aot to float         ; 12 uses
  %i.aov = fdiv float %i.and, %i.sd               ; 2 uses
  %i.aow = fdiv float 1.000000e+00, %i.sd         ; 6 uses
  %i.aox = extractelement <2 x float> %i.alj, i64 1
  %i.aoy = fmul float %i.aow, %i.aox              ; 4 uses
  %i.aoz = extractelement <2 x float> %i.all, i64 1
  %i.apa = fmul float %i.aow, %i.aoz              ; 4 uses
  %i.apb = extractelement <2 x float> %i.alo, i64 1
  %i.apc = fmul float %i.aow, %i.apb              ; 4 uses
  %i.apd = extractelement <2 x float> %i.alj, i64 0
  %i.ape = fmul float %i.aow, %i.apd              ; 4 uses
  %i.apf = extractelement <2 x float> %i.all, i64 0
  %i.apg = fmul float %i.aow, %i.apf              ; 4 uses
  %i.aph = extractelement <2 x float> %i.alo, i64 0
  %i.api = fmul float %i.aow, %i.aph              ; 4 uses
  %i.apj = fmul float %i.apa, %i.apa
  %i.apk = call float @llvm.fmuladd.f32(float %i.aoy, float %i.aoy, float %i.apj)
  %i.apl = call noundef float @llvm.fmuladd.f32(float %i.apc, float %i.apc, float %i.apk)
  %i.apm = fmul float %i.apg, %i.apg
  %i.apn = call float @llvm.fmuladd.f32(float %i.ape, float %i.ape, float %i.apm)
  %i.apo = call noundef float @llvm.fmuladd.f32(float %i.api, float %i.api, float %i.apn)
  %i.app = fmul float %i.apg, %i.apa
  %i.apq = call float @llvm.fmuladd.f32(float %i.aoy, float %i.ape, float %i.app)
  %i.apr = call noundef float @llvm.fmuladd.f32(float %i.apc, float %i.api, float %i.apq)
  %i.aps = fpext float %i.ape to double
  %i.apt = fpext float %i.apg to double
  %i.apu = fpext float %i.api to double
  %i.apv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.99, i32 noundef %i.sc, double noundef %i.aps, double noundef %i.apt, double noundef %i.apu, double noundef %i.amc) ; 0 uses
  %i.apw = fpext float %i.aoy to double
  %i.apx = fpext float %i.apa to double
  %i.apy = fpext float %i.apc to double
  %i.apz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.100, i32 noundef %i.sc, double noundef %i.apw, double noundef %i.apx, double noundef %i.apy, double noundef %i.ami) ; 0 uses
  %.not323.i = icmp eq ptr %.2493.i, null         ; 2 uses
  br i1 %.not323.i, label %.noexc241, label %bb.df

bb.df:                                            ; preds = %_ZL10calc_mjdspP8_IO_FILEfPfS1_iPKf.exit.i
  br i1 %i.bu, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.aqa = fdiv double %i.aob, f0x3DA37876F1206635
  %i.aqb = fptrunc double %i.aqa to float
  %i.aqc = call fastcc noundef float @_ZL9calc_cacfP8_IO_FILEfPfS1_iPKiii(ptr noundef %.055, float noundef %i.aqb, ptr noundef %.3502.i, ptr noundef nonnull %.1504.i, i32 noundef %.1304.i, ptr noundef %.2484.i, i32 noundef %.2289.i, i32 noundef %i.qs)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.0301.i = phi float [ %i.aqc, %bb.dg ], [ 0.000000e+00, %bb.df ] ; 3 uses
  br i1 %i.bt, label %bb.di, label %.noexc241

bb.di:                                            ; preds = %bb.dh
  %puts324.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.aqd = fdiv double %i.aob, f0x3D719799812DEA11
  %i.aqe = fptrunc double %i.aqd to float
  %i.aqf = call fastcc noundef float @_ZL9calc_cacfP8_IO_FILEfPfS1_iPKiii(ptr noundef %.157, float noundef %i.aqe, ptr noundef %.2507.i, ptr noundef nonnull %.1504.i, i32 noundef %.1304.i, ptr noundef %.2484.i, i32 noundef %.2289.i, i32 noundef %i.qs) ; 2 uses
  %i.aqg = icmp sgt i32 %.2289.i, %.2.i
  br i1 %i.aqg, label %bb.dj, label %.noexc241

bb.dj:                                            ; preds = %bb.di
  %i.aqh = sub nsw i32 %.2289.i, %.2.i            ; 2 uses
  %i.aqi = add nuw nsw i32 %i.aqh, 1
  %i.aqj = zext nneg i32 %i.aqi to i64            ; 2 uses
  %i.aqk = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.59, i32 noundef 699, i64 noundef range(i64 -2147483648, 2147483648) %i.aqj, i64 noundef 4)
          to label %.noexc237 unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc237:                                        ; preds = %bb.dj
  %i.aql = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.59, i32 noundef 700, i64 noundef range(i64 -2147483648, 2147483648) %i.aqj, i64 noundef 4)
          to label %.noexc238 unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc238:                                        ; preds = %.noexc237
  %i.aqm = sext i32 %.2.i to i64                  ; 2 uses
  %i.aqn = add i32 %.2289.i, 1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dk, %.noexc238
  %indvars.iv617.i = phi i64 [ %i.aqm, %.noexc238 ], [ %indvars.iv.next618.i, %bb.dk ] ; 4 uses
  %i.aqo = getelementptr inbounds [4 x i8], ptr %.2484.i, i64 %indvars.iv617.i
  %i.aqp = load i32, ptr %i.aqo, align 4, !tbaa !10
  %i.aqq = sext i32 %i.aqp to i64
  %i.aqr = getelementptr inbounds [4 x i8], ptr %.1504.i, i64 %i.aqq
  %i.aqs = load float, ptr %i.aqr, align 4, !tbaa !24
  %i.aqt = call noundef float @logf(float noundef %i.aqs) #18
  %i.aqu = sub nsw i64 %indvars.iv617.i, %i.aqm   ; 2 uses
  %i.aqv = getelementptr inbounds [4 x i8], ptr %i.aqk, i64 %i.aqu
  store float %i.aqt, ptr %i.aqv, align 4, !tbaa !24
  %i.aqw = getelementptr inbounds [4 x i8], ptr %.2507.i, i64 %indvars.iv617.i
  %i.aqx = load float, ptr %i.aqw, align 4, !tbaa !24
  %i.aqy = call noundef float @llvm.fabs.f32(float %i.aqx)
  %i.aqz = call noundef float @logf(float noundef %i.aqy) #18
  %i.ara = getelementptr inbounds [4 x i8], ptr %i.aql, i64 %i.aqu
  store float %i.aqz, ptr %i.ara, align 4, !tbaa !24
  %indvars.iv.next618.i = add nsw i64 %indvars.iv617.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next618.i to i32
  %exitcond621.not.i = icmp eq i32 %i.aqn, %lftr.wideiv.i
  br i1 %exitcond621.not.i, label %bb.dl, label %bb.dk, !llvm.loop !69

bb.dl:                                            ; preds = %bb.dk
  invoke void @_Z10lsq_y_ax_biPfS_S_S_S_S_(i32 noundef %i.aqh, ptr noundef nonnull %i.aqk, ptr noundef nonnull %i.aql, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.d)
          to label %.noexc239 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc239:                                        ; preds = %bb.dl
  %i.arb = load float, ptr %i.f, align 4, !tbaa !24
  %i.arc = call noundef float @expf(float noundef %i.arb) #18
  %i.ard = load float, ptr %i.e, align 4, !tbaa !24
  %i.are = fadd float %i.ard, 1.000000e+00        ; 2 uses
  store float %i.are, ptr %i.e, align 4, !tbaa !24
  %i.arf = fmul double %i.aob, 2.000000e+12
  %i.arg = fpext float %i.are to double
  %i.arh = fdiv double %i.arf, %i.arg
  %i.ari = fpext float %i.arc to double
  %i.arj = fmul double %i.arh, %i.ari
  %i.ark = fptrunc double %i.arj to float
  store float %i.ark, ptr %i.f, align 4, !tbaa !24
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.59, i32 noundef 718, ptr noundef nonnull %i.aqk)
          to label %.noexc240 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc240:                                        ; preds = %.noexc239
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.59, i32 noundef 719, ptr noundef nonnull %i.aql)
          to label %.noexc241 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc241:                                        ; preds = %.noexc240, %bb.di, %bb.dh, %_ZL10calc_mjdspP8_IO_FILEfPfS1_iPKf.exit.i
  %.1302.i = phi float [ 0.000000e+00, %_ZL10calc_mjdspP8_IO_FILEfPfS1_iPKf.exit.i ], [ %.0301.i, %bb.di ], [ %.0301.i, %bb.dh ], [ %.0301.i, %.noexc240 ] ; 2 uses
  %.0296.i = phi float [ 0.000000e+00, %_ZL10calc_mjdspP8_IO_FILEfPfS1_iPKf.exit.i ], [ %i.aqf, %bb.di ], [ 0.000000e+00, %bb.dh ], [ %i.aqf, %.noexc240 ] ; 2 uses
  %i.arl = load ptr, ptr @stderr, align 8, !tbaa !120
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.105, i64 46, i64 1, ptr %i.arl) #22 ; 0 uses
  %i.arm = fadd float %i.amb, %i.amh
  %i.arn = fpext float %i.arm to double
  %i.aro = fpext float %i.aov to double           ; 2 uses
  %i.arp = call double @llvm.fmuladd.f64(double %i.aro, double 2.000000e+00, double %i.arn)
  %.0.i.i = fptrunc double %i.arp to float        ; 2 uses
  %i.arq = fcmp oeq float %i.qu, 0.000000e+00     ; 4 uses
  br i1 %i.arq, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %.noexc241
  %i.arr = fmul float %i.aou, %.0.i.i
  %i.ars = fadd float %i.arr, 1.000000e+00
  br label %_ZL7calcepsfffffb.exit.i

bb.dn:                                            ; preds = %.noexc241
  %i.art = fpext float %i.qu to double            ; 2 uses
  %i.aru = call double @llvm.fmuladd.f64(double %i.art, double 2.000000e+00, double 1.000000e+00) ; 2 uses
  %i.arv = fmul double %i.art, 2.000000e+00
  %i.arw = fpext float %i.aou to double
  %i.arx = fmul double %i.arv, %i.arw
  %i.ary = fpext float %.0.i.i to double
  %i.arz = call double @llvm.fmuladd.f64(double %i.arx, double %i.ary, double %i.aru)
  %i.asa = fptrunc double %i.arz to float         ; 2 uses
  %i.asb = fmul float %i.aou, %i.asa
  %i.asc = fpext float %i.asb to double
  %i.asd = fsub double %i.aru, %i.asc
  %i.ase = fpext float %i.asa to double
  %i.asf = fdiv double %i.ase, %i.asd
  %i.asg = fptrunc double %i.asf to float
  br label %_ZL7calcepsfffffb.exit.i

_ZL7calcepsfffffb.exit.i:                         ; preds = %bb.dn, %bb.dm
  %.1.i.i = phi float [ %i.ars, %bb.dm ], [ %i.asg, %bb.dn ]
  %i.ash = load ptr, ptr @stderr, align 8, !tbaa !120
  %i.asi = fpext float %.1.i.i to double
  %i.asj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ash, ptr noundef nonnull @.str.106, double noundef %i.asi) #21 ; 0 uses
  %i.ask = load ptr, ptr @stderr, align 8, !tbaa !120
  %i.asl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ask, ptr noundef nonnull @.str.107, double noundef %i.ami, double noundef %i.amc, double noundef %i.aro) #21 ; 0 uses
  %i.asm = load ptr, ptr @stderr, align 8, !tbaa !120
  %fwrite326.i = call i64 @fwrite(ptr nonnull @.str.108, i64 45, i64 1, ptr %i.asm) #22 ; 0 uses
  %i.asn = fsub float %i.amh, %i.apl              ; 2 uses
  %i.aso = fsub float %i.amb, %i.apo              ; 2 uses
  %i.asp = fsub float %i.aov, %i.apr
  %i.asq = fadd float %i.aso, %i.asn
  %i.asr = fpext float %i.asq to double
  %i.ass = fpext float %i.asp to double           ; 2 uses
  %i.ast = call double @llvm.fmuladd.f64(double %i.ass, double 2.000000e+00, double %i.asr)
  %.0.i347.i = fptrunc double %i.ast to float     ; 2 uses
  br i1 %i.arq, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %_ZL7calcepsfffffb.exit.i
  %i.asu = fmul float %i.aou, %.0.i347.i
  %i.asv = fadd float %i.asu, 1.000000e+00
  br label %_ZL7calcepsfffffb.exit349.i

bb.dp:                                            ; preds = %_ZL7calcepsfffffb.exit.i
  %i.asw = fpext float %i.qu to double            ; 2 uses
  %i.asx = call double @llvm.fmuladd.f64(double %i.asw, double 2.000000e+00, double 1.000000e+00) ; 2 uses
  %i.asy = fmul double %i.asw, 2.000000e+00
  %i.asz = fpext float %i.aou to double
  %i.ata = fmul double %i.asy, %i.asz
  %i.atb = fpext float %.0.i347.i to double
  %i.atc = call double @llvm.fmuladd.f64(double %i.ata, double %i.atb, double %i.asx)
  %i.atd = fptrunc double %i.atc to float         ; 2 uses
  %i.ate = fmul float %i.aou, %i.atd
  %i.atf = fpext float %i.ate to double
  %i.atg = fsub double %i.asx, %i.atf
  %i.ath = fpext float %i.atd to double
  %i.ati = fdiv double %i.ath, %i.atg
  %i.atj = fptrunc double %i.ati to float
  br label %_ZL7calcepsfffffb.exit349.i

_ZL7calcepsfffffb.exit349.i:                      ; preds = %bb.dp, %bb.do
  %.1.i348.i = phi float [ %i.asv, %bb.do ], [ %i.atj, %bb.dp ]
  %i.atk = load ptr, ptr @stderr, align 8, !tbaa !120
  %i.atl = fpext float %.1.i348.i to double
  %i.atm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.atk, ptr noundef nonnull @.str.109, double noundef %i.atl) #21 ; 0 uses
  %i.atn = load ptr, ptr @stderr, align 8, !tbaa !120
  %i.ato = fpext float %i.asn to double           ; 2 uses
  %i.atp = fpext float %i.aso to double           ; 2 uses
  %i.atq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.atn, ptr noundef nonnull @.str.110, double noundef %i.ato, double noundef %i.atp, double noundef %i.ass) #21 ; 0 uses
  %i.atr = load ptr, ptr @stderr, align 8, !tbaa !120
  %fwrite327.i = call i64 @fwrite(ptr nonnull @.str.105, i64 46, i64 1, ptr %i.atr) #22 ; 0 uses
  br i1 %i.bu, label %bb.dq, label %bb.dt

bb.dq:                                            ; preds = %_ZL7calcepsfffffb.exit349.i
  %i.ats = fpext float %.1302.i to double         ; 2 uses
  %i.att = call double @llvm.fmuladd.f64(double %i.ats, double -2.000000e+00, double %i.ato)
  %i.atu = fadd double %i.att, %i.atp
  %.0.i350.i = fptrunc double %i.atu to float     ; 2 uses
  br i1 %i.arq, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.atv = fmul float %i.aou, %.0.i350.i
  %i.atw = fadd float %i.atv, 1.000000e+00
  br label %_ZL7calcepsfffffb.exit352.i

bb.ds:                                            ; preds = %bb.dq
  %i.atx = fpext float %i.qu to double            ; 2 uses
  %i.aty = call double @llvm.fmuladd.f64(double %i.atx, double 2.000000e+00, double 1.000000e+00) ; 2 uses
  %i.atz = fmul double %i.atx, 2.000000e+00
  %i.aua = fpext float %i.aou to double
  %i.aub = fmul double %i.atz, %i.aua
  %i.auc = fpext float %.0.i350.i to double
  %i.aud = call double @llvm.fmuladd.f64(double %i.aub, double %i.auc, double %i.aty)
  %i.aue = fptrunc double %i.aud to float         ; 2 uses
  %i.auf = fmul float %i.aou, %i.aue
  %i.aug = fpext float %i.auf to double
  %i.auh = fsub double %i.aty, %i.aug
  %i.aui = fpext float %i.aue to double
  %i.auj = fdiv double %i.aui, %i.auh
  %i.auk = fptrunc double %i.auj to float
  br label %_ZL7calcepsfffffb.exit352.i

_ZL7calcepsfffffb.exit352.i:                      ; preds = %bb.ds, %bb.dr
  %.1.i351.i = phi float [ %i.atw, %bb.dr ], [ %i.auk, %bb.ds ]
  %i.aul = load ptr, ptr @stderr, align 8, !tbaa !120
  %i.aum = fpext float %.1.i351.i to double
  %i.aun = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aul, ptr noundef nonnull @.str.111, double noundef %i.aum) #21 ; 0 uses
  %i.auo = load ptr, ptr @stderr, align 8, !tbaa !120
  %i.aup = fneg double %i.ats
  %i.auq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.auo, ptr noundef nonnull @.str.112, double noundef %i.aup) #21 ; 0 uses
  br label %bb.dt

bb.dt:                                            ; preds = %_ZL7calcepsfffffb.exit352.i, %_ZL7calcepsfffffb.exit349.i
  %i.aur = load ptr, ptr @stderr, align 8, !tbaa !120
  %fwrite328.i = call i64 @fwrite(ptr nonnull @.str.113, i64 52, i64 1, ptr %i.aur) #22 ; 0 uses
  %i.aus = load ptr, ptr @stderr, align 8, !tbaa !120
  %i.aut = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aus, ptr noundef nonnull @.str.114, double noundef %i.ans, double noundef %i.ant) #21 ; 0 uses
  %i.auu = load ptr, ptr @stderr, align 8, !tbaa !120
  %i.auv = fpext float %i.aou to double           ; 2 uses
  %i.auw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.auu, ptr noundef nonnull @.str.115, double noundef %i.auv) #21 ; 0 uses
  %i.aux = icmp slt i32 %.2.i, %.1304.i
  %or.cond333.i = select i1 %i.bt, i1 %i.aux, i1 false
  br i1 %or.cond333.i, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.auy = load ptr, ptr @stderr, align 8, !tbaa !120
  %i.auz = sext i32 %.2.i to i64
  %i.ava = getelementptr inbounds [4 x i8], ptr %.2484.i, i64 %i.auz ; 2 uses
  %i.avb = load i32, ptr %i.ava, align 4, !tbaa !10
  %i.avc = sext i32 %i.avb to i64
  %i.avd = getelementptr inbounds [4 x i8], ptr %.1504.i, i64 %i.avc
  %i.ave = load float, ptr %i.avd, align 4, !tbaa !24
  %i.avf = fpext float %i.ave to double
  %i.avg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.auy, ptr noundef nonnull @.str.116, double noundef %i.avf) #21 ; 0 uses
  %i.avh = load ptr, ptr @stderr, align 8, !tbaa !120
  %i.avi = load float, ptr %i.f, align 4, !tbaa !24
  %i.avj = load i32, ptr %i.ava, align 4, !tbaa !10
  %i.avk = sext i32 %i.avj to i64
  %i.avl = getelementptr inbounds [4 x i8], ptr %.1504.i, i64 %i.avk
  %i.avm = load float, ptr %i.avl, align 4, !tbaa !24
  %i.avn = load float, ptr %i.e, align 4, !tbaa !24
  %i.avo = call noundef float @powf(float noundef %i.avm, float noundef %i.avn) #18
  %i.avp = fneg float %i.avi
  %i.avq = call float @llvm.fmuladd.f32(float %i.avp, float %i.avo, float %.0296.i)
  %i.avr = fpext float %i.avq to double
  %i.avs = fpext float %.0296.i to double
  %i.avt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.avh, ptr noundef nonnull @.str.117, double noundef %i.avr, double noundef %i.avs) #21 ; 0 uses
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.avu = icmp samesign ugt i32 %.1291.i, %.1293.i
  %i.avv = load ptr, ptr @stderr, align 8, !tbaa !120 ; 2 uses
  br i1 %i.avu, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  %i.avw = zext i32 %.1293.i to i64               ; 14 uses
  %i.avx = getelementptr inbounds nuw [4 x i8], ptr %.1504.i, i64 %i.avw
  %i.avy = load float, ptr %i.avx, align 4, !tbaa !24
  %i.avz = fpext float %i.avy to double
  %i.awa = fpext float %i.qm to double
  %i.awb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.avv, ptr noundef nonnull @.str.118, double noundef %i.avz, double noundef %i.awa) #21 ; 0 uses
  %i.awc = load ptr, ptr @stderr, align 8, !tbaa !120
  %i.awd = zext nneg i32 %.1291.i to i64
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %.1504.i, i64 %i.awd
  %i.awf = load float, ptr %i.awe, align 4, !tbaa !24
  %i.awg = fpext float %i.awf to double
  %i.awh = fpext float %i.qn to double
  %i.awi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.awc, ptr noundef nonnull @.str.119, double noundef %i.awg, double noundef %i.awh) #21 ; 0 uses
  %i.awj = sub nuw nsw i32 %.1291.i, %.1293.i     ; 2 uses
  %i.awk = add nuw nsw i32 %i.awj, 1
  %i.awl = zext nneg i32 %i.awk to i64            ; 2 uses
  %i.awm = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.59, i32 noundef 761, i64 noundef range(i64 -2147483648, 2147483648) %i.awl, i64 noundef 4)
          to label %.noexc242 unwind label %.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc242:                                        ; preds = %bb.dw
  %i.awn = ptrtoaddr ptr %i.awm to i64            ; 3 uses
  %i.awo = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.59, i32 noundef 762, i64 noundef range(i64 -2147483648, 2147483648) %i.awl, i64 noundef 4)
          to label %iter.check unwind label %.loopexit.split-lp.loopexit.split-lp ; 10 uses

iter.check:                                       ; preds = %.noexc242
  %i.awp = add i32 %.1291.i, 1
  %wide.trip.count627.i = zext i32 %i.awp to i64  ; 4 uses
  %i.awq = sub nsw i64 %wide.trip.count627.i, %i.avw ; 7 uses
  %min.iters.check792 = icmp ult i64 %i.awq, 4
  br i1 %min.iters.check792, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck780

vector.memcheck780:                               ; preds = %iter.check
  %i.awr = ptrtoaddr ptr %i.awo to i64            ; 3 uses
  %i.aws = sub i64 %i.awn, %i.awr
  %diff.check = icmp ugt i64 %i.aws, -64
  %i.awt = shl nuw nsw i64 %i.avw, 2              ; 4 uses
  %i.awu = add i64 %i.awt, %.1504.i781.le
  %i.awv = sub i64 %i.awu, %i.awn
  %diff.check782 = icmp ugt i64 %i.awv, -64
  %conflict.rdx783 = or i1 %diff.check, %diff.check782
  %31 = sub i64 %.1488.i784.le, %i.awn
  %i.aww = add i64 %31, %i.awt
  %32 = add i64 %i.aww, -1
  %diff.check785 = icmp ult i64 %32, 63
  %conflict.rdx786 = or i1 %conflict.rdx783, %diff.check785
  %i.awx = add i64 %i.awt, %.1504.i781.le
  %i.awy = sub i64 %i.awx, %i.awr
  %diff.check787 = icmp ugt i64 %i.awy, -64
  %conflict.rdx788 = or i1 %conflict.rdx786, %diff.check787
  %i.awz = add i64 %i.awt, %.1488.i784.le
  %i.axa = sub i64 %i.awz, %i.awr
  %diff.check789 = icmp ugt i64 %i.axa, -64
  %conflict.rdx790 = or i1 %conflict.rdx788, %diff.check789
  br i1 %conflict.rdx790, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck780
  %min.iters.check793 = icmp ult i64 %i.awq, 16
  br i1 %min.iters.check793, label %vec.epilog.ph, label %vector.ph794

vector.ph794:                                     ; preds = %vector.main.loop.iter.check
  %i.axb = and i64 %i.awq, 12
  %n.vec795 = and i64 %i.awq, -16                 ; 4 uses
  %i.axc = add nsw i64 %n.vec795, %i.avw
  br label %vector.body796

vector.body796:                                   ; preds = %vector.ph794, %vector.body796
  %index797 = phi i64 [ 0, %vector.ph794 ], [ %index.next802, %vector.body796 ] ; 4 uses
  %i.axd = add nuw i64 %index797, %i.avw          ; 2 uses
  %i.axe = getelementptr inbounds nuw [4 x i8], ptr %.1504.i, i64 %i.axd ; 2 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 32
  %wide.load798 = load <8 x float>, ptr %i.axe, align 4, !tbaa !24
  %wide.load799 = load <8 x float>, ptr %i.axf, align 4, !tbaa !24
  %i.axg = getelementptr inbounds nuw [4 x i8], ptr %i.awm, i64 %index797 ; 2 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 32
  store <8 x float> %wide.load798, ptr %i.axg, align 4, !tbaa !24
  store <8 x float> %wide.load799, ptr %i.axh, align 4, !tbaa !24
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %.1488.i, i64 %i.axd ; 2 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axi, i64 32
  %wide.load800 = load <8 x float>, ptr %i.axi, align 4, !tbaa !24
  %wide.load801 = load <8 x float>, ptr %i.axj, align 4, !tbaa !24
  %i.axk = getelementptr inbounds nuw [4 x i8], ptr %i.awo, i64 %index797 ; 2 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 32
  store <8 x float> %wide.load800, ptr %i.axk, align 4, !tbaa !24
  store <8 x float> %wide.load801, ptr %i.axl, align 4, !tbaa !24
  %index.next802 = add nuw i64 %index797, 16      ; 2 uses
  %i.axm = icmp eq i64 %index.next802, %n.vec795
  br i1 %i.axm, label %middle.block803, label %vector.body796, !llvm.loop !70

middle.block803:                                  ; preds = %vector.body796
  %cmp.n804 = icmp eq i64 %i.awq, %n.vec795
  br i1 %cmp.n804, label %.loopexit813, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block803
  %min.epilog.iters.check = icmp eq i64 %i.axb, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !142

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec795, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec806 = and i64 %i.awq, -4                  ; 3 uses
  %i.axn = add nsw i64 %n.vec806, %i.avw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index807 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next810, %vec.epilog.vector.body ] ; 4 uses
  %i.axo = add nuw i64 %index807, %i.avw          ; 2 uses
  %i.axp = getelementptr inbounds nuw [4 x i8], ptr %.1504.i, i64 %i.axo
  %wide.load808 = load <4 x float>, ptr %i.axp, align 4, !tbaa !24
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr %i.awm, i64 %index807
  store <4 x float> %wide.load808, ptr %i.axq, align 4, !tbaa !24
  %i.axr = getelementptr inbounds nuw [4 x i8], ptr %.1488.i, i64 %i.axo
  %wide.load809 = load <4 x float>, ptr %i.axr, align 4, !tbaa !24
  %i.axs = getelementptr inbounds nuw [4 x i8], ptr %i.awo, i64 %index807
  store <4 x float> %wide.load809, ptr %i.axs, align 4, !tbaa !24
  %index.next810 = add nuw i64 %index807, 4       ; 2 uses
  %i.axt = icmp eq i64 %index.next810, %n.vec806
  br i1 %i.axt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n811 = icmp eq i64 %i.awq, %n.vec806
  br i1 %cmp.n811, label %.loopexit813, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck780, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv623.i.ph = phi i64 [ %i.avw, %iter.check ], [ %i.avw, %vector.memcheck780 ], [ %i.axc, %vec.epilog.iter.check ], [ %i.axn, %vec.epilog.middle.block ] ; 4 uses
  %i.axu = sub nsw i64 %wide.trip.count627.i, %indvars.iv623.i.ph
  %xtraiter887 = and i64 %i.axu, 3                ; 2 uses
  %lcmp.mod888.not = icmp eq i64 %xtraiter887, 0
  br i1 %lcmp.mod888.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv623.i.prol = phi i64 [ %indvars.iv.next624.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv623.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter889 = phi i64 [ %prol.iter889.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %.1504.i, i64 %indvars.iv623.i.prol
  %i.axw = load float, ptr %i.axv, align 4, !tbaa !24
  %i.axx = sub nuw nsw i64 %indvars.iv623.i.prol, %i.avw ; 2 uses
  %i.axy = getelementptr inbounds nuw [4 x i8], ptr %i.awm, i64 %i.axx
  store float %i.axw, ptr %i.axy, align 4, !tbaa !24
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %.1488.i, i64 %indvars.iv623.i.prol
  %i.aya = load float, ptr %i.axz, align 4, !tbaa !24
  %i.ayb = getelementptr inbounds nuw [4 x i8], ptr %i.awo, i64 %i.axx
  store float %i.aya, ptr %i.ayb, align 4, !tbaa !24
  %indvars.iv.next624.i.prol = add nuw nsw i64 %indvars.iv623.i.prol, 1 ; 2 uses
  %prol.iter889.next = add i64 %prol.iter889, 1   ; 2 uses
  %prol.iter889.cmp.not = icmp eq i64 %prol.iter889.next, %xtraiter887
  br i1 %prol.iter889.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !72

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv623.i.unr = phi i64 [ %indvars.iv623.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next624.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ayc = sub nsw i64 %indvars.iv623.i.ph, %wide.trip.count627.i
  %i.ayd = icmp ugt i64 %i.ayc, -4
  br i1 %i.ayd, label %.loopexit813, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv623.i = phi i64 [ %indvars.iv.next624.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv623.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.aye = getelementptr inbounds nuw [4 x i8], ptr %.1504.i, i64 %indvars.iv623.i
  %i.ayf = load float, ptr %i.aye, align 4, !tbaa !24
  %i.ayg = sub nuw nsw i64 %indvars.iv623.i, %i.avw ; 2 uses
  %i.ayh = getelementptr inbounds nuw [4 x i8], ptr %i.awm, i64 %i.ayg
  store float %i.ayf, ptr %i.ayh, align 4, !tbaa !24
  %i.ayi = getelementptr inbounds nuw [4 x i8], ptr %.1488.i, i64 %indvars.iv623.i
  %i.ayj = load float, ptr %i.ayi, align 4, !tbaa !24
  %i.ayk = getelementptr inbounds nuw [4 x i8], ptr %i.awo, i64 %i.ayg
  store float %i.ayj, ptr %i.ayk, align 4, !tbaa !24
  %indvars.iv.next624.i = add nuw nsw i64 %indvars.iv623.i, 1 ; 3 uses
  %i.ayl = getelementptr inbounds nuw [4 x i8], ptr %.1504.i, i64 %indvars.iv.next624.i
  %i.aym = load float, ptr %i.ayl, align 4, !tbaa !24
  %i.ayn = sub nuw nsw i64 %indvars.iv.next624.i, %i.avw ; 2 uses
  %i.ayo = getelementptr inbounds nuw [4 x i8], ptr %i.awm, i64 %i.ayn
  store float %i.aym, ptr %i.ayo, align 4, !tbaa !24
  %i.ayp = getelementptr inbounds nuw [4 x i8], ptr %.1488.i, i64 %indvars.iv.next624.i
  %i.ayq = load float, ptr %i.ayp, align 4, !tbaa !24
  %i.ayr = getelementptr inbounds nuw [4 x i8], ptr %i.awo, i64 %i.ayn
  store float %i.ayq, ptr %i.ayr, align 4, !tbaa !24
  %indvars.iv.next624.i.1 = add nuw nsw i64 %indvars.iv623.i, 2 ; 3 uses
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr %.1504.i, i64 %indvars.iv.next624.i.1
  %i.ayt = load float, ptr %i.ays, align 4, !tbaa !24
  %i.ayu = sub nuw nsw i64 %indvars.iv.next624.i.1, %i.avw ; 2 uses
  %i.ayv = getelementptr inbounds nuw [4 x i8], ptr %i.awm, i64 %i.ayu
  store float %i.ayt, ptr %i.ayv, align 4, !tbaa !24
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %.1488.i, i64 %indvars.iv.next624.i.1
  %i.ayx = load float, ptr %i.ayw, align 4, !tbaa !24
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %i.awo, i64 %i.ayu
  store float %i.ayx, ptr %i.ayy, align 4, !tbaa !24
  %indvars.iv.next624.i.2 = add nuw nsw i64 %indvars.iv623.i, 3 ; 3 uses
  %i.ayz = getelementptr inbounds nuw [4 x i8], ptr %.1504.i, i64 %indvars.iv.next624.i.2
  %i.aza = load float, ptr %i.ayz, align 4, !tbaa !24
  %i.azb = sub nuw nsw i64 %indvars.iv.next624.i.2, %i.avw ; 2 uses
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %i.awm, i64 %i.azb
  store float %i.aza, ptr %i.azc, align 4, !tbaa !24
  %i.azd = getelementptr inbounds nuw [4 x i8], ptr %.1488.i, i64 %indvars.iv.next624.i.2
  %i.aze = load float, ptr %i.azd, align 4, !tbaa !24
  %i.azf = getelementptr inbounds nuw [4 x i8], ptr %i.awo, i64 %i.azb
  store float %i.aze, ptr %i.azf, align 4, !tbaa !24
  %indvars.iv.next624.i.3 = add nuw nsw i64 %indvars.iv623.i, 4 ; 2 uses
  %exitcond628.not.i.3 = icmp eq i64 %indvars.iv.next624.i.3, %wide.trip.count627.i
  br i1 %exitcond628.not.i.3, label %.loopexit813, label %vec.epilog.scalar.ph, !llvm.loop !73

.loopexit813:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block803
  invoke void @_Z10lsq_y_ax_biPfS_S_S_S_S_(i32 noundef %i.awj, ptr noundef nonnull %i.awm, ptr noundef nonnull %i.awo, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.d)
          to label %.noexc244 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc244:                                        ; preds = %.loopexit813
  %i.azg = load float, ptr %i.e, align 4, !tbaa !24
  %i.azh = fpext float %i.azg to double
  %i.azi = fmul double %i.azh, 1.000000e+12
  %i.azj = fptrunc double %i.azi to float
  store float %i.azj, ptr %i.e, align 4, !tbaa !24
  %i.azk = load float, ptr %i.f, align 4, !tbaa !24
  %i.azl = fpext float %i.azk to double
  %i.azm = fmul double %i.azl, 5.000000e-01
  %i.azn = fdiv double %i.azm, %i.aob
  %i.azo = fptrunc double %i.azn to float
  %i.azp = fpext float %.1302.i to double
  %i.azq = call double @llvm.fmuladd.f64(double %i.azp, double -2.000000e+00, double %i.ami)
  %i.azr = fpext float %i.azo to double
  %i.azs = fadd double %i.azq, %i.azr
  %.0.i353.i = fptrunc double %i.azs to float     ; 2 uses
  br i1 %i.arq, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %.noexc244
  %i.azt = fmul float %i.aou, %.0.i353.i
  %i.azu = fadd float %i.azt, 1.000000e+00
  br label %_ZL7calcepsfffffb.exit355.i

bb.dy:                                            ; preds = %.noexc244
  %i.azv = fpext float %i.qu to double            ; 2 uses
  %i.azw = call double @llvm.fmuladd.f64(double %i.azv, double 2.000000e+00, double 1.000000e+00) ; 2 uses
  %i.azx = fmul double %i.azv, 2.000000e+00
  %i.azy = fmul double %i.azx, %i.auv
  %i.azz = fpext float %.0.i353.i to double
  %i.baa = call double @llvm.fmuladd.f64(double %i.azy, double %i.azz, double %i.azw)
  %i.bab = fptrunc double %i.baa to float         ; 2 uses
  %i.bac = fmul float %i.aou, %i.bab
  %i.bad = fpext float %i.bac to double
  %i.bae = fsub double %i.azw, %i.bad
  %i.baf = fpext float %i.bab to double
  %i.bag = fdiv double %i.baf, %i.bae
  %i.bah = fptrunc double %i.bag to float
  br label %_ZL7calcepsfffffb.exit355.i

_ZL7calcepsfffffb.exit355.i:                      ; preds = %bb.dy, %bb.dx
  %.1.i354.i = phi float [ %i.azu, %bb.dx ], [ %i.bah, %bb.dy ]
  %i.bai = load ptr, ptr @stderr, align 8, !tbaa !120
  %fwrite331.i = call i64 @fwrite(ptr nonnull @.str.120, i64 76, i64 1, ptr %i.bai) #22 ; 0 uses
  %i.baj = load ptr, ptr @stderr, align 8, !tbaa !120
  %i.bak = load float, ptr %i.e, align 4, !tbaa !24
  %i.bal = fpext float %i.bak to double
  %i.bam = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.baj, ptr noundef nonnull @.str.121, double noundef %i.bal) #21 ; 0 uses
  %i.ban = load ptr, ptr @stderr, align 8, !tbaa !120
  %i.bao = load float, ptr %i.f, align 4, !tbaa !24
  %i.bap = fpext float %i.bao to double
end_hunk_0
