Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui?download=true
inline.NumInlined: 2414
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.bkt = freeze <4 x i1> %i.bks
  %i.bku = bitcast <4 x i1> %i.bkt to i4
  %i.bkv = icmp eq i4 %i.bku, -1
  br i1 %i.bkv, label %bb.ke, label %_ZNK6ImRect8ContainsERKS_.exit.thread

_ZNK6ImRect8ContainsERKS_.exit.thread:            ; preds = %bb.kd
  %i.bkw = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.bkx = load ptr, ptr %i.vk, align 8, !tbaa !292
  %i.bky = getelementptr inbounds nuw i8, ptr %i.g, i64 8012
  %i.bkz = load float, ptr %i.bky, align 4, !tbaa !559
  %i.bla = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bla, i64 5472
  %i.blc = getelementptr inbounds nuw i8, ptr %i.bla, i64 6472
  %i.bld = load float, ptr %i.blb, align 4, !tbaa !278
  %i.ble = fmul float %i.bkz, 2.500000e-01
  %i.blf = load <4 x float>, ptr %i.blc, align 4, !tbaa !75
  %i.blg = fmul float %i.ble, %i.bld
  %i.blh = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.blg, i64 3
  %i.bli = fmul <4 x float> %i.blf, %i.blh        ; 3 uses
  %i.blj = fcmp olt <4 x float> %i.bli, zeroinitializer
  %i.blk = fcmp ogt <4 x float> %i.bli, splat (float 1.000000e+00)
  %i.bll = select <4 x i1> %i.blk, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bli
  %i.blm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bll, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bln = select <4 x i1> %i.blj, <4 x float> splat (float 5.000000e-01), <4 x float> %i.blm
  %i.blo = fptosi <4 x float> %i.bln to <4 x i32>
  %i.blp = shl <4 x i32> %i.blo, <i32 0, i32 8, i32 16, i32 24>
  %i.blq = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.blp)
  %i.blr = getelementptr inbounds nuw i8, ptr %i.g, i64 5488
  %i.bls = load float, ptr %i.blr, align 8, !tbaa !648
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.bkx, ptr noundef nonnull align 4 dereferenceable(8) %26, ptr noundef nonnull align 4 dereferenceable(8) %i.bkw, i32 noundef %i.blq, float noundef %i.bls, i32 noundef 0)
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %_ZNK6ImRect8ContainsERKS_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #39
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kc, %bb.kb
  br i1 %or.cond401, label %.thread1083, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.blt = getelementptr inbounds nuw i8, ptr %i.jj, i64 352
  %i.blu = load i32, ptr %i.blt, align 8, !tbaa !640 ; 2 uses
  %i.blv = icmp sgt i32 %i.blu, 1
  br i1 %i.blv, label %bb.kh, label %.thread1081

bb.kh:                                            ; preds = %bb.kg
  %i.blw = getelementptr inbounds nuw i8, ptr %i.jj, i64 360
  %i.blx = load ptr, ptr %i.blw, align 8, !tbaa !340
  %i.bly = zext nneg i32 %i.blu to i64
  %i.blz = getelementptr [8 x i8], ptr %i.blx, i64 %i.bly
  %i.bma = getelementptr i8, ptr %i.blz, i64 -16
  %i.bmb = load ptr, ptr %i.bma, align 8, !tbaa !476 ; 5 uses
  %.not373 = icmp eq ptr %i.bmb, null
  br i1 %.not373, label %.thread1081, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bmb, i64 16
  %i.bmd = load float, ptr %i.bmc, align 8, !tbaa !411 ; 2 uses
  %i.bme = getelementptr inbounds nuw i8, ptr %i.bmb, i64 20
  %i.bmf = load float, ptr %i.bme, align 4, !tbaa !505 ; 2 uses
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.bmb, i64 24
  %i.bmh = load float, ptr %i.bmg, align 8, !tbaa !612
  %i.bmi = fadd float %i.bmd, %i.bmh
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmb, i64 28
  %i.bmk = load float, ptr %i.bmj, align 4, !tbaa !613
  %i.bml = fadd float %i.bmf, %i.bmk
  %i.bmm = load float, ptr %i.akt, align 8, !tbaa !411 ; 2 uses
  %i.bmn = load float, ptr %i.aku, align 4, !tbaa !505 ; 2 uses
  %i.bmo = load float, ptr %i.aes, align 8, !tbaa !612
  %i.bmp = fadd float %i.bmm, %i.bmo
  %i.bmq = load float, ptr %i.bdu, align 4, !tbaa !613
  %i.bmr = fadd float %i.bmn, %i.bmq
  %i.bms = fcmp olt float %i.bmn, %i.bml
  %i.bmt = fcmp ogt float %i.bmr, %i.bmf
  %or.cond1103 = select i1 %i.bms, i1 %i.bmt, i1 false
  %i.bmu = fcmp olt float %i.bmm, %i.bmi
  %or.cond1104 = select i1 %or.cond1103, i1 %i.bmu, i1 false
  %i.bmv = fcmp ogt float %i.bmp, %i.bmd
  %spec.select1115 = select i1 %or.cond1104, i1 %i.bmv, i1 false
  br label %.thread1081

.thread1081:                                      ; preds = %bb.ki, %bb.kg, %bb.kh
  %i.bmw = phi i1 [ false, %bb.kg ], [ false, %bb.kh ], [ %spec.select1115, %bb.ki ]
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.jj, i64 616
  %i.bmy = load ptr, ptr %i.bmx, align 8, !tbaa !292 ; 2 uses
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmy, i64 32
  %i.bna = load i32, ptr %i.bmz, align 8, !tbaa !649
  %i.bnb = icmp slt i32 %i.bna, 1
  %i.bnc = load ptr, ptr %i.vk, align 8, !tbaa !292 ; 2 uses
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bnc, i64 8
  %i.bne = load ptr, ptr %i.bnd, align 8, !tbaa !337
  %i.bnf = load i32, ptr %i.bnc, align 8, !tbaa !1015
  %i.bng = sext i32 %i.bnf to i64
  %i.bnh = getelementptr [56 x i8], ptr %i.bne, i64 %i.bng
  %i.bni = getelementptr i8, ptr %i.bnh, i64 -24
  %i.bnj = load i32, ptr %i.bni, align 8, !tbaa !651
  %i.bnk = icmp ne i32 %i.bnj, 0
  %or.cond25.not376 = select i1 %i.bnk, i1 true, i1 %i.bnb
  %or.cond27 = or i1 %i.bmw, %or.cond25.not376
  br i1 %or.cond27, label %.thread1083, label %bb.kj

bb.kj:                                            ; preds = %.thread1081
  store ptr %i.bmy, ptr %i.vk, align 8, !tbaa !292
  br label %.thread1083

.thread1083:                                      ; preds = %bb.kf, %bb.kj, %.thread1081
  %.13061085 = phi i1 [ false, %.thread1081 ], [ true, %bb.kj ], [ false, %bb.kf ]
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.g, i64 7984
  %i.bnm = load ptr, ptr %i.bnl, align 8, !tbaa !557 ; 2 uses
  %.not377 = icmp eq ptr %i.bnm, null
  br i1 %.not377, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %.thread1083
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.g, i64 7688
  %i.bno = load ptr, ptr %i.bnn, align 8, !tbaa !389
  br label %bb.kl

bb.kl:                                            ; preds = %.thread1083, %bb.kk
  %i.bnp = phi ptr [ %i.bno, %bb.kk ], [ %i.bnm, %.thread1083 ] ; 2 uses
  br i1 %spec.select1094, label %bb.ko, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %.not378 = icmp eq ptr %i.bnp, null
  br i1 %.not378, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bnq = getelementptr inbounds nuw i8, ptr %.01057, i64 848
  %i.bnr = load ptr, ptr %i.bnq, align 8, !tbaa !630
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bnp, i64 848
  %i.bnt = load ptr, ptr %i.bns, align 8, !tbaa !630
  %i.bnu = icmp eq ptr %i.bnr, %i.bnt
  br label %bb.ko

bb.ko:                                            ; preds = %bb.km, %bb.kn, %bb.kl
  %i.bnv = phi i1 [ true, %bb.kl ], [ false, %bb.km ], [ %i.bnu, %bb.kn ] ; 2 uses
  %i.bnw = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 11 uses
  %i.bnx = load i32, ptr %i.aet, align 4, !tbaa !392 ; 7 uses
  %i.bny = getelementptr inbounds nuw i8, ptr %.01057, i64 147
  store i8 0, ptr %i.bny, align 1, !tbaa !652
  %i.bnz = load float, ptr %i.alb, align 8, !tbaa !1009 ; 6 uses
  %i.boa = load float, ptr %i.bfl, align 4, !tbaa !1000 ; 6 uses
  %i.bob = load i8, ptr %i.adr, align 1, !tbaa !595, !range !216, !noundef !217
  %i.boc = trunc nuw i8 %i.bob to i1
  br i1 %i.boc, label %bb.kp, label %bb.ks

bb.kp:                                            ; preds = %bb.ko
  %i.bod = getelementptr inbounds nuw i8, ptr %i.bnw, i64 5544 ; 3 uses
  %i.boe = load float, ptr %i.bod, align 4, !tbaa !653
  store float %i.boa, ptr %i.bod, align 8, !tbaa !309
  br i1 %i.bnv, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bnw, i64 7762
  %i.bog = load i8, ptr %i.bof, align 2, !tbaa !311, !range !216, !noundef !217
  %i.boh = trunc nuw i8 %i.bog to i1
  %i.boi = select i1 %i.boh, i64 12, i64 11
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.kp
  %i.boj = phi i64 [ 12, %bb.kp ], [ %i.boi, %bb.kq ]
  %i.bok = getelementptr inbounds nuw i8, ptr %i.bnw, i64 5472
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bnw, i64 5672
  %i.bom = getelementptr inbounds nuw [16 x i8], ptr %i.bol, i64 %i.boj
  %i.bon = load float, ptr %i.bok, align 8, !tbaa !278
  %i.boo = load <4 x float>, ptr %i.bom, align 4, !tbaa !75
  %i.bop = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bon, i64 3
  %i.boq = fmul <4 x float> %i.boo, %i.bop        ; 3 uses
  %i.bor = fcmp olt <4 x float> %i.boq, zeroinitializer
  %i.bos = fcmp ogt <4 x float> %i.boq, splat (float 1.000000e+00)
  %i.bot = select <4 x i1> %i.bos, <4 x float> splat (float 1.000000e+00), <4 x float> %i.boq
  %i.bou = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bot, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bov = select <4 x i1> %i.bor, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bou
  %i.bow = fptosi <4 x float> %i.bov to <4 x i32>
  %i.box = shl <4 x i32> %i.bow, <i32 0, i32 8, i32 16, i32 24>
  %i.boy = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.box)
  %.sroa.017.0.copyload.i = load <2 x float>, ptr %25, align 8, !tbaa !75
  %.sroa.0.0.copyload.i679 = load <2 x float>, ptr %i.ber, align 8, !tbaa !75
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.017.0.copyload.i, <2 x float> %.sroa.0.0.copyload.i679, i32 noundef %i.boy, i1 noundef zeroext true, float noundef %i.bnz)
  store float %i.boe, ptr %i.bod, align 8, !tbaa !309
  br label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbiPKjf.exit

bb.ks:                                            ; preds = %bb.ko
  %i.boz = and i32 %i.bnx, 128
  %.not.i654 = icmp eq i32 %i.boz, 0
  br i1 %.not.i654, label %bb.kt, label %._crit_edge.i655

._crit_edge.i655:                                 ; preds = %bb.ks
  %.pre.i656 = and i32 %i.bnx, 1
  br label %bb.kx

bb.kt:                                            ; preds = %bb.ks
  %i.bpa = and i32 %i.bnx, 100663296
  %.not.i.i663 = icmp eq i32 %i.bpa, 0
  %i.bpb = and i32 %i.bnx, 16777216
  %.not3.i.i = icmp eq i32 %i.bpb, 0
  %..i.i664 = select i1 %.not3.i.i, i64 2, i64 3
  %.0.i.i665 = select i1 %.not.i.i663, i64 %..i.i664, i64 4
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bnw, i64 5472
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bnw, i64 5672
  %i.bpe = getelementptr inbounds nuw [16 x i8], ptr %i.bpd, i64 %.0.i.i665 ; 3 uses
  %.sroa.0.0.copyload.i141.i = load float, ptr %i.bpe, align 4, !tbaa !75 ; 3 uses
  %.sroa.4.0..sroa_idx.i142.i = getelementptr inbounds nuw i8, ptr %i.bpe, i64 4
  %.sroa.6.0..sroa_idx.i146.i = getelementptr inbounds nuw i8, ptr %i.bpe, i64 12
  %.sroa.6.0.copyload.i147.i = load float, ptr %.sroa.6.0..sroa_idx.i146.i, align 4, !tbaa !75
  %i.bpf = load float, ptr %i.bpc, align 4, !tbaa !278
  %i.bpg = fmul float %.sroa.6.0.copyload.i147.i, %i.bpf ; 3 uses
  %28 = fcmp olt float %.sroa.0.0.copyload.i141.i, 0.000000e+00
  %29 = fcmp ogt float %.sroa.0.0.copyload.i141.i, 1.000000e+00
  %30 = select i1 %29, float 1.000000e+00, float %.sroa.0.0.copyload.i141.i
  %31 = call float @llvm.fmuladd.f32(float %30, float 2.550000e+02, float 5.000000e-01)
  %32 = select i1 %28, float 5.000000e-01, float %31
  %33 = fptosi float %32 to i32
  %34 = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i142.i, align 4, !tbaa !75 ; 3 uses
  %35 = fcmp olt <2 x float> %34, zeroinitializer
  %36 = fcmp ogt <2 x float> %34, splat (float 1.000000e+00)
  %37 = select <2 x i1> %36, <2 x float> splat (float 1.000000e+00), <2 x float> %34
  %38 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %37, <2 x float> splat (float 2.550000e+02), <2 x float> splat (float 5.000000e-01))
  %39 = select <2 x i1> %35, <2 x float> splat (float 5.000000e-01), <2 x float> %38
  %40 = fptosi <2 x float> %39 to <2 x i32>
  %41 = shl <2 x i32> %40, <i32 8, i32 16>        ; 2 uses
  %42 = extractelement <2 x i32> %41, i64 0
  %43 = or i32 %42, %33
  %44 = extractelement <2 x i32> %41, i64 1
  %45 = or i32 %43, %44                           ; 2 uses
  %46 = fcmp olt float %i.bpg, 0.000000e+00
  %47 = fcmp ogt float %i.bpg, 1.000000e+00
  %48 = select i1 %47, float 1.000000e+00, float %i.bpg
  %49 = call float @llvm.fmuladd.f32(float %48, float 2.550000e+02, float 5.000000e-01)
  %50 = select i1 %46, float 5.000000e-01, float %49
  %i.bph = fptosi float %50 to i32
  %i.bpi = shl i32 %i.bph, 24
  %i.bpj = or i32 %i.bpi, %45
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.bnw, i64 7432
  %i.bpl = load i32, ptr %i.bpk, align 8, !tbaa !599
  %i.bpm = and i32 %i.bpl, 64
  %.not94.not.i = icmp eq i32 %i.bpm, 0
  br i1 %.not94.not.i, label %.critedge.i666, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bnw, i64 7528
  %i.bpo = load float, ptr %i.bpn, align 8, !tbaa !600 ; 3 uses
  %i.bpp = and i32 %45, 16777215
  %i.bpq = fcmp olt float %i.bpo, 0.000000e+00
  %i.bpr = fcmp ogt float %i.bpo, 1.000000e+00
  %i.bps = select i1 %i.bpr, float 1.000000e+00, float %i.bpo
  %i.bpt = call float @llvm.fmuladd.f32(float %i.bps, float 2.550000e+02, float 5.000000e-01)
  %i.bpu = select i1 %i.bpq, float 5.000000e-01, float %i.bpt
  %i.bpv = fptosi float %i.bpu to i32
  %i.bpw = shl i32 %i.bpv, 24
  %i.bpx = or disjoint i32 %i.bpw, %i.bpp
  br label %.critedge.i666

.critedge.i666:                                   ; preds = %bb.ku, %bb.kt
  %.093.i = phi i32 [ %i.bpx, %bb.ku ], [ %i.bpj, %bb.kt ]
  %i.bpy = load ptr, ptr %i.vk, align 8, !tbaa !292
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  %i.bpz = and i32 %i.bnx, 1                      ; 2 uses
  %.not.i148.i = icmp eq i32 %i.bpz, 0
  br i1 %.not.i148.i, label %bb.kv, label %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i

bb.kv:                                            ; preds = %.critedge.i666
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bnw, i64 6532
  %i.bqb = load float, ptr %i.bqa, align 4, !tbaa !517
  %i.bqc = load float, ptr %i.xz, align 8, !tbaa !330
  %i.bqd = fmul float %i.bqb, %i.bqc              ; 2 uses
  %i.bqe = load ptr, ptr %i.yc, align 8, !tbaa !518 ; 2 uses
  %.not.i.i.i669 = icmp eq ptr %i.bqe, null
  br i1 %.not.i.i.i669, label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i670, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqe, i64 608
  %i.bqg = load float, ptr %i.bqf, align 8, !tbaa !330
  %i.bqh = fmul float %i.bqd, %i.bqg
  br label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i670

_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i670:    ; preds = %bb.kw, %bb.kv
  %.0.i.i.i671 = phi float [ %i.bqh, %bb.kw ], [ %i.bqd, %bb.kv ]
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bnw, i64 5536
  %i.bqj = load float, ptr %i.bqi, align 8, !tbaa !298
  %i.bqk = call float @llvm.fmuladd.f32(float %i.bqj, float 2.000000e+00, float %.0.i.i.i671)
  br label %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i

_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i:       ; preds = %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i670, %.critedge.i666
  %i.bql = phi i32 [ 192, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i670 ], [ 0, %.critedge.i666 ]
  %i.bqm = phi float [ %i.bqk, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i670 ], [ 0.000000e+00, %.critedge.i666 ]
  %i.bqn = load <2 x float>, ptr %i.akt, align 8, !tbaa !75 ; 2 uses
  %i.bqo = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bqm, i64 1
  %i.bqp = fadd <2 x float> %i.bqo, %i.bqn
  store <2 x float> %i.bqp, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  %i.bqq = load <2 x float>, ptr %i.aes, align 8, !tbaa !75
  %i.bqr = fadd <2 x float> %i.bqn, %i.bqq
  store <2 x float> %i.bqr, ptr %14, align 8
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.bpy, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef %.093.i, float noundef %i.bnz, i32 noundef %i.bql)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  br label %bb.kx

bb.kx:                                            ; preds = %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i, %._crit_edge.i655
  %.pre-phi.i = phi i32 [ %.pre.i656, %._crit_edge.i655 ], [ %i.bpz, %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i ]
  %.not96.i = icmp eq i32 %.pre-phi.i, 0          ; 2 uses
  br i1 %.not96.i, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %bb.kx
  %i.bqs = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqs, i64 5472
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqs, i64 5672
  %i.bqv = select i1 %i.bnv, i64 11, i64 10
  %i.bqw = getelementptr inbounds nuw [16 x i8], ptr %i.bqu, i64 %i.bqv
  %i.bqx = load float, ptr %i.bqt, align 4, !tbaa !278
  %i.bqy = load <4 x float>, ptr %i.bqw, align 4, !tbaa !75
  %i.bqz = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bqx, i64 3
  %i.bra = fmul <4 x float> %i.bqy, %i.bqz        ; 3 uses
  %i.brb = fcmp olt <4 x float> %i.bra, zeroinitializer
  %i.brc = fcmp ogt <4 x float> %i.bra, splat (float 1.000000e+00)
  %i.brd = select <4 x i1> %i.brc, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bra
  %i.bre = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.brd, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.brf = select <4 x i1> %i.brb, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bre
  %i.brg = fptosi <4 x float> %i.brf to <4 x i32>
  %i.brh = shl <4 x i32> %i.brg, <i32 0, i32 8, i32 16, i32 24>
  %i.bri = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.brh)
  %i.brj = load ptr, ptr %i.vk, align 8, !tbaa !292
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.brj, ptr noundef nonnull align 4 dereferenceable(16) %25, ptr noundef nonnull align 4 dereferenceable(8) %i.ber, i32 noundef %i.bri, float noundef %i.bnz, i32 noundef 48)
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.kx
  %i.brk = and i32 %i.bnx, 1024
  %.not97.i = icmp eq i32 %i.brk, 0
  br i1 %.not97.i, label %bb.lh, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.brl = load float, ptr %i.aku, align 4, !tbaa !505 ; 4 uses
  %i.brm = load i32, ptr %i.aet, align 4, !tbaa !392 ; 2 uses
  %i.brn = and i32 %i.brm, 1
  %.not.i.i158.i = icmp eq i32 %i.brn, 0
  %.pre.pre.i = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 6 uses
  br i1 %.not.i.i158.i, label %bb.lb, label %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i.i

bb.lb:                                            ; preds = %bb.la
  %i.bro = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 6532
  %i.brp = load float, ptr %i.bro, align 4, !tbaa !517
  %i.brq = load float, ptr %i.xz, align 8, !tbaa !330
  %i.brr = fmul float %i.brp, %i.brq              ; 2 uses
  %i.brs = load ptr, ptr %i.yc, align 8, !tbaa !518 ; 2 uses
  %.not.i.i.i.i662 = icmp eq ptr %i.brs, null
  br i1 %.not.i.i.i.i662, label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i.i, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.brt = getelementptr inbounds nuw i8, ptr %i.brs, i64 608
  %i.bru = load float, ptr %i.brt, align 8, !tbaa !330
  %i.brv = fmul float %i.brr, %i.bru
  br label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i.i

_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i.i:     ; preds = %bb.lc, %bb.lb
  %.0.i.i.i.i = phi float [ %i.brv, %bb.lc ], [ %i.brr, %bb.lb ]
  %i.brw = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 5536
  %i.brx = load float, ptr %i.brw, align 4, !tbaa !298
  %i.bry = call float @llvm.fmuladd.f32(float %i.brx, float 2.000000e+00, float %.0.i.i.i.i)
  br label %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i.i

_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i.i:     ; preds = %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i.i, %bb.la
  %i.brz = phi float [ %i.bry, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i.i ], [ 0.000000e+00, %bb.la ]
  %i.bsa = load float, ptr %i.akt, align 8, !tbaa !411 ; 4 uses
  %i.bsb = load float, ptr %i.adp, align 8, !tbaa !632
  %i.bsc = and i32 %i.brm, 1024
  %.not.i3.i.i = icmp eq i32 %i.bsc, 0
  br i1 %.not.i3.i.i, label %_ZNK11ImGuiWindow11MenuBarRectEv.exit.i, label %bb.ld

bb.ld:                                            ; preds = %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i.i
  %i.bsd = load float, ptr %i.zs, align 8, !tbaa !639
  %i.bse = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 6532
  %i.bsf = load float, ptr %i.bse, align 4, !tbaa !517
  %i.bsg = load float, ptr %i.xz, align 8, !tbaa !330
  %i.bsh = fmul float %i.bsf, %i.bsg              ; 2 uses
  %i.bsi = load ptr, ptr %i.yc, align 8, !tbaa !518 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.bsi, null
  br i1 %.not.i.i4.i.i, label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i5.i.i, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.bsi, i64 608
  %i.bsk = load float, ptr %i.bsj, align 8, !tbaa !330
  %i.bsl = fmul float %i.bsh, %i.bsk
  br label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i5.i.i

_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i5.i.i:    ; preds = %bb.le, %bb.ld
  %.0.i.i6.i.i = phi float [ %i.bsl, %bb.le ], [ %i.bsh, %bb.ld ]
  %i.bsm = fadd float %i.bsd, %.0.i.i6.i.i
  %i.bsn = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 5536
  %i.bso = load float, ptr %i.bsn, align 4, !tbaa !298
  %i.bsp = call float @llvm.fmuladd.f32(float %i.bso, float 2.000000e+00, float %i.bsm)
  br label %_ZNK11ImGuiWindow11MenuBarRectEv.exit.i

_ZNK11ImGuiWindow11MenuBarRectEv.exit.i:          ; preds = %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i5.i.i, %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i.i
  %i.bsq = phi float [ %i.bsp, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i5.i.i ], [ 0.000000e+00, %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i.i ]
  %i.bsr = fadd float %i.bsa, %i.bsb              ; 2 uses
  %i.bss = fadd float %i.brl, %i.brz              ; 3 uses
  %i.bst = fadd float %i.bss, %i.bsq              ; 2 uses
  %.sroa.0.0.vec.insert.i178.i = insertelement <2 x float> poison, float %i.bsa, i64 0
  %i.bsu = load float, ptr %i.aes, align 8, !tbaa !612
  %i.bsv = fadd float %i.bsa, %i.bsu              ; 2 uses
  %i.bsw = load float, ptr %i.bdu, align 4, !tbaa !613
  %i.bsx = fadd float %i.brl, %i.bsw              ; 2 uses
  %.inv6.i.i.i = fcmp oge float %i.bss, %i.brl
  %i.bsy = select i1 %.inv6.i.i.i, float %i.bss, float %i.brl
  %i.bsz = fcmp olt float %i.bsr, %i.bsv
  %..i11.i.i = select i1 %i.bsz, float %i.bsr, float %i.bsv ; 2 uses
  %i.bta = fcmp olt float %i.bst, %i.bsx
  %i.btb = select i1 %i.bta, float %i.bst, float %i.bsx ; 4 uses
  %.sroa.0.0.vec.insert.i12.i.i = insertelement <2 x float> poison, float %..i11.i.i, i64 0
  %.sroa.0.4.vec.insert.i13.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i12.i.i, float %i.btb, i64 1
  %i.btc = load ptr, ptr %i.vk, align 8, !tbaa !292
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  %i.btd = insertelement <2 x float> poison, float %i.boa, i64 0
  %i.bte = insertelement <2 x float> %i.btd, float %i.bsy, i64 1
  %i.btf = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bsa, i64 0
  %i.btg = fadd <2 x float> %i.bte, %i.btf
  store <2 x float> %i.btg, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  %i.bth = fsub float %..i11.i.i, %i.boa
  %.sroa.0.0.vec.insert.i169.i = insertelement <2 x float> poison, float %i.bth, i64 0
  %.sroa.0.4.vec.insert.i170.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i169.i, float %i.btb, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i170.i, ptr %16, align 8
  %i.bti = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 5472
  %i.btj = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 5880
  %i.btk = load float, ptr %i.bti, align 4, !tbaa !278
  %i.btl = load <4 x float>, ptr %i.btj, align 4, !tbaa !75
  %i.btm = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.btk, i64 3
  %i.btn = fmul <4 x float> %i.btl, %i.btm        ; 3 uses
  %i.bto = fcmp olt <4 x float> %i.btn, zeroinitializer
  %i.btp = fcmp ogt <4 x float> %i.btn, splat (float 1.000000e+00)
  %i.btq = select <4 x i1> %i.btp, <4 x float> splat (float 1.000000e+00), <4 x float> %i.btn
  %i.btr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.btq, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bts = select <4 x i1> %i.bto, <4 x float> splat (float 5.000000e-01), <4 x float> %i.btr
  %i.btt = fptosi <4 x float> %i.bts to <4 x i32>
  %i.btu = shl <4 x i32> %i.btt, <i32 0, i32 8, i32 16, i32 24>
  %i.btv = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.btu)
  %i.btw = select i1 %.not96.i, float 0.000000e+00, float %i.bnz
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.btc, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %16, i32 noundef %i.btv, float noundef %i.btw, i32 noundef 48)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #39
  %i.btx = getelementptr inbounds nuw i8, ptr %i.bnw, i64 5544
  %i.bty = load float, ptr %i.btx, align 4, !tbaa !653 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5ImGui28DebugRenderViewportThumbnailEP10ImDrawListP14ImGuiViewportPRK6ImRect:bb.a
  %.not40 = icmp eq i32 %i.bm, 0
  br i1 %.not40, label %_ZNK11ImGuiWindow12TitleBarRectEv.exit, label %bb.k

_ZNK11ImGuiWindow12TitleBarRectEv.exit:           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bp = load <2 x float>, ptr %i.bn, align 8, !tbaa !75 ; 4 uses
  %i.bq = load <2 x float>, ptr %i.bo, align 8, !tbaa !75
  %i.br = fadd <2 x float> %i.bp, %i.bq           ; 3 uses
  store <2 x float> %i.br, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !632
  %i.bu = extractelement <2 x float> %i.bp, i64 0
  %i.bv = fadd float %i.bu, %i.bt
  %i.bw = load <2 x float>, ptr %i.bn, align 8, !tbaa !75 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.k, %i.bp
  %foldExtExtBinop265 = fadd <2 x float> %i.n, %foldExtExtBinop
  %i.bx = extractelement <2 x float> %foldExtExtBinop265, i64 1
  %i.by = fptosi float %i.bx to i32
  %i.bz = sitofp i32 %i.by to float               ; 3 uses
  %i.ca = shufflevector <2 x float> %i.bp, <2 x float> %i.br, <2 x i32> <i32 0, i32 3>
  %i.cb = fmul <2 x float> %i.k, %i.ca
  %i.cc = fadd <2 x float> %i.n, %i.cb
  %i.cd = fptosi <2 x float> %i.cc to <2 x i32>
  %i.ce = sitofp <2 x i32> %i.cd to <2 x float>   ; 3 uses
  %foldExtExtBinop267 = fmul <2 x float> %i.k, %i.bw
  %foldExtExtBinop269 = fadd <2 x float> %i.n, %foldExtExtBinop267
  %i.cf = extractelement <2 x float> %foldExtExtBinop269, i64 0
  %i.cg = fptosi float %i.cf to i32
  %i.ch = sitofp i32 %i.cg to float               ; 3 uses
  %i.ci = fmul float %i.an, %i.bv
  %i.cj = fadd float %i.am, %i.ci
  %i.ck = fptosi float %i.cj to i32
  %i.cl = sitofp i32 %i.ck to float               ; 3 uses
  %.sroa.02.0.copyload.i = load <2 x float>, ptr %i.d, align 4, !tbaa !75 ; 5 uses
  %i.cm = shufflevector <2 x float> %i.br, <2 x float> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.cn = fmul <2 x float> %i.k, %i.cm
  %i.co = fadd <2 x float> %i.n, %i.cn
  %i.cp = fptosi <2 x float> %i.co to <2 x i32>
  %i.cq = sitofp <2 x i32> %i.cp to <2 x float>   ; 3 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 1 ; 3 uses
  %i.cs = fadd float %i.cr, 5.000000e+00          ; 3 uses
  %i.ct = load <2 x float>, ptr %2, align 4, !tbaa !75 ; 4 uses
  %i.cu = extractelement <2 x float> %i.ct, i64 1 ; 6 uses
  %i.cv = fcmp ogt float %i.cu, %i.bz
  br i1 %i.cv, label %_ZL7ImClampRK6ImVec2S1_S_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK11ImGuiWindow12TitleBarRectEv.exit
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %.sroa.02.0.copyload.i, i64 1 ; 2 uses
  %i.cw = fcmp olt float %.sroa.0.4.vec.extract.i.i, %i.bz
  %.sroa.0.4.vec.extract..i.i = select i1 %i.cw, float %.sroa.0.4.vec.extract.i.i, float %i.bz
  br label %_ZL7ImClampRK6ImVec2S1_S_.exit.i

_ZL7ImClampRK6ImVec2S1_S_.exit.i:                 ; preds = %bb.d, %_ZNK11ImGuiWindow12TitleBarRectEv.exit
  %i.cx = phi float [ %i.cu, %_ZNK11ImGuiWindow12TitleBarRectEv.exit ], [ %.sroa.0.4.vec.extract..i.i, %bb.d ]
  %i.cy = extractelement <2 x float> %i.ct, i64 0 ; 6 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.02.0.copyload.i, i64 0 ; 8 uses
  %i.cz = extractelement <2 x float> %i.ce, i64 0 ; 2 uses
  %i.da = fcmp olt float %.sroa.0.0.vec.extract.i.i, %i.cz
  %.sroa.0.0.vec.extract..i.i = select i1 %i.da, float %.sroa.0.0.vec.extract.i.i, float %i.cz
  %i.db = fcmp ogt <2 x float> %i.ct, %i.ce       ; 2 uses
  %i.dc = extractelement <2 x i1> %i.db, i64 0
  %i.dd = select i1 %i.dc, float %i.cy, float %.sroa.0.0.vec.extract..i.i
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.dd, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.cx, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %3, align 8, !tbaa !75
  %i.de = extractelement <2 x i1> %i.db, i64 1
  br i1 %i.de, label %_ZN6ImRect12ClipWithFullERKS_.exit, label %bb.e

bb.e:                                             ; preds = %_ZL7ImClampRK6ImVec2S1_S_.exit.i
  %.sroa.0.4.vec.extract.i15.i = extractelement <2 x float> %.sroa.02.0.copyload.i, i64 1 ; 2 uses
  %i.df = extractelement <2 x float> %i.ce, i64 1 ; 2 uses
  %i.dg = fcmp olt float %.sroa.0.4.vec.extract.i15.i, %i.df
  %.sroa.0.4.vec.extract..i16.i = select i1 %i.dg, float %.sroa.0.4.vec.extract.i15.i, float %i.df
  br label %_ZN6ImRect12ClipWithFullERKS_.exit

_ZN6ImRect12ClipWithFullERKS_.exit:               ; preds = %_ZL7ImClampRK6ImVec2S1_S_.exit.i, %bb.e
  %i.dh = phi float [ %i.cu, %_ZL7ImClampRK6ImVec2S1_S_.exit.i ], [ %.sroa.0.4.vec.extract..i16.i, %bb.e ]
  %i.di = fcmp ogt <2 x float> %i.ct, %i.cq       ; 2 uses
  %i.dj = extractelement <2 x float> %i.cq, i64 0 ; 2 uses
  %i.dk = fcmp olt float %.sroa.0.0.vec.extract.i.i, %i.dj
  %.sroa.0.0.vec.extract..i18.i = select i1 %i.dk, float %.sroa.0.0.vec.extract.i.i, float %i.dj
  %i.dl = extractelement <2 x i1> %i.di, i64 0
  %i.dm = select i1 %i.dl, float %i.cy, float %.sroa.0.0.vec.extract..i18.i
  %.sroa.0.0.vec.insert.i19.i = insertelement <2 x float> poison, float %i.dm, i64 0
  %.sroa.0.4.vec.insert.i20.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i19.i, float %i.dh, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i20.i, ptr %i.ah, align 8, !tbaa !75
  %i.dn = extractelement <2 x i1> %i.di, i64 1
  br i1 %i.dn, label %_ZL7ImClampRK6ImVec2S1_S_.exit.i148, label %bb.f

bb.f:                                             ; preds = %_ZN6ImRect12ClipWithFullERKS_.exit
  %.sroa.0.4.vec.extract.i.i146 = extractelement <2 x float> %.sroa.02.0.copyload.i, i64 1 ; 2 uses
  %i.do = fcmp olt float %.sroa.0.4.vec.extract.i.i146, %i.cr
  %.sroa.0.4.vec.extract..i.i147 = select i1 %i.do, float %.sroa.0.4.vec.extract.i.i146, float %i.cr
  br label %_ZL7ImClampRK6ImVec2S1_S_.exit.i148

_ZL7ImClampRK6ImVec2S1_S_.exit.i148:              ; preds = %bb.f, %_ZN6ImRect12ClipWithFullERKS_.exit
  %i.dp = phi float [ %i.cu, %_ZN6ImRect12ClipWithFullERKS_.exit ], [ %.sroa.0.4.vec.extract..i.i147, %bb.f ]
  %i.dq = fcmp ogt float %i.cy, %i.ch
  %i.dr = fcmp olt float %.sroa.0.0.vec.extract.i.i, %i.ch
  %.sroa.0.0.vec.extract..i.i150 = select i1 %i.dr, float %.sroa.0.0.vec.extract.i.i, float %i.ch
  %i.ds = select i1 %i.dq, float %i.cy, float %.sroa.0.0.vec.extract..i.i150
  %.sroa.0.0.vec.insert.i.i151 = insertelement <2 x float> poison, float %i.ds, i64 0
  %.sroa.0.4.vec.insert.i.i152 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i151, float %i.dp, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i152, ptr %4, align 8, !tbaa !75
  %i.dt = fcmp olt float %i.cs, %i.cu
  br i1 %i.dt, label %_ZN6ImRect12ClipWithFullERKS_.exit164, label %bb.g

bb.g:                                             ; preds = %_ZL7ImClampRK6ImVec2S1_S_.exit.i148
  %.sroa.0.4.vec.extract.i15.i158 = extractelement <2 x float> %.sroa.02.0.copyload.i, i64 1 ; 2 uses
  %i.du = fcmp ogt float %i.cs, %.sroa.0.4.vec.extract.i15.i158
  %.sroa.0.4.vec.extract..i16.i159 = select i1 %i.du, float %.sroa.0.4.vec.extract.i15.i158, float %i.cs
  br label %_ZN6ImRect12ClipWithFullERKS_.exit164

_ZN6ImRect12ClipWithFullERKS_.exit164:            ; preds = %_ZL7ImClampRK6ImVec2S1_S_.exit.i148, %bb.g
  %i.dv = phi float [ %i.cu, %_ZL7ImClampRK6ImVec2S1_S_.exit.i148 ], [ %.sroa.0.4.vec.extract..i16.i159, %bb.g ]
  %i.dw = fcmp ogt float %i.cy, %i.cl
  %i.dx = fcmp olt float %.sroa.0.0.vec.extract.i.i, %i.cl
  %.sroa.0.0.vec.extract..i18.i161 = select i1 %i.dx, float %.sroa.0.0.vec.extract.i.i, float %i.cl
  %i.dy = select i1 %i.dw, float %i.cy, float %.sroa.0.0.vec.extract..i18.i161
  %.sroa.0.0.vec.insert.i19.i162 = insertelement <2 x float> poison, float %i.dy, i64 0
  %.sroa.0.4.vec.insert.i20.i163 = insertelement <2 x float> %.sroa.0.0.vec.insert.i19.i162, float %i.dv, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i20.i163, ptr %i.ai, align 8, !tbaa !75
  %i.dz = load ptr, ptr %i.aj, align 8, !tbaa !389 ; 2 uses
  %.not41 = icmp eq ptr %i.dz, null
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6ImRect12ClipWithFullERKS_.exit164
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bg, i64 848
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !630
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 848
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !630
  %i.ee = icmp eq ptr %i.eb, %i.ed
  %i.ef = select i1 %i.ee, i64 11, i64 10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6ImRect12ClipWithFullERKS_.exit164
  %i.eg = phi i64 [ 10, %_ZN6ImRect12ClipWithFullERKS_.exit164 ], [ %i.ef, %bb.h ]
  %i.eh = load ptr, ptr %i.o, align 8, !tbaa !292
  %i.ei = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 5472
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 5704
  %i.el = load float, ptr %i.ej, align 4, !tbaa !278
  %i.em = load <4 x float>, ptr %i.ek, align 4, !tbaa !75
  %i.en = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.el, i64 3
  %i.eo = fmul <4 x float> %i.em, %i.en           ; 3 uses
  %i.ep = fcmp olt <4 x float> %i.eo, zeroinitializer
  %i.eq = fcmp ogt <4 x float> %i.eo, splat (float 1.000000e+00)
  %i.er = select <4 x i1> %i.eq, <4 x float> splat (float 1.000000e+00), <4 x float> %i.eo
  %i.es = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.et = select <4 x i1> %i.ep, <4 x float> splat (float 5.000000e-01), <4 x float> %i.es
  %i.eu = fptosi <4 x float> %i.et to <4 x i32>
  %i.ev = shl <4 x i32> %i.eu, <i32 0, i32 8, i32 16, i32 24>
  %i.ew = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ev)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.eh, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.ah, i32 noundef %i.ew, float noundef 0.000000e+00, i32 noundef 0)
  %i.ex = load ptr, ptr %i.o, align 8, !tbaa !292
  %i.ey = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 5472
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 5672
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %i.eg
  %i.fc = load float, ptr %i.ez, align 4, !tbaa !278
  %i.fd = load <4 x float>, ptr %i.fb, align 4, !tbaa !75
  %i.fe = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.fc, i64 3
  %i.ff = fmul <4 x float> %i.fd, %i.fe           ; 3 uses
  %i.fg = fcmp olt <4 x float> %i.ff, zeroinitializer
  %i.fh = fcmp ogt <4 x float> %i.ff, splat (float 1.000000e+00)
  %i.fi = select <4 x i1> %i.fh, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ff
  %i.fj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fi, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.fk = select <4 x i1> %i.fg, <4 x float> splat (float 5.000000e-01), <4 x float> %i.fj
  %i.fl = fptosi <4 x float> %i.fk to <4 x i32>
  %i.fm = shl <4 x i32> %i.fl, <i32 0, i32 8, i32 16, i32 24>
  %i.fn = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.fm)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.ex, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.ai, i32 noundef %i.fn, float noundef 0.000000e+00, i32 noundef 0)
  %i.fo = load ptr, ptr %i.o, align 8, !tbaa !292
  %i.fp = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 5472
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 5752
  %i.fs = load float, ptr %i.fq, align 4, !tbaa !278
  %i.ft = load <4 x float>, ptr %i.fr, align 4, !tbaa !75
  %i.fu = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.fs, i64 3
  %i.fv = fmul <4 x float> %i.ft, %i.fu           ; 3 uses
  %i.fw = fcmp olt <4 x float> %i.fv, zeroinitializer
  %i.fx = fcmp ogt <4 x float> %i.fv, splat (float 1.000000e+00)
  %i.fy = select <4 x i1> %i.fx, <4 x float> splat (float 1.000000e+00), <4 x float> %i.fv
  %i.fz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ga = select <4 x i1> %i.fw, <4 x float> splat (float 5.000000e-01), <4 x float> %i.fz
  %i.gb = fptosi <4 x float> %i.ga to <4 x i32>
  %i.gc = shl <4 x i32> %i.gb, <i32 0, i32 8, i32 16, i32 24>
  %i.gd = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.gc)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(196) %i.fo, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.ah, i32 noundef %i.gd, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00)
  %i.ge = load ptr, ptr %i.o, align 8, !tbaa !292
  %i.gf = load ptr, ptr %i.ak, align 8, !tbaa !293
  %i.gg = load float, ptr %i.al, align 8, !tbaa !294
  %i.gh = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 5472
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 5672
  %.sroa.4.0..sroa_idx.i187 = getelementptr inbounds nuw i8, ptr %i.gh, i64 5676
  %i.gk = load float, ptr %i.gi, align 4, !tbaa !278
  %i.gl = load <4 x float>, ptr %i.gj, align 4, !tbaa !75 ; 3 uses
  %.sroa.4.0.copyload.i188 = load float, ptr %.sroa.4.0..sroa_idx.i187, align 4, !tbaa !75
  %i.gm = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.gk, i64 3
  %i.gn = fmul <4 x float> %i.gl, %i.gm           ; 3 uses
  %5 = extractelement <4 x float> %i.gl, i64 0
  %6 = fcmp olt float %5, 0.000000e+00
  %i.go = fcmp ogt <4 x float> %i.gn, splat (float 1.000000e+00)
  %i.gp = select <4 x i1> %i.go, <4 x float> splat (float 1.000000e+00), <4 x float> %i.gn
  %i.gq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gp, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01)) ; 3 uses
  %7 = extractelement <4 x float> %i.gq, i64 0
  %8 = select i1 %6, float 5.000000e-01, float %7
  %9 = fptosi float %8 to i32
  %10 = fcmp olt float %.sroa.4.0.copyload.i188, 0.000000e+00
  %i.gr = extractelement <4 x float> %i.gq, i64 1
  %11 = select i1 %10, float 5.000000e-01, float %i.gr
  %i.gs = fptosi float %11 to i32
  %12 = shl i32 %i.gs, 8
  %13 = or i32 %12, %9
  %14 = shufflevector <4 x float> %i.gl, <4 x float> %i.gn, <2 x i32> <i32 2, i32 7>
  %15 = fcmp olt <2 x float> %14, zeroinitializer
  %16 = shufflevector <4 x float> %i.gq, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %17 = select <2 x i1> %15, <2 x float> splat (float 5.000000e-01), <2 x float> %16
  %18 = fptosi <2 x float> %17 to <2 x i32>
  %19 = shl <2 x i32> %18, <i32 16, i32 24>       ; 2 uses
  %20 = extractelement <2 x i32> %19, i64 0
  %21 = or i32 %13, %20
  %22 = extractelement <2 x i32> %19, i64 1
  %i.gt = or i32 %21, %22
  %i.gu = load ptr, ptr %i.bg, align 8, !tbaa !313 ; 5 uses
  %.not243 = icmp eq ptr %i.gu, inttoptr (i64 -1 to ptr)
  br i1 %.not243, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.gv = ptrtoaddr ptr %i.gu to i64
  %i.gw = xor i64 %i.gv, -1
  %scevgep.i = getelementptr i8, ptr %i.gu, i64 %i.gw
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.ha, %.critedge2.i ], [ %i.gu, %.lr.ph.preheader.i ] ; 5 uses
  %i.gx = load i8, ptr %.015.i, align 1, !tbaa !80
  switch i8 %i.gx, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !80
  %.not14.i = icmp eq i8 %i.gz, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.j, %.lr.ph.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ha, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.lr.ph.i, %bb.j, %.critedge2.i, %bb.i
  %.0.lcssa.i = phi ptr [ inttoptr (i64 -1 to ptr), %bb.i ], [ %.015.i, %bb.j ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ]
  call void @_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(196) %i.ge, ptr noundef %i.gf, float noundef %i.gg, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.gt, ptr noundef %i.gu, ptr noundef %.0.lcssa.i, float noundef 0.000000e+00, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %.pre = load i32, ptr %i.ae, align 8, !tbaa !504
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.c, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.hb = phi i32 [ %i.bd, %bb.b ], [ %i.bd, %bb.c ], [ %.pre, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hc = zext i32 %i.hb to i64
  %.not = icmp eq i64 %indvars.iv.next, %i.hc
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1156
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui17ShowMetricsWindowEPb(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.ImRect, align 8             ; 5 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.b = alloca [8 x ptr], align 16               ; 5 uses
  %i.c = alloca [13 x ptr], align 16              ; 6 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %12 = alloca %struct.ImVec2, align 4            ; 5 uses
  %13 = alloca %struct.ImRect, align 8            ; 5 uses
  %i.e = alloca [32 x i8], align 16               ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %15 = alloca %struct.ImRect, align 8            ; 5 uses
  %16 = alloca %struct.ImRect, align 8            ; 5 uses
  %i.f = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 91 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12604 ; 3 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !1176, !range !216, !noundef !217
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui19ShowStackToolWindowEPb(ptr noundef nonnull %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.99, ptr noundef %0, i32 noundef 0)
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @GImGui, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 7184
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !214  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  store i8 1, ptr %i.n, align 8, !tbaa !393
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 154
  %i.p = load i16, ptr %i.o, align 2, !tbaa !597
  %i.q = icmp sgt i16 %i.p, 1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN5ImGui3EndEv()
  br label %bb.fk

bb.f:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.58)
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 924
  %i.s = load float, ptr %i.r, align 4, !tbaa !1177 ; 2 uses
  %i.t = fdiv float 1.000000e+03, %i.s
  %i.u = fpext float %i.t to double
  %i.v = fpext float %i.s to double
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.101, double noundef %i.u, double noundef %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 928
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1178
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 932
  %i.z = load i32, ptr %i.y, align 4, !tbaa !1179 ; 2 uses
  %i.aa = sdiv i32 %i.z, 3
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.102, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 936
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !1180
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 944
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1181
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.103, i32 noundef %i.ac, i32 noundef %i.ae)
  tail call void @_ZN5ImGui9SeparatorEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZN5ImGui17ShowMetricsWindowEPb.wrt_rects_names, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.c, ptr noundef nonnull align 16 dereferenceable(104) @__const._ZN5ImGui17ShowMetricsWindowEPb.trt_rects_names, i64 104, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 12612 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !421
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 4, ptr %i.af, align 4, !tbaa !421
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 12616 ; 5 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !422
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 2, ptr %i.ai, align 8, !tbaa !422
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = tail call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.121)
  br i1 %i.al, label %bb.k, label %bb.bw

bb.k:                                             ; preds = %bb.j
  %i.am = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.122, ptr noundef nonnull %i.g) ; 0 uses
  %i.an = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 7184
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !214 ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  store i8 1, ptr %i.aq, align 8, !tbaa !393
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 147
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !652, !range !216, !noundef !217
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZN5ImGui8SameLineEff.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 5548
  %i.av = load float, ptr %i.au, align 4, !tbaa !704
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 216
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 224
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !702
  %i.az = fadd float %i.av, %i.ay
  store float %i.az, ptr %i.aw, align 8, !tbaa !700
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 228
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !268
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 220
  store float %i.bb, ptr %i.bc, align 4, !tbaa !260
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 264
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 256
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !75
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !75
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 276
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !703
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 272
  store float %i.bh, ptr %i.bi, align 8, !tbaa !698
  br label %_ZN5ImGui8SameLineEff.exit

_ZN5ImGui8SameLineEff.exit:                       ; preds = %bb.k, %bb.l
  tail call fastcc void @_ZL17MetricsHelpMarkerPKc(ptr noundef nonnull @.str.123)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 12606
  %i.bk = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.124, ptr noundef nonnull %i.bj) ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 12605 ; 3 uses
  %i.bm = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.125, ptr noundef nonnull %i.bl) ; 0 uses
  %i.bn = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 7184
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !214 ; 10 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 144
  store i8 1, ptr %i.bq, align 8, !tbaa !393
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 147
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !652, !range !216, !noundef !217
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %_ZN5ImGui8SameLineEff.exit330, label %bb.m

bb.m:                                             ; preds = %_ZN5ImGui8SameLineEff.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 5548
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !704
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 216
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 224
end_hunk_1
begin_hunk_2_@_ZN5ImGui13DebugNodeFontEP6ImFont:bb.a
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !652, !range !216, !noundef !217
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZN5ImGui8SameLineEff.exit110, label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui7PopFontEv.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 5548
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !704
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 216
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 224
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !702
  %i.dl = fadd float %i.dh, %i.dk
  store float %i.dl, ptr %i.di, align 8, !tbaa !700
  %i.dm = getelementptr inbounds nuw i8, ptr %i.db, i64 228
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !268
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 220
  store float %i.dn, ptr %i.do, align 4, !tbaa !260
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 264
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 256
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !75
  store i64 %i.dr, ptr %i.dq, align 8, !tbaa !75
  %i.ds = getelementptr inbounds nuw i8, ptr %i.db, i64 276
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !703
  %i.du = getelementptr inbounds nuw i8, ptr %i.db, i64 272
  store float %i.dt, ptr %i.du, align 8, !tbaa !698
  br label %_ZN5ImGui8SameLineEff.exit110

_ZN5ImGui8SameLineEff.exit110:                    ; preds = %_ZN5ImGui7PopFontEv.exit, %bb.k
  tail call fastcc void @_ZL17MetricsHelpMarkerPKc(ptr noundef nonnull @.str.221)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dw = load float, ptr %i.dv, align 8, !tbaa !1236 ; 2 uses
  %i.dx = fpext float %i.dw to double
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !1237 ; 2 uses
  %i.ea = fpext float %i.dz to double
  %i.eb = fsub float %i.dw, %i.dz
  %i.ec = fpext float %i.eb to double
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.222, double noundef %i.dx, double noundef %i.ea, double noundef %i.ec)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !1238 ; 9 uses
  %i.ef = zext i16 %i.ee to i32
  %i.eg = icmp ult i16 %i.ee, 128
  br i1 %i.eg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5ImGui8SameLineEff.exit110
  %i.eh = trunc nuw nsw i16 %i.ee to i8
  store i8 %i.eh, ptr %i.a, align 1, !tbaa !80
  br label %_Z16ImTextCharToUtf8Pcj.exit

bb.m:                                             ; preds = %_ZN5ImGui8SameLineEff.exit110
  %i.ei = icmp ult i16 %i.ee, 2048
  br i1 %i.ei, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ej = lshr i16 %i.ee, 6
  %i.ek = trunc nuw nsw i16 %i.ej to i8
  %i.el = or disjoint i8 %i.ek, -64
  store i8 %i.el, ptr %i.a, align 1, !tbaa !80
  %i.em = trunc i16 %i.ee to i8
  %i.en = and i8 %i.em, 63
  %i.eo = or disjoint i8 %i.en, -128
  store i8 %i.eo, ptr %.0.i.i.sroa.gep, align 1, !tbaa !80
  br label %_Z16ImTextCharToUtf8Pcj.exit

bb.o:                                             ; preds = %bb.m
  %i.ep = lshr i16 %i.ee, 12
  %i.eq = trunc nuw nsw i16 %i.ep to i8
  %i.er = or disjoint i8 %i.eq, -32
  store i8 %i.er, ptr %i.a, align 1, !tbaa !80
  %i.es = lshr i16 %i.ee, 6
  %i.et = trunc i16 %i.es to i8
  %i.eu = and i8 %i.et, 63
  %i.ev = or disjoint i8 %i.eu, -128
  store i8 %i.ev, ptr %.0.i.i.sroa.gep, align 1, !tbaa !80
  %i.ew = trunc i16 %i.ee to i8
  %i.ex = and i8 %i.ew, 63
  %i.ey = or disjoint i8 %i.ex, -128
  store i8 %i.ey, ptr %.0.i.i.sroa.gep115, align 1, !tbaa !80
  br label %_Z16ImTextCharToUtf8Pcj.exit

_Z16ImTextCharToUtf8Pcj.exit:                     ; preds = %bb.l, %bb.n, %bb.o
  %.0.i.i.sroa.phi = phi ptr [ %.0.i.i.sroa.gep, %bb.l ], [ %.0.i.i.sroa.gep114, %bb.o ], [ %.0.i.i.sroa.gep115, %bb.n ]
  store i8 0, ptr %.0.i.i.sroa.phi, align 1, !tbaa !80
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.223, ptr noundef nonnull %i.a, i32 noundef %i.ef)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.fa = load i16, ptr %i.ez, align 4, !tbaa !304 ; 9 uses
  %i.fb = zext i16 %i.fa to i32
  %i.fc = icmp ult i16 %i.fa, 128
  br i1 %i.fc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_Z16ImTextCharToUtf8Pcj.exit
  %i.fd = trunc nuw nsw i16 %i.fa to i8
  store i8 %i.fd, ptr %i.a, align 1, !tbaa !80
  br label %_Z16ImTextCharToUtf8Pcj.exit112

bb.q:                                             ; preds = %_Z16ImTextCharToUtf8Pcj.exit
  %i.fe = icmp ult i16 %i.fa, 2048
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ff = lshr i16 %i.fa, 6
  %i.fg = trunc nuw nsw i16 %i.ff to i8
  %i.fh = or disjoint i8 %i.fg, -64
  store i8 %i.fh, ptr %i.a, align 1, !tbaa !80
  %i.fi = trunc i16 %i.fa to i8
  %i.fj = and i8 %i.fi, 63
  %i.fk = or disjoint i8 %i.fj, -128
  store i8 %i.fk, ptr %.0.i.i.sroa.gep, align 1, !tbaa !80
  br label %_Z16ImTextCharToUtf8Pcj.exit112

bb.s:                                             ; preds = %bb.q
  %i.fl = lshr i16 %i.fa, 12
  %i.fm = trunc nuw nsw i16 %i.fl to i8
  %i.fn = or disjoint i8 %i.fm, -32
  store i8 %i.fn, ptr %i.a, align 1, !tbaa !80
  %i.fo = lshr i16 %i.fa, 6
  %i.fp = trunc i16 %i.fo to i8
  %i.fq = and i8 %i.fp, 63
  %i.fr = or disjoint i8 %i.fq, -128
  store i8 %i.fr, ptr %.0.i.i.sroa.gep, align 1, !tbaa !80
  %i.fs = trunc i16 %i.fa to i8
  %i.ft = and i8 %i.fs, 63
  %i.fu = or disjoint i8 %i.ft, -128
  store i8 %i.fu, ptr %.0.i.i.sroa.gep115, align 1, !tbaa !80
  br label %_Z16ImTextCharToUtf8Pcj.exit112

_Z16ImTextCharToUtf8Pcj.exit112:                  ; preds = %bb.p, %bb.r, %bb.s
  %.0.i.i111.sroa.phi = phi ptr [ %.0.i.i.sroa.gep, %bb.p ], [ %.0.i.i.sroa.gep114, %bb.s ], [ %.0.i.i.sroa.gep115, %bb.r ]
  store i8 0, ptr %.0.i.i111.sroa.phi, align 1, !tbaa !80
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.224, ptr noundef nonnull %i.a, i32 noundef %i.fb)
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !1239 ; 2 uses
  %i.fx = sitofp i32 %i.fw to float
  %i.fy = call float @sqrtf(float noundef %i.fx) #39
  %i.fz = fptosi float %i.fy to i32               ; 2 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.225, i32 noundef %i.fw, i32 noundef %i.fz, i32 noundef %i.fz)
  %i.ga = load i16, ptr %i.j, align 8, !tbaa !1234 ; 2 uses
  %i.gb = icmp sgt i16 %i.ga, 0
  br i1 %i.gb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_Z16ImTextCharToUtf8Pcj.exit112
  %i.gc = load ptr, ptr %i.b, align 8, !tbaa !1232 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.u, %.lr.ph, %_Z16ImTextCharToUtf8Pcj.exit112
  %i.ge = load i32, ptr %i.h, align 8, !tbaa !1233
  %i.gf = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKcS1_z(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.228, i32 noundef %i.ge)
  br i1 %i.gf, label %bb.v, label %bb.aj

.lr.ph.splitthread-pre-split:                     ; preds = %bb.u
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !1232
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.gg = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.gc, %.lr.ph ] ; 2 uses
  %i.gh = phi i16 [ %i.gx, %.lr.ph.splitthread-pre-split ], [ %i.ga, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 3 uses
  %.not108 = icmp eq ptr %i.gg, null
  br i1 %.not108, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.split
  %i.gi = getelementptr inbounds nuw [136 x i8], ptr %i.gg, i64 %indvars.iv ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 86
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !1241
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 28
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !1242
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gp = load i8, ptr %i.go, align 8, !tbaa !1243, !range !216, !noundef !217
  %i.gq = zext nneg i8 %i.gp to i32
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gi, i64 44
  %i.gs = load <2 x float>, ptr %i.gr, align 4, !tbaa !75
  %i.gt = fpext <2 x float> %i.gs to <2 x double> ; 2 uses
  %i.gu = trunc nuw nsw i64 %indvars.iv to i32
  %i.gv = extractelement <2 x double> %i.gt, i64 0
  %i.gw = extractelement <2 x double> %i.gt, i64 1
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.226, i32 noundef %i.gu, ptr noundef nonnull %i.gj, i32 noundef %i.gl, i32 noundef %i.gn, i32 noundef %i.gq, double noundef %i.gv, double noundef %i.gw)
  %.pre = load i16, ptr %i.j, align 8, !tbaa !1234
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph.split, %bb.t
  %i.gx = phi i16 [ %i.gh, %.lr.ph.split ], [ %.pre, %bb.t ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gy = sext i16 %i.gx to i64
  %i.gz = icmp slt i64 %indvars.iv.next, %i.gy
  br i1 %i.gz, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !1228

bb.v:                                             ; preds = %._crit_edge
  %i.ha = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 7184
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !214 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 144
  store i8 1, ptr %i.hd, align 8, !tbaa !393
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 616
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !292 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 5472
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 5672
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 5676
  %i.hi = load float, ptr %i.hg, align 8, !tbaa !278
  %i.hj = load <4 x float>, ptr %i.hh, align 8, !tbaa !75 ; 3 uses
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !75
  %i.hk = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.hi, i64 3
  %i.hl = fmul <4 x float> %i.hj, %i.hk           ; 3 uses
  %4 = extractelement <4 x float> %i.hj, i64 0
  %5 = fcmp olt float %4, 0.000000e+00
  %i.hm = fcmp ogt <4 x float> %i.hl, splat (float 1.000000e+00)
  %i.hn = select <4 x i1> %i.hm, <4 x float> splat (float 1.000000e+00), <4 x float> %i.hl
  %i.ho = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hn, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01)) ; 3 uses
  %6 = extractelement <4 x float> %i.ho, i64 0
  %7 = select i1 %5, float 5.000000e-01, float %6
  %8 = fptosi float %7 to i32
  %9 = fcmp olt float %.sroa.4.0.copyload.i, 0.000000e+00
  %i.hp = extractelement <4 x float> %i.ho, i64 1
  %10 = select i1 %9, float 5.000000e-01, float %i.hp
  %i.hq = fptosi float %10 to i32
  %11 = shl i32 %i.hq, 8
  %12 = or i32 %11, %8
  %13 = shufflevector <4 x float> %i.hj, <4 x float> %i.hl, <2 x i32> <i32 2, i32 7>
  %14 = fcmp olt <2 x float> %13, zeroinitializer
  %15 = shufflevector <4 x float> %i.ho, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %16 = select <2 x i1> %14, <2 x float> splat (float 5.000000e-01), <2 x float> %15
  %17 = fptosi <2 x float> %16 to <2 x i32>
  %18 = shl <2 x i32> %17, <i32 16, i32 24>       ; 2 uses
  %19 = extractelement <2 x i32> %18, i64 0
  %20 = or i32 %12, %19
  %21 = extractelement <2 x i32> %18, i64 1
  %i.hr = or i32 %20, %21
  %i.hs = load float, ptr %i.e, align 4, !tbaa !307 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ha, i64 5552
  %i.hu = load float, ptr %i.ht, align 8, !tbaa !1244
  %i.hv = fadd float %i.hs, %i.hu                 ; 2 uses
  %i.hw = fmul float %i.hv, 1.600000e+01
  %i.hx = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.ia = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ib = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.x

bb.w:                                             ; preds = %bb.ai
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.aj

bb.x:                                             ; preds = %bb.v, %bb.ai
  %.098122 = phi i32 [ 0, %bb.v ], [ %i.lq, %bb.ai ] ; 12 uses
  %i.id = and i32 %.098122, 4095
  %.not104 = icmp eq i32 %i.id, 0
  br i1 %.not104, label %bb.y, label %.preheader

.preheader:                                       ; preds = %bb.y, %bb.x
  br label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ie = or disjoint i32 %.098122, 4095
  %i.if = call noundef zeroext i1 @_ZN6ImFont18IsGlyphRangeUnusedEjj(ptr noundef nonnull align 8 dereferenceable(110) %0, i32 noundef %.098122, i32 noundef %i.ie)
  br i1 %i.if, label %bb.z, label %.preheader

bb.z:                                             ; preds = %bb.y
  %i.ig = or disjoint i32 %.098122, 3840
  br label %bb.ai

bb.aa:                                            ; preds = %bb.ab
  %i.ih = icmp eq i32 %spec.select109, 0
  br i1 %i.ih, label %bb.ai, label %bb.ac

bb.ab:                                            ; preds = %.preheader, %bb.ab
  %.096120 = phi i32 [ %i.im, %bb.ab ], [ 0, %.preheader ] ; 2 uses
  %.097119 = phi i32 [ %spec.select109, %bb.ab ], [ 0, %.preheader ]
  %i.ii = add nuw nsw i32 %.096120, %.098122
  %i.ij = trunc i32 %i.ii to i16
  %i.ik = call noundef ptr @_ZNK6ImFont19FindGlyphNoFallbackEt(ptr noundef nonnull align 8 dereferenceable(110) %0, i16 noundef zeroext %i.ij)
  %.not107 = icmp ne ptr %i.ik, null
  %i.il = zext i1 %.not107 to i32
  %spec.select109 = add nuw nsw i32 %.097119, %i.il ; 4 uses
  %i.im = add nuw nsw i32 %.096120, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.im, 256
  br i1 %exitcond.not, label %bb.aa, label %bb.ab, !llvm.loop !1229

bb.ac:                                            ; preds = %bb.aa
  %i.in = zext nneg i32 %.098122 to i64
  %i.io = inttoptr i64 %i.in to ptr
  %i.ip = add nuw nsw i32 %.098122, 255
  %.not105 = icmp eq i32 %spec.select109, 1
  %i.iq = select i1 %.not105, ptr @.str.231, ptr @.str.230
  %i.ir = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.io, ptr noundef nonnull @.str.229, i32 noundef %.098122, i32 noundef %i.ip, i32 noundef %spec.select109, ptr noundef nonnull %i.iq)
  br i1 %i.ir, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.is = load ptr, ptr @GImGui, align 8, !tbaa !99
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 7184
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !214
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 216
  %.sroa.0.0.copyload.i113 = load <2 x float>, ptr %i.iv, align 8, !tbaa !75
  br label %bb.af

bb.ae:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  store <2 x float> %i.hy, ptr %3, align 8, !tbaa !75
  call void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad, %.critedge
  %.0121 = phi i32 [ 0, %bb.ad ], [ %i.lp, %.critedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #39
  %i.iw = and i32 %.0121, 15
  %i.ix = lshr i32 %.0121, 4
  %i.iy = uitofp nneg i32 %i.iw to float
  %i.iz = uitofp nneg i32 %i.ix to float
  %i.ja = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.jb = insertelement <2 x float> %i.ja, float %i.iz, i64 1
  %i.jc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jb, <2 x float> %i.ia, <2 x float> %.sroa.0.0.copyload.i113) ; 2 uses
  store <2 x float> %i.jc, ptr %1, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.jd = fadd <2 x float> %i.ic, %i.jc
  store <2 x float> %i.jd, ptr %2, align 8, !tbaa !75
  %i.je = add nuw nsw i32 %.0121, %.098122        ; 2 uses
  %i.jf = trunc i32 %i.je to i16                  ; 2 uses
  %i.jg = call noundef ptr @_ZNK6ImFont19FindGlyphNoFallbackEt(ptr noundef nonnull align 8 dereferenceable(110) %0, i16 noundef zeroext %i.jf) ; 11 uses
  %.not106 = icmp eq ptr %i.jg, null              ; 2 uses
  %i.jh = select i1 %.not106, i32 855638015, i32 1694498815
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(196) %i.hf, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef %i.jh, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00)
  br i1 %.not106, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.0.0.copyload = load <2 x float>, ptr %1, align 8, !tbaa !75
  call void @_ZNK6ImFont10RenderCharEP10ImDrawListf6ImVec2jt(ptr noundef nonnull align 8 dereferenceable(110) %0, ptr noundef nonnull %i.hf, float noundef %i.hs, <2 x float> %.sroa.0.0.copyload, i32 noundef %i.hr, i16 noundef zeroext %i.jf)
  %i.ji = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 5 uses
  %i.jj = load <2 x float>, ptr %1, align 8, !tbaa !75 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 7184
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !214 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 520
  %.sroa.018.0.vec.extract21.i = extractelement <2 x float> %i.jj, i64 0 ; 2 uses
  %.val5.i.i = load float, ptr %i.jm, align 4, !tbaa !187 ; 2 uses
  %.inv.i.i.i = fcmp oge float %.sroa.018.0.vec.extract21.i, %.val5.i.i
  %..i.i.i = select i1 %.inv.i.i.i, float %.sroa.018.0.vec.extract21.i, float %.val5.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 5572
  %.val8.i = load float, ptr %i.jn, align 4, !tbaa !187 ; 2 uses
  %i.jo = fsub float %..i.i.i, %.val8.i
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ji, i64 296
  %i.jq = load float, ptr %i.jp, align 8, !tbaa !187 ; 2 uses
  %i.jr = fcmp ult float %i.jq, %i.jo
  br i1 %i.jr, label %.critedge, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit

_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit: ; preds = %bb.ag
  %i.js = load <2 x float>, ptr %2, align 8, !tbaa !75 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jl, i64 528
  %.sroa.018.4.vec.extract23.i = extractelement <2 x float> %i.jj, i64 1 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jl, i64 524
  %.val6.i.i = load float, ptr %i.ju, align 4, !tbaa !188 ; 2 uses
  %.inv6.i.i.i = fcmp oge float %.sroa.018.4.vec.extract23.i, %.val6.i.i
  %i.jv = select i1 %.inv6.i.i.i, float %.sroa.018.4.vec.extract23.i, float %.val6.i.i
  %i.jw = getelementptr i8, ptr %i.ji, i64 5576
  %.val9.i = load float, ptr %i.jw, align 8, !tbaa !188 ; 2 uses
  %i.jx = load <2 x float>, ptr %i.jt, align 4, !tbaa !75 ; 2 uses
  %i.jy = fcmp olt <2 x float> %i.js, %i.jx
  %i.jz = select <2 x i1> %i.jy, <2 x float> %i.js, <2 x float> %i.jx
  %i.ka = insertelement <2 x float> poison, float %.val8.i, i64 0
  %i.kb = insertelement <2 x float> %i.ka, float %.val9.i, i64 1
  %i.kc = fadd <2 x float> %i.jz, %i.kb           ; 2 uses
  %i.kd = fsub float %i.jv, %.val9.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ji, i64 300
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !188 ; 2 uses
  %i.kg = fcmp oge float %i.kf, %i.kd
  %i.kh = extractelement <2 x float> %i.kc, i64 0
  %i.ki = fcmp olt float %i.jq, %i.kh
  %or.cond.i.i = select i1 %i.kg, i1 %i.ki, i1 false
  %i.kj = extractelement <2 x float> %i.kc, i64 1
  %i.kk = fcmp olt float %i.kf, %i.kj
  %spec.select.i = select i1 %or.cond.i.i, i1 %i.kk, i1 false
  br i1 %spec.select.i, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit
  call void @_ZN5ImGui14BeginTooltipExEii(i32 noundef 0, i32 noundef 0)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.232, i32 noundef %i.je)
  call void @_ZN5ImGui9SeparatorEv()
  %i.kl = load i32, ptr %i.jg, align 4
  %i.km = lshr i32 %i.kl, 1
  %i.kn = and i32 %i.km, 1
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.233, i32 noundef %i.kn)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !1245
  %i.kq = fpext float %i.kp to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.234, double noundef %i.kq)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !308
  %i.kt = fpext float %i.ks to double
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !1246
  %i.kw = fpext float %i.kv to double
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !306
  %i.kz = fpext float %i.ky to double
  %i.la = getelementptr inbounds nuw i8, ptr %i.jg, i64 20
  %i.lb = load float, ptr %i.la, align 4, !tbaa !1247
  %i.lc = fpext float %i.lb to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.235, double noundef %i.kt, double noundef %i.kw, double noundef %i.kz, double noundef %i.lc)
  %i.ld = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.le = load float, ptr %i.ld, align 4, !tbaa !1248
  %i.lf = fpext float %i.le to double
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jg, i64 28
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !1249
  %i.li = fpext float %i.lh to double
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !1250
  %i.ll = fpext float %i.lk to double
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jg, i64 36
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !1251
  %i.lo = fpext float %i.ln to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.236, double noundef %i.lf, double noundef %i.li, double noundef %i.ll, double noundef %i.lo)
  call void @_ZN5ImGui3EndEv()
  br label %.critedge

.critedge:                                        ; preds = %bb.ag, %bb.af, %bb.ah, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #39
  %i.lp = add nuw nsw i32 %.0121, 1               ; 2 uses
  %exitcond125.not = icmp eq i32 %i.lp, 256
  br i1 %exitcond125.not, label %bb.ae, label %bb.af, !llvm.loop !1230

bb.ai:                                            ; preds = %bb.ae, %bb.aa, %bb.ac, %bb.z
  %.199 = phi i32 [ %i.ig, %bb.z ], [ %.098122, %bb.ac ], [ %.098122, %bb.aa ], [ %.098122, %bb.ae ]
  %i.lq = add i32 %.199, 256                      ; 2 uses
  %i.lr = icmp ult i32 %i.lq, 65536
  br i1 %i.lr, label %bb.x, label %bb.w, !llvm.loop !1231
end_hunk_2
