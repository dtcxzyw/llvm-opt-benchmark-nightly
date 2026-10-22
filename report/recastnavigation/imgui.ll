Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui?download=true
inline.NumInlined: 3240
inline.NumDeleted: 627
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN5ImGui5BeginEPKcPbi:bb.a

bb.ft:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit532
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agf, i64 40
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agf, i64 104
  %i.agn = load float, ptr %i.agm, align 8, !tbaa !736
  %i.ago = load <2 x float>, ptr %i.agl, align 8, !tbaa !86 ; 2 uses
  %i.agp = insertelement <2 x float> %i.age, float %i.agn, i64 1
  %i.agq = fadd <2 x float> %i.agp, %i.ago
  %i.agr = fsub <2 x float> %i.agq, %i.ago
  br label %bb.fu

bb.fu:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit532, %bb.ft
  %.sroa.076.0 = phi <2 x float> [ %i.agr, %bb.ft ], [ %i.age, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit532 ]
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agf, i64 48
  store <2 x float> %.sroa.076.0, ptr %i.ags, align 8, !tbaa !86
  br i1 %.0361.in955, label %bb.fv, label %bb.fy

bb.fv:                                            ; preds = %bb.fu
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agf, i64 232
  store i32 -1, ptr %i.agt, align 8, !tbaa !648
  br i1 %i.ov, label %bb.fw, label %bb.fy

bb.fw:                                            ; preds = %bb.fv
  %i.agu = and i32 %.1359, 134217728
  %i.agv = icmp ne i32 %i.agu, 0
  %or.cond5 = or i1 %i.agv, %.0375.shrunk
  br i1 %or.cond5, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.agw = getelementptr inbounds nuw i8, ptr %i.j, i64 8024
  %i.agx = getelementptr inbounds nuw i8, ptr %i.j, i64 8032
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !511
  %i.agz = load i32, ptr %i.agw, align 8, !tbaa !513
  %i.aha = sext i32 %i.agz to i64
  %i.ahb = getelementptr [56 x i8], ptr %i.agy, i64 %i.aha
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 -20
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agf, i64 40
  %i.ahe = load i64, ptr %i.ahc, align 4, !tbaa !86
  store i64 %i.ahe, ptr %i.ahd, align 8, !tbaa !86
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fv, %bb.fw, %bb.fx, %bb.fu
  br i1 %.not416, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.jy, i64 432 ; 2 uses
  %i.ahg = load i32, ptr %i.ahf, align 8, !tbaa !931
  %i.ahh = trunc i32 %i.ahg to i16
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.agf, i64 222
  store i16 %i.ahh, ptr %i.ahi, align 2, !tbaa !885
  call void @_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ahf, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %or.cond7 = or i1 %i.ov, %.0375.shrunk
  %or.cond9 = select i1 %or.cond7, i1 true, i1 %i.wa
  %.pre1045 = load ptr, ptr %i.g, align 8, !tbaa !595 ; 3 uses
  br i1 %or.cond9, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.jy, i64 280
  %i.ahk = getelementptr inbounds nuw i8, ptr %.pre1045, i64 40
  %i.ahl = load i64, ptr %i.ahj, align 8, !tbaa !86
  store i64 %i.ahl, ptr %i.ahk, align 8, !tbaa !86
  br label %bb.gb

bb.gb:                                            ; preds = %bb.fz, %bb.ga, %bb.fy
  %i.ahm = phi ptr [ %.pre1045, %bb.fz ], [ %.pre1045, %bb.ga ], [ %i.agf, %bb.fy ] ; 17 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 244 ; 2 uses
  %i.aho = load float, ptr %i.ahn, align 4, !tbaa !1415 ; 2 uses
  %i.ahp = fcmp une float %i.aho, f0x7F7FFFFF
  br i1 %i.ahp, label %bb.gc, label %.critedge

bb.gc:                                            ; preds = %bb.gb
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahm, i64 237
  %i.ahr = load i8, ptr %i.ahq, align 1, !tbaa !912
  %i.ahs = icmp eq i8 %i.ahr, 0
  br i1 %i.ahs, label %bb.gd, label %.critedge

bb.gd:                                            ; preds = %bb.gc
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahm, i64 48
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahm, i64 252
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahm, i64 248 ; 2 uses
  %i.ahw = load float, ptr %i.ahv, align 4, !tbaa !270
  %.phi.trans.insert.i541 = getelementptr inbounds nuw i8, ptr %i.ahm, i64 240 ; 2 uses
  %.pre.i542 = load i32, ptr %.phi.trans.insert.i541, align 8
  %i.ahx = and i32 %.pre.i542, -15
  store i32 %i.ahx, ptr %.phi.trans.insert.i541, align 8
  store i32 2139095039, ptr %i.ahn, align 4, !tbaa !86
  store i32 2139095039, ptr %i.ahv, align 8, !tbaa !86
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahm, i64 40 ; 2 uses
  %i.ahz = load <2 x float>, ptr %i.aht, align 8, !tbaa !86
  %i.aia = load <2 x float>, ptr %i.ahu, align 4, !tbaa !86
  %i.aib = fmul <2 x float> %i.ahz, %i.aia
  %i.aic = insertelement <2 x float> poison, float %i.aho, i64 0
  %i.aid = insertelement <2 x float> %i.aic, float %i.ahw, i64 1
  %i.aie = fsub <2 x float> %i.aid, %i.aib
  %i.aif = load <2 x float>, ptr %i.ahy, align 8
  %i.aig = fptosi <2 x float> %i.aie to <2 x i32>
  %i.aih = sitofp <2 x i32> %i.aig to <2 x float> ; 2 uses
  store <2 x float> %i.aih, ptr %i.ahy, align 8, !tbaa !86
  %i.aii = fsub <2 x float> %i.aih, %i.aif        ; 5 uses
  %i.aij = shufflevector <2 x float> %i.aii, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aik = extractelement <2 x float> %i.aii, i64 0
  %i.ail = fcmp oeq float %i.aik, 0.000000e+00
  %i.aim = extractelement <2 x float> %i.aii, i64 1
  %i.ain = fcmp oeq float %i.aim, 0.000000e+00
  %or.cond.i544 = select i1 %i.ail, i1 %i.ain, i1 false
  br i1 %or.cond.i544, label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aio = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ahm, i64 20
  %i.aiq = load i32, ptr %i.aip, align 4, !tbaa !608
  %i.air = and i32 %i.aiq, 256
  %.not.i.i545 = icmp eq i32 %i.air, 0
  br i1 %.not.i.i545, label %bb.gf, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i

bb.gf:                                            ; preds = %bb.ge
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aio, i64 9836 ; 2 uses
  %i.ait = load float, ptr %i.ais, align 4, !tbaa !577
  %i.aiu = fcmp ugt float %i.ait, 0.000000e+00
  br i1 %i.aiu, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aio, i64 36
  %i.aiw = load float, ptr %i.aiv, align 4, !tbaa !731
  store float %i.aiw, ptr %i.ais, align 4, !tbaa !577
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i: ; preds = %bb.gg, %bb.gf, %bb.ge
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ahm, i64 280 ; 2 uses
  %i.aiy = load <2 x float>, ptr %i.aix, align 8, !tbaa !86
  %i.aiz = fadd <2 x float> %i.aii, %i.aiy
  store <2 x float> %i.aiz, ptr %i.aix, align 8, !tbaa !86
  %i.aja = getelementptr inbounds nuw i8, ptr %i.ahm, i64 312 ; 2 uses
  %i.ajb = load <2 x float>, ptr %i.aja, align 8, !tbaa !86
  %i.ajc = fadd <2 x float> %i.aii, %i.ajb
  store <2 x float> %i.ajc, ptr %i.aja, align 8, !tbaa !86
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ahm, i64 296 ; 2 uses
  %i.aje = load <4 x float>, ptr %i.ajd, align 8, !tbaa !86
  %i.ajf = fadd <4 x float> %i.aij, %i.aje
  store <4 x float> %i.ajf, ptr %i.ajd, align 8, !tbaa !86
  br label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit

.critedge:                                        ; preds = %bb.gb, %bb.gc
  br i1 %.not402, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %.critedge
  %i.ajg = call <2 x float> @_ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow(ptr noundef nonnull %i.ahm)
  %i.ajh = load ptr, ptr %i.g, align 8, !tbaa !595 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 40
  store <2 x float> %i.ajg, ptr %i.aji, align 8, !tbaa !86
  br label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit

bb.gi:                                            ; preds = %.critedge
  %.not1046 = xor i1 %i.ov, true
  %or.cond11 = or i1 %.0375.shrunk, %.not1046
  %or.cond13.not = select i1 %or.cond11, i1 true, i1 %i.wd
  br i1 %or.cond13.not, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.ajj = call <2 x float> @_ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow(ptr noundef nonnull %i.ahm)
  %i.ajk = load ptr, ptr %i.g, align 8, !tbaa !595 ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 40
  store <2 x float> %i.ajj, ptr %i.ajl, align 8, !tbaa !86
  br label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit

bb.gk:                                            ; preds = %bb.gi
  %or.cond15 = or i1 %.not417, %.0375.shrunk
  %or.cond17 = select i1 %or.cond15, i1 true, i1 %i.wa
  br i1 %or.cond17, label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.ajm = call <2 x float> @_ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow(ptr noundef nonnull %i.ahm)
  %i.ajn = load ptr, ptr %i.g, align 8, !tbaa !595 ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 40
  store <2 x float> %i.ajm, ptr %i.ajo, align 8, !tbaa !86
  br label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit

_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit: ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i, %bb.gd, %bb.gh, %bb.gk, %bb.gl, %bb.gj
  %i.ajp = phi ptr [ %i.ahm, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i ], [ %i.ahm, %bb.gd ], [ %i.ajh, %bb.gh ], [ %i.ahm, %bb.gk ], [ %i.ajn, %bb.gl ], [ %i.ajk, %bb.gj ] ; 36 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #35
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  %i.ajs = load <2 x float>, ptr %i.ajq, align 8, !tbaa !86 ; 4 uses
  %i.ajt = load <2 x float>, ptr %i.ajr, align 8, !tbaa !86
  %i.aju = fadd <2 x float> %i.ajs, %i.ajt        ; 3 uses
  store <2 x float> %i.ajs, ptr %35, align 8
  %i.ajv = getelementptr inbounds nuw i8, ptr %35, i64 8
  store <2 x float> %i.aju, ptr %i.ajv, align 8
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.yi, i64 32
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.yi, i64 40
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.j, i64 3380
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.j, i64 3388
  %i.aka = load <2 x float>, ptr %i.ajw, align 8, !tbaa !86 ; 2 uses
  %i.akb = load <2 x float>, ptr %i.ajx, align 8, !tbaa !86
  %i.akc = fadd <2 x float> %i.aka, %i.akb
  %i.akd = load <2 x float>, ptr %i.ajy, align 4, !tbaa !86 ; 2 uses
  %i.ake = load <2 x float>, ptr %i.ajz, align 4, !tbaa !86 ; 2 uses
  %i.akf = fcmp oge <2 x float> %i.akd, %i.ake
  %i.akg = select <2 x i1> %i.akf, <2 x float> %i.akd, <2 x float> %i.ake ; 2 uses
  %i.akh = fadd <2 x float> %i.aka, %i.akg        ; 4 uses
  %i.aki = fsub <2 x float> %i.akc, %i.akg        ; 5 uses
  %not..0375.shrunk = xor i1 %.0375.shrunk, true
  %brmerge472.not = select i1 %not..0375.shrunk, i1 %.not416, i1 false
  %i.akj = extractelement <2 x float> %i.aju, i64 0
  %i.akk = extractelement <2 x float> %i.ajs, i64 0
  %i.akl = fcmp ogt float %i.akj, %i.akk
  %or.cond1196 = select i1 %brmerge472.not, i1 %i.akl, i1 false
  %i.akm = fcmp ogt <2 x float> %i.aju, %i.ajs
  %i.akn = extractelement <2 x i1> %i.akm, i64 1
  %or.cond1197 = select i1 %or.cond1196, i1 %i.akn, i1 false
  br i1 %or.cond1197, label %bb.gm, label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit._crit_edge

_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit._crit_edge: ; preds = %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit
  %.phi.trans.insert1245 = getelementptr inbounds nuw i8, ptr %i.ajp, i64 40
  %i.ako = load <2 x float>, ptr %.phi.trans.insert1245, align 4, !tbaa !86
  br label %bb.gp

bb.gm:                                            ; preds = %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit
  %i.akp = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.akq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 48
  %i.akr = load float, ptr %i.akq, align 8
  %.sroa_idx.i562 = getelementptr inbounds nuw i8, ptr %i.ajp, i64 52
  %i.aks = load float, ptr %.sroa_idx.i562, align 4 ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akp, i64 95
  %i.aku = load i8, ptr %i.akt, align 1, !tbaa !735, !range !120, !noundef !254
  %i.akv = trunc nuw i8 %i.aku to i1
  br i1 %i.akv, label %bb.gn, label %_ZL14ClampWindowPosP11ImGuiWindowRK6ImRect.exit

bb.gn:                                            ; preds = %bb.gm
  %i.akw = getelementptr inbounds nuw i8, ptr %i.ajp, i64 20
  %i.akx = load i32, ptr %i.akw, align 4, !tbaa !608
  %i.aky = and i32 %i.akx, 1
  %.not.i564 = icmp eq i32 %i.aky, 0
  br i1 %.not.i564, label %bb.go, label %_ZL14ClampWindowPosP11ImGuiWindowRK6ImRect.exit

bb.go:                                            ; preds = %bb.gn
  %i.akz = getelementptr inbounds nuw i8, ptr %i.ajp, i64 104
  %i.ala = load float, ptr %i.akz, align 8, !tbaa !736
  br label %_ZL14ClampWindowPosP11ImGuiWindowRK6ImRect.exit

_ZL14ClampWindowPosP11ImGuiWindowRK6ImRect.exit:  ; preds = %bb.gm, %bb.gn, %bb.go
  %.sroa.4.0.i = phi float [ %i.ala, %bb.go ], [ %i.aks, %bb.gn ], [ %i.aks, %bb.gm ]
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ajp, i64 40
  %i.alc = insertelement <2 x float> poison, float %i.akr, i64 0
  %i.ald = insertelement <2 x float> %i.alc, float %.sroa.4.0.i, i64 1
  %i.ale = fsub <2 x float> %i.akh, %i.ald        ; 2 uses
  %i.alf = load <2 x float>, ptr %i.alb, align 8  ; 3 uses
  %i.alg = fcmp olt <2 x float> %i.alf, %i.ale
  %i.alh = fcmp ogt <2 x float> %i.alf, %i.aki
  %i.ali = select <2 x i1> %i.alh, <2 x float> %i.aki, <2 x float> %i.alf
  %i.alj = select <2 x i1> %i.alg, <2 x float> %i.ale, <2 x float> %i.ali
  br label %bb.gp

bb.gp:                                            ; preds = %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit._crit_edge, %_ZL14ClampWindowPosP11ImGuiWindowRK6ImRect.exit
  %i.alk = phi <2 x float> [ %i.ako, %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit._crit_edge ], [ %i.alj, %_ZL14ClampWindowPosP11ImGuiWindowRK6ImRect.exit ]
  %i.all = getelementptr inbounds nuw i8, ptr %i.ajp, i64 40 ; 9 uses
  %i.alm = getelementptr i8, ptr %i.ajp, i64 44   ; 2 uses
  %i.aln = fptosi <2 x float> %i.alk to <2 x i32>
  %i.alo = sitofp <2 x i32> %i.aln to <2 x float>
  store <2 x float> %i.alo, ptr %i.all, align 8, !tbaa !86
  %i.alp = and i32 %.1359, 201326592
  %or.cond473 = icmp eq i32 %i.alp, 67108864
  %. = select i1 %or.cond473, i64 3204, i64 3164
  %.sink1198 = select i1 %.not416, i64 %., i64 3196
  %i.alq = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink1198
  %i.alr = load float, ptr %i.alq, align 4, !tbaa !86 ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.ajp, i64 96
  store float %i.alr, ptr %i.als, align 8, !tbaa !932
  %i.alt = and i32 %.1359, 4096
  %.not434 = icmp ne i32 %i.alt, 0
  %not..0361.in955 = xor i1 %.0361.in955, true
  %or.cond474 = select i1 %not..0361.in955, i1 true, i1 %.not434 ; 2 uses
  %brmerge494 = or i1 %or.cond474, %i.ov
  %not.or.cond474 = xor i1 %or.cond474, true
  %i.alu = icmp eq i32 %i.vz, 0
  %spec.select987 = select i1 %brmerge494, i1 %not.or.cond474, i1 %i.alu ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br i1 %brmerge959, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.alv = getelementptr inbounds nuw i8, ptr %i.j, i64 94
  %i.alw = load i8, ptr %i.alv, align 2, !tbaa !1416, !range !120, !noundef !254
  %i.alx = trunc nuw i8 %i.alw to i1
  %i.aly = select i1 %i.alx, i32 2, i32 1
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gp, %bb.gq
  %i.alz = phi i32 [ %i.aly, %bb.gq ], [ 0, %bb.gp ] ; 4 uses
  %i.ama = load float, ptr %.phi.trans.insert1042, align 8, !tbaa !426 ; 2 uses
  %i.amb = fmul float %i.ama, 1.100000e+00        ; 2 uses
  %i.amc = fadd float %i.alr, 1.000000e+00        ; 2 uses
  %i.amd = call float @llvm.fmuladd.f32(float %i.ama, float 2.000000e-01, float %i.amc) ; 2 uses
  %i.ame = fcmp oge float %i.amb, %i.amd
  %i.amf = select i1 %i.ame, float %i.amb, float %i.amd
  %i.amg = fptosi float %i.amf to i32
  %i.amh = sitofp i32 %i.amg to float             ; 4 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.ajp, i64 207
  %i.amj = load i8, ptr %i.ami, align 1, !tbaa !607, !range !120, !noundef !254
  %i.amk = trunc nuw i8 %i.amj to i1
  br i1 %i.amk, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowRK6ImVec2PiS5_iPjRK6ImRect.exit.thread, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.aml = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 28 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %i.ajp, i64 20 ; 4 uses
  %i.amn = load i32, ptr %i.amm, align 4, !tbaa !608 ; 4 uses
  %i.amo = and i32 %i.amn, 2
  %.not.i567 = icmp eq i32 %i.amo, 0
  br i1 %.not.i567, label %bb.gt, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowRK6ImVec2PiS5_iPjRK6ImRect.exit.thread

bb.gt:                                            ; preds = %bb.gs
  %i.amp = getelementptr inbounds nuw i8, ptr %i.ajp, i64 228
  %i.amq = load i8, ptr %i.amp, align 4, !tbaa !647
  %i.amr = icmp sgt i8 %i.amq, 0
  br i1 %i.amr, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowRK6ImVec2PiS5_iPjRK6ImRect.exit.thread, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ams = getelementptr inbounds nuw i8, ptr %i.ajp, i64 229
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !646
  %i.amu = icmp sgt i8 %i.amt, 0
  br i1 %i.amu, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowRK6ImVec2PiS5_iPjRK6ImRect.exit.thread, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.amv = and i32 %i.amn, 64
  %.not246.i = icmp eq i32 %i.amv, 0
  br i1 %.not246.i, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.amw = getelementptr inbounds nuw i8, ptr %i.ajp, i64 24
  %i.amx = load i32, ptr %i.amw, align 8, !tbaa !884
  %i.amy = and i32 %i.amx, 12
  %i.amz = icmp eq i32 %i.amy, 0
  br i1 %i.amz, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowRK6ImVec2PiS5_iPjRK6ImRect.exit.thread, label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %i.ana = getelementptr inbounds nuw i8, ptr %i.ajp, i64 205
  %i.anb = load i8, ptr %i.ana, align 1, !tbaa !414, !range !120, !noundef !254
  %i.anc = icmp eq i8 %i.anb, 0
  br i1 %i.anc, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowRK6ImVec2PiS5_iPjRK6ImRect.exit.thread, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.and = getelementptr inbounds nuw i8, ptr %i.aml, i64 4400
  %i.ane = load float, ptr %i.and, align 8, !tbaa !426 ; 2 uses
  %i.anf = fmul float %i.ane, 1.350000e+00        ; 2 uses
  %i.ang = call float @llvm.fmuladd.f32(float %i.ane, float 2.000000e-01, float %i.amc) ; 2 uses
  %i.anh = fcmp oge float %i.anf, %i.ang
  %i.ani = select i1 %i.anh, float %i.anf, float %i.ang
  %i.anj = fptosi float %i.ani to i32
  %i.ank = sitofp i32 %i.anj to float
  %.not247.i = icmp eq i32 %i.alz, 0              ; 2 uses
  %i.anl = fmul nnan float %i.ank, 7.500000e-01
  %i.anm = fptosi float %i.anl to i32
  %i.ann = sitofp i32 %i.anm to float             ; 3 uses
  %i.ano = select i1 %.not247.i, float 0.000000e+00, float %i.ann ; 9 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.aml, i64 5172 ; 4 uses
  %i.anq = load float, ptr %i.anp, align 4, !tbaa !547
  %i.anr = getelementptr inbounds nuw i8, ptr %i.aml, i64 95
  %i.ans = load i8, ptr %i.anr, align 1, !tbaa !735, !range !120, !noundef !254
  %i.ant = trunc nuw i8 %i.ans to i1
  %i.anu = and i32 %i.amn, 1
  %.not248.i = icmp eq i32 %i.anu, 0
  %or.cond988 = and i1 %.not248.i, %i.ant         ; 3 uses
  %i.anv = extractelement <2 x float> %i.akh, i64 1 ; 2 uses
  br i1 %or.cond988, label %bb.gz, label %.thread962

bb.gz:                                            ; preds = %bb.gy
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ajp, i64 104
  %i.anx = load float, ptr %i.anw, align 8, !tbaa !736
  %i.any = fsub float %i.anv, %i.anx
  br label %.thread962

.thread962:                                       ; preds = %bb.gy, %bb.gz
  %.sroa.6936.0 = phi float [ %i.any, %bb.gz ], [ %i.anv, %bb.gy ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #35
  %i.anz = getelementptr inbounds nuw i8, ptr %27, i64 4 ; 2 uses
  store <2 x float> splat (float f0x7F7FFFFF), ptr %27, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #35
  %i.aoa = getelementptr inbounds nuw i8, ptr %28, i64 4 ; 2 uses
  store <2 x float> splat (float f0x7F7FFFFF), ptr %28, align 8, !tbaa !86
  %i.aob = getelementptr inbounds nuw i8, ptr %i.ajp, i64 368 ; 2 uses
  store i32 1, ptr %i.aob, align 8, !tbaa !899
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.93), !inline_history !1397
  br i1 %.not247.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread962
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.ajp, i64 48 ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.aof = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aml, i64 2837
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aml, i64 224
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aml, i64 5320
  %i.aoj = fneg float %i.ann
  %i.aok = bitcast <2 x float> %i.aej to i64
  %wide.trip.count = zext nneg i32 %i.alz to i64
  %38 = extractelement <2 x float> %i.aki, i64 0  ; 2 uses
  %39 = extractelement <2 x float> %i.aki, i64 1  ; 2 uses
  %i.aol = insertelement <2 x float> poison, float %i.aoj, i64 0
  %i.aom = shufflevector <2 x float> %i.aol, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aon = insertelement <2 x float> poison, float %i.anq, i64 0
  %i.aoo = shufflevector <2 x float> %i.aon, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aop = insertelement <2 x float> poison, float %i.ann, i64 0
  %i.aoq = shufflevector <2 x float> %i.aop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aor = extractelement <2 x float> %i.akh, i64 0
  br label %bb.ha

._crit_edge:                                      ; preds = %bb.hp, %.thread962
  %.lcssa1008 = phi <2 x float> [ splat (float f0x7F7FFFFF), %.thread962 ], [ %i.are, %bb.hp ]
  %.0232.i.lcssa = phi i32 [ 0, %.thread962 ], [ %.1.i, %bb.hp ]
  store <2 x float> %.lcssa1008, ptr %28, align 8
  %i.aos = load i32, ptr %i.amm, align 4, !tbaa !608
  %i.aot = and i32 %i.aos, 16777216
  %.not249.i = icmp eq i32 %i.aot, 0
  br i1 %.not249.i, label %bb.hr, label %bb.hq

bb.ha:                                            ; preds = %.lr.ph, %bb.hp
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.hp ] ; 8 uses
  %.0232.i1010 = phi i32 [ 0, %.lr.ph ], [ %.1.i, %bb.hp ] ; 4 uses
  %i.aou = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph ], [ %i.are, %bb.hp ] ; 2 uses
  %i.aov = getelementptr inbounds nuw [24 x i8], ptr @_ZL15resize_grip_def, i64 %indvars.iv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 8
  %i.aox = load <2 x float>, ptr %i.all, align 8, !tbaa !86 ; 3 uses
  %i.aoy = load <2 x float>, ptr %i.aoc, align 8, !tbaa !86
  %i.aoz = fadd <2 x float> %i.aox, %i.aoy
  %i.apa = fsub <2 x float> %i.aoz, %i.aox
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #35
  %i.apb = load <2 x float>, ptr %i.aov, align 8, !tbaa !86 ; 5 uses
  %i.apc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apa, <2 x float> %i.apb, <2 x float> %i.aox) ; 2 uses
  %i.apd = load <2 x float>, ptr %i.aow, align 8, !tbaa !86 ; 3 uses
  %i.ape = fmul <2 x float> %i.aoo, %i.apd        ; 3 uses
  %i.apf = fsub <2 x float> %i.apc, %i.ape        ; 3 uses
  %i.apg = fmul <2 x float> %i.apd, %i.aoq
  %i.aph = fadd <2 x float> %i.apc, %i.apg        ; 3 uses
  store <2 x float> %i.apf, ptr %29, align 8, !tbaa !86
  store <2 x float> %i.aph, ptr %i.aod, align 8, !tbaa !86
  %i.api = extractelement <2 x float> %i.aph, i64 0 ; 2 uses
  %i.apj = extractelement <2 x float> %i.apf, i64 0 ; 2 uses
  %i.apk = fcmp ogt float %i.apj, %i.api
  br i1 %i.apk, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  store float %i.api, ptr %29, align 8, !tbaa !86
  store float %i.apj, ptr %i.aod, align 8, !tbaa !86
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.apl = extractelement <2 x float> %i.aph, i64 1 ; 2 uses
  %i.apm = extractelement <2 x float> %i.apf, i64 1 ; 2 uses
  %i.apn = fcmp ogt float %i.apm, %i.apl
  br i1 %i.apn, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  store float %i.apl, ptr %i.aoe, align 4, !tbaa !86
  store float %i.apm, ptr %i.aof, align 4, !tbaa !86
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %i.apo = trunc nuw nsw i64 %indvars.iv to i32   ; 3 uses
  %i.app = call noundef i32 @_ZN11ImGuiWindow5GetIDEi(ptr noundef nonnull align 8 dereferenceable(1077) %i.ajp, i32 noundef %i.apo), !inline_history !1397 ; 2 uses
  %i.apq = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %29, i32 noundef %i.app, ptr noundef null, i32 noundef 2), !inline_history !1397 ; 0 uses
  %i.apr = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %29, i32 noundef %i.app, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 264192) #35, !inline_history !1397 ; 0 uses
  %i.aps = load i8, ptr %i.a, align 1, !tbaa !261, !range !120, !noundef !254
  %i.apt = trunc nuw i8 %i.aps to i1
  %i.apu = load i8, ptr %i.b, align 1, !range !120
  %i.apv = trunc nuw i8 %i.apu to i1              ; 2 uses
  %or.cond.i570 = select i1 %i.apt, i1 true, i1 %i.apv
  br i1 %or.cond.i570, label %bb.hf, label %.thread964

bb.hf:                                            ; preds = %bb.he
  %.not260.i = icmp eq i64 %indvars.iv, 0         ; 2 uses
  %i.apw = select i1 %.not260.i, i32 6, i32 5
  %i.apx = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 9200
  store i32 %i.apw, ptr %i.apy, align 8, !tbaa !846
  br i1 %i.apv, label %bb.hg, label %.thread964

bb.hg:                                            ; preds = %bb.hf
  %i.apz = load i8, ptr %i.aog, align 1, !tbaa !261, !range !120, !noundef !254
  %i.aqa = trunc nuw i8 %i.apz to i1
  br i1 %i.aqa, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.aqb = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %i.ajp, i64 %i.aok), !inline_history !1397
  call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  br label %.thread964

bb.hi:                                            ; preds = %bb.hg
  %i.aqc = select i1 %.not260.i, float %i.aor, float f0xFF7FFFFF
  %i.aqd = icmp samesign ult i64 %indvars.iv, 2
  br i1 %i.aqd, label %.thread1188, label %bb.hj

.thread1188:                                      ; preds = %bb.hi
  %40 = add nsw i32 %i.apo, -1
  %41 = icmp ult i32 %40, 2                       ; 2 uses
  %42 = select i1 %41, float %38, float f0x7F7FFFFF
  br label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.aqe = and i32 %i.apo, 2147483646
  %i.aqf = icmp eq i32 %i.aqe, 2                  ; 2 uses
  %or.cond3.i573 = and i1 %or.cond988, %i.aqf
  %43 = icmp eq i64 %indvars.iv, 2                ; 4 uses
  %44 = select i1 %43, float %38, float f0x7F7FFFFF ; 3 uses
  br i1 %or.cond3.i573, label %bb.hk, label %45

45:                                               ; preds = %bb.hj
  br i1 %i.aqf, label %._crit_edge1081, label %bb.hk

._crit_edge1081:                                  ; preds = %45
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %.thread1188, %45, %._crit_edge1081
  %46 = phi float [ %42, %.thread1188 ], [ %44, %45 ], [ %44, %._crit_edge1081 ], [ %44, %bb.hj ]
  %47 = phi i1 [ %41, %.thread1188 ], [ %43, %45 ], [ %43, %._crit_edge1081 ], [ %43, %bb.hj ]
  %48 = phi float [ %.sroa.6936.0, %.thread1188 ], [ f0xFF7FFFFF, %45 ], [ f0xFF7FFFFF, %._crit_edge1081 ], [ %.sroa.6936.0, %bb.hj ]
  %49 = phi float [ f0x7F7FFFFF, %.thread1188 ], [ f0x7F7FFFFF, %45 ], [ %39, %._crit_edge1081 ], [ %39, %bb.hj ]
  %50 = fmul <2 x float> %i.apd, %i.aom
  %i.aqg = load <2 x float>, ptr %i.aoh, align 8, !tbaa !86
  %i.aqh = load <2 x float>, ptr %i.aoi, align 8, !tbaa !86
  %i.aqi = fsub <2 x float> %i.aqg, %i.aqh
  %i.aqj = fsub <2 x float> %50, %i.ape
  %i.aqk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqj, <2 x float> %i.apb, <2 x float> %i.ape)
  %i.aql = fadd <2 x float> %i.aqk, %i.aqi        ; 3 uses
  %i.aqm = insertelement <2 x float> poison, float %i.aqc, i64 0
  %i.aqn = insertelement <2 x float> %i.aqm, float %48, i64 1 ; 2 uses
  %i.aqo = fcmp olt <2 x float> %i.aql, %i.aqn
  %51 = insertelement <2 x float> poison, float %46, i64 0
  %52 = insertelement <2 x float> %51, float %49, i64 1 ; 2 uses
  %i.aqp = fcmp ogt <2 x float> %i.aql, %52
  %i.aqq = select <2 x i1> %i.aqp, <2 x float> %52, <2 x float> %i.aql
  %i.aqr = select <2 x i1> %i.aqo, <2 x float> %i.aqn, <2 x float> %i.aqq ; 3 uses
  %i.aqs = load <2 x float>, ptr %i.all, align 8, !tbaa !86 ; 2 uses
  %i.aqt = fsub <2 x float> %i.aqs, %i.aqr
  %i.aqu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqt, <2 x float> %i.apb, <2 x float> %i.aqr) ; 4 uses
  %i.aqv = load <2 x float>, ptr %i.aoc, align 8, !tbaa !86
  %i.aqw = fadd <2 x float> %i.aqs, %i.aqv        ; 2 uses
  %i.aqx = fsub <2 x float> %i.aqr, %i.aqw
  %i.aqy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqx, <2 x float> %i.apb, <2 x float> %i.aqw)
  %i.aqz = fsub <2 x float> %i.aqy, %i.aqu        ; 3 uses
  %i.ara = bitcast <2 x float> %i.aqz to i64
  %i.arb = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull readonly %i.ajp, i64 %i.ara) ; 4 uses
  store <2 x float> %i.aqu, ptr %27, align 8, !tbaa !86
  br i1 %47, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %foldExtExtBinop = fsub <2 x float> %i.arb, %i.aqz
  %foldExtExtBinop1356 = fsub <2 x float> %i.aqu, %foldExtExtBinop
  %i.arc = extractelement <2 x float> %foldExtExtBinop1356, i64 0
  store float %i.arc, ptr %27, align 8, !tbaa !269
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %53 = extractelement <2 x float> %i.apb, i64 1
  %54 = fcmp oeq float %53, 0.000000e+00
  br i1 %54, label %bb.hn, label %.thread964

bb.hn:                                            ; preds = %bb.hm
  %foldExtExtBinop1358 = fsub <2 x float> %i.arb, %i.aqz
  %foldExtExtBinop1360 = fsub <2 x float> %i.aqu, %foldExtExtBinop1358
  %i.ard = extractelement <2 x float> %foldExtExtBinop1360, i64 1
  store float %i.ard, ptr %i.anz, align 4, !tbaa !270
  br label %.thread964

.thread964:                                       ; preds = %bb.hn, %bb.hm, %bb.he, %bb.hf, %bb.hh
  %i.are = phi <2 x float> [ %i.aqb, %bb.hh ], [ %i.aou, %bb.he ], [ %i.aou, %bb.hf ], [ %i.arb, %bb.hm ], [ %i.arb, %bb.hn ] ; 2 uses
  %.1.i = phi i32 [ 3, %bb.hh ], [ %.0232.i1010, %bb.he ], [ %.0232.i1010, %bb.hf ], [ %.0232.i1010, %bb.hm ], [ %.0232.i1010, %bb.hn ] ; 2 uses
  %i.arf = icmp eq i64 %indvars.iv, 0
  %i.arg = load i8, ptr %i.b, align 1, !range !120
  %i.arh = trunc nuw i8 %i.arg to i1              ; 2 uses
  %or.cond5.i571 = select i1 %i.arf, i1 true, i1 %i.arh
  %i.ari = load i8, ptr %i.a, align 1, !range !120
  %i.arj = trunc nuw i8 %i.ari to i1              ; 2 uses
  %or.cond7.i572 = select i1 %or.cond5.i571, i1 true, i1 %i.arj
  br i1 %or.cond7.i572, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %.thread964
  %i.ark = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ark, i64 3412
  %i.arm = select i1 %i.arj, i64 31, i64 30
  %i.arn = select i1 %i.arh, i64 32, i64 %i.arm
  %i.aro = getelementptr inbounds nuw [16 x i8], ptr %i.arl, i64 %i.arn
  %i.arp = getelementptr inbounds nuw i8, ptr %i.ark, i64 3148
  %i.arq = load float, ptr %i.arp, align 4, !tbaa !399
  %i.arr = load <4 x float>, ptr %i.aro, align 4, !tbaa !86
  %i.ars = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.arq, i64 3
  %i.art = fmul <4 x float> %i.arr, %i.ars        ; 3 uses
  %i.aru = fcmp olt <4 x float> %i.art, zeroinitializer
  %i.arv = fcmp ogt <4 x float> %i.art, splat (float 1.000000e+00)
  %i.arw = select <4 x i1> %i.arv, <4 x float> splat (float 1.000000e+00), <4 x float> %i.art
  %i.arx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.arw, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ary = select <4 x i1> %i.aru, <4 x float> splat (float 5.000000e-01), <4 x float> %i.arx
  %i.arz = fptosi <4 x float> %i.ary to <4 x i32>
  %i.asa = shl <4 x i32> %i.arz, <i32 0, i32 8, i32 16, i32 24>
  %i.asb = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.asa)
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %i.asb, ptr %i.asc, align 4, !tbaa !255
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %.thread964
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ha, !llvm.loop !1398

bb.hq:                                            ; preds = %._crit_edge
  %i.asd = getelementptr inbounds nuw i8, ptr %i.ajp, i64 24
  %i.ase = load i32, ptr %i.asd, align 8, !tbaa !884 ; 2 uses
  %i.asf = lshr i32 %i.ase, 1
  %i.asg = and i32 %i.asf, 2
  %i.ash = and i32 %i.ase, 8
  %i.asi = or disjoint i32 %i.asg, %i.ash
  br label %bb.hs

bb.hr:                                            ; preds = %._crit_edge
  %i.asj = getelementptr inbounds nuw i8, ptr %i.aml, i64 94
  %i.ask = load i8, ptr %i.asj, align 2, !tbaa !1416, !range !120, !noundef !254
  %i.asl = trunc nuw i8 %i.ask to i1
  %i.asm = select i1 %i.asl, i32 15, i32 0
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %.0235.i = phi i32 [ %i.asi, %bb.hq ], [ %i.asm, %bb.hr ]
  %i.asn = getelementptr inbounds nuw i8, ptr %i.ajp, i64 48 ; 5 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %i.ajp, i64 52 ; 2 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.asq = getelementptr inbounds nuw i8, ptr %i.aml, i64 5288
  %i.asr = getelementptr inbounds nuw i8, ptr %i.aml, i64 2837
  %i.ass = getelementptr inbounds nuw i8, ptr %i.aml, i64 5224
  %i.ast = getelementptr inbounds nuw i8, ptr %i.aml, i64 5244
  %i.asu = getelementptr inbounds nuw i8, ptr %i.aml, i64 5000
  %i.asv = getelementptr inbounds nuw i8, ptr %i.aml, i64 5312
  %i.asw = getelementptr inbounds nuw i8, ptr %i.aml, i64 9576 ; 3 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %i.aml, i64 9592 ; 3 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.aml, i64 204
  %i.asz = getelementptr inbounds nuw i8, ptr %i.aml, i64 224
  %i.ata = getelementptr inbounds nuw i8, ptr %i.aml, i64 5320
  %i.atb = and i32 %i.amn, 16777216
  %.not257.i = icmp eq i32 %i.atb, 0
  %i.atc = getelementptr inbounds nuw i8, ptr %i.ajp, i64 944
  %i.atd = bitcast <2 x float> %i.aej to i64
  %i.ate = insertelement <2 x float> %i.akh, float %.sroa.6936.0, i64 1 ; 2 uses
  %.4..4..4..4..4.gep893.sroa_idx1378 = getelementptr inbounds nuw i8, ptr %31, i64 4
  br label %bb.hw

bb.ht:                                            ; preds = %bb.jd
  %i.atf = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 5184
  %i.ath = load ptr, ptr %i.atg, align 8, !tbaa !309
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ath, i64 264 ; 2 uses
  %i.atj = load i32, ptr %i.ati, align 8, !tbaa !640 ; 2 uses
  %i.atk = icmp slt i32 %i.atj, 2
  br i1 %i.atk, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.atl = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.106), !inline_history !1399 ; 0 uses
  br label %_ZN5ImGui5PopIDEv.exit

bb.hv:                                            ; preds = %bb.ht
  %i.atm = add nsw i32 %i.atj, -1
  store i32 %i.atm, ptr %i.ati, align 8, !tbaa !526
  br label %_ZN5ImGui5PopIDEv.exit

_ZN5ImGui5PopIDEv.exit:                           ; preds = %bb.hu, %bb.hv
  store i32 0, ptr %i.aob, align 8, !tbaa !899
  %i.atn = getelementptr inbounds nuw i8, ptr %i.aml, i64 8552
  %i.ato = load ptr, ptr %i.atn, align 8, !tbaa !803 ; 2 uses
  %.not252.i = icmp eq ptr %i.ato, null
  br i1 %.not252.i, label %bb.jj, label %bb.je

bb.hw:                                            ; preds = %bb.hs, %bb.jd
  %indvars.iv1023 = phi i64 [ 0, %bb.hs ], [ %indvars.iv.next1024, %bb.jd ] ; 8 uses
  %.2.i1015 = phi i32 [ %.0232.i.lcssa, %bb.hs ], [ %.5.i, %bb.jd ] ; 6 uses
  %.19451013 = phi i32 [ -1, %bb.hs ], [ %.3947, %bb.jd ] ; 2 uses
  %.19501012 = phi i32 [ -1, %bb.hs ], [ %.3952, %bb.jd ] ; 2 uses
  %i.atp = trunc nuw nsw i64 %indvars.iv1023 to i32 ; 6 uses
  %i.atq = shl nuw nsw i32 1, %i.atp
  %i.atr = and i32 %i.atq, %.0235.i
  %i.ats = icmp eq i32 %i.atr, 0
  br i1 %i.ats, label %bb.jd, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.att = getelementptr inbounds nuw [28 x i8], ptr @_ZL17resize_border_def, i64 %indvars.iv1023 ; 2 uses
  %i.atu = icmp eq i64 %indvars.iv1023, 0
  %i.atv = icmp eq i64 %indvars.iv1023, 1
  %i.atw = icmp samesign ugt i64 %indvars.iv1023, 1 ; 9 uses
  %i.atx = zext i1 %i.atw to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #35
  %i.aty = load float, ptr %i.anp, align 4, !tbaa !547 ; 9 uses
  %i.atz = fcmp oeq float %i.aty, 0.000000e+00
  %i.aua = load <2 x float>, ptr %i.all, align 8, !tbaa !86 ; 7 uses
  %i.aub = load <2 x float>, ptr %i.asn, align 8, !tbaa !86
  %i.auc = fadd <2 x float> %i.aua, %i.aub        ; 2 uses
  %i.aud = fadd <2 x float> %i.auc, splat (float -1.000000e+00)
  %.sroa.9.0.i = select i1 %i.atz, <2 x float> %i.aud, <2 x float> %i.auc ; 6 uses
  switch i32 %i.atp, label %default.unreachable [
    i32 0, label %bb.hy
    i32 1, label %bb.hz
    i32 2, label %bb.ia
    i32 3, label %bb.ib
  ]

bb.hy:                                            ; preds = %bb.hx
  %i.aue = extractelement <2 x float> %i.aua, i64 0 ; 2 uses
  %i.auf = fsub float %i.aue, %i.aty
  %i.aug = extractelement <2 x float> %i.aua, i64 1
  %i.auh = fadd float %i.ano, %i.aug
  %i.aui = fadd float %i.aty, %i.aue
  %.sroa.9.12.vec.extract43.i = extractelement <2 x float> %.sroa.9.0.i, i64 1
  %i.auj = fsub float %.sroa.9.12.vec.extract43.i, %i.ano
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit

bb.hz:                                            ; preds = %bb.hx
  %.sroa.9.8.vec.extract33.i = extractelement <2 x float> %.sroa.9.0.i, i64 0 ; 2 uses
  %i.auk = fsub float %.sroa.9.8.vec.extract33.i, %i.aty
  %i.aul = extractelement <2 x float> %i.aua, i64 1
  %i.aum = fadd float %i.ano, %i.aul
  %i.aun = fadd float %i.aty, %.sroa.9.8.vec.extract33.i
  %.sroa.9.12.vec.extract41.i = extractelement <2 x float> %.sroa.9.0.i, i64 1
  %i.auo = fsub float %.sroa.9.12.vec.extract41.i, %i.ano
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit

bb.ia:                                            ; preds = %bb.hx
  %i.aup = extractelement <2 x float> %i.aua, i64 0
  %i.auq = fadd float %i.ano, %i.aup
  %i.aur = extractelement <2 x float> %i.aua, i64 1 ; 2 uses
  %i.aus = fsub float %i.aur, %i.aty
  %.sroa.9.8.vec.extract31.i = extractelement <2 x float> %.sroa.9.0.i, i64 0
  %i.aut = fsub float %.sroa.9.8.vec.extract31.i, %i.ano
  %i.auu = fadd float %i.aty, %i.aur
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit

bb.ib:                                            ; preds = %bb.hx
  %i.auv = extractelement <2 x float> %i.aua, i64 0
  %i.auw = fadd float %i.ano, %i.auv
  %.sroa.9.12.vec.extract39.i = extractelement <2 x float> %.sroa.9.0.i, i64 1 ; 2 uses
  %i.aux = fsub float %.sroa.9.12.vec.extract39.i, %i.aty
  %.sroa.9.8.vec.extract.i = extractelement <2 x float> %.sroa.9.0.i, i64 0
  %i.auy = fsub float %.sroa.9.8.vec.extract.i, %i.ano
  %i.auz = fadd float %i.aty, %.sroa.9.12.vec.extract39.i
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit

default.unreachable:                              ; preds = %bb.hx
  unreachable

_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit:   ; preds = %bb.hy, %bb.hz, %bb.ia, %bb.ib
  %.sink1202 = phi float [ %i.auf, %bb.hy ], [ %i.auk, %bb.hz ], [ %i.auq, %bb.ia ], [ %i.auw, %bb.ib ]
  %.sink1201 = phi float [ %i.auh, %bb.hy ], [ %i.aum, %bb.hz ], [ %i.aus, %bb.ia ], [ %i.aux, %bb.ib ]
  %.sink1200 = phi float [ %i.aui, %bb.hy ], [ %i.aun, %bb.hz ], [ %i.aut, %bb.ia ], [ %i.auy, %bb.ib ]
  %.sink1199 = phi float [ %i.auj, %bb.hy ], [ %i.auo, %bb.hz ], [ %i.auu, %bb.ia ], [ %i.auz, %bb.ib ]
  %.sroa.044.0.vec.insert.i = insertelement <2 x float> poison, float %.sink1202, i64 0
  %.sroa.044.4.vec.insert.i = insertelement <2 x float> %.sroa.044.0.vec.insert.i, float %.sink1201, i64 1
end_hunk_0
