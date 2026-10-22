Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui?download=true
inline.NumInlined: 2414
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN5ImGui5BeginEPKcPbi:bb.a
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gn, %bb.gq, %bb.gr, %bb.gp, %bb.gm
  %i.ajm = load ptr, ptr @GImGui, align 8, !tbaa !99
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 7680
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !396
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !398 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #39
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 4
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajp, i64 12
  %i.ajs = load <2 x float>, ptr %i.ajq, align 4, !tbaa !75 ; 3 uses
  %i.ajt = load <2 x float>, ptr %i.ajr, align 4, !tbaa !75
  %i.aju = fadd <2 x float> %i.ajs, %i.ajt        ; 2 uses
  store <2 x float> %i.ajs, ptr %23, align 16
  %i.ajv = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  store <2 x float> %i.aju, ptr %i.ajv, align 8
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajp, i64 20
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajp, i64 28
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.g, i64 5640
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.g, i64 5648
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #39
  %i.aka = load <2 x float>, ptr %i.ajw, align 4, !tbaa !75 ; 2 uses
  %i.akb = load <2 x float>, ptr %i.ajx, align 4, !tbaa !75
  %i.akc = fadd <2 x float> %i.aka, %i.akb
  %i.akd = load <2 x float>, ptr %i.ajy, align 8, !tbaa !75 ; 2 uses
  %i.ake = load <2 x float>, ptr %i.ajz, align 8, !tbaa !75 ; 2 uses
  %i.akf = fcmp oge <2 x float> %i.akd, %i.ake
  %i.akg = select <2 x i1> %i.akf, <2 x float> %i.akd, <2 x float> %i.ake ; 2 uses
  %i.akh = fadd <2 x float> %i.aka, %i.akg        ; 5 uses
  %i.aki = fsub <2 x float> %i.akc, %i.akg
  store <2 x float> %i.akh, ptr %24, align 8, !tbaa !75
  %i.akj = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store <2 x float> %i.aki, ptr %i.akj, align 8, !tbaa !75
  %brmerge394 = select i1 %.0317.shrunk, i1 true, i1 %.not346.not1076
  br i1 %brmerge394, label %bb.gw, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.akk = getelementptr inbounds nuw i8, ptr %.01057, i64 168
  %i.akl = load i8, ptr %i.akk, align 8, !tbaa !326
  %i.akm = icmp slt i8 %i.akl, 1
  br i1 %i.akm, label %bb.gu, label %bb.gw

bb.gu:                                            ; preds = %bb.gt
  %i.akn = getelementptr inbounds nuw i8, ptr %.01057, i64 169
  %i.ako = load i8, ptr %i.akn, align 1, !tbaa !325
  %i.akp = icmp slt i8 %i.ako, 1
  %i.akq = fcmp ogt <2 x float> %i.aju, %i.ajs    ; 2 uses
  %i.akr = extractelement <2 x i1> %i.akq, i64 0
  %or.cond1319 = select i1 %i.akp, i1 %i.akr, i1 false
  %i.aks = extractelement <2 x i1> %i.akq, i64 1
  %or.cond1320 = select i1 %or.cond1319, i1 %i.aks, i1 false
  br i1 %or.cond1320, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  call fastcc void @_ZL15ClampWindowRectP11ImGuiWindowRK6ImRect(ptr noundef nonnull %.01057, ptr noundef nonnull align 4 dereferenceable(16) %24)
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gs, %bb.gv, %bb.gu, %bb.gt
  %i.akt = getelementptr inbounds nuw i8, ptr %.01057, i64 16 ; 22 uses
  %i.aku = getelementptr i8, ptr %.01057, i64 20  ; 7 uses
  %i.akv = load <2 x float>, ptr %i.akt, align 8, !tbaa !75
  %i.akw = fptosi <2 x float> %i.akv to <2 x i32>
  %i.akx = sitofp <2 x i32> %i.akw to <2 x float>
  store <2 x float> %i.akx, ptr %i.akt, align 8, !tbaa !75
  %i.aky = and i32 %.1, 201326592
  %or.cond395 = icmp eq i32 %i.aky, 67108864
  %. = select i1 %or.cond395, i64 5524, i64 5488
  %.sink1321 = select i1 %.not346, i64 %., i64 5516
  %i.akz = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink1321
  %i.ala = load float, ptr %i.akz, align 4, !tbaa !75 ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %.01057, i64 72 ; 4 uses
  store float %i.ala, ptr %i.alb, align 8, !tbaa !1009
  %i.alc = and i32 %.1, 4096
  %.not363 = icmp ne i32 %i.alc, 0
  %not..0308.in1064 = xor i1 %.0308.in1064, true
  %or.cond396 = select i1 %not..0308.in1064, i1 true, i1 %.not363 ; 2 uses
  %brmerge410 = or i1 %i.ng, %or.cond396
  %not.or.cond396 = xor i1 %or.cond396, true
  %i.ald = icmp eq i32 %i.ue, 0
  %spec.select1094 = select i1 %brmerge410, i1 %not.or.cond396, i1 %i.ald ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.ale = getelementptr inbounds nuw i8, ptr %i.g, i64 204
  %i.alf = load i8, ptr %i.ale, align 4, !tbaa !519, !range !216, !noundef !217
  %i.alg = trunc nuw i8 %i.alf to i1
  %i.alh = select i1 %i.alg, i32 2, i32 1         ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %i.g, i64 6528 ; 4 uses
  %i.alj = load float, ptr %i.ali, align 8, !tbaa !294 ; 2 uses
  %i.alk = fmul float %i.alj, 1.100000e+00        ; 2 uses
  %i.all = fadd float %i.ala, 1.000000e+00        ; 2 uses
  %i.alm = call float @llvm.fmuladd.f32(float %i.alj, float 2.000000e-01, float %i.all) ; 2 uses
  %i.aln = fcmp oge float %i.alk, %i.alm
  %i.alo = select i1 %i.aln, float %i.alk, float %i.alm
  %i.alp = fptosi float %i.alo to i32
  %i.alq = sitofp i32 %i.alp to float             ; 2 uses
  %i.alr = load i8, ptr %i.adr, align 1, !tbaa !595, !range !216, !noundef !217
  %i.als = trunc nuw i8 %i.alr to i1
  br i1 %i.als, label %.thread1299, label %bb.gx

.thread1299:                                      ; preds = %bb.gw
  %i.alt = getelementptr inbounds nuw i8, ptr %.01057, i64 152 ; 2 uses
  store i8 -1, ptr %i.alt, align 8, !tbaa !1010
  br label %bb.jm

bb.gx:                                            ; preds = %bb.gw
  %i.alu = bitcast <2 x float> %i.abv to i64
  %i.alv = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 15 uses
  %i.alw = load i32, ptr %i.aet, align 4, !tbaa !392
  %i.alx = and i32 %i.alw, 66
  %or.cond144.i = icmp eq i32 %i.alx, 0
  br i1 %or.cond144.i, label %bb.gy, label %.thread1303

bb.gy:                                            ; preds = %bb.gx
  %i.aly = getelementptr inbounds nuw i8, ptr %.01057, i64 168
  %i.alz = load i8, ptr %i.aly, align 8, !tbaa !326
  %i.ama = icmp sgt i8 %i.alz, 0
  br i1 %i.ama, label %.thread1303, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.amb = getelementptr inbounds nuw i8, ptr %.01057, i64 169
  %i.amc = load i8, ptr %i.amb, align 1, !tbaa !325
  %i.amd = icmp sgt i8 %i.amc, 0
  br i1 %i.amd, label %.thread1303, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.ame = getelementptr inbounds nuw i8, ptr %.01057, i64 143
  %i.amf = load i8, ptr %i.ame, align 1, !tbaa !391, !range !216, !noundef !217
  %i.amg = icmp eq i8 %i.amf, 0
  br i1 %i.amg, label %.thread1303, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.amh = getelementptr inbounds nuw i8, ptr %i.alv, i64 204
  %i.ami = load i8, ptr %i.amh, align 4, !tbaa !519, !range !216, !noundef !217 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %i.alv, i64 6528
  %i.amk = load float, ptr %i.amj, align 8, !tbaa !294 ; 2 uses
  %i.aml = fmul float %i.amk, 1.350000e+00        ; 2 uses
  %i.amm = call float @llvm.fmuladd.f32(float %i.amk, float 2.000000e-01, float %i.all) ; 2 uses
  %i.amn = fcmp oge float %i.aml, %i.amm
  %i.amo = select i1 %i.amn, float %i.aml, float %i.amm
  %i.amp = fptosi float %i.amo to i32
  %i.amq = sitofp i32 %i.amp to float
  %i.amr = fmul nnan float %i.amq, 7.500000e-01
  %i.ams = fptosi float %i.amr to i32
  %i.amt = sitofp i32 %i.ams to float             ; 4 uses
  %i.amu = trunc nuw i8 %i.ami to i1
  %i.amv = select i1 %i.amu, float 4.000000e+00, float 0.000000e+00
  %i.amw = getelementptr inbounds nuw i8, ptr %.01057, i64 292 ; 2 uses
  store i32 1, ptr %i.amw, align 4, !tbaa !641
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.67)
  %i.amx = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.amz = getelementptr inbounds nuw i8, ptr %20, i64 12
  %i.ana = getelementptr inbounds nuw i8, ptr %.01057, i64 208 ; 2 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.alv, i64 8056 ; 3 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.alv, i64 1061
  %i.and = getelementptr inbounds nuw i8, ptr %24, i64 12
  %i.ane = getelementptr inbounds nuw i8, ptr %i.alv, i64 296 ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.alv, i64 7296 ; 2 uses
  %i.ang = fneg float %i.amt
  %wide.trip.count.i = zext nneg i32 %i.alh to i64
  %i.anh = load <2 x float>, ptr %i.akj, align 8  ; 3 uses
  %i.ani = load float, ptr %i.and, align 4
  %i.anj = extractelement <2 x float> %i.akh, i64 0 ; 2 uses
  %i.ank = extractelement <2 x float> %i.anh, i64 0
  %i.anl = insertelement <2 x float> poison, float %i.ang, i64 0
  %i.anm = shufflevector <2 x float> %i.anl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ann = insertelement <2 x float> poison, float %i.amv, i64 0
  %i.ano = shufflevector <2 x float> %i.ann, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anp = insertelement <2 x float> poison, float %i.amt, i64 0
  %i.anq = shufflevector <2 x float> %i.anp, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.hc

.preheader.i:                                     ; preds = %bb.ht
  %.not.i572 = icmp eq i8 %i.ami, 0
  br i1 %.not.i572, label %._crit_edge.i574, label %.lr.ph.i573

.lr.ph.i573:                                      ; preds = %.preheader.i
  %i.anr = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ans = getelementptr inbounds nuw i8, ptr %i.alv, i64 7252
  %i.ant = extractelement <2 x float> %i.akh, i64 1
  %i.anu = insertelement <2 x float> %i.anh, float f0x7F7FFFFF, i64 0
  %i.anv = insertelement <2 x float> %i.anh, float f0x7F7FFFFF, i64 1
  %i.anw = insertelement <2 x float> <float -4.000000e+00, float poison>, float %i.amt, i64 1 ; 4 uses
  %i.anx = insertelement <2 x float> <float poison, float -4.000000e+00>, float %i.amt, i64 0 ; 4 uses
  br label %bb.hu

bb.hc:                                            ; preds = %bb.ht, %bb.hb
  %indvars.iv.i = phi i64 [ 0, %bb.hb ], [ %indvars.iv.next.i, %bb.ht ] ; 7 uses
  %.013592.i = phi i1 [ false, %bb.hb ], [ %.177.i, %bb.ht ] ; 2 uses
  %.sroa.054.089.i = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.hb ], [ %.sroa.054.375.i, %bb.ht ] ; 3 uses
  %.sroa.051.088.i = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.hb ], [ %.sroa.051.173.i, %bb.ht ] ; 2 uses
  %i.any = getelementptr inbounds nuw [24 x i8], ptr @_ZL15resize_grip_def, i64 %indvars.iv.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 8
  %i.aoa = load <2 x float>, ptr %i.akt, align 8, !tbaa !75 ; 3 uses
  %i.aob = load <2 x float>, ptr %i.aes, align 8, !tbaa !75
  %i.aoc = fadd <2 x float> %i.aoa, %i.aob
  %i.aod = fsub <2 x float> %i.aoc, %i.aoa
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  %i.aoe = load <2 x float>, ptr %i.any, align 8, !tbaa !75 ; 4 uses
  %i.aof = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aod, <2 x float> %i.aoe, <2 x float> %i.aoa) ; 2 uses
  %i.aog = load <2 x float>, ptr %i.anz, align 8, !tbaa !75 ; 3 uses
  %i.aoh = fmul <2 x float> %i.ano, %i.aog        ; 3 uses
  %i.aoi = fsub <2 x float> %i.aof, %i.aoh        ; 3 uses
  %i.aoj = fmul <2 x float> %i.aog, %i.anq
  %i.aok = fadd <2 x float> %i.aof, %i.aoj        ; 3 uses
  store <2 x float> %i.aoi, ptr %20, align 8, !tbaa !75
  store <2 x float> %i.aok, ptr %i.amx, align 8, !tbaa !75
  %i.aol = extractelement <2 x float> %i.aok, i64 0 ; 2 uses
  %i.aom = extractelement <2 x float> %i.aoi, i64 0 ; 2 uses
  %i.aon = fcmp ogt float %i.aom, %i.aol
  br i1 %i.aon, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  store float %i.aol, ptr %20, align 8, !tbaa !75
  store float %i.aom, ptr %i.amx, align 8, !tbaa !75
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %i.aoo = extractelement <2 x float> %i.aok, i64 1 ; 2 uses
  %i.aop = extractelement <2 x float> %i.aoi, i64 1 ; 2 uses
  %i.aoq = fcmp ogt float %i.aop, %i.aoo
  br i1 %i.aoq, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  store float %i.aoo, ptr %i.amy, align 4, !tbaa !75
  store float %i.aop, ptr %i.amz, align 4, !tbaa !75
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %i.aor = trunc nuw nsw i64 %indvars.iv.i to i32 ; 7 uses
  %.sroa.2.0.extract.shift.i.i = lshr i32 %i.aor, 8
  %.sroa.3.0.extract.shift.i.i = lshr i32 %i.aor, 16
  %.sroa.4.0.extract.shift.i.i = lshr i32 %i.aor, 24
  %i.aos = load ptr, ptr %i.ana, align 8, !tbaa !318
  %i.aot = load i32, ptr %i.jk, align 8, !tbaa !316
  %i.aou = sext i32 %i.aot to i64
  %i.aov = getelementptr [4 x i8], ptr %i.aos, i64 %i.aou
  %i.aow = getelementptr i8, ptr %i.aov, i64 -4
  %i.aox = load i32, ptr %i.aow, align 4, !tbaa !94
  %i.aoy = xor i32 %i.aox, -1                     ; 2 uses
  %i.aoz = lshr i32 %i.aoy, 8
  %i.apa = xor i32 %i.aoy, %i.aor
  %i.apb = and i32 %i.apa, 255
  %i.apc = zext nneg i32 %i.apb to i64
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.apc
  %i.ape = load i32, ptr %i.apd, align 4, !tbaa !94
  %i.apf = xor i32 %i.ape, %i.aoz                 ; 2 uses
  %i.apg = lshr i32 %i.apf, 8
  %i.aph = xor i32 %i.apf, %.sroa.2.0.extract.shift.i.i
  %i.api = and i32 %i.aph, 255
  %i.apj = zext nneg i32 %i.api to i64
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.apj
  %i.apl = load i32, ptr %i.apk, align 4, !tbaa !94
  %i.apm = xor i32 %i.apg, %i.apl                 ; 2 uses
  %i.apn = lshr i32 %i.apm, 8
  %i.apo = xor i32 %i.apm, %.sroa.3.0.extract.shift.i.i
  %i.app = and i32 %i.apo, 255
  %i.apq = zext nneg i32 %i.app to i64
  %i.apr = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.apq
  %i.aps = load i32, ptr %i.apr, align 4, !tbaa !94
  %i.apt = xor i32 %i.apn, %i.aps                 ; 2 uses
  %i.apu = lshr i32 %i.apt, 8
  %i.apv = and i32 %i.apt, 255
  %i.apw = xor i32 %i.apv, %.sroa.4.0.extract.shift.i.i
  %i.apx = zext nneg i32 %i.apw to i64
  %i.apy = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.apx
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !94
  %i.aqa = xor i32 %i.apz, %i.apu
  %i.aqb = xor i32 %i.aqa, -1                     ; 6 uses
  %i.aqc = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 5 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 7260
  %i.aqe = load i32, ptr %i.aqd, align 4, !tbaa !319
  %i.aqf = icmp eq i32 %i.aqe, %i.aqb
  br i1 %i.aqf, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqc, i64 7264
  store i32 %i.aqb, ptr %i.aqg, align 8, !tbaa !320
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqc, i64 7320
  %i.aqi = load i32, ptr %i.aqh, align 8, !tbaa !321
  %i.aqj = icmp eq i32 %i.aqi, %i.aqb
  br i1 %i.aqj, label %bb.hj, label %_ZN5ImGui11KeepAliveIDEj.exit.i.i

bb.hj:                                            ; preds = %bb.hi
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqc, i64 7324
  store i8 1, ptr %i.aqk, align 4, !tbaa !322
  br label %_ZN5ImGui11KeepAliveIDEj.exit.i.i

_ZN5ImGui11KeepAliveIDEj.exit.i.i:                ; preds = %bb.hj, %bb.hi
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqc, i64 7236
  %i.aqm = load i32, ptr %i.aql, align 4, !tbaa !323
  %i.aqn = icmp eq i32 %i.aqm, %i.aqb
  br i1 %i.aqn, label %bb.hk, label %_ZN11ImGuiWindow5GetIDEi.exit.i

bb.hk:                                            ; preds = %_ZN5ImGui11KeepAliveIDEj.exit.i.i
  %i.aqo = inttoptr i64 %indvars.iv.i to ptr
  call void @_ZN5ImGui15DebugHookIdInfoEjiPKvS1_(i32 noundef %i.aqb, i32 noundef 4, ptr noundef %i.aqo, ptr noundef null)
  br label %_ZN11ImGuiWindow5GetIDEi.exit.i

_ZN11ImGuiWindow5GetIDEi.exit.i:                  ; preds = %bb.hk, %_ZN5ImGui11KeepAliveIDEj.exit.i.i
  %i.aqp = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %20, i32 noundef %i.aqb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 264192) ; 0 uses
  %i.aqq = load i8, ptr %i.a, align 1, !tbaa !219, !range !216, !noundef !217
  %i.aqr = trunc nuw i8 %i.aqq to i1
  %i.aqs = load i8, ptr %i.b, align 1, !range !216
  %i.aqt = trunc nuw i8 %i.aqs to i1              ; 2 uses
  %or.cond.i = select i1 %i.aqr, i1 true, i1 %i.aqt
  br i1 %or.cond.i, label %bb.hl, label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i

bb.hl:                                            ; preds = %_ZN11ImGuiWindow5GetIDEi.exit.i
  %.not142.i = icmp eq i64 %indvars.iv.i, 0       ; 2 uses
  %i.aqu = select i1 %.not142.i, i32 6, i32 5
  store i32 %i.aqu, ptr %i.anb, align 8, !tbaa !593
  br i1 %i.aqt, label %bb.hm, label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i

bb.hm:                                            ; preds = %bb.hl
  %i.aqv = load i8, ptr %i.anc, align 1, !tbaa !219, !range !216, !noundef !217
  %i.aqw = trunc nuw i8 %i.aqv to i1
  %or.cond3.i = and i1 %.not142.i, %i.aqw
  br i1 %or.cond3.i, label %bb.hn, label %bb.hp

bb.hn:                                            ; preds = %bb.hm
  %i.aqx = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %.01057, i64 %i.alu)
  %i.aqy = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 13 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 7260 ; 2 uses
  %i.ara = load i32, ptr %i.aqz, align 4, !tbaa !319
  %i.arb = icmp ne i32 %i.ara, 0                  ; 2 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqy, i64 7272
  %i.ard = zext i1 %i.arb to i8
  store i8 %i.ard, ptr %i.arc, align 8, !tbaa !364
  br i1 %i.arb, label %bb.ho, label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i

bb.ho:                                            ; preds = %bb.hn
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqy, i64 7268
  store float 0.000000e+00, ptr %i.are, align 4, !tbaa !365
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqy, i64 7275
  store i8 0, ptr %i.arf, align 1, !tbaa !366
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aqy, i64 7276
  store i8 0, ptr %i.arg, align 4, !tbaa !367
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aqy, i64 7316
  store i32 -1, ptr %i.arh, align 4, !tbaa !368
  store i32 0, ptr %i.aqz, align 4, !tbaa !319
  br label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i

_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i: ; preds = %bb.ho, %bb.hn
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aqy, i64 7273
  store i8 0, ptr %i.ari, align 1, !tbaa !369
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aqy, i64 7274
  store i8 0, ptr %i.arj, align 2, !tbaa !370
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aqy, i64 7304
  store ptr null, ptr %i.ark, align 8, !tbaa !371
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aqy, i64 7277
  store i8 0, ptr %i.arl, align 1, !tbaa !372
  %i.arm = getelementptr inbounds nuw i8, ptr %i.aqy, i64 7278
  store i8 0, ptr %i.arm, align 2, !tbaa !379
  %i.arn = getelementptr inbounds nuw i8, ptr %i.aqy, i64 7280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.arn, i8 0, i64 16, i1 false)
  %i.aro = load i8, ptr %i.b, align 1, !range !216
  %i.arp = trunc nuw i8 %i.aro to i1
  %i.arq = load i8, ptr %i.a, align 1, !range !216
  %i.arr = trunc nuw i8 %i.arq to i1
  br label %bb.hs

bb.hp:                                            ; preds = %bb.hm
  switch i32 %i.aor, label %_ZL7ImClampRK6ImVec2S1_S_.exit.i [
    i32 3, label %bb.hq
    i32 0, label %bb.hq
  ]

bb.hq:                                            ; preds = %bb.hp, %bb.hp
  br label %_ZL7ImClampRK6ImVec2S1_S_.exit.i

_ZL7ImClampRK6ImVec2S1_S_.exit.i:                 ; preds = %bb.hq, %bb.hp
  %i.ars = phi float [ %i.anj, %bb.hq ], [ f0xFF7FFFFF, %bb.hp ]
  %i.art = add nsw i32 %i.aor, -1
  %i.aru = and i32 %i.aor, 2147483646
  %i.arv = fmul <2 x float> %i.aog, %i.anm
  %i.arw = icmp ult i32 %i.art, 2                 ; 2 uses
  %i.arx = select i1 %i.arw, float %i.ank, float f0x7F7FFFFF
  %i.ary = icmp eq i32 %i.aru, 2                  ; 2 uses
  %i.arz = select i1 %i.ary, float %i.ani, float f0x7F7FFFFF
  %i.asa = load <2 x float>, ptr %i.ane, align 8, !tbaa !75
  %i.asb = load <2 x float>, ptr %i.anf, align 8, !tbaa !75
  %i.asc = fsub <2 x float> %i.asa, %i.asb
  %i.asd = fsub <2 x float> %i.arv, %i.aoh
  %i.ase = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asd, <2 x float> %i.aoe, <2 x float> %i.aoh)
  %i.asf = fadd <2 x float> %i.ase, %i.asc        ; 3 uses
  %i.asg = insertelement <2 x float> %i.akh, float %i.ars, i64 0 ; 2 uses
  %i.ash = fcmp olt <2 x float> %i.asf, %i.asg
  %i.asi = insertelement <2 x float> poison, float %i.arx, i64 0
  %i.asj = insertelement <2 x float> %i.asi, float %i.arz, i64 1 ; 2 uses
  %i.ask = fcmp ogt <2 x float> %i.asf, %i.asj
  %i.asl = select <2 x i1> %i.ask, <2 x float> %i.asj, <2 x float> %i.asf
  %i.asm = select <2 x i1> %i.ash, <2 x float> %i.asg, <2 x float> %i.asl ; 3 uses
  %i.asn = load <2 x float>, ptr %i.akt, align 8, !tbaa !75 ; 2 uses
  %i.aso = fsub <2 x float> %i.asn, %i.asm
  %i.asp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aso, <2 x float> %i.aoe, <2 x float> %i.asm) ; 5 uses
  %i.asq = load <2 x float>, ptr %i.aes, align 8, !tbaa !75
  %i.asr = fadd <2 x float> %i.asn, %i.asq        ; 2 uses
  %i.ass = fsub <2 x float> %i.asm, %i.asr
  %i.ast = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ass, <2 x float> %i.aoe, <2 x float> %i.asr)
  %i.asu = fsub <2 x float> %i.ast, %i.asp        ; 3 uses
  %i.asv = bitcast <2 x float> %i.asu to i64
  %i.asw = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull readonly %.01057, i64 %i.asv) ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.asw, %i.asu
  %foldExtExtBinop1325 = fsub <2 x float> %i.asp, %foldExtExtBinop
  %sel = select i1 %i.arw, <2 x float> %foldExtExtBinop1325, <2 x float> %i.asp
  %.sroa.054.1.i = shufflevector <2 x float> %sel, <2 x float> %i.asp, <2 x i32> <i32 0, i32 3> ; 2 uses
  br i1 %i.ary, label %bb.hr, label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i

bb.hr:                                            ; preds = %_ZL7ImClampRK6ImVec2S1_S_.exit.i
  %foldExtExtBinop1327 = fsub <2 x float> %i.asw, %i.asu
  %foldExtExtBinop1329 = fsub <2 x float> %i.asp, %foldExtExtBinop1327
  %.sroa.054.4.vec.insert64.i = shufflevector <2 x float> %.sroa.054.1.i, <2 x float> %foldExtExtBinop1329, <2 x i32> <i32 0, i32 3>
  br label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i

_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i: ; preds = %bb.hr, %_ZL7ImClampRK6ImVec2S1_S_.exit.i, %bb.hl, %_ZN11ImGuiWindow5GetIDEi.exit.i
  %.sroa.051.1.i = phi <2 x float> [ %i.asw, %bb.hr ], [ %i.asw, %_ZL7ImClampRK6ImVec2S1_S_.exit.i ], [ %.sroa.051.088.i, %bb.hl ], [ %.sroa.051.088.i, %_ZN11ImGuiWindow5GetIDEi.exit.i ] ; 2 uses
  %.sroa.054.3.i = phi <2 x float> [ %.sroa.054.4.vec.insert64.i, %bb.hr ], [ %.sroa.054.1.i, %_ZL7ImClampRK6ImVec2S1_S_.exit.i ], [ %.sroa.054.089.i, %bb.hl ], [ %.sroa.054.089.i, %_ZN11ImGuiWindow5GetIDEi.exit.i ] ; 2 uses
  %i.asx = icmp eq i64 %indvars.iv.i, 0
  %i.asy = load i8, ptr %i.b, align 1, !range !216
  %i.asz = trunc nuw i8 %i.asy to i1              ; 2 uses
  %or.cond5.i = select i1 %i.asx, i1 true, i1 %i.asz
  %i.ata = load i8, ptr %i.a, align 1, !range !216
  %i.atb = trunc nuw i8 %i.ata to i1              ; 2 uses
  %or.cond7.i = select i1 %or.cond5.i, i1 true, i1 %i.atb
  br i1 %or.cond7.i, label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i, label %bb.ht

_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i: ; preds = %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i
  %.pre.i577 = load ptr, ptr @GImGui, align 8, !tbaa !99
  br label %bb.hs

bb.hs:                                            ; preds = %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i
  %i.atc = phi ptr [ %i.aqy, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i ], [ %.pre.i577, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i ] ; 2 uses
  %i.atd = phi i1 [ %i.arr, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i ], [ %i.atb, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i ]
  %i.ate = phi i1 [ %i.arp, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i ], [ %i.asz, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i ]
  %.178.i = phi i1 [ true, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i ], [ %.013592.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i ]
  %.sroa.054.376.i = phi <2 x float> [ %.sroa.054.089.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i ], [ %.sroa.054.3.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i ]
  %.sroa.051.174.i = phi <2 x float> [ %i.aqx, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i ], [ %.sroa.051.1.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i ]
  %i.atf = getelementptr inbounds nuw i8, ptr %i.atc, i64 5472
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atc, i64 5672
  %i.ath = select i1 %i.atd, i64 31, i64 30
  %i.ati = select i1 %i.ate, i64 32, i64 %i.ath
  %i.atj = getelementptr inbounds nuw [16 x i8], ptr %i.atg, i64 %i.ati
  %i.atk = load float, ptr %i.atf, align 4, !tbaa !278
  %i.atl = load <4 x float>, ptr %i.atj, align 4, !tbaa !75
  %i.atm = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.atk, i64 3
  %i.atn = fmul <4 x float> %i.atl, %i.atm        ; 3 uses
  %i.ato = fcmp olt <4 x float> %i.atn, zeroinitializer
  %i.atp = fcmp ogt <4 x float> %i.atn, splat (float 1.000000e+00)
  %i.atq = select <4 x i1> %i.atp, <4 x float> splat (float 1.000000e+00), <4 x float> %i.atn
  %i.atr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atq, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ats = select <4 x i1> %i.ato, <4 x float> splat (float 5.000000e-01), <4 x float> %i.atr
  %i.att = fptosi <4 x float> %i.ats to <4 x i32>
  %i.atu = shl <4 x i32> %i.att, <i32 0, i32 8, i32 16, i32 24>
  %i.atv = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.atu)
  %i.atw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  store i32 %i.atv, ptr %i.atw, align 4, !tbaa !94
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i
  %.177.i = phi i1 [ %.013592.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i ], [ %.178.i, %bb.hs ] ; 3 uses
  %.sroa.054.375.i = phi <2 x float> [ %.sroa.054.3.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i ], [ %.sroa.054.376.i, %bb.hs ] ; 3 uses
  %.sroa.051.173.i = phi <2 x float> [ %.sroa.051.1.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i ], [ %.sroa.051.174.i, %bb.hs ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.hc, !llvm.loop !984

._crit_edge.i574.loopexit:                        ; preds = %.thread117.i
  %i.atx = trunc i32 %.21060 to i8
  br label %._crit_edge.i574

._crit_edge.i574:                                 ; preds = %._crit_edge.i574.loopexit, %.preheader.i
  %.31061 = phi i8 [ -1, %.preheader.i ], [ %i.atx, %._crit_edge.i574.loopexit ]
  %.sroa.051.2.lcssa.i = phi <2 x float> [ %.sroa.051.173.i, %.preheader.i ], [ %.sroa.051.3.i, %._crit_edge.i574.loopexit ] ; 3 uses
  %.sroa.054.4.lcssa.i = phi <2 x float> [ %.sroa.054.375.i, %.preheader.i ], [ %.sroa.054.7.i, %._crit_edge.i574.loopexit ] ; 2 uses
  %i.aty = load ptr, ptr @GImGui, align 8, !tbaa !99
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 7184
  %i.aua = load ptr, ptr %i.atz, align 8, !tbaa !214
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 200 ; 2 uses
  %i.auc = load i32, ptr %i.aub, align 8, !tbaa !316
  %i.aud = add nsw i32 %i.auc, -1
  store i32 %i.aud, ptr %i.aub, align 8, !tbaa !316
  store i32 0, ptr %i.amw, align 4, !tbaa !641
  %i.aue = getelementptr inbounds nuw i8, ptr %i.alv, i64 7984
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !557 ; 2 uses
  %.not141.i = icmp eq ptr %i.auf, null
  br i1 %.not141.i, label %bb.io, label %bb.ik

bb.hu:                                            ; preds = %.thread117.i, %.lr.ph.i573
  %.11059 = phi i32 [ -1, %.lr.ph.i573 ], [ %.21060, %.thread117.i ] ; 3 uses
  %indvars.iv97.i = phi i64 [ 0, %.lr.ph.i573 ], [ %indvars.iv.next98.i, %.thread117.i ] ; 5 uses
  %.sroa.054.494.i = phi <2 x float> [ %.sroa.054.375.i, %.lr.ph.i573 ], [ %.sroa.054.7.i, %.thread117.i ] ; 3 uses
  %.sroa.051.293.i = phi <2 x float> [ %.sroa.051.173.i, %.lr.ph.i573 ], [ %.sroa.051.3.i, %.thread117.i ] ; 3 uses
  %i.aug = getelementptr inbounds nuw [28 x i8], ptr @_ZL17resize_border_def, i64 %indvars.iv97.i ; 2 uses
  %i.auh = icmp samesign ugt i64 %indvars.iv97.i, 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #39
  %i.aui = load <2 x float>, ptr %i.akt, align 8, !tbaa !75 ; 7 uses
  %i.auj = load <2 x float>, ptr %i.aes, align 8, !tbaa !75
  %i.auk = fadd <2 x float> %i.aui, %i.auj        ; 6 uses
  %i.aul = trunc nuw nsw i64 %indvars.iv97.i to i32 ; 4 uses
  switch i32 %i.aul, label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i [
    i32 0, label %bb.hv
    i32 1, label %bb.hw
    i32 2, label %bb.hx
    i32 3, label %bb.hy
  ]

bb.hv:                                            ; preds = %bb.hu
  %i.aum = fadd <2 x float> %i.aui, %i.anw
  %i.aun = shufflevector <2 x float> %i.aui, <2 x float> %i.auk, <2 x i32> <i32 0, i32 3>
  %i.auo = fsub <2 x float> %i.aun, %i.anw
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i

bb.hw:                                            ; preds = %bb.hu
  %i.aup = shufflevector <2 x float> %i.auk, <2 x float> %i.aui, <2 x i32> <i32 0, i32 3>
  %i.auq = fadd <2 x float> %i.aup, %i.anw
  %i.aur = fsub <2 x float> %i.auk, %i.anw
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i

bb.hx:                                            ; preds = %bb.hu
  %i.aus = fadd <2 x float> %i.aui, %i.anx
  %i.aut = shufflevector <2 x float> %i.auk, <2 x float> %i.aui, <2 x i32> <i32 0, i32 3>
  %i.auu = fsub <2 x float> %i.aut, %i.anx
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i

bb.hy:                                            ; preds = %bb.hu
  %i.auv = shufflevector <2 x float> %i.aui, <2 x float> %i.auk, <2 x i32> <i32 0, i32 3>
  %i.auw = fadd <2 x float> %i.auv, %i.anx
  %i.aux = fsub <2 x float> %i.auk, %i.anx
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i

_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i: ; preds = %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu
  %.sroa.045.0.i.i = phi <2 x float> [ %i.auw, %bb.hy ], [ %i.aum, %bb.hv ], [ %i.auq, %bb.hw ], [ %i.aus, %bb.hx ], [ zeroinitializer, %bb.hu ]
  %.sroa.10.0.i.i = phi <2 x float> [ %i.aux, %bb.hy ], [ %i.auo, %bb.hv ], [ %i.aur, %bb.hw ], [ %i.auu, %bb.hx ], [ zeroinitializer, %bb.hu ]
  store <2 x float> %.sroa.045.0.i.i, ptr %21, align 8
  store <2 x float> %.sroa.10.0.i.i, ptr %i.anr, align 8
  %i.auy = add nuw nsw i64 %indvars.iv97.i, 4     ; 2 uses
  %i.auz = trunc nuw nsw i64 %i.auy to i32        ; 4 uses
  %.sroa.2.0.extract.shift.i248.i = lshr i32 %i.auz, 8
  %.sroa.3.0.extract.shift.i249.i = lshr i32 %i.auz, 16
  %.sroa.4.0.extract.shift.i250.i = lshr i32 %i.auz, 24
  %i.ava = load ptr, ptr %i.ana, align 8, !tbaa !318
  %i.avb = load i32, ptr %i.jk, align 8, !tbaa !316
  %i.avc = sext i32 %i.avb to i64
  %i.avd = getelementptr [4 x i8], ptr %i.ava, i64 %i.avc
  %i.ave = getelementptr i8, ptr %i.avd, i64 -4
  %i.avf = load i32, ptr %i.ave, align 4, !tbaa !94
  %i.avg = xor i32 %i.avf, -1                     ; 2 uses
  %i.avh = lshr i32 %i.avg, 8
  %i.avi = xor i32 %i.avg, %i.auz
  %i.avj = and i32 %i.avi, 255
  %i.avk = zext nneg i32 %i.avj to i64
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.avk
  %i.avm = load i32, ptr %i.avl, align 4, !tbaa !94
  %i.avn = xor i32 %i.avm, %i.avh                 ; 2 uses
  %i.avo = lshr i32 %i.avn, 8
  %i.avp = xor i32 %i.avn, %.sroa.2.0.extract.shift.i248.i
  %i.avq = and i32 %i.avp, 255
  %i.avr = zext nneg i32 %i.avq to i64
  %i.avs = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.avr
  %i.avt = load i32, ptr %i.avs, align 4, !tbaa !94
  %i.avu = xor i32 %i.avo, %i.avt                 ; 2 uses
  %i.avv = lshr i32 %i.avu, 8
  %i.avw = xor i32 %i.avu, %.sroa.3.0.extract.shift.i249.i
  %i.avx = and i32 %i.avw, 255
  %i.avy = zext nneg i32 %i.avx to i64
  %i.avz = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.avy
  %i.awa = load i32, ptr %i.avz, align 4, !tbaa !94
  %i.awb = xor i32 %i.avv, %i.awa                 ; 2 uses
  %i.awc = lshr i32 %i.awb, 8
  %i.awd = and i32 %i.awb, 255
  %i.awe = xor i32 %i.awd, %.sroa.4.0.extract.shift.i250.i
  %i.awf = zext nneg i32 %i.awe to i64
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.awf
  %i.awh = load i32, ptr %i.awg, align 4, !tbaa !94
  %i.awi = xor i32 %i.awh, %i.awc
  %i.awj = xor i32 %i.awi, -1                     ; 6 uses
  %i.awk = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 5 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 7260
  %i.awm = load i32, ptr %i.awl, align 4, !tbaa !319
  %i.awn = icmp eq i32 %i.awm, %i.awj
  br i1 %i.awn, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awk, i64 7264
  store i32 %i.awj, ptr %i.awo, align 8, !tbaa !320
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awk, i64 7320
  %i.awq = load i32, ptr %i.awp, align 8, !tbaa !321
  %i.awr = icmp eq i32 %i.awq, %i.awj
  br i1 %i.awr, label %bb.ib, label %_ZN5ImGui11KeepAliveIDEj.exit.i251.i

bb.ib:                                            ; preds = %bb.ia
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awk, i64 7324
  store i8 1, ptr %i.aws, align 4, !tbaa !322
  br label %_ZN5ImGui11KeepAliveIDEj.exit.i251.i

_ZN5ImGui11KeepAliveIDEj.exit.i251.i:             ; preds = %bb.ib, %bb.ia
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awk, i64 7236
  %i.awu = load i32, ptr %i.awt, align 4, !tbaa !323
  %i.awv = icmp eq i32 %i.awu, %i.awj
end_hunk_0
