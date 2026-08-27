Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_widgets?download=true
inline.NumInlined: 1519
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqd, i64 16
  br label %.lr.ph.split.i1181

.lr.ph.split.i1181:                               ; preds = %bb.jr, %.lr.ph.i1180
  %.03121.i1182 = phi ptr [ %i.aqm, %bb.jr ], [ %i.aqa, %.lr.ph.i1180 ] ; 2 uses
  %.03220.i1183 = phi float [ %.133.i1186, %bb.jr ], [ 0.000000e+00, %.lr.ph.i1180 ] ; 4 uses
  %.sroa.0.019.i1184 = phi <2 x float> [ %.sroa.0.1.i1185, %bb.jr ], [ zeroinitializer, %.lr.ph.i1180 ] ; 4 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %.03121.i1182, i64 2 ; 2 uses
  %i.aqn = load i16, ptr %.03121.i1182, align 2, !tbaa !258 ; 3 uses
  switch i16 %i.aqn, label %bb.jq [
    i16 10, label %bb.jp
    i16 13, label %bb.jr
  ], !llvm.loop !385

bb.jp:                                            ; preds = %.lr.ph.split.i1181
  %.sroa.0.0.vec.extract.i1187 = extractelement <2 x float> %.sroa.0.019.i1184, i64 0 ; 2 uses
  %i.aqo = fcmp oge float %.sroa.0.0.vec.extract.i1187, %.03220.i1183
  %i.aqp = select i1 %i.aqo, float %.sroa.0.0.vec.extract.i1187, float %.03220.i1183
  %.sroa.0.0.vec.insert.i1188 = insertelement <2 x float> poison, float %i.aqp, i64 0
  %.sroa.0.4.vec.extract.i1189 = extractelement <2 x float> %.sroa.0.019.i1184, i64 1
  %i.aqq = fadd float %i.aqf, %.sroa.0.4.vec.extract.i1189
  %.sroa.0.4.vec.insert.i1190 = insertelement <2 x float> %.sroa.0.0.vec.insert.i1188, float %i.aqq, i64 1
  br label %bb.jr

bb.jq:                                            ; preds = %.lr.ph.split.i1181
  %i.aqr = zext i16 %i.aqn to i32
  %i.aqs = load i32, ptr %i.aqd, align 8, !tbaa !386
  %i.aqt = icmp sgt i32 %i.aqs, %i.aqr
  %i.aqu = load ptr, ptr %i.aqk, align 8
  %i.aqv = zext i16 %i.aqn to i64
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %i.aqu, i64 %i.aqv
  %.in.i.i1191 = select i1 %i.aqt, ptr %i.aqw, ptr %i.aql
  %i.aqx = load float, ptr %.in.i.i1191, align 4, !tbaa !130
  %i.aqy = fmul float %i.aqi, %i.aqx
  %i.aqz = fadd float %.03220.i1183, %i.aqy
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp, %.lr.ph.split.i1181
  %.sroa.0.1.i1185 = phi <2 x float> [ %.sroa.0.019.i1184, %bb.jq ], [ %.sroa.0.4.vec.insert.i1190, %bb.jp ], [ %.sroa.0.019.i1184, %.lr.ph.split.i1181 ] ; 2 uses
  %.133.i1186 = phi float [ %i.aqz, %bb.jq ], [ 0.000000e+00, %bb.jp ], [ %.03220.i1183, %.lr.ph.split.i1181 ] ; 2 uses
  %i.ara = icmp ult ptr %i.aqm, %.sroa.7.0
  br i1 %i.ara, label %.lr.ph.split.i1181, label %_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.exit1192

_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.exit1192: ; preds = %bb.jr, %bb.jo
  %.sroa.0.2.i1170 = phi <2 x float> [ zeroinitializer, %bb.jo ], [ %.sroa.0.1.i1185, %bb.jr ]
  %.2.i1171 = phi float [ 0.000000e+00, %bb.jo ], [ %.133.i1186, %bb.jr ] ; 2 uses
  %.sroa.0.0.vec.extract4.i1173 = extractelement <2 x float> %.sroa.0.2.i1170, i64 0 ; 2 uses
  %i.arb = fcmp olt float %.sroa.0.0.vec.extract4.i1173, %.2.i1171
  %.sroa.0159.0.vec.extract = select i1 %i.arb, float %.2.i1171, float %.sroa.0.0.vec.extract4.i1173
  %i.arc = uitofp nneg i32 %.sroa.9.4 to float
  %i.ard = load float, ptr %i.apw, align 8, !tbaa !145 ; 2 uses
  %i.are = fmul float %i.ard, %i.arc
  br label %bb.js

bb.js:                                            ; preds = %_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.exit1192, %_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.exit
  %i.arf = phi float [ %i.ard, %_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.exit1192 ], [ %i.apx, %_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.exit ] ; 2 uses
  %.sroa.01270.0 = phi float [ %.sroa.0159.0.vec.extract, %_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.exit1192 ], [ 0.000000e+00, %_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.exit ]
  %.sroa.51271.0 = phi float [ %i.are, %_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.exit1192 ], [ 0.000000e+00, %_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.exit ]
  %i.arg = sitofp i32 %i.aoq to float
  %i.arh = fmul float %i.arf, %i.arg
  %.sroa.61280.0 = select i1 %i.o, float %i.arh, float 0.000000e+00 ; 3 uses
  br i1 %i.iw, label %bb.jt, label %bb.kh

bb.jt:                                            ; preds = %bb.js
  %i.ari = getelementptr inbounds nuw i8, ptr %.095715591680, i64 3708 ; 2 uses
  %i.arj = load i8, ptr %i.ari, align 4, !tbaa !353, !range !124, !noundef !125
  %i.ark = trunc nuw i8 %i.arj to i1
  br i1 %i.ark, label %bb.ju, label %bb.kh

bb.ju:                                            ; preds = %bb.jt
  %i.arl = and i32 %5, 4096
  %.not1015 = icmp eq i32 %i.arl, 0
  br i1 %.not1015, label %bb.jv, label %bb.jz

bb.jv:                                            ; preds = %bb.ju
  %i.arm = fmul float %.sroa.0568.2, 2.500000e-01 ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %.095715591680, i64 72 ; 3 uses
  %i.aro = load float, ptr %i.arn, align 8, !tbaa !311 ; 2 uses
  %i.arp = fcmp olt float %.sroa.0160.0.vec.extract, %i.aro
  br i1 %i.arp, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  %i.arq = fsub float %.sroa.0160.0.vec.extract, %i.arm ; 2 uses
  %i.arr = fcmp ole float %i.arq, 0.000000e+00
  %i.ars = select i1 %i.arr, float 0.000000e+00, float %i.arq
  %i.art = fptosi float %i.ars to i32
  %i.aru = sitofp i32 %i.art to float
  store float %i.aru, ptr %i.arn, align 8, !tbaa !311
  br label %bb.ka

bb.jx:                                            ; preds = %bb.jv
  %i.arv = load float, ptr %i.ae, align 4, !tbaa !146
  %i.arw = fsub float %.sroa.0568.2, %i.arv
  %i.arx = fsub float %.sroa.0160.0.vec.extract, %i.arw ; 2 uses
  %i.ary = fcmp ult float %i.arx, %i.aro
  br i1 %i.ary, label %bb.ka, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.arz = fadd float %i.arm, %i.arx
  %i.asa = fptosi float %i.arz to i32
  %i.asb = sitofp i32 %i.asa to float
  store float %i.asb, ptr %i.arn, align 8, !tbaa !311
  br label %bb.ka

bb.jz:                                            ; preds = %bb.ju
  %i.asc = getelementptr inbounds nuw i8, ptr %.095715591680, i64 72
  store float 0.000000e+00, ptr %i.asc, align 8, !tbaa !311
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jw, %bb.jy, %bb.jx, %bb.jz
  br i1 %i.o, label %bb.kb, label %bb.kg

bb.kb:                                            ; preds = %bb.ka
  %i.asd = fsub float %i.apy, %i.arf              ; 3 uses
  %i.ase = fcmp olt float %i.asd, %.19471588
  %.pre1472 = load float, ptr %i.af, align 8, !tbaa !143 ; 2 uses
  br i1 %i.ase, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.asf = fcmp ole float %i.asd, 0.000000e+00
  %i.asg = select i1 %i.asf, float 0.000000e+00, float %i.asd
  br label %bb.kf

bb.kd:                                            ; preds = %bb.kb
  %i.ash = fsub float %i.apy, %.sroa.01287.4.vec.extract1293 ; 2 uses
  %i.asi = fcmp ult float %i.ash, %.19471588
  br i1 %i.asi, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.asj = call float @llvm.fmuladd.f32(float %.pre1472, float 2.000000e+00, float %i.ash)
  br label %bb.kf

bb.kf:                                            ; preds = %bb.kd, %bb.ke, %bb.kc
  %.2948 = phi float [ %i.asg, %bb.kc ], [ %i.asj, %bb.ke ], [ %.19471588, %bb.kd ] ; 3 uses
  %i.ask = call float @llvm.fmuladd.f32(float %.pre1472, float 2.000000e+00, float %.sroa.61280.0)
  %i.asl = fsub float %i.ask, %.sroa.01287.4.vec.extract1293 ; 2 uses
  %i.asm = fcmp oge float %i.asl, 0.000000e+00
  %i.asn = select i1 %i.asm, float %i.asl, float 0.000000e+00 ; 2 uses
  %i.aso = fcmp olt float %.2948, 0.000000e+00
  %i.asp = fcmp ogt float %.2948, %i.asn
  %i.asq = select i1 %i.asp, float %i.asn, float %.2948
  %i.asr = select i1 %i.aso, float 0.000000e+00, float %i.asq ; 2 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %.2962, i64 96 ; 2 uses
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !293
  %i.asu = fsub float %i.ast, %i.asr
  %i.asv = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 2 uses
  %i.asw = load float, ptr %i.asv, align 4, !tbaa !140
  %i.asx = fadd float %i.asw, %i.asu
  store float %i.asx, ptr %i.asv, align 4, !tbaa !140
  store float %i.asr, ptr %i.ass, align 4, !tbaa !293
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %bb.ka
  store i8 0, ptr %i.ari, align 4, !tbaa !353
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.jt, %bb.js
  %i.asy = getelementptr inbounds nuw i8, ptr %.095715591680, i64 72
  %i.asz = load float, ptr %i.asy, align 8, !tbaa !311 ; 4 uses
  br i1 %.1945.in1590, label %bb.ki, label %.loopexit1425

bb.ki:                                            ; preds = %bb.kh
  %i.ata = getelementptr inbounds nuw i8, ptr %.095715591680, i64 80
  %i.atb = load i32, ptr %i.ata, align 8, !tbaa !309 ; 2 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %.095715591680, i64 84
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !310 ; 2 uses
  %i.ate = call noundef i32 @llvm.smin.i32(i32 %i.atb, i32 %i.atd) ; 2 uses
  %i.atf = call noundef i32 @llvm.smax.i32(i32 %i.atb, i32 %i.atd) ; 2 uses
  %i.atg = sext i32 %i.atf to i64
  %i.ath = getelementptr inbounds [2 x i8], ptr %i.ant, i64 %i.atg ; 3 uses
  %i.ati = select i1 %i.iw, float 1.000000e+00, float 6.000000e-01
  %i.atj = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 47, float noundef %i.ati)
  %i.atk = select i1 %i.o, float 0.000000e+00, float -1.000000e+00
  %i.atl = icmp slt i32 %i.ate, %i.atf
  br i1 %i.atl, label %.lr.ph1441, label %.loopexit1425

.lr.ph1441:                                       ; preds = %bb.ki
  %i.atm = select i1 %i.o, float 0.000000e+00, float 2.000000e+00
  %i.atn = sext i32 %i.ate to i64
  %i.ato = getelementptr inbounds [2 x i8], ptr %i.ant, i64 %i.atn
  %.val1079 = load float, ptr %16, align 8, !tbaa !135 ; 3 uses
  %i.atp = fadd float %.sroa.01270.0, %.val1079
  %i.atq = fsub float %i.atp, %i.asz
  %.sroa.0.0.vec.insert.i1195 = insertelement <2 x float> poison, float %i.atq, i64 0
  %i.atr = getelementptr inbounds nuw i8, ptr %16, i64 4
  %.val1080 = load float, ptr %i.atr, align 4, !tbaa !140
  %i.ats = fadd float %.sroa.51271.0, %.val1080
  %.sroa.0.4.vec.insert.i1196 = insertelement <2 x float> %.sroa.0.0.vec.insert.i1195, float %i.ats, i64 1
  %i.att = getelementptr inbounds nuw i8, ptr %i.g, i64 6520
  %i.atu = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.atv = getelementptr inbounds nuw i8, ptr %.2962, i64 616
  %.pre1474 = load float, ptr %i.apw, align 8, !tbaa !145 ; 2 uses
  %i.atw = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.atm, i64 0
  br label %bb.kj

bb.kj:                                            ; preds = %.lr.ph1441, %.loopexit
  %.pre14761480 = phi float [ %.pre1474, %.lr.ph1441 ], [ %.pre14761481, %.loopexit ] ; 3 uses
  %.pre14751477 = phi float [ %.val1079, %.lr.ph1441 ], [ %.pre14751478, %.loopexit ] ; 3 uses
  %i.atx = phi float [ %.pre1474, %.lr.ph1441 ], [ %i.awx, %.loopexit ] ; 4 uses
  %i.aty = phi float [ %.val1079, %.lr.ph1441 ], [ %i.awy, %.loopexit ] ; 2 uses
  %.sroa.01256.01441 = phi <2 x float> [ %.sroa.0.4.vec.insert.i1196, %.lr.ph1441 ], [ %.sroa.01254.4.vec.insert, %.loopexit ] ; 3 uses
  %.012981440 = phi ptr [ %i.ato, %.lr.ph1441 ], [ %.21299, %.loopexit ] ; 2 uses
  %i.atz = shufflevector <2 x float> %.sroa.01256.01441, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.aua = load float, ptr %i.anb, align 4, !tbaa !193 ; 2 uses
  %i.aub = fadd float %i.aua, %i.atx
  %i.auc = extractelement <2 x float> %.sroa.01256.01441, i64 1 ; 3 uses
  %i.aud = fcmp ogt float %i.auc, %i.aub
  br i1 %i.aud, label %.loopexit1425, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.aue = load float, ptr %i.amz, align 4, !tbaa !387 ; 2 uses
  %i.auf = fcmp olt float %i.auc, %i.aue
  br i1 %i.auf, label %.preheader, label %.lr.ph.i1208

.preheader:                                       ; preds = %bb.kk, %bb.kl
  %.11298 = phi ptr [ %i.auh, %bb.kl ], [ %.012981440, %bb.kk ] ; 4 uses
  %i.aug = icmp ult ptr %.11298, %i.ath
  br i1 %i.aug, label %bb.kl, label %.loopexit

bb.kl:                                            ; preds = %.preheader
  %i.auh = getelementptr inbounds nuw i8, ptr %.11298, i64 2 ; 2 uses
  %i.aui = load i16, ptr %.11298, align 2, !tbaa !258
  %i.auj = icmp eq i16 %i.aui, 10
  br i1 %i.auj, label %.loopexit, label %.preheader, !llvm.loop !388

.lr.ph.i1208:                                     ; preds = %bb.kk
  %i.auk = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 6520
  %i.aum = load ptr, ptr %i.aul, align 8, !tbaa !331 ; 4 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.auk, i64 6528
  %i.auo = load float, ptr %i.aun, align 8, !tbaa !145 ; 2 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %i.aum, i64 20
  %i.auq = load float, ptr %i.aup, align 4, !tbaa !332
  %i.aur = fdiv float %i.auo, %i.auq
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aum, i64 8
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aum, i64 16
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.kn, %.lr.ph.i1208
  %.03121.us.i = phi ptr [ %i.auu, %bb.kn ], [ %.012981440, %.lr.ph.i1208 ] ; 2 uses
  %.03220.us.i = phi float [ %.133.us.i, %bb.kn ], [ 0.000000e+00, %.lr.ph.i1208 ] ; 4 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %.03121.us.i, i64 2 ; 3 uses
  %i.auv = load i16, ptr %.03121.us.i, align 2, !tbaa !258 ; 3 uses
  switch i16 %i.auv, label %bb.km [
    i16 10, label %..thread_crit_edge.split.us.i
    i16 13, label %bb.kn
  ], !llvm.loop !385

..thread_crit_edge.split.us.i:                    ; preds = %.lr.ph.split.us.i
  %i.auw = fcmp ole float %.03220.us.i, 0.000000e+00
  %i.aux = select i1 %i.auw, float 0.000000e+00, float %.03220.us.i
  %.sroa.0.0.vec.insert.us.i = insertelement <2 x float> poison, float %i.aux, i64 0
  %i.auy = fadd float %i.auo, 0.000000e+00
  %.sroa.0.4.vec.insert.us.i = insertelement <2 x float> %.sroa.0.0.vec.insert.us.i, float %i.auy, i64 1
  br label %_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.exit1209

bb.km:                                            ; preds = %.lr.ph.split.us.i
  %i.auz = zext i16 %i.auv to i32
  %i.ava = load i32, ptr %i.aum, align 8, !tbaa !386
  %i.avb = icmp sgt i32 %i.ava, %i.auz
  %i.avc = load ptr, ptr %i.aus, align 8
  %i.avd = zext i16 %i.auv to i64
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %i.avc, i64 %i.avd
  %.in.i.us.i = select i1 %i.avb, ptr %i.ave, ptr %i.aut
  %i.avf = load float, ptr %.in.i.us.i, align 4, !tbaa !130
  %i.avg = fmul float %i.aur, %i.avf
  %i.avh = fadd float %.03220.us.i, %i.avg
  br label %bb.kn

bb.kn:                                            ; preds = %bb.km, %.lr.ph.split.us.i
  %.133.us.i = phi float [ %i.avh, %bb.km ], [ %.03220.us.i, %.lr.ph.split.us.i ] ; 2 uses
  %i.avi = icmp ult ptr %i.auu, %i.ath
  br i1 %i.avi, label %.lr.ph.split.us.i, label %_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.exit1209

_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.exit1209: ; preds = %bb.kn, %..thread_crit_edge.split.us.i
  %.sroa.0.2.i1197 = phi <2 x float> [ %.sroa.0.4.vec.insert.us.i, %..thread_crit_edge.split.us.i ], [ zeroinitializer, %bb.kn ] ; 2 uses
  %.2.i1198 = phi float [ 0.000000e+00, %..thread_crit_edge.split.us.i ], [ %.133.us.i, %bb.kn ] ; 2 uses
  %.sroa.0.0.vec.extract4.i1201 = extractelement <2 x float> %.sroa.0.2.i1197, i64 0
  %i.avj = fcmp olt float %.sroa.0.0.vec.extract4.i1201, %.2.i1198
  %i.avk = extractelement <2 x float> %.sroa.0.2.i1197, i64 0
  %.sroa.0144.0.vec.extract = select i1 %i.avj, float %.2.i1198, float %i.avk ; 2 uses
  %i.avl = fcmp ugt float %.sroa.0144.0.vec.extract, 0.000000e+00
  br i1 %i.avl, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.exit1209
  %i.avm = load ptr, ptr %i.att, align 8, !tbaa !331 ; 3 uses
  %i.avn = load i32, ptr %i.avm, align 8, !tbaa !386
  %i.avo = icmp sgt i32 %i.avn, 32
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avm, i64 8
  %i.avq = load ptr, ptr %i.avp, align 8
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avq, i64 128
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avm, i64 16
  %.in.i = select i1 %i.avo, ptr %i.avr, ptr %i.avs
  %i.avt = load float, ptr %.in.i, align 4, !tbaa !130
  %i.avu = fmul float %i.avt, 5.000000e-01
  %i.avv = fptosi float %i.avu to i32
  %i.avw = sitofp i32 %i.avv to float
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ko, %_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.exit1209
  %.sroa.0144.0.vec.extract147.pre-phi = phi float [ %i.avw, %bb.ko ], [ %.sroa.0144.0.vec.extract, %_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.exit1209 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  %i.avx = fsub float %i.atk, %i.atx
  %i.avy = load float, ptr %15, align 16, !tbaa !389
  %i.avz = load float, ptr %i.ana, align 8, !tbaa !390
  %.sroa.01254.0.vec.extract1257 = extractelement <2 x float> %.sroa.01256.01441, i64 0
  %i.awa = insertelement <4 x float> %i.atw, float %.sroa.0144.0.vec.extract147.pre-phi, i64 1
  %i.awb = insertelement <4 x float> %i.awa, float %i.avx, i64 2
  %i.awc = fadd <4 x float> %i.atz, %i.awb        ; 3 uses
  %i.awd = fadd float %.sroa.01254.0.vec.extract1257, 0.000000e+00
  %i.awe = insertelement <4 x float> poison, float %i.aua, i64 0
  %i.awf = insertelement <4 x float> %i.awe, float %i.avz, i64 1
  %i.awg = insertelement <4 x float> %i.awf, float %i.aue, i64 2
  %i.awh = insertelement <4 x float> %i.awg, float %i.avy, i64 3 ; 4 uses
  %i.awi = fcmp oge <4 x float> %i.awc, %i.awh
  %i.awj = fcmp olt <4 x float> %i.awc, %i.awh
  %i.awk = shufflevector <4 x i1> %i.awj, <4 x i1> %i.awi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.awl = insertelement <4 x float> %i.awc, float %i.awd, i64 3
  %i.awm = select <4 x i1> %i.awk, <4 x float> %i.awl, <4 x float> %i.awh ; 4 uses
  %i.awn = shufflevector <4 x float> %i.awm, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  store <2 x float> %i.awn, ptr %17, align 8
  %i.awo = shufflevector <4 x float> %i.awm, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.awo, ptr %i.atu, align 8
  %i.awp = shufflevector <4 x float> %i.awh, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.awq = fcmp ogt <4 x float> %i.awp, %i.awm
  %i.awr = fcmp olt <4 x float> %i.awp, %i.awm
  %i.aws = shufflevector <4 x i1> %i.awr, <4 x i1> %i.awq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.awt = freeze <4 x i1> %i.aws
  %i.awu = bitcast <4 x i1> %i.awt to i4
  %i.awv = icmp eq i4 %i.awu, -1
  br i1 %i.awv, label %bb.kq, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.kq:                                            ; preds = %bb.kp
  %i.aww = load ptr, ptr %i.atv, align 8, !tbaa !147
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.aww, ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(8) %i.atu, i32 noundef %i.atj, float noundef 0.000000e+00, i32 noundef 0)
  %.pre1475.pre = load float, ptr %16, align 8, !tbaa !135
  %.pre1476.pre = load float, ptr %i.apw, align 8, !tbaa !145
  br label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit.thread:            ; preds = %bb.kp, %bb.kq
  %.pre1476.a = phi float [ %.pre14761480, %bb.kp ], [ %.pre1476.pre, %bb.kq ] ; 2 uses
  %.pre1475 = phi float [ %.pre14751477, %bb.kp ], [ %.pre1475.pre, %bb.kq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.kl, %_ZNK6ImRect8OverlapsERKS_.exit.thread
  %.pre14761481 = phi float [ %.pre1476.a, %_ZNK6ImRect8OverlapsERKS_.exit.thread ], [ %.pre14761480, %bb.kl ], [ %.pre14761480, %.preheader ]
  %.pre14751478 = phi float [ %.pre1475, %_ZNK6ImRect8OverlapsERKS_.exit.thread ], [ %.pre14751477, %bb.kl ], [ %.pre14751477, %.preheader ]
  %i.awx = phi float [ %.pre1476.a, %_ZNK6ImRect8OverlapsERKS_.exit.thread ], [ %i.atx, %bb.kl ], [ %i.atx, %.preheader ] ; 2 uses
  %i.awy = phi float [ %.pre1475, %_ZNK6ImRect8OverlapsERKS_.exit.thread ], [ %i.aty, %bb.kl ], [ %i.aty, %.preheader ] ; 2 uses
  %.21299 = phi ptr [ %i.auu, %_ZNK6ImRect8OverlapsERKS_.exit.thread ], [ %.11298, %.preheader ], [ %i.auh, %bb.kl ] ; 2 uses
  %i.awz = fsub float %i.awy, %i.asz
  %.sroa.01254.0.vec.insert = insertelement <2 x float> poison, float %i.awz, i64 0
  %i.axa = fadd float %i.auc, %i.awx
  %.sroa.01254.4.vec.insert = insertelement <2 x float> %.sroa.01254.0.vec.insert, float %i.axa, i64 1
  %i.axb = icmp ult ptr %.21299, %i.ath
  br i1 %i.axb, label %bb.kj, label %.loopexit1425, !llvm.loop !391

.loopexit1425:                                    ; preds = %bb.kj, %.loopexit, %bb.ki, %bb.kh
  br i1 %i.o, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %.loopexit1425
  %i.axc = ptrtoint ptr %.1 to i64
  %i.axd = ptrtoint ptr %.092313691376 to i64
  %i.axe = sub i64 %i.axc, %i.axd
  %i.axf = icmp slt i64 %i.axe, 2097152
  br i1 %i.axf, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr, %.loopexit1425
  %. = phi ptr [ %15, %bb.kr ], [ null, %.loopexit1425 ]
  %i.axg = zext i1 %i.ky to i32
  %i.axh = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.axg, float noundef 1.000000e+00)
  %i.axi = getelementptr inbounds nuw i8, ptr %.2962, i64 616
  %i.axj = load ptr, ptr %i.axi, align 8, !tbaa !147
  %i.axk = getelementptr inbounds nuw i8, ptr %i.g, i64 6520
  %i.axl = load ptr, ptr %i.axk, align 8, !tbaa !331
  %i.axm = load float, ptr %i.apw, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36
  %.val1099 = load float, ptr %16, align 8, !tbaa !135
  %i.axn = getelementptr inbounds nuw i8, ptr %16, i64 4
  %.val1100 = load float, ptr %i.axn, align 4, !tbaa !140
  %i.axo = fsub float %.val1099, %i.asz
  %.sroa.0.0.vec.insert.i1214 = insertelement <2 x float> poison, float %i.axo, i64 0
  %.sroa.0.4.vec.insert.i1215 = insertelement <2 x float> %.sroa.0.0.vec.insert.i1214, float %.val1100, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i1215, ptr %18, align 8
  call void @_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(196) %i.axj, ptr noundef %i.axl, float noundef %i.axm, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef %i.axh, ptr noundef %.092313691376, ptr noundef %.1, float noundef 0.000000e+00, ptr noundef %.)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr
  br i1 %i.iw, label %bb.ku, label %bb.li

bb.ku:                                            ; preds = %bb.kt
  %i.axp = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.axq = load float, ptr %i.axp, align 8, !tbaa !392
  %i.axr = getelementptr inbounds nuw i8, ptr %.095715591680, i64 3704 ; 2 uses
  %i.axs = load float, ptr %i.axr, align 8, !tbaa !295
  %i.axt = fadd float %i.axq, %i.axs              ; 3 uses
  store float %i.axt, ptr %i.axr, align 8, !tbaa !295
  %i.axu = getelementptr inbounds nuw i8, ptr %i.g, i64 202
  %i.axv = load i8, ptr %i.axu, align 2, !tbaa !393, !range !124, !noundef !125
  %i.axw = trunc nuw i8 %i.axv to i1
  %i.axx = fcmp ugt float %i.axt, 0.000000e+00
  %or.cond1062 = select i1 %i.axw, i1 %i.axx, i1 false
  br i1 %or.cond1062, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  %i.axy = call float @fmodf(float noundef %i.axt, float noundef 1.200000e+00) #36
  %i.axz = fcmp ole float %i.axy, 8.000000e-01
  br label %bb.kw

bb.kw:                                            ; preds = %bb.kv, %bb.ku
  %i.aya = phi i1 [ %i.axz, %bb.kv ], [ true, %bb.ku ]
  %.val = load float, ptr %16, align 8, !tbaa !135
  %i.ayb = getelementptr inbounds nuw i8, ptr %16, i64 4
  %.val1068 = load float, ptr %i.ayb, align 4, !tbaa !140
  %i.ayc = fadd float %.sroa.0160.0.vec.extract, %.val
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #36
  %i.ayd = load float, ptr %i.apw, align 8, !tbaa !145
  %i.aye = insertelement <2 x float> poison, float %i.ayc, i64 0
  %i.ayf = insertelement <2 x float> %i.aye, float %i.apy, i64 1 ; 2 uses
  %i.ayg = insertelement <2 x float> poison, float %i.asz, i64 0
  %i.ayh = insertelement <2 x float> %i.ayg, float %.val1068, i64 1 ; 2 uses
  %i.ayi = fsub <2 x float> %i.ayf, %i.ayh
  %i.ayj = fadd <2 x float> %i.ayf, %i.ayh
  %i.ayk = shufflevector <2 x float> %i.ayi, <2 x float> %i.ayj, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.ayl = fptosi <4 x float> %i.ayk to <4 x i32>
  %i.aym = sitofp <4 x i32> %i.ayl to <4 x float> ; 4 uses
  %i.ayn = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.ayd, i64 1
  %i.ayo = fsub <4 x float> %i.aym, %i.ayn
  %i.ayp = fadd <4 x float> %i.ayo, <float -0.000000e+00, float 5.000000e-01, float 1.000000e+00, float -1.500000e+00> ; 2 uses
  store <4 x float> %i.ayp, ptr %19, align 16, !tbaa !130
  br i1 %i.aya, label %bb.kx, label %.critedge

bb.kx:                                            ; preds = %bb.kw
  %i.ayq = load <4 x float>, ptr %15, align 16, !tbaa !130 ; 2 uses
  %i.ayr = shufflevector <4 x float> %i.ayp, <4 x float> %i.aym, <4 x i32> <i32 2, i32 3, i32 4, i32 1> ; 2 uses
  %i.ays = fcmp ogt <4 x float> %i.ayq, %i.ayr
  %i.ayt = fcmp olt <4 x float> %i.ayq, %i.ayr
  %i.ayu = shufflevector <4 x i1> %i.ayt, <4 x i1> %i.ays, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ayv = freeze <4 x i1> %i.ayu
  %i.ayw = bitcast <4 x i1> %i.ayv to i4
  %i.ayx = icmp eq i4 %i.ayw, -1
  br i1 %i.ayx, label %bb.ky, label %.critedge

bb.ky:                                            ; preds = %bb.kx
  %i.ayy = getelementptr inbounds nuw i8, ptr %.2962, i64 616
  %i.ayz = load ptr, ptr %i.ayy, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #36
  %i.aza = load <4 x float>, ptr %19, align 16
  %.sroa.0.4.vec.insert.i1224 = shufflevector <4 x float> %i.aza, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i1224, ptr %20, align 8
  %i.azb = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.ayz, ptr noundef nonnull align 4 dereferenceable(8) %19, ptr noundef nonnull align 4 dereferenceable(8) %20, i32 noundef %i.azb, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  br label %.critedge

.critedge:                                        ; preds = %bb.kx, %bb.kw, %bb.ky
  br i1 %i.q, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %.critedge
  %i.azc = extractelement <4 x float> %i.aym, i64 0
  %i.azd = fadd float %i.azc, -1.000000e+00
  %i.aze = load float, ptr %i.apw, align 8, !tbaa !145
  %i.azf = extractelement <4 x float> %i.aym, i64 1
  %i.azg = fsub float %i.azf, %i.aze
  %i.azh = getelementptr inbounds nuw i8, ptr %i.g, i64 12416
  store float %i.azd, ptr %i.azh, align 8
  %.sroa_idx1235 = getelementptr inbounds nuw i8, ptr %i.g, i64 12420
  store float %i.azg, ptr %.sroa_idx1235, align 4
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  br label %bb.li

bb.lb:                                            ; preds = %bb.iw
  br i1 %i.o, label %bb.lc, label %.critedge1064.thread

.thread1377:                                      ; preds = %.thread1363
  br i1 %i.o, label %bb.lc, label %.thread1384

bb.lc:                                            ; preds = %.thread1377, %bb.lb
  %.092313711382 = phi ptr [ %i.anl, %.thread1377 ], [ %1, %bb.lb ] ; 3 uses
  br label %.outer

.outer:                                           ; preds = %bb.le, %bb.lc
  %.013.i.ph = phi i32 [ %i.azk, %bb.le ], [ 0, %bb.lc ] ; 2 uses
  %.012.i.ph = phi ptr [ %i.azi, %bb.le ], [ %.092313711382, %bb.lc ]
  br label %bb.ld

bb.ld:                                            ; preds = %.outer, %bb.ld
  %.012.i = phi ptr [ %i.azi, %bb.ld ], [ %.012.i.ph, %.outer ] ; 4 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 2 uses
  %i.azj = load i8, ptr %.012.i, align 1, !tbaa !141
  switch i8 %i.azj, label %bb.ld [
    i8 0, label %.critedge1064
    i8 10, label %bb.le
  ]

bb.le:                                            ; preds = %bb.ld
  %i.azk = add nuw nsw i32 %.013.i.ph, 1
  br label %.outer

.thread1384:                                      ; preds = %.thread1377
  %i.azl = load i32, ptr %i.cm, align 4, !tbaa !161
end_hunk_0
