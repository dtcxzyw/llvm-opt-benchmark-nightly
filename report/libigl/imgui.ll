Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui?download=true
inline.NumInlined: 2414
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.ahe = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !132
  %i.ahf = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  %i.ahg = call noundef ptr %i.ahe(i64 noundef %i.agz, ptr noundef %i.ahf), !inline_history !858 ; 3 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.jj, i64 360 ; 3 uses
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !353 ; 2 uses
  %.not6.i.i535 = icmp eq ptr %i.ahi, null
  br i1 %.not6.i.i535, label %bb.gi, label %bb.gf

bb.gf:                                            ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i534
  %i.ahj = load i32, ptr %i.agm, align 8, !tbaa !389
  %i.ahk = sext i32 %i.ahj to i64
  %i.ahl = shl nsw i64 %i.ahk, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ahg, ptr nonnull align 8 %i.ahi, i64 %i.ahl, i1 false)
  %i.ahm = load ptr, ptr %i.ahh, align 8, !tbaa !353 ; 2 uses
  %.not.i7.i.i536 = icmp eq ptr %i.ahm, null
  br i1 %.not.i7.i.i536, label %_ZN5ImGui7MemFreeEPv.exit.i.i538, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.ahn = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i537 = icmp eq ptr %i.ahn, null
  br i1 %.not4.i.i.i537, label %_ZN5ImGui7MemFreeEPv.exit.i.i538, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 944 ; 2 uses
  %i.ahp = load i32, ptr %i.aho, align 8, !tbaa !55
  %i.ahq = add nsw i32 %i.ahp, -1
  store i32 %i.ahq, ptr %i.aho, align 8, !tbaa !55
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i538

_ZN5ImGui7MemFreeEPv.exit.i.i538:                 ; preds = %bb.gh, %bb.gg, %bb.gf
  %i.ahr = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !132
  %i.ahs = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  call void %i.ahr(ptr noundef %i.ahm, ptr noundef %i.ahs), !inline_history !859
  br label %bb.gi

bb.gi:                                            ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i538, %_ZN5ImGui8MemAllocEm.exit.i.i534
  store ptr %i.ahg, ptr %i.ahh, align 8, !tbaa !353
  store i32 %i.agx, ptr %i.agq, align 4, !tbaa !388
  %.pre3.i539 = load i32, ptr %i.agm, align 8, !tbaa !389
  br label %_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_.exit

_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_.exit: ; preds = %._ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit_crit_edge.i, %bb.gi
  %i.aht = phi i32 [ %i.agn, %._ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit_crit_edge.i ], [ %.pre3.i539, %bb.gi ]
  %i.ahu = phi ptr [ %.pre.i531, %._ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit_crit_edge.i ], [ %i.ahg, %bb.gi ]
  %i.ahv = sext i32 %i.aht to i64
  %i.ahw = getelementptr inbounds [8 x i8], ptr %i.ahu, i64 %i.ahv
  %i.ahx = ptrtoint ptr %.01057 to i64
  store i64 %i.ahx, ptr %i.ahw, align 8
  %i.ahy = load i32, ptr %i.agm, align 8, !tbaa !389
  %i.ahz = add nsw i32 %i.ahy, 1
  store i32 %i.ahz, ptr %i.agm, align 8, !tbaa !389
  %or.cond7 = or i1 %i.ng, %.0317.shrunk
  %or.cond9 = select i1 %or.cond7, i1 true, i1 %i.ug
  br i1 %or.cond9, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_.exit
  %i.aia = getelementptr inbounds nuw i8, ptr %i.jj, i64 216
  %i.aib = getelementptr inbounds nuw i8, ptr %.01057, i64 16
  %i.aic = load i64, ptr %i.aia, align 8
  store i64 %i.aic, ptr %i.aib, align 8
  br label %bb.gk

bb.gk:                                            ; preds = %_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_.exit, %bb.gj, %bb.ga
  %i.aid = getelementptr inbounds nuw i8, ptr %.01057, i64 184 ; 2 uses
  %i.aie = load float, ptr %i.aid, align 8, !tbaa !860 ; 2 uses
  %i.aif = fcmp une float %i.aie, f0x7F7FFFFF
  br i1 %i.aif, label %bb.gl, label %.critedge392

bb.gl:                                            ; preds = %bb.gk
  %i.aig = load i8, ptr %i.wt, align 1, !tbaa !845
  %i.aih = icmp eq i8 %i.aig, 0
  br i1 %i.aih, label %bb.gm, label %.critedge392

bb.gm:                                            ; preds = %bb.gl
  %i.aii = getelementptr inbounds nuw i8, ptr %.01057, i64 192
  %i.aij = getelementptr i8, ptr %.01057, i64 188 ; 2 uses
  %.val419 = load float, ptr %i.aij, align 4, !tbaa !152
  %.phi.trans.insert.i544 = getelementptr inbounds nuw i8, ptr %.01057, i64 180 ; 2 uses
  %.pre.i545 = load i32, ptr %.phi.trans.insert.i544, align 4
  %i.aik = and i32 %.pre.i545, -15
  store i32 %i.aik, ptr %.phi.trans.insert.i544, align 4
  store i32 2139095039, ptr %i.aid, align 8
  store i32 2139095039, ptr %i.aij, align 4
  %i.ail = getelementptr inbounds nuw i8, ptr %.01057, i64 16 ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %.01057, i64 216 ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %.01057, i64 248 ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %.01057, i64 232 ; 2 uses
  %i.aip = load <2 x float>, ptr %i.aet, align 8, !tbaa !9
  %i.aiq = load <2 x float>, ptr %i.aii, align 8, !tbaa !9
  %i.air = fmul <2 x float> %i.aip, %i.aiq
  %i.ais = insertelement <2 x float> poison, float %i.aie, i64 0
  %i.ait = insertelement <2 x float> %i.ais, float %.val419, i64 1
  %i.aiu = fsub <2 x float> %i.ait, %i.air
  %i.aiv = load <2 x float>, ptr %i.ail, align 8
  %i.aiw = fptosi <2 x float> %i.aiu to <2 x i32>
  %i.aix = sitofp <2 x i32> %i.aiw to <2 x float> ; 2 uses
  store <2 x float> %i.aix, ptr %i.ail, align 8
  %i.aiy = fsub <2 x float> %i.aix, %i.aiv        ; 3 uses
  %i.aiz = shufflevector <2 x float> %i.aiy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aja = load <2 x float>, ptr %i.aim, align 8, !tbaa !9
  %i.ajb = fadd <2 x float> %i.aiy, %i.aja
  store <2 x float> %i.ajb, ptr %i.aim, align 8, !tbaa !9
  %i.ajc = load <2 x float>, ptr %i.ain, align 8, !tbaa !9
  %i.ajd = fadd <2 x float> %i.aiy, %i.ajc
  store <2 x float> %i.ajd, ptr %i.ain, align 8, !tbaa !9
  %i.aje = load <4 x float>, ptr %i.aio, align 8, !tbaa !9
  %i.ajf = fadd <4 x float> %i.aiz, %i.aje
  store <4 x float> %i.ajf, ptr %i.aio, align 8, !tbaa !9
  br label %bb.gs

.critedge392:                                     ; preds = %bb.gk, %bb.gl
  %i.ajg = and i32 %.1, 268435456
  %.not359 = icmp eq i32 %i.ajg, 0
  br i1 %.not359, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %.critedge392
  %i.ajh = call <2 x float> @_ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow(ptr noundef nonnull %.01057)
  %i.aji = getelementptr inbounds nuw i8, ptr %.01057, i64 16
  store <2 x float> %i.ajh, ptr %i.aji, align 8
  br label %bb.gs

bb.go:                                            ; preds = %.critedge392
  %i.ajj = icmp eq i32 %i.nf, 0
  %or.cond11 = or i1 %i.ajj, %.0317.shrunk
  %or.cond13.not = select i1 %or.cond11, i1 true, i1 %i.wv
  br i1 %or.cond13.not, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ajk = call <2 x float> @_ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow(ptr noundef nonnull %.01057)
  %i.ajl = getelementptr inbounds nuw i8, ptr %.01057, i64 16
  store <2 x float> %i.ajk, ptr %i.ajl, align 8
  br label %bb.gs

bb.gq:                                            ; preds = %bb.go
  %or.cond15 = or i1 %.not347, %.0317.shrunk
  %or.cond17 = select i1 %or.cond15, i1 true, i1 %i.ug
  br i1 %or.cond17, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ajm = call <2 x float> @_ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow(ptr noundef nonnull %.01057)
  %i.ajn = getelementptr inbounds nuw i8, ptr %.01057, i64 16
  store <2 x float> %i.ajm, ptr %i.ajn, align 8
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gn, %bb.gq, %bb.gr, %bb.gp, %bb.gm
  %i.ajo = load ptr, ptr @GImGui, align 8, !tbaa !49
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 7680
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !432
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !433 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #39
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 4
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajr, i64 12
  %i.aju = load <2 x float>, ptr %i.ajs, align 4, !tbaa !9 ; 3 uses
  %i.ajv = load <2 x float>, ptr %i.ajt, align 4, !tbaa !9
  %i.ajw = fadd <2 x float> %i.aju, %i.ajv        ; 2 uses
  store <2 x float> %i.aju, ptr %23, align 16
  %i.ajx = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  store <2 x float> %i.ajw, ptr %i.ajx, align 8
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajr, i64 20
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajr, i64 28
  %i.aka = getelementptr inbounds nuw i8, ptr %i.g, i64 5640
  %i.akb = getelementptr inbounds nuw i8, ptr %i.g, i64 5648
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #39
  %i.akc = load <2 x float>, ptr %i.ajy, align 4, !tbaa !9 ; 2 uses
  %i.akd = load <2 x float>, ptr %i.ajz, align 4, !tbaa !9
  %i.ake = fadd <2 x float> %i.akc, %i.akd
  %i.akf = load <2 x float>, ptr %i.aka, align 8, !tbaa !9 ; 2 uses
  %i.akg = load <2 x float>, ptr %i.akb, align 8, !tbaa !9 ; 2 uses
  %i.akh = fcmp oge <2 x float> %i.akf, %i.akg
  %i.aki = select <2 x i1> %i.akh, <2 x float> %i.akf, <2 x float> %i.akg ; 2 uses
  %i.akj = fadd <2 x float> %i.akc, %i.aki        ; 6 uses
  %i.akk = fsub <2 x float> %i.ake, %i.aki
  store <2 x float> %i.akj, ptr %24, align 8
  %i.akl = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store <2 x float> %i.akk, ptr %i.akl, align 8
  %brmerge394 = select i1 %.0317.shrunk, i1 true, i1 %.not346.not1076
  br i1 %brmerge394, label %bb.gw, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.akm = getelementptr inbounds nuw i8, ptr %.01057, i64 168
  %i.akn = load i8, ptr %i.akm, align 8, !tbaa !338
  %i.ako = icmp slt i8 %i.akn, 1
  br i1 %i.ako, label %bb.gu, label %bb.gw

bb.gu:                                            ; preds = %bb.gt
  %i.akp = getelementptr inbounds nuw i8, ptr %.01057, i64 169
  %i.akq = load i8, ptr %i.akp, align 1, !tbaa !337
  %i.akr = icmp slt i8 %i.akq, 1
  %i.aks = fcmp ogt <2 x float> %i.ajw, %i.aju    ; 2 uses
  %i.akt = extractelement <2 x i1> %i.aks, i64 0
  %or.cond1317 = select i1 %i.akr, i1 %i.akt, i1 false
  %i.aku = extractelement <2 x i1> %i.aks, i64 1
  %or.cond1318 = select i1 %or.cond1317, i1 %i.aku, i1 false
  br i1 %or.cond1318, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  call fastcc void @_ZL15ClampWindowRectP11ImGuiWindowRK6ImRect(ptr noundef nonnull %.01057, ptr noundef nonnull align 4 dereferenceable(16) %24)
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gs, %bb.gv, %bb.gu, %bb.gt
  %i.akv = getelementptr inbounds nuw i8, ptr %.01057, i64 16 ; 22 uses
  %i.akw = getelementptr i8, ptr %.01057, i64 20  ; 6 uses
  %i.akx = load <2 x float>, ptr %i.akv, align 8, !tbaa !9
  %i.aky = fptosi <2 x float> %i.akx to <2 x i32>
  %i.akz = sitofp <2 x i32> %i.aky to <2 x float>
  store <2 x float> %i.akz, ptr %i.akv, align 8
  %i.ala = and i32 %.1, 201326592
  %or.cond395 = icmp eq i32 %i.ala, 67108864
  %. = select i1 %or.cond395, i64 5524, i64 5488
  %.sink1319 = select i1 %.not346, i64 %., i64 5516
  %i.alb = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink1319
  %i.alc = load float, ptr %i.alb, align 4, !tbaa !9 ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %.01057, i64 72 ; 4 uses
  store float %i.alc, ptr %i.ald, align 8, !tbaa !861
  %i.ale = and i32 %.1, 4096
  %.not363 = icmp ne i32 %i.ale, 0
  %not..0308.in1064 = xor i1 %.0308.in1064, true
  %or.cond396 = select i1 %not..0308.in1064, i1 true, i1 %.not363 ; 2 uses
  %brmerge410 = or i1 %i.ng, %or.cond396
  %not.or.cond396 = xor i1 %or.cond396, true
  %i.alf = icmp eq i32 %i.uf, 0
  %spec.select1094 = select i1 %brmerge410, i1 %not.or.cond396, i1 %i.alf ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.alg = getelementptr inbounds nuw i8, ptr %i.g, i64 204
  %i.alh = load i8, ptr %i.alg, align 4, !tbaa !617, !range !210, !noundef !211
  %i.ali = trunc nuw i8 %i.alh to i1
  %i.alj = select i1 %i.ali, i32 2, i32 1         ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %i.g, i64 6528 ; 4 uses
  %i.all = load float, ptr %i.alk, align 8, !tbaa !297 ; 2 uses
  %i.alm = fmul float %i.all, 1.100000e+00        ; 2 uses
  %i.aln = fadd float %i.alc, 1.000000e+00        ; 2 uses
  %i.alo = call float @llvm.fmuladd.f32(float %i.all, float 2.000000e-01, float %i.aln) ; 2 uses
  %i.alp = fcmp oge float %i.alm, %i.alo
  %i.alq = select i1 %i.alp, float %i.alm, float %i.alo
  %i.alr = fptosi float %i.alq to i32
  %i.als = sitofp i32 %i.alr to float             ; 2 uses
  %i.alt = load i8, ptr %i.ads, align 1, !tbaa !752, !range !210, !noundef !211
  %i.alu = trunc nuw i8 %i.alt to i1
  br i1 %i.alu, label %.thread1297, label %bb.gx

.thread1297:                                      ; preds = %bb.gw
  %i.alv = getelementptr inbounds nuw i8, ptr %.01057, i64 152 ; 2 uses
  store i8 -1, ptr %i.alv, align 8, !tbaa !862
  br label %bb.jm

bb.gx:                                            ; preds = %bb.gw
  %i.alw = bitcast <2 x float> %i.abw to i64
  %i.alx = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 15 uses
  %i.aly = load i32, ptr %i.aeu, align 4, !tbaa !428
  %i.alz = and i32 %i.aly, 66
  %or.cond144.i = icmp eq i32 %i.alz, 0
  br i1 %or.cond144.i, label %bb.gy, label %.thread1301

bb.gy:                                            ; preds = %bb.gx
  %i.ama = getelementptr inbounds nuw i8, ptr %.01057, i64 168
  %i.amb = load i8, ptr %i.ama, align 8, !tbaa !338
  %i.amc = icmp sgt i8 %i.amb, 0
  br i1 %i.amc, label %.thread1301, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.amd = getelementptr inbounds nuw i8, ptr %.01057, i64 169
  %i.ame = load i8, ptr %i.amd, align 1, !tbaa !337
  %i.amf = icmp sgt i8 %i.ame, 0
  br i1 %i.amf, label %.thread1301, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.amg = getelementptr inbounds nuw i8, ptr %.01057, i64 143
  %i.amh = load i8, ptr %i.amg, align 1, !tbaa !427, !range !210, !noundef !211
  %i.ami = icmp eq i8 %i.amh, 0
  br i1 %i.ami, label %.thread1301, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.amj = getelementptr inbounds nuw i8, ptr %i.alx, i64 204
  %i.amk = load i8, ptr %i.amj, align 4, !tbaa !617, !range !210, !noundef !211 ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.alx, i64 6528
  %i.amm = load float, ptr %i.aml, align 8, !tbaa !297 ; 2 uses
  %i.amn = fmul float %i.amm, 1.350000e+00        ; 2 uses
  %i.amo = call float @llvm.fmuladd.f32(float %i.amm, float 2.000000e-01, float %i.aln) ; 2 uses
  %i.amp = fcmp oge float %i.amn, %i.amo
  %i.amq = select i1 %i.amp, float %i.amn, float %i.amo
  %i.amr = fptosi float %i.amq to i32
  %i.ams = sitofp i32 %i.amr to float
  %i.amt = fmul nnan float %i.ams, 7.500000e-01
  %i.amu = fptosi float %i.amt to i32
  %i.amv = sitofp i32 %i.amu to float             ; 4 uses
  %i.amw = trunc nuw i8 %i.amk to i1
  %i.amx = select i1 %i.amw, float 4.000000e+00, float 0.000000e+00
  %i.amy = getelementptr inbounds nuw i8, ptr %.01057, i64 292 ; 2 uses
  store i32 1, ptr %i.amy, align 4, !tbaa !863
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.67)
  %i.amz = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.anb = getelementptr inbounds nuw i8, ptr %20, i64 12
  %i.anc = getelementptr inbounds nuw i8, ptr %.01057, i64 208 ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.alx, i64 8056 ; 3 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.alx, i64 1061
  %i.anf = getelementptr inbounds nuw i8, ptr %24, i64 12
  %i.ang = getelementptr inbounds nuw i8, ptr %i.alx, i64 296 ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %i.alx, i64 7296 ; 2 uses
  %i.ani = fneg float %i.amv
  %wide.trip.count.i = zext nneg i32 %i.alj to i64
  %i.anj = load <2 x float>, ptr %i.akl, align 8  ; 3 uses
  %i.ank = load float, ptr %i.anf, align 4
  %i.anl = extractelement <2 x float> %i.akj, i64 0
  %i.anm = extractelement <2 x float> %i.anj, i64 0
  %i.ann = insertelement <2 x float> poison, float %i.ani, i64 0
  %i.ano = shufflevector <2 x float> %i.ann, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anp = insertelement <2 x float> poison, float %i.amx, i64 0
  %i.anq = shufflevector <2 x float> %i.anp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anr = insertelement <2 x float> poison, float %i.amv, i64 0
  %i.ans = shufflevector <2 x float> %i.anr, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.hc

.preheader.i:                                     ; preds = %bb.ht
  %.not.i572 = icmp eq i8 %i.amk, 0
  br i1 %.not.i572, label %._crit_edge.i574, label %.lr.ph.i573

.lr.ph.i573:                                      ; preds = %.preheader.i
  %i.ant = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.anu = getelementptr inbounds nuw i8, ptr %i.alx, i64 7252
  %i.anv = insertelement <2 x float> %i.akj, float f0xFF7FFFFF, i64 0
  %i.anw = insertelement <2 x float> %i.akj, float f0xFF7FFFFF, i64 1
  %i.anx = insertelement <2 x float> %i.anj, float f0x7F7FFFFF, i64 0
  %i.any = insertelement <2 x float> %i.anj, float f0x7F7FFFFF, i64 1
  %i.anz = insertelement <2 x float> <float -4.000000e+00, float poison>, float %i.amv, i64 1 ; 4 uses
  %i.aoa = insertelement <2 x float> <float poison, float -4.000000e+00>, float %i.amv, i64 0 ; 4 uses
  br label %bb.hu

bb.hc:                                            ; preds = %bb.ht, %bb.hb
  %indvars.iv.i = phi i64 [ 0, %bb.hb ], [ %indvars.iv.next.i, %bb.ht ] ; 7 uses
  %.013592.i = phi i1 [ false, %bb.hb ], [ %.177.i, %bb.ht ] ; 2 uses
  %.sroa.054.089.i = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.hb ], [ %.sroa.054.375.i, %bb.ht ] ; 3 uses
  %.sroa.051.088.i = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.hb ], [ %.sroa.051.173.i, %bb.ht ] ; 2 uses
  %i.aob = getelementptr inbounds nuw [24 x i8], ptr @_ZL15resize_grip_def, i64 %indvars.iv.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 8
  %i.aod = load <2 x float>, ptr %i.akv, align 8, !tbaa !9 ; 3 uses
  %i.aoe = load <2 x float>, ptr %i.aet, align 8, !tbaa !9
  %i.aof = fadd <2 x float> %i.aod, %i.aoe
  %i.aog = fsub <2 x float> %i.aof, %i.aod
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  %i.aoh = load <2 x float>, ptr %i.aob, align 8, !tbaa !9 ; 4 uses
  %i.aoi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aog, <2 x float> %i.aoh, <2 x float> %i.aod) ; 2 uses
  %i.aoj = load <2 x float>, ptr %i.aoc, align 8, !tbaa !9 ; 3 uses
  %i.aok = fmul <2 x float> %i.anq, %i.aoj        ; 3 uses
  %i.aol = fsub <2 x float> %i.aoi, %i.aok        ; 3 uses
  %i.aom = fmul <2 x float> %i.aoj, %i.ans
  %i.aon = fadd <2 x float> %i.aoi, %i.aom        ; 3 uses
  store <2 x float> %i.aol, ptr %20, align 8
  store <2 x float> %i.aon, ptr %i.amz, align 8
  %i.aoo = extractelement <2 x float> %i.aon, i64 0 ; 2 uses
  %i.aop = extractelement <2 x float> %i.aol, i64 0 ; 2 uses
  %i.aoq = fcmp ogt float %i.aop, %i.aoo
  br i1 %i.aoq, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  store float %i.aoo, ptr %20, align 8, !tbaa !9
  store float %i.aop, ptr %i.amz, align 8, !tbaa !9
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %i.aor = extractelement <2 x float> %i.aon, i64 1 ; 2 uses
  %i.aos = extractelement <2 x float> %i.aol, i64 1 ; 2 uses
  %i.aot = fcmp ogt float %i.aos, %i.aor
  br i1 %i.aot, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  store float %i.aor, ptr %i.ana, align 4, !tbaa !9
  store float %i.aos, ptr %i.anb, align 4, !tbaa !9
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %i.aou = trunc nuw nsw i64 %indvars.iv.i to i32 ; 7 uses
  %.sroa.2.0.extract.shift.i.i = lshr i32 %i.aou, 8
  %.sroa.3.0.extract.shift.i.i = lshr i32 %i.aou, 16
  %.sroa.4.0.extract.shift.i.i = lshr i32 %i.aou, 24
  %i.aov = load ptr, ptr %i.anc, align 8, !tbaa !329
  %i.aow = load i32, ptr %i.jk, align 8, !tbaa !327
  %i.aox = sext i32 %i.aow to i64
  %i.aoy = getelementptr [4 x i8], ptr %i.aov, i64 %i.aox
  %i.aoz = getelementptr i8, ptr %i.aoy, i64 -4
  %i.apa = load i32, ptr %i.aoz, align 4, !tbaa !34
  %i.apb = xor i32 %i.apa, -1                     ; 2 uses
  %i.apc = lshr i32 %i.apb, 8
  %i.apd = xor i32 %i.apb, %i.aou
  %i.ape = and i32 %i.apd, 255
  %i.apf = zext nneg i32 %i.ape to i64
  %i.apg = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.apf
  %i.aph = load i32, ptr %i.apg, align 4, !tbaa !34
  %i.api = xor i32 %i.aph, %i.apc                 ; 2 uses
  %i.apj = lshr i32 %i.api, 8
  %i.apk = xor i32 %i.api, %.sroa.2.0.extract.shift.i.i
  %i.apl = and i32 %i.apk, 255
  %i.apm = zext nneg i32 %i.apl to i64
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.apm
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !34
  %i.app = xor i32 %i.apj, %i.apo                 ; 2 uses
  %i.apq = lshr i32 %i.app, 8
  %i.apr = xor i32 %i.app, %.sroa.3.0.extract.shift.i.i
end_hunk_0
begin_hunk_1_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.hc, !llvm.loop !864

._crit_edge.i574.loopexit:                        ; preds = %.thread117.i
  %i.aua = trunc i32 %.21060 to i8
  br label %._crit_edge.i574

._crit_edge.i574:                                 ; preds = %._crit_edge.i574.loopexit, %.preheader.i
  %.31061 = phi i8 [ -1, %.preheader.i ], [ %i.aua, %._crit_edge.i574.loopexit ]
  %.sroa.051.2.lcssa.i = phi <2 x float> [ %.sroa.051.173.i, %.preheader.i ], [ %.sroa.051.3.i, %._crit_edge.i574.loopexit ] ; 3 uses
  %.sroa.054.4.lcssa.i = phi <2 x float> [ %.sroa.054.375.i, %.preheader.i ], [ %.sroa.054.7.i, %._crit_edge.i574.loopexit ] ; 2 uses
  %i.aub = load ptr, ptr @GImGui, align 8, !tbaa !49
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aub, i64 7184
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !208
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 200 ; 2 uses
  %i.auf = load i32, ptr %i.aue, align 8, !tbaa !327
  %i.aug = add nsw i32 %i.auf, -1
  store i32 %i.aug, ptr %i.aue, align 8, !tbaa !327
  store i32 0, ptr %i.amy, align 4, !tbaa !863
  %i.auh = getelementptr inbounds nuw i8, ptr %i.alx, i64 7984
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !698 ; 2 uses
  %.not141.i = icmp eq ptr %i.aui, null
  br i1 %.not141.i, label %bb.io, label %bb.ik

bb.hu:                                            ; preds = %.thread117.i, %.lr.ph.i573
  %.11059 = phi i32 [ -1, %.lr.ph.i573 ], [ %.21060, %.thread117.i ] ; 3 uses
  %indvars.iv97.i = phi i64 [ 0, %.lr.ph.i573 ], [ %indvars.iv.next98.i, %.thread117.i ] ; 5 uses
  %.sroa.054.494.i = phi <2 x float> [ %.sroa.054.375.i, %.lr.ph.i573 ], [ %.sroa.054.7.i, %.thread117.i ] ; 3 uses
  %.sroa.051.293.i = phi <2 x float> [ %.sroa.051.173.i, %.lr.ph.i573 ], [ %.sroa.051.3.i, %.thread117.i ] ; 3 uses
  %i.auj = getelementptr inbounds nuw [28 x i8], ptr @_ZL17resize_border_def, i64 %indvars.iv97.i ; 2 uses
  %i.auk = icmp samesign ugt i64 %indvars.iv97.i, 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #39
  %i.aul = load <2 x float>, ptr %i.akv, align 8, !tbaa !9 ; 7 uses
  %i.aum = load <2 x float>, ptr %i.aet, align 8, !tbaa !9
  %i.aun = fadd <2 x float> %i.aul, %i.aum        ; 6 uses
  %i.auo = trunc nuw nsw i64 %indvars.iv97.i to i32 ; 4 uses
  switch i32 %i.auo, label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i [
    i32 0, label %bb.hv
    i32 1, label %bb.hw
    i32 2, label %bb.hx
    i32 3, label %bb.hy
  ]

bb.hv:                                            ; preds = %bb.hu
  %i.aup = fadd <2 x float> %i.aul, %i.anz
  %i.auq = shufflevector <2 x float> %i.aul, <2 x float> %i.aun, <2 x i32> <i32 0, i32 3>
  %i.aur = fsub <2 x float> %i.auq, %i.anz
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i

bb.hw:                                            ; preds = %bb.hu
  %i.aus = shufflevector <2 x float> %i.aun, <2 x float> %i.aul, <2 x i32> <i32 0, i32 3>
  %i.aut = fadd <2 x float> %i.aus, %i.anz
  %i.auu = fsub <2 x float> %i.aun, %i.anz
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i

bb.hx:                                            ; preds = %bb.hu
  %i.auv = fadd <2 x float> %i.aul, %i.aoa
  %i.auw = shufflevector <2 x float> %i.aun, <2 x float> %i.aul, <2 x i32> <i32 0, i32 3>
  %i.aux = fsub <2 x float> %i.auw, %i.aoa
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i

bb.hy:                                            ; preds = %bb.hu
  %i.auy = shufflevector <2 x float> %i.aul, <2 x float> %i.aun, <2 x i32> <i32 0, i32 3>
  %i.auz = fadd <2 x float> %i.auy, %i.aoa
  %i.ava = fsub <2 x float> %i.aun, %i.aoa
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i

_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i: ; preds = %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu
  %.sroa.045.0.i.i = phi <2 x float> [ %i.auz, %bb.hy ], [ %i.aup, %bb.hv ], [ %i.aut, %bb.hw ], [ %i.auv, %bb.hx ], [ zeroinitializer, %bb.hu ]
  %.sroa.10.0.i.i = phi <2 x float> [ %i.ava, %bb.hy ], [ %i.aur, %bb.hv ], [ %i.auu, %bb.hw ], [ %i.aux, %bb.hx ], [ zeroinitializer, %bb.hu ]
  store <2 x float> %.sroa.045.0.i.i, ptr %21, align 8
  store <2 x float> %.sroa.10.0.i.i, ptr %i.ant, align 8
  %i.avb = add nuw nsw i64 %indvars.iv97.i, 4     ; 2 uses
  %i.avc = trunc nuw nsw i64 %i.avb to i32        ; 4 uses
  %.sroa.2.0.extract.shift.i248.i = lshr i32 %i.avc, 8
  %.sroa.3.0.extract.shift.i249.i = lshr i32 %i.avc, 16
  %.sroa.4.0.extract.shift.i250.i = lshr i32 %i.avc, 24
  %i.avd = load ptr, ptr %i.anc, align 8, !tbaa !329
  %i.ave = load i32, ptr %i.jk, align 8, !tbaa !327
  %i.avf = sext i32 %i.ave to i64
  %i.avg = getelementptr [4 x i8], ptr %i.avd, i64 %i.avf
  %i.avh = getelementptr i8, ptr %i.avg, i64 -4
  %i.avi = load i32, ptr %i.avh, align 4, !tbaa !34
  %i.avj = xor i32 %i.avi, -1                     ; 2 uses
  %i.avk = lshr i32 %i.avj, 8
  %i.avl = xor i32 %i.avj, %i.avc
  %i.avm = and i32 %i.avl, 255
  %i.avn = zext nneg i32 %i.avm to i64
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.avn
  %i.avp = load i32, ptr %i.avo, align 4, !tbaa !34
  %i.avq = xor i32 %i.avp, %i.avk                 ; 2 uses
  %i.avr = lshr i32 %i.avq, 8
  %i.avs = xor i32 %i.avq, %.sroa.2.0.extract.shift.i248.i
  %i.avt = and i32 %i.avs, 255
  %i.avu = zext nneg i32 %i.avt to i64
  %i.avv = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.avu
  %i.avw = load i32, ptr %i.avv, align 4, !tbaa !34
  %i.avx = xor i32 %i.avr, %i.avw                 ; 2 uses
  %i.avy = lshr i32 %i.avx, 8
  %i.avz = xor i32 %i.avx, %.sroa.3.0.extract.shift.i249.i
  %i.awa = and i32 %i.avz, 255
  %i.awb = zext nneg i32 %i.awa to i64
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.awb
  %i.awd = load i32, ptr %i.awc, align 4, !tbaa !34
  %i.awe = xor i32 %i.avy, %i.awd                 ; 2 uses
  %i.awf = lshr i32 %i.awe, 8
  %i.awg = and i32 %i.awe, 255
  %i.awh = xor i32 %i.awg, %.sroa.4.0.extract.shift.i250.i
  %i.awi = zext nneg i32 %i.awh to i64
  %i.awj = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.awi
  %i.awk = load i32, ptr %i.awj, align 4, !tbaa !34
  %i.awl = xor i32 %i.awk, %i.awf
  %i.awm = xor i32 %i.awl, -1                     ; 6 uses
  %i.awn = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 5 uses
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 7260
  %i.awp = load i32, ptr %i.awo, align 4, !tbaa !331
  %i.awq = icmp eq i32 %i.awp, %i.awm
  br i1 %i.awq, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awn, i64 7264
  store i32 %i.awm, ptr %i.awr, align 8, !tbaa !332
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awn, i64 7320
  %i.awt = load i32, ptr %i.aws, align 8, !tbaa !333
  %i.awu = icmp eq i32 %i.awt, %i.awm
  br i1 %i.awu, label %bb.ib, label %_ZN5ImGui11KeepAliveIDEj.exit.i251.i

bb.ib:                                            ; preds = %bb.ia
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awn, i64 7324
  store i8 1, ptr %i.awv, align 4, !tbaa !334
  br label %_ZN5ImGui11KeepAliveIDEj.exit.i251.i

_ZN5ImGui11KeepAliveIDEj.exit.i251.i:             ; preds = %bb.ib, %bb.ia
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awn, i64 7236
  %i.awx = load i32, ptr %i.aww, align 4, !tbaa !335
  %i.awy = icmp eq i32 %i.awx, %i.awm
  br i1 %i.awy, label %bb.ic, label %_ZN11ImGuiWindow5GetIDEi.exit252.i

bb.ic:                                            ; preds = %_ZN5ImGui11KeepAliveIDEj.exit.i251.i
  %i.awz = inttoptr i64 %i.avb to ptr
  call void @_ZN5ImGui15DebugHookIdInfoEjiPKvS1_(i32 noundef %i.awm, i32 noundef 4, ptr noundef nonnull %i.awz, ptr noundef null)
  br label %_ZN11ImGuiWindow5GetIDEi.exit252.i

_ZN11ImGuiWindow5GetIDEi.exit252.i:               ; preds = %bb.ic, %_ZN5ImGui11KeepAliveIDEj.exit.i251.i
  %i.axa = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %21, i32 noundef %i.awm, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 2048) ; 0 uses
  %i.axb = load i8, ptr %i.c, align 1, !tbaa !213, !range !210, !noundef !211
  %i.axc = trunc nuw i8 %i.axb to i1
  br i1 %i.axc, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %_ZN11ImGuiWindow5GetIDEi.exit252.i
  %i.axd = load float, ptr %i.anu, align 4, !tbaa !679
  %i.axe = fcmp ogt float %i.axd, 4.000000e-02
  %i.axf = load i8, ptr %i.d, align 1, !range !210
  %i.axg = trunc nuw i8 %i.axf to i1              ; 2 uses
  %or.cond9.i = select i1 %i.axe, i1 true, i1 %i.axg
  br i1 %or.cond9.i, label %bb.if, label %.thread117.i

bb.ie:                                            ; preds = %_ZN11ImGuiWindow5GetIDEi.exit252.i
  %.old.i = load i8, ptr %i.d, align 1, !tbaa !213, !range !210, !noundef !211
  %.old8.i = trunc nuw i8 %.old.i to i1
  br i1 %.old8.i, label %.thread.i, label %.thread117.i

.thread.i:                                        ; preds = %bb.ie
  %i.axh = select i1 %i.auk, i32 3, i32 4
  store i32 %i.axh, ptr %i.and, align 8, !tbaa !746
  br label %bb.ig

bb.if:                                            ; preds = %bb.id
  %i.axi = select i1 %i.auk, i32 3, i32 4
  store i32 %i.axi, ptr %i.and, align 8, !tbaa !746
  br i1 %i.axg, label %bb.ig, label %.thread117.i

bb.ig:                                            ; preds = %bb.if, %.thread.i
  switch i32 %i.auo, label %.thread82.thread.i [
    i32 1, label %.thread79.i
    i32 3, label %bb.ih
    i32 0, label %.thread83.i
    i32 2, label %bb.ii
  ]

.thread79.i:                                      ; preds = %bb.ig
  br label %.thread82.thread.i

bb.ih:                                            ; preds = %bb.ig
  br label %.thread82.thread.i

.thread83.i:                                      ; preds = %bb.ig
  br label %.thread82.thread.i

bb.ii:                                            ; preds = %bb.ig
  br label %.thread82.thread.i

.thread82.thread.i:                               ; preds = %bb.ii, %.thread83.i, %bb.ih, %.thread79.i, %bb.ig
  %i.axj = phi <2 x float> [ splat (float f0xFF7FFFFF), %bb.ii ], [ splat (float f0xFF7FFFFF), %bb.ig ], [ splat (float f0xFF7FFFFF), %.thread83.i ], [ %i.anv, %bb.ih ], [ %i.anw, %.thread79.i ] ; 2 uses
  %i.axk = phi <2 x float> [ %i.anx, %bb.ii ], [ splat (float f0x7F7FFFFF), %bb.ig ], [ %i.any, %.thread83.i ], [ splat (float f0x7F7FFFFF), %bb.ih ], [ splat (float f0x7F7FFFFF), %.thread79.i ] ; 2 uses
  %28 = load <2 x float>, ptr %i.akv, align 8     ; 2 uses
  %i.axl = zext i1 %i.auk to i64                  ; 2 uses
  %i.axm = getelementptr inbounds nuw [4 x i8], ptr %i.ang, i64 %i.axl
  %i.axn = load float, ptr %i.axm, align 4, !tbaa !9
  %i.axo = getelementptr inbounds nuw [4 x i8], ptr %i.anh, i64 %i.axl
  %i.axp = load float, ptr %i.axo, align 4, !tbaa !9
  %i.axq = fsub float %i.axn, %i.axp
  %i.axr = fadd float %i.axq, 4.000000e+00        ; 2 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.auj, i64 8
  %i.axt = getelementptr inbounds nuw i8, ptr %i.auj, i64 16
  %i.axu = load <2 x float>, ptr %i.akv, align 8  ; 2 uses
  %i.axv = insertelement <2 x i1> poison, i1 %i.auk, i64 0
  %i.axw = shufflevector <2 x i1> %i.axv, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.axx = insertelement <2 x float> %i.axu, float %i.axr, i64 1
  %i.axy = insertelement <2 x float> %i.axu, float %i.axr, i64 0
  %i.axz = select <2 x i1> %i.axw, <2 x float> %i.axx, <2 x float> %i.axy ; 3 uses
  %29 = fcmp olt <2 x float> %i.axz, %i.axj
  %30 = fcmp ogt <2 x float> %i.axz, %i.axk
  %i.aya = select <2 x i1> %30, <2 x float> %i.axk, <2 x float> %i.axz
  %i.ayb = select <2 x i1> %29, <2 x float> %i.axj, <2 x float> %i.aya ; 3 uses
  %i.ayc = load <2 x float>, ptr %i.axs, align 4, !tbaa !9 ; 2 uses
  %i.ayd = load <2 x float>, ptr %i.axt, align 4, !tbaa !9 ; 2 uses
  %i.aye = fcmp olt <2 x float> %i.ayc, %i.ayd
  %i.ayf = select <2 x i1> %i.aye, <2 x float> %i.ayc, <2 x float> %i.ayd ; 4 uses
  %i.ayg = fsub <2 x float> %28, %i.ayb
  %i.ayh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayg, <2 x float> %i.ayf, <2 x float> %i.ayb) ; 5 uses
  %i.ayi = load <2 x float>, ptr %i.aet, align 8, !tbaa !9
  %i.ayj = fadd <2 x float> %i.ayi, %28           ; 2 uses
  %i.ayk = fsub <2 x float> %i.ayb, %i.ayj
  %i.ayl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayk, <2 x float> %i.ayf, <2 x float> %i.ayj)
  %i.aym = fsub <2 x float> %i.ayl, %i.ayh        ; 3 uses
  %i.ayn = bitcast <2 x float> %i.aym to i64
  %i.ayo = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull readonly %.01057, i64 %i.ayn) ; 4 uses
  %i.ayp = extractelement <2 x float> %i.ayf, i64 0
  %i.ayq = fcmp oeq float %i.ayp, 0.000000e+00
  %foldExtExtBinop1329 = fsub <2 x float> %i.ayo, %i.aym
  %foldExtExtBinop1331 = fsub <2 x float> %i.ayh, %foldExtExtBinop1329
  %sel1339 = select i1 %i.ayq, <2 x float> %foldExtExtBinop1331, <2 x float> %i.ayh
  %.sroa.054.5.i.a = shufflevector <2 x float> %sel1339, <2 x float> %i.ayh, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ayr = extractelement <2 x float> %i.ayf, i64 1
  %i.ays = fcmp oeq float %i.ayr, 0.000000e+00
  br i1 %i.ays, label %bb.ij, label %.thread117.i

bb.ij:                                            ; preds = %.thread82.thread.i
  %foldExtExtBinop1333 = fsub <2 x float> %i.ayo, %i.aym
  %foldExtExtBinop1335 = fsub <2 x float> %i.ayh, %foldExtExtBinop1333
  %.sroa.054.4.vec.insert66.i = shufflevector <2 x float> %.sroa.054.5.i.a, <2 x float> %foldExtExtBinop1335, <2 x i32> <i32 0, i32 3>
  br label %.thread117.i

.thread117.i:                                     ; preds = %.thread82.thread.i, %bb.ij, %bb.if, %bb.ie, %bb.id
  %.21060 = phi i32 [ %.11059, %bb.ie ], [ %.11059, %bb.if ], [ %.11059, %bb.id ], [ %i.auo, %bb.ij ], [ %i.auo, %.thread82.thread.i ] ; 2 uses
  %.sroa.051.3.i = phi <2 x float> [ %.sroa.051.293.i, %bb.ie ], [ %.sroa.051.293.i, %bb.if ], [ %.sroa.051.293.i, %bb.id ], [ %i.ayo, %bb.ij ], [ %i.ayo, %.thread82.thread.i ] ; 2 uses
  %.sroa.054.7.i = phi <2 x float> [ %.sroa.054.494.i, %bb.ie ], [ %.sroa.054.494.i, %bb.if ], [ %.sroa.054.494.i, %bb.id ], [ %.sroa.054.4.vec.insert66.i, %bb.ij ], [ %.sroa.054.5.i.a, %.thread82.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 2 uses
  %exitcond101.not.i = icmp eq i64 %indvars.iv.next98.i, 4
  br i1 %exitcond101.not.i, label %._crit_edge.i574.loopexit, label %bb.hu, !llvm.loop !865

bb.ik:                                            ; preds = %._crit_edge.i574
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.aui, i64 832
  %i.ayu = load ptr, ptr %i.ayt, align 8, !tbaa !426
  %i.ayv = icmp eq ptr %i.ayu, %.01057
  br i1 %i.ayv, label %bb.il, label %bb.io

bb.il:                                            ; preds = %bb.ik
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.alx, i64 7748
  %i.ayx = load i32, ptr %i.ayw, align 4, !tbaa !691
  switch i32 %i.ayx, label %.thread85.i [
    i32 2, label %bb.im
    i32 3, label %.thread85.sink.split.i
  ]

bb.im:                                            ; preds = %bb.il
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.alx, i64 321
  %i.ayz = load i8, ptr %i.ayy, align 1, !tbaa !442, !range !210, !noundef !211
  %i.aza = trunc nuw i8 %i.ayz to i1
  br i1 %i.aza, label %.thread85.sink.split.i, label %.thread85.i

.thread85.sink.split.i:                           ; preds = %bb.im, %bb.il
  %.sink.i576 = phi i32 [ 1, %bb.im ], [ 2, %bb.il ]
  %i.azb = call <2 x float> @_ZN5ImGui19GetNavInputAmount2dEi18ImGuiInputReadModeff(i32 noundef %.sink.i576, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00)
  br label %.thread85.i

.thread85.i:                                      ; preds = %.thread85.sink.split.i, %bb.im, %bb.il
  %.sroa.03.1.i = phi <2 x float> [ zeroinitializer, %bb.im ], [ zeroinitializer, %bb.il ], [ %i.azb, %.thread85.sink.split.i ] ; 3 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.03.1.i, i64 0
  %i.azc = fcmp une float %.sroa.03.0.vec.extract.i, 0.000000e+00
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.03.1.i, i64 1
  %i.azd = fcmp une float %.sroa.03.4.vec.extract.i, 0.000000e+00
  %or.cond13.i = select i1 %i.azc, i1 true, i1 %i.azd
  br i1 %or.cond13.i, label %bb.in, label %bb.io

bb.in:                                            ; preds = %.thread85.i
  %i.aze = getelementptr inbounds nuw i8, ptr %i.alx, i64 24
  %i.azf = load float, ptr %i.aze, align 8, !tbaa !641
  %i.azg = fmul float %i.azf, 6.000000e+02
  %i.azh = getelementptr inbounds nuw i8, ptr %i.alx, i64 192
  %i.azi = load float, ptr %i.azh, align 8, !tbaa !866 ; 2 uses
  %i.azj = getelementptr inbounds nuw i8, ptr %i.alx, i64 196
  %i.azk = load float, ptr %i.azj, align 4, !tbaa !867 ; 2 uses
  %i.azl = fcmp olt float %i.azi, %i.azk
  %i.azm = select i1 %i.azl, float %i.azi, float %i.azk
  %i.azn = fmul float %i.azg, %i.azm
  %i.azo = fptosi float %i.azn to i32
  %i.azp = sitofp i32 %i.azo to float
  %i.azq = getelementptr inbounds nuw i8, ptr %i.alx, i64 8016
  store i8 0, ptr %i.azq, align 8, !tbaa !706
  %i.azr = getelementptr inbounds nuw i8, ptr %i.alx, i64 7763
  store i8 1, ptr %i.azr, align 1, !tbaa !421
  %i.azs = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 32, float noundef 1.000000e+00)
  store i32 %i.azs, ptr %i.f, align 16, !tbaa !34
  %i.azt = insertelement <2 x float> poison, float %i.azp, i64 0
  %i.azu = shufflevector <2 x float> %i.azt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.azv = fmul <2 x float> %.sroa.03.1.i, %i.azu ; 2 uses
  %i.azw = load <2 x float>, ptr %i.akv, align 8, !tbaa !9
  %i.azx = fsub <2 x float> %i.akj, %i.azw
  %i.azy = load <2 x float>, ptr %i.aet, align 8, !tbaa !9
  %i.azz = fsub <2 x float> %i.azx, %i.azy        ; 2 uses
  %i.baa = fcmp oge <2 x float> %i.azv, %i.azz
  %i.bab = select <2 x i1> %i.baa, <2 x float> %i.azv, <2 x float> %i.azz
  %i.bac = load <2 x float>, ptr %i.adq, align 8, !tbaa !9
  %i.bad = fadd <2 x float> %i.bab, %i.bac
  %i.bae = bitcast <2 x float> %i.bad to i64
  %i.baf = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %.01057, i64 %i.bae)
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %.thread85.i, %bb.ik, %._crit_edge.i574
  %.sroa.051.5.i = phi <2 x float> [ %.sroa.051.2.lcssa.i, %._crit_edge.i574 ], [ %.sroa.051.2.lcssa.i, %bb.ik ], [ %i.baf, %bb.in ], [ %.sroa.051.2.lcssa.i, %.thread85.i ] ; 2 uses
  %.sroa.051.0.vec.extract.i = extractelement <2 x float> %.sroa.051.5.i, i64 0
  %i.bag = fcmp une float %.sroa.051.0.vec.extract.i, f0x7F7FFFFF
  br i1 %i.bag, label %bb.ip, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i

bb.ip:                                            ; preds = %bb.io
  store <2 x float> %.sroa.051.5.i, ptr %i.adq, align 8
  %i.bah = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %i.bai = load i32, ptr %i.aeu, align 4, !tbaa !428
  %i.baj = and i32 %i.bai, 256
  %.not.i.i575 = icmp eq i32 %i.baj, 0
  br i1 %.not.i.i575, label %bb.iq, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i

bb.iq:                                            ; preds = %bb.ip
  %i.bak = getelementptr inbounds nuw i8, ptr %i.bah, i64 12436 ; 2 uses
  %i.bal = load float, ptr %i.bak, align 4, !tbaa !494
  %i.bam = fcmp ugt float %i.bal, 0.000000e+00
  br i1 %i.bam, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.ban = getelementptr inbounds nuw i8, ptr %i.bah, i64 28
  %i.bao = load float, ptr %i.ban, align 4, !tbaa !599
  store float %i.bao, ptr %i.bak, align 4, !tbaa !494
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i: ; preds = %bb.ir, %bb.iq, %bb.ip, %bb.io
  %.sroa.054.0.vec.extract.i = extractelement <2 x float> %.sroa.054.4.lcssa.i, i64 0
  %i.bap = fcmp une float %.sroa.054.0.vec.extract.i, f0x7F7FFFFF
  br i1 %i.bap, label %bb.is, label %bb.iv

bb.is:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i
  %i.baq = fptosi <2 x float> %.sroa.054.4.lcssa.i to <2 x i32>
  %i.bar = sitofp <2 x i32> %i.baq to <2 x float>
  store <2 x float> %i.bar, ptr %i.akv, align 8
  %i.bas = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %i.bat = load i32, ptr %i.aeu, align 4, !tbaa !428
  %i.bau = and i32 %i.bat, 256
  %.not.i284.i = icmp eq i32 %i.bau, 0
  br i1 %.not.i284.i, label %bb.it, label %bb.iv

bb.it:                                            ; preds = %bb.is
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bas, i64 12436 ; 2 uses
  %i.baw = load float, ptr %i.bav, align 4, !tbaa !494
  %i.bax = fcmp ugt float %i.baw, 0.000000e+00
  br i1 %i.bax, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bas, i64 28
  %i.baz = load float, ptr %i.bay, align 4, !tbaa !599
  store float %i.baz, ptr %i.bav, align 4, !tbaa !494
  br label %bb.iv

.thread1301:                                      ; preds = %bb.gy, %bb.gz, %bb.ha, %bb.gx
  %i.bba = getelementptr inbounds nuw i8, ptr %.01057, i64 152 ; 2 uses
  store i8 -1, ptr %i.bba, align 8, !tbaa !862
  br label %bb.iw

bb.iv:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i, %bb.is, %bb.it, %bb.iu
  %i.bbb = load i64, ptr %i.adq, align 8
  store i64 %i.bbb, ptr %i.aet, align 8
  %.pre1134.pre.a = load i8, ptr %i.ads, align 1, !tbaa !752, !range !210
  %i.bbc = trunc nuw i8 %.pre1134.pre.a to i1
  %spec.select398 = or i1 %.2313, %.177.i
  %spec.select399 = or i1 %.1310, %.177.i
  %i.bbd = getelementptr inbounds nuw i8, ptr %.01057, i64 152 ; 3 uses
  store i8 %.31061, ptr %i.bbd, align 8, !tbaa !862
  br i1 %i.bbc, label %bb.jm, label %bb.iw

bb.iw:                                            ; preds = %.thread1301, %bb.iv
  %i.bbe = phi ptr [ %i.bba, %.thread1301 ], [ %i.bbd, %bb.iv ]
  %spec.select3991308 = phi i1 [ %.1310, %.thread1301 ], [ %spec.select399, %bb.iv ]
  %spec.select3981307 = phi i1 [ %.2313, %.thread1301 ], [ %spec.select398, %bb.iv ]
  %i.bbf = load float, ptr %i.adq, align 8, !tbaa !835
  %i.bbg = getelementptr inbounds nuw i8, ptr %.01057, i64 36
  %i.bbh = load float, ptr %i.bbg, align 4, !tbaa !735
  %i.bbi = fsub float %i.bbh, %i.afz
  %i.bbj = getelementptr inbounds nuw i8, ptr %.01057, i64 456
  %i.bbk = getelementptr inbounds nuw i8, ptr %.01057, i64 464
  %i.bbl = load <2 x float>, ptr %i.bbk, align 8, !tbaa !9
  %i.bbm = load <2 x float>, ptr %i.bbj, align 8, !tbaa !9
  %i.bbn = fsub <2 x float> %i.bbl, %i.bbm
  %i.bbo = getelementptr inbounds nuw i8, ptr %.01057, i64 132 ; 2 uses
  %i.bbp = getelementptr i8, ptr %.01057, i64 136
  %i.bbq = load <2 x float>, ptr %i.bbo, align 4, !tbaa !9
  %i.bbr = fadd <2 x float> %i.bbn, %i.bbq        ; 2 uses
  br i1 %i.gu, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %.val = load float, ptr %i.zh, align 4, !tbaa !151
  %i.bbs = getelementptr i8, ptr %.01057, i64 68
  %.val411 = load float, ptr %i.bbs, align 4, !tbaa !152
  %i.bbt = insertelement <2 x float> poison, float %.val, i64 0
  %i.bbu = insertelement <2 x float> %i.bbt, float %.val411, i64 1
  %i.bbv = fmul <2 x float> %i.bbu, splat (float 2.000000e+00)
  %i.bbw = load <2 x float>, ptr %i.ww, align 8, !tbaa !9
  %i.bbx = fadd <2 x float> %i.bbv, %i.bbw
  br label %bb.iy

bb.iy:                                            ; preds = %bb.iw, %bb.ix
  %.sroa.0804.0 = phi <2 x float> [ %i.bbx, %bb.ix ], [ zeroinitializer, %bb.iw ] ; 3 uses
  %i.bby = extractelement <2 x float> %i.bbr, i64 0
  %i.bbz = select i1 %spec.select3981307, float %i.bbf, float %i.bby
  %i.bca = extractelement <2 x float> %i.bbr, i64 1
  %i.bcb = select i1 %spec.select3991308, float %i.bbi, float %i.bca ; 2 uses
  %i.bcc = and i32 %.1, 16384
  %.not364 = icmp eq i32 %i.bcc, 0
  br i1 %.not364, label %bb.iz, label %bb.jb

bb.iz:                                            ; preds = %bb.iy
  %.sroa.0804.4.vec.extract = extractelement <2 x float> %.sroa.0804.0, i64 1
  %i.bcd = fcmp ogt float %.sroa.0804.4.vec.extract, %i.bcb
  br i1 %i.bcd, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.bce = and i32 %.1, 8
  %.not365 = icmp eq i32 %i.bce, 0
  %i.bcf = zext i1 %.not365 to i8
  br label %bb.jb

bb.jb:                                            ; preds = %bb.iz, %bb.ja, %bb.iy
  %i.bcg = phi i8 [ 1, %bb.iy ], [ 0, %bb.iz ], [ %i.bcf, %bb.ja ] ; 5 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %.01057, i64 141 ; 2 uses
  store i8 %i.bcg, ptr %i.bch, align 1, !tbaa !868
  %i.bci = and i32 %.1, 32768
end_hunk_1
begin_hunk_2_@_ZN5ImGui11IsPopupOpenEPKci:bb.a
  %i.aa = and i32 %.3.i.i, 255
  %i.ab = xor i32 %i.aa, %i.t
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !34
  %i.af = xor i32 %i.z, %i.ae                     ; 2 uses
  %.not33.i.i = icmp eq i8 %.pre.i.i, 0
  br i1 %.not33.i.i, label %_Z9ImHashStrPKcmj.exit.i.loopexit, label %.lr.ph.i.i

_Z9ImHashStrPKcmj.exit.i.loopexit:                ; preds = %bb.d
  %i.ag = xor i32 %i.af, -1
  br label %_Z9ImHashStrPKcmj.exit.i

_Z9ImHashStrPKcmj.exit.i:                         ; preds = %_Z9ImHashStrPKcmj.exit.i.loopexit, %bb.b
  %.5.i.i = phi i32 [ %i.o, %bb.b ], [ %i.ag, %_Z9ImHashStrPKcmj.exit.i.loopexit ] ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 7260
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !331
  %i.aj = icmp eq i32 %i.ai, %.5.i.i
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_Z9ImHashStrPKcmj.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 7264
  store i32 %.5.i.i, ptr %i.ak, align 8, !tbaa !332
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_Z9ImHashStrPKcmj.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 7320
  %i.am = load i32, ptr %i.al, align 8, !tbaa !333
  %i.an = icmp eq i32 %i.am, %.5.i.i
  br i1 %i.an, label %bb.g, label %_ZN5ImGui11KeepAliveIDEj.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 7324
  store i8 1, ptr %i.ao, align 4, !tbaa !334
  br label %_ZN5ImGui11KeepAliveIDEj.exit.i

_ZN5ImGui11KeepAliveIDEj.exit.i:                  ; preds = %bb.g, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 7236
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !335
  %i.ar = icmp eq i32 %i.aq, %.5.i.i
  br i1 %i.ar, label %bb.h, label %_ZN11ImGuiWindow5GetIDEPKcS1_.exit

bb.h:                                             ; preds = %_ZN5ImGui11KeepAliveIDEj.exit.i
  tail call void @_ZN5ImGui15DebugHookIdInfoEjiPKvS1_(i32 noundef %.5.i.i, i32 noundef 11, ptr noundef nonnull %0, ptr noundef null)
  %.pre = load ptr, ptr @GImGui, align 8, !tbaa !49
  br label %_ZN11ImGuiWindow5GetIDEPKcS1_.exit

_ZN11ImGuiWindow5GetIDEPKcS1_.exit:               ; preds = %bb.h, %_ZN5ImGui11KeepAliveIDEj.exit.i
  %i.as = phi ptr [ %.pre, %bb.h ], [ %i.b, %_ZN5ImGui11KeepAliveIDEj.exit.i ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 7640
  %i.au = load i32, ptr %i.at, align 8, !tbaa !602 ; 3 uses
  %i.av = and i32 %1, 256
  %.not21.i = icmp eq i32 %i.av, 0
  br i1 %.not21.i, label %bb.l, label %.preheader.i

bb.i:                                             ; preds = %_ZN11ImGuiWindow5GetIDEPKcS1_.exit.thread
  %i.aw = icmp sgt i32 %i.e, 0
  br label %_ZN5ImGui11IsPopupOpenEji.exit

bb.j:                                             ; preds = %_ZN11ImGuiWindow5GetIDEPKcS1_.exit.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 7656
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !614
  %i.az = icmp sgt i32 %i.e, %i.ay
  br label %_ZN5ImGui11IsPopupOpenEji.exit

.preheader.i:                                     ; preds = %_ZN11ImGuiWindow5GetIDEPKcS1_.exit
  %.not2224.i = icmp sgt i32 %i.au, 0
  br i1 %.not2224.i, label %.lr.ph.i, label %_ZN5ImGui11IsPopupOpenEji.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 7648
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !545
  %wide.trip.count.i = zext nneg i32 %i.au to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !604
  %i.be = icmp eq i32 %i.bd, %.5.i.i              ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond = select i1 %i.be, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %_ZN5ImGui11IsPopupOpenEji.exit, label %bb.k, !llvm.loop !603

bb.l:                                             ; preds = %_ZN11ImGuiWindow5GetIDEPKcS1_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 7656
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !614 ; 2 uses
  %i.bh = icmp sgt i32 %i.au, %i.bg
  br i1 %i.bh, label %bb.m, label %_ZN5ImGui11IsPopupOpenEji.exit

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 7648
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !545
  %i.bk = sext i32 %i.bg to i64
  %i.bl = getelementptr inbounds [48 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !604
  %i.bn = icmp eq i32 %i.bm, %.5.i.i
  br label %_ZN5ImGui11IsPopupOpenEji.exit

_ZN5ImGui11IsPopupOpenEji.exit:                   ; preds = %bb.k, %bb.i, %bb.j, %.preheader.i, %bb.l, %bb.m
  %.1.i = phi i1 [ %i.aw, %bb.i ], [ %i.az, %bb.j ], [ %i.bn, %bb.m ], [ false, %bb.l ], [ false, %.preheader.i ], [ %i.be, %bb.k ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui9OpenPopupEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !208  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !329
  %i.g = load i32, ptr %i.d, align 8, !tbaa !327
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr [4 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !34   ; 2 uses
  %i.l = xor i32 %i.k, -1                         ; 2 uses
  %i.m = load i8, ptr %0, align 1, !tbaa !136     ; 2 uses
  %.not3342.i.i = icmp eq i8 %i.m, 0
  br i1 %.not3342.i.i, label %_Z9ImHashStrPKcmj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.c
  %i.n = phi i8 [ %.pre.i.i, %bb.c ], [ %i.m, %bb.a ] ; 2 uses
  %.144.i.i = phi ptr [ %i.o, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %.243.i.i = phi i32 [ %i.ab, %bb.c ], [ %i.l, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.144.i.i, i64 1 ; 2 uses
  %i.p = zext i8 %i.n to i32
  %i.q = icmp eq i8 %i.n, 35
  %.pre.i.i = load i8, ptr %i.o, align 1, !tbaa !136 ; 3 uses
  %i.r = icmp eq i8 %.pre.i.i, 35
  %or.cond51.i.i = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond51.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.144.i.i, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !136
  %i.u = icmp eq i8 %i.t, 35
  %spec.select35.i.i = select i1 %i.u, i32 %i.l, i32 %.243.i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %.3.i.i = phi i32 [ %.243.i.i, %.lr.ph.i.i ], [ %spec.select35.i.i, %bb.b ] ; 2 uses
  %i.v = lshr i32 %.3.i.i, 8
  %i.w = and i32 %.3.i.i, 255
  %i.x = xor i32 %i.w, %i.p
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !34
  %i.ab = xor i32 %i.v, %i.aa                     ; 2 uses
  %.not33.i.i = icmp eq i8 %.pre.i.i, 0
  br i1 %.not33.i.i, label %_Z9ImHashStrPKcmj.exit.i.loopexit, label %.lr.ph.i.i

_Z9ImHashStrPKcmj.exit.i.loopexit:                ; preds = %bb.c
  %i.ac = xor i32 %i.ab, -1
  br label %_Z9ImHashStrPKcmj.exit.i

_Z9ImHashStrPKcmj.exit.i:                         ; preds = %_Z9ImHashStrPKcmj.exit.i.loopexit, %bb.a
  %.5.i.i = phi i32 [ %i.k, %bb.a ], [ %i.ac, %_Z9ImHashStrPKcmj.exit.i.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 7260
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !331
  %i.af = icmp eq i32 %i.ae, %.5.i.i
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_Z9ImHashStrPKcmj.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 7264
  store i32 %.5.i.i, ptr %i.ag, align 8, !tbaa !332
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_Z9ImHashStrPKcmj.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 7320
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !333
  %i.aj = icmp eq i32 %i.ai, %.5.i.i
  br i1 %i.aj, label %bb.f, label %_ZN5ImGui11KeepAliveIDEj.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 7324
  store i8 1, ptr %i.ak, align 4, !tbaa !334
  br label %_ZN5ImGui11KeepAliveIDEj.exit.i

_ZN5ImGui11KeepAliveIDEj.exit.i:                  ; preds = %bb.f, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 7236
  %i.am = load i32, ptr %i.al, align 4, !tbaa !335
  %i.an = icmp eq i32 %i.am, %.5.i.i
  br i1 %i.an, label %bb.g, label %_ZN11ImGuiWindow5GetIDEPKcS1_.exit

bb.g:                                             ; preds = %_ZN5ImGui11KeepAliveIDEj.exit.i
  tail call void @_ZN5ImGui15DebugHookIdInfoEjiPKvS1_(i32 noundef %.5.i.i, i32 noundef 11, ptr noundef nonnull %0, ptr noundef null)
  br label %_ZN11ImGuiWindow5GetIDEPKcS1_.exit

_ZN11ImGuiWindow5GetIDEPKcS1_.exit:               ; preds = %_ZN5ImGui11KeepAliveIDEj.exit.i, %bb.g
  tail call void @_ZN5ImGui11OpenPopupExEji(i32 noundef %.5.i.i, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui11OpenPopupExEji(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %.sroa.12 = alloca %struct.ImVec2, align 8      ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7656
  %2 = load i32, ptr %i.b, align 8, !tbaa !614    ; 11 uses
  %3 = and i32 %1, 32
  %.not = icmp ne i32 %3, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 7640
  %.pre.a = load i32, ptr %.phi.trans.insert, align 8, !tbaa !602 ; 8 uses
  %4 = icmp sgt i32 %.pre.a, %2
  %or.cond = select i1 %.not, i1 %4, i1 false
  br i1 %or.cond, label %bb.z, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %6 = load ptr, ptr %5, align 8, !tbaa !208      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 7688
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !425  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7056
  %i.f = load i32, ptr %i.e, align 8, !tbaa !464  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 200
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 208
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !329
  %i.j = load i32, ptr %i.g, align 8, !tbaa !327
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr [4 x i8], ptr %i.i, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !34   ; 2 uses
  %i.o = tail call fastcc <2 x float> @_ZN5ImGuiL22NavCalcPreferredRefPosEv() ; 2 uses
  store <2 x float> %i.o, ptr %.sroa.12, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 296 ; 2 uses
  %.sroa.0.0.copyload.i = load float, ptr %i.p, align 8, !tbaa !9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 300
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !9
  %i.q = fcmp oge float %.sroa.0.0.copyload.i, -2.560000e+05
  %i.r = fcmp oge float %.sroa.4.0.copyload.i, -2.560000e+05
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  %7 = select i1 %i.s, ptr %i.p, ptr %.sroa.12
  %8 = load i64, ptr %7, align 8                  ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.a, i64 7640 ; 10 uses
  %.not21 = icmp sgt i32 %.pre.a, %2
  br i1 %.not21, label %bb.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 7644 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !546
  %i.v = icmp eq i32 %.pre.a, %i.u
  br i1 %i.v, label %bb.c, label %._ZN8ImVectorI14ImGuiPopupDataE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI14ImGuiPopupDataE7reserveEi.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7648
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !545
  br label %_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i32 %.pre.a, 1
  %.not.i.i = icmp eq i32 %.pre.a, 0
  br i1 %.not.i.i, label %_ZN5ImGui8MemAllocEm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = sdiv i32 %.pre.a, 2
  %i.y = add nsw i32 %i.x, %.pre.a
  br label %_ZN5ImGui8MemAllocEm.exit.i.i

_ZN5ImGui8MemAllocEm.exit.i.i:                    ; preds = %bb.d, %bb.c
  %i.z = phi i32 [ %i.y, %bb.d ], [ 8, %bb.c ]
  %i.aa = tail call noundef i32 @llvm.smax.i32(i32 %i.z, i32 %i.w) ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.ab, 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !55
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !55
  %i.ag = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !132
  %i.ah = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  %i.ai = tail call noundef ptr %i.ag(i64 noundef %i.ac, ptr noundef %i.ah), !inline_history !827 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 7648 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !545 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ak, null
  br i1 %.not6.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i
  %i.al = load i32, ptr %9, align 8, !tbaa !547
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.am, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ai, ptr nonnull align 8 %i.ak, i64 %i.an, i1 false)
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !545 ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not4.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 944 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !55
  %i.as = add nsw i32 %i.ar, -1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !55
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i:                    ; preds = %bb.g, %bb.f, %bb.e
  %i.at = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !132
  %i.au = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  tail call void %i.at(ptr noundef %i.ao, ptr noundef %i.au), !inline_history !828
  br label %bb.h

bb.h:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i, %_ZN5ImGui8MemAllocEm.exit.i.i
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !545
  store i32 %i.aa, ptr %i.t, align 4, !tbaa !546
  %.pre3.i = load i32, ptr %9, align 8, !tbaa !547
  br label %_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_.exit

_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI14ImGuiPopupDataE7reserveEi.exit_crit_edge.i, %bb.h
  %i.av = phi i32 [ %.pre.a, %._ZN8ImVectorI14ImGuiPopupDataE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.h ]
  %i.aw = phi ptr [ %.pre.i, %._ZN8ImVectorI14ImGuiPopupDataE7reserveEi.exit_crit_edge.i ], [ %i.ai, %bb.h ]
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds [48 x i8], ptr %i.aw, i64 %i.ax ; 8 uses
  store i32 %0, ptr %i.ay, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr null, ptr %.sroa.639.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %i.d, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i32 %i.f, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  store i32 %i.n, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store <2 x float> %i.o, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store i64 %8, ptr %.sroa.14.0..sroa_idx, align 8
  %i.az = load i32, ptr %9, align 8, !tbaa !547
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %9, align 8, !tbaa !547
  br label %10

bb.i:                                             ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 7648 ; 7 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !545 ; 2 uses
  %i.bd = sext i32 %2 to i64                      ; 2 uses
  %i.be = getelementptr inbounds [48 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !604
  %i.bg = icmp eq i32 %i.bf, %0
  br i1 %i.bg, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !1085
  %i.bj = add nsw i32 %i.f, -1
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.f, ptr %i.bh, align 8, !tbaa !1085
  br label %10

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 7644 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !546 ; 5 uses
  %i.bn = icmp sgt i32 %2, %i.bm
  br i1 %i.bn, label %bb.m, label %_ZN5ImGui17ClosePopupToLevelEib.exit

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i22 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i22, label %_ZN5ImGui8MemAllocEm.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = sdiv i32 %i.bm, 2
  %i.bp = add nsw i32 %i.bo, %i.bm
  br label %_ZN5ImGui8MemAllocEm.exit.i.i.i

_ZN5ImGui8MemAllocEm.exit.i.i.i:                  ; preds = %bb.n, %bb.m
  %i.bq = phi i32 [ %i.bp, %bb.n ], [ 8, %bb.m ]
  %i.br = tail call noundef i32 @llvm.smax.i32(i32 %i.bq, i32 %2) ; 3 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul nsw i64 %i.bs, 48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !55
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !55
  %i.bx = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !132
  %i.by = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  %i.bz = tail call noundef ptr %i.bx(i64 noundef %i.bt, ptr noundef %i.by), !inline_history !1086 ; 3 uses
  %i.ca = load ptr, ptr %i.bb, align 8, !tbaa !545 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not6.i.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i.i
  %i.cb = load i32, ptr %9, align 8, !tbaa !547
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul nsw i64 %i.cc, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bz, ptr nonnull align 8 %i.ca, i64 %i.cd, i1 false)
  %i.ce = load ptr, ptr %i.bb, align 8, !tbaa !545 ; 2 uses
  %.not.i7.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i7.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not4.i.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 944 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !55
  %i.ci = add nsw i32 %i.ch, -1
  store i32 %i.ci, ptr %i.cg, align 8, !tbaa !55
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i.i:                  ; preds = %bb.q, %bb.p, %bb.o
  %i.cj = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !132
  %i.ck = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  tail call void %i.cj(ptr noundef %i.ce, ptr noundef %i.ck), !inline_history !1087
  br label %bb.r

bb.r:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i.i, %_ZN5ImGui8MemAllocEm.exit.i.i.i
  store ptr %i.bz, ptr %i.bb, align 8, !tbaa !545
  store i32 %i.br, ptr %i.bl, align 4, !tbaa !546
  br label %_ZN5ImGui17ClosePopupToLevelEib.exit

_ZN5ImGui17ClosePopupToLevelEib.exit:             ; preds = %bb.l, %bb.r
  %.pre.i25 = phi ptr [ %i.bc, %bb.l ], [ %i.bz, %bb.r ]
  %i.cl = phi i32 [ %i.bm, %bb.l ], [ %i.br, %bb.r ]
  store i32 %2, ptr %9, align 8, !tbaa !547
  %i.cm = icmp eq i32 %2, %i.cl
  br i1 %i.cm, label %bb.s, label %_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_.exit35

bb.s:                                             ; preds = %_ZN5ImGui17ClosePopupToLevelEib.exit
  %i.cn = add nsw i32 %2, 1
  %.not.i.i26 = icmp eq i32 %2, 0
  br i1 %.not.i.i26, label %_ZNK8ImVectorI14ImGuiPopupDataE14_grow_capacityEi.exit.i27, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = sdiv i32 %2, 2
  %i.cp = add nsw i32 %i.co, %2
  br label %_ZNK8ImVectorI14ImGuiPopupDataE14_grow_capacityEi.exit.i27

_ZNK8ImVectorI14ImGuiPopupDataE14_grow_capacityEi.exit.i27: ; preds = %bb.t, %bb.s
  %i.cq = phi i32 [ %i.cp, %bb.t ], [ 8, %bb.s ]
  %i.cr = tail call noundef i32 @llvm.smax.i32(i32 %i.cq, i32 %i.cn) ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul nsw i64 %i.cs, 48
  %i.cu = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i28, label %_ZN5ImGui8MemAllocEm.exit.i.i29, label %bb.u

bb.u:                                             ; preds = %_ZNK8ImVectorI14ImGuiPopupDataE14_grow_capacityEi.exit.i27
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 944 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !55
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 8, !tbaa !55
  br label %_ZN5ImGui8MemAllocEm.exit.i.i29

_ZN5ImGui8MemAllocEm.exit.i.i29:                  ; preds = %bb.u, %_ZNK8ImVectorI14ImGuiPopupDataE14_grow_capacityEi.exit.i27
  %i.cy = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !132
  %i.cz = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  %i.da = tail call noundef ptr %i.cy(i64 noundef %i.ct, ptr noundef %i.cz), !inline_history !827 ; 3 uses
  %i.db = load ptr, ptr %i.bb, align 8, !tbaa !545 ; 2 uses
  %.not6.i.i30 = icmp eq ptr %i.db, null
  br i1 %.not6.i.i30, label %bb.y, label %bb.v

bb.v:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i29
  %i.dc = load i32, ptr %9, align 8, !tbaa !547
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %i.dd, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.da, ptr nonnull align 8 %i.db, i64 %i.de, i1 false)
  %i.df = load ptr, ptr %i.bb, align 8, !tbaa !545 ; 2 uses
  %.not.i7.i.i31 = icmp eq ptr %i.df, null
  br i1 %.not.i7.i.i31, label %_ZN5ImGui7MemFreeEPv.exit.i.i33, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dg = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i32 = icmp eq ptr %i.dg, null
  br i1 %.not4.i.i.i32, label %_ZN5ImGui7MemFreeEPv.exit.i.i33, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 944 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !55
  %i.dj = add nsw i32 %i.di, -1
  store i32 %i.dj, ptr %i.dh, align 8, !tbaa !55
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i33

_ZN5ImGui7MemFreeEPv.exit.i.i33:                  ; preds = %bb.x, %bb.w, %bb.v
  %i.dk = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !132
  %i.dl = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  tail call void %i.dk(ptr noundef %i.df, ptr noundef %i.dl), !inline_history !828
  br label %bb.y

bb.y:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i33, %_ZN5ImGui8MemAllocEm.exit.i.i29
  store ptr %i.da, ptr %i.bb, align 8, !tbaa !545
  store i32 %i.cr, ptr %i.bl, align 4, !tbaa !546
  %.pre3.i34 = load i32, ptr %9, align 8, !tbaa !547
  %.pre58 = sext i32 %.pre3.i34 to i64
  br label %_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_.exit35

_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_.exit35: ; preds = %_ZN5ImGui17ClosePopupToLevelEib.exit, %bb.y
  %.pre-phi = phi i64 [ %.pre58, %bb.y ], [ %i.bd, %_ZN5ImGui17ClosePopupToLevelEib.exit ]
  %i.dm = phi ptr [ %i.da, %bb.y ], [ %.pre.i25, %_ZN5ImGui17ClosePopupToLevelEib.exit ]
  %i.dn = getelementptr inbounds [48 x i8], ptr %i.dm, i64 %.pre-phi ; 8 uses
  store i32 %0, ptr %i.dn, align 8
  %.sroa.6.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx37, align 4
  %.sroa.639.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr null, ptr %.sroa.639.0..sroa_idx40, align 8
  %.sroa.7.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store ptr %i.d, ptr %.sroa.7.0..sroa_idx42, align 8
  %.sroa.8.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store i32 %i.f, ptr %.sroa.8.0..sroa_idx44, align 8
  %.sroa.11.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.dn, i64 28
  store i32 %i.n, ptr %.sroa.11.0..sroa_idx46, align 4
  %.sroa.12.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %.sroa.12.0..sroa.12.0.56 = load i64, ptr %.sroa.12, align 8
  store i64 %.sroa.12.0..sroa.12.0.56, ptr %.sroa.12.0..sroa_idx48, align 8
  %.sroa.14.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  store i64 %8, ptr %.sroa.14.0..sroa_idx49, align 8
  %i.do = load i32, ptr %9, align 8, !tbaa !547
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %9, align 8, !tbaa !547
  br label %10

10:                                               ; preds = %bb.k, %_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_.exit35, %_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %10
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui9OpenPopupEji(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN5ImGui11OpenPopupExEji(i32 noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc <2 x float> @_ZN5ImGuiL22NavCalcPreferredRefPosEv() unnamed_addr #38 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7762
  %i.c = load i8, ptr %i.b, align 2, !tbaa !320, !range !210, !noundef !211
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7763
  %i.f = load i8, ptr %i.e, align 1, !tbaa !421, !range !210, !noundef !211
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7688
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425  ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %_ZL7ImClampRK6ImVec2S1_S_.exit

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 296 ; 2 uses
  %.sroa.0.0.copyload.i = load float, ptr %i.j, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 300
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !9
  %i.k = fcmp oge float %.sroa.0.0.copyload.i, -2.560000e+05
  %i.l = fcmp oge float %.sroa.4.0.copyload.i, -2.560000e+05
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.018.0.copyload = load <2 x float>, ptr %i.j, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8408
  %.sroa.018.0.copyload19 = load <2 x float>, ptr %i.n, align 8
  br label %bb.g

_ZL7ImClampRK6ImVec2S1_S_.exit:                   ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 880
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 7752
  %i.q = load i32, ptr %i.p, align 8, !tbaa !593
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 5532
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 7680
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !432
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !433  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ab = load <2 x float>, ptr %i.v, align 4, !tbaa !9 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.u, align 4, !tbaa !9
  %i.ad = fmul <2 x float> %i.ac, <float 4.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ae = load <2 x float>, ptr %i.s, align 4, !tbaa !9 ; 2 uses
  %i.af = fsub <2 x float> %i.ab, %i.ae           ; 2 uses
  %i.ag = fcmp olt <2 x float> %i.ad, %i.af
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.ad, <2 x float> %i.af ; 2 uses
  %i.ai = shufflevector <2 x float> %i.ae, <2 x float> %i.ab, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.aj = fadd <2 x float> %i.ai, %i.ah
  %i.ak = fsub <2 x float> %i.ai, %i.ah
  %i.al = shufflevector <2 x float> %i.aj, <2 x float> %i.ak, <2 x i32> <i32 0, i32 3>
  %i.am = load <2 x float>, ptr %i.t, align 4, !tbaa !9
  %i.an = fadd <2 x float> %i.am, %i.al           ; 3 uses
  %i.ao = load <2 x float>, ptr %i.z, align 4, !tbaa !9 ; 3 uses
  %i.ap = load <2 x float>, ptr %i.aa, align 4, !tbaa !9
  %i.aq = fadd <2 x float> %i.ao, %i.ap           ; 2 uses
  %i.ar = fcmp olt <2 x float> %i.an, %i.ao
  %i.as = fcmp ogt <2 x float> %i.an, %i.aq
  %i.at = select <2 x i1> %i.as, <2 x float> %i.aq, <2 x float> %i.an
  %i.au = select <2 x i1> %i.ar, <2 x float> %i.ao, <2 x float> %i.at
  %i.av = fptosi <2 x float> %i.au to <2 x i32>
  %i.aw = sitofp <2 x i32> %i.av to <2 x float>
  br label %bb.g

bb.g:                                             ; preds = %_ZL7ImClampRK6ImVec2S1_S_.exit, %bb.f, %bb.e
  %.sroa.018.0 = phi <2 x float> [ %.sroa.018.0.copyload, %bb.e ], [ %.sroa.018.0.copyload19, %bb.f ], [ %i.aw, %_ZL7ImClampRK6ImVec2S1_S_.exit ]
  ret <2 x float> %.sroa.018.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui17ClosePopupToLevelEib(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7640 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 7648 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !545
  %i.e = sext i32 %0 to i64
  %i.f = getelementptr inbounds [48 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1088 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !608  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 7644 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !546  ; 4 uses
  %i.m = icmp sgt i32 %0, %i.l
  br i1 %i.m, label %bb.b, label %_ZN8ImVectorI14ImGuiPopupDataE6resizeEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN5ImGui8MemAllocEm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv i32 %i.l, 2
  %i.o = add nsw i32 %i.n, %i.l
  br label %_ZN5ImGui8MemAllocEm.exit.i.i

_ZN5ImGui8MemAllocEm.exit.i.i:                    ; preds = %bb.c, %bb.b
  %i.p = phi i32 [ %i.o, %bb.c ], [ 8, %bb.b ]
  %i.q = tail call noundef i32 @llvm.smax.i32(i32 %i.p, i32 %0) ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !55
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 8, !tbaa !55
  %i.w = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !132
  %i.x = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  %i.y = tail call noundef ptr %i.w(i64 noundef %i.s, ptr noundef %i.x), !inline_history !773 ; 2 uses
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !545  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.z, null
  br i1 %.not6.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !547
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.ab, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.y, ptr nonnull align 8 %i.z, i64 %i.ac, i1 false)
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !545 ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not4.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 944 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !55
  %i.ah = add nsw i32 %i.ag, -1
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !55
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i:                    ; preds = %bb.f, %bb.e, %bb.d
  %i.ai = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !132
  %i.aj = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  tail call void %i.ai(ptr noundef %i.ad, ptr noundef %i.aj), !inline_history !774
  br label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i, %_ZN5ImGui8MemAllocEm.exit.i.i
  store ptr %i.y, ptr %i.c, align 8, !tbaa !545
  store i32 %i.q, ptr %i.k, align 4, !tbaa !546
  br label %_ZN8ImVectorI14ImGuiPopupDataE6resizeEi.exit

_ZN8ImVectorI14ImGuiPopupDataE6resizeEi.exit:     ; preds = %bb.a, %bb.g
  store i32 %0, ptr %i.b, align 8, !tbaa !547
  br i1 %1, label %bb.h, label %bb.o

bb.h:                                             ; preds = %_ZN8ImVectorI14ImGuiPopupDataE6resizeEi.exit
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %_ZN5ImGuiL28NavRestoreLastChildNavWindowEP11ImGuiWindow.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 143
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !427, !range !210, !noundef !211
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = icmp eq ptr %i.j, null
  %or.cond.not = select i1 %i.am, i1 true, i1 %i.an
  br i1 %or.cond.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5ImGui26FocusTopMostWindowUnderOneEP11ImGuiWindowS1_(ptr noundef nonnull %i.j, ptr noundef null)
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 7752
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !593
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %_ZN5ImGuiL28NavRestoreLastChildNavWindowEP11ImGuiWindow.exit

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 864
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !697 ; 3 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %bb.n, label %bb.m

end_hunk_2
