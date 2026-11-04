Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui8NewFrameEv:bb.a
  %i.bkz = add i32 %i.bkj, -512
  %or.cond.i.i5.i.i.i.i = icmp ult i32 %i.bkz, 155
  br i1 %or.cond.i.i5.i.i.i.i, label %bb.jy, label %switch.early.test.i.i.i.i.i.i

switch.early.test.i.i.i.i.i.i:                    ; preds = %bb.jx
  br i1 %i.bkn, label %switch.early.test.split.i.i.i.i.i.i, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread.i.i

switch.early.test.split.i.i.i.i.i.i:              ; preds = %switch.early.test.i.i.i.i.i.i
  %i.bla = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bkj, i1 true)
  %i.blb = and i32 %i.bla, 28
  %switch.i.i.i.i.i.i = icmp eq i32 %i.blb, 12
  br i1 %switch.i.i.i.i.i.i, label %bb.jy, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread.i.i

bb.jy:                                            ; preds = %switch.early.test.split.i.i.i.i.i.i, %bb.jx
  br i1 %or.cond.i.i.i.i.i.i, label %.split.i.i.i8.i.i.i.i, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.i.i

.split.i.i.i8.i.i.i.i:                            ; preds = %bb.jy
  %i.blc = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bkj, i1 true) ; 2 uses
  %i.bld = and i32 %i.blc, 28
  %i.ble = icmp eq i32 %i.bld, 12
  %switch.offset.i.i.i9.i.i.i.i = add nuw nsw i32 %i.blc, 651
  %spec.select.i.i.i10.i.i.i.i = select i1 %i.ble, i32 %switch.offset.i.i.i9.i.i.i.i, i32 %i.bkj
  br label %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.i.i

_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.i.i:      ; preds = %.split.i.i.i8.i.i.i.i, %bb.jy
  %.0.i.i7.i.i.i.i = phi i32 [ %i.bkj, %bb.jy ], [ %spec.select.i.i.i10.i.i.i.i, %.split.i.i.i8.i.i.i.i ]
  %i.blf = sext i32 %.0.i.i7.i.i.i.i to i64
  %i.blg = getelementptr [12 x i8], ptr %i.bki, i64 %i.blf
  %i.blh = getelementptr i8, ptr %i.blg, i64 -572
  %i.bli = load i8, ptr %i.blh, align 4, !tbaa !526, !range !100, !noundef !236
  %i.blj = icmp eq i8 %i.bli, 0
  %brmerge.not.i.i = and i1 %i.bkk, %i.blj
  br i1 %brmerge.not.i.i, label %bb.jz, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread420.i.i

_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread.i.i: ; preds = %switch.early.test.split.i.i.i.i.i.i, %switch.early.test.i.i.i.i.i.i
  br i1 %i.bkk, label %bb.jz, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread420.i.i

bb.jz:                                            ; preds = %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread.i.i, %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.i.i
  %i.blk = getelementptr inbounds nuw i8, ptr %i.arj, i64 5428
  %i.bll = load i32, ptr %i.blk, align 4, !tbaa !652
  %i.blm = icmp eq i32 %i.bll, 0
  br i1 %i.blm, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.bln = getelementptr inbounds nuw i8, ptr %i.arj, i64 5443
  %i.blo = load i8, ptr %i.bln, align 1, !tbaa !659, !range !100, !noundef !236
  %i.blp = trunc nuw i8 %i.blo to i1
  br i1 %i.blp, label %bb.kb, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread420.i.i

bb.kb:                                            ; preds = %bb.ka, %bb.jz
  %i.blq = getelementptr inbounds nuw i8, ptr %i.arj, i64 272
  %.sroa.0.0.copyload.i.i.i = load float, ptr %i.blq, align 8, !tbaa !75
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.arj, i64 276
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !75
  %i.blr = fcmp oge float %.sroa.0.0.copyload.i.i.i, -2.560000e+05
  %i.bls = fcmp oge float %.sroa.4.0.copyload.i.i.i, -2.560000e+05
  %i.blt = select i1 %i.blr, i1 %i.bls, i1 false
  %i.blu = getelementptr inbounds nuw i8, ptr %i.arj, i64 2792
  %.sroa.0.0.copyload.i293.i.i = load float, ptr %i.blu, align 8, !tbaa !75
  %.sroa.4.0..sroa_idx.i294.i.i = getelementptr inbounds nuw i8, ptr %i.arj, i64 2796
  %.sroa.4.0.copyload.i295.i.i = load float, ptr %.sroa.4.0..sroa_idx.i294.i.i, align 4, !tbaa !75
  %i.blv = fcmp ult float %.sroa.0.0.copyload.i293.i.i, -2.560000e+05
  %i.blw = fcmp ult float %.sroa.4.0.copyload.i295.i.i, -2.560000e+05
  %i.blx = select i1 %i.blv, i1 true, i1 %i.blw
  %not..i.i = xor i1 %i.blt, %i.blx
  %spec.select249.i.i = select i1 %not..i.i, i1 true, i1 %.1194410.i.i
  br label %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread420.i.i

_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread420.i.i: ; preds = %bb.kb, %bb.ka, %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread.i.i, %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.i.i, %bb.jw, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i.i.i
  %.2195.i.i = phi i1 [ %.1194410.i.i, %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.i.i ], [ %spec.select249.i.i, %bb.kb ], [ %.1194410.i.i, %bb.ka ], [ %.1194410.i.i, %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread.i.i ], [ %.1194410.i.i, %bb.jw ], [ %.1194410.i.i, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i.i.i ] ; 4 uses
  br i1 %or.cond.i.i.i.i.i.i, label %.split.i.i.i.i.i305.i.i, label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i298.i.i

.split.i.i.i.i.i305.i.i:                          ; preds = %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread420.i.i
  %i.bly = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bkj, i1 true) ; 2 uses
  %i.blz = and i32 %i.bly, 28
  %i.bma = icmp eq i32 %i.blz, 12
  %switch.offset.i.i.i.i.i306.i.i = add nuw nsw i32 %i.bly, 651
  %spec.select.i.i.i.i.i307.i.i = select i1 %i.bma, i32 %switch.offset.i.i.i.i.i306.i.i, i32 %i.bkj
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i298.i.i

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i298.i.i:  ; preds = %.split.i.i.i.i.i305.i.i, %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread420.i.i
  %.0.i.i.i.i299.i.i = phi i32 [ %i.bkj, %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread420.i.i ], [ %spec.select.i.i.i.i.i307.i.i, %.split.i.i.i.i.i305.i.i ]
  %i.bmb = sext i32 %.0.i.i.i.i299.i.i to i64
  %i.bmc = getelementptr [16 x i8], ptr %i.bki, i64 %i.bmb
  %i.bmd = getelementptr i8, ptr %i.bmc, i64 -7884
  %i.bme = load i8, ptr %i.bmd, align 4, !tbaa !239, !range !100, !noundef !236
  %i.bmf = trunc nuw i8 %i.bme to i1
  br i1 %i.bmf, label %bb.kc, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit308.thread423.i.i

bb.kc:                                            ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i298.i.i
  %i.bmg = add i32 %i.bkj, -512
  %or.cond.i.i4.i.i.i.i = icmp ult i32 %i.bmg, 155
  br i1 %or.cond.i.i4.i.i.i.i, label %bb.kd, label %switch.early.test.i.i.i.i301.i.i

switch.early.test.i.i.i.i301.i.i:                 ; preds = %bb.kc
  br i1 %i.bkn, label %switch.early.test.split.i.i.i.i302.i.i, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit308.thread.i.i

switch.early.test.split.i.i.i.i302.i.i:           ; preds = %switch.early.test.i.i.i.i301.i.i
  %i.bmh = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bkj, i1 true)
  %i.bmi = and i32 %i.bmh, 28
  %switch.i.i.i.i303.i.i = icmp eq i32 %i.bmi, 12
  br i1 %switch.i.i.i.i303.i.i, label %bb.kd, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit308.thread.i.i

bb.kd:                                            ; preds = %switch.early.test.split.i.i.i.i302.i.i, %bb.kc
  br i1 %or.cond.i.i.i.i.i.i, label %.split.i.i.i7.i.i.i.i, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit308.i.i

.split.i.i.i7.i.i.i.i:                            ; preds = %bb.kd
  %i.bmj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bkj, i1 true) ; 2 uses
  %i.bmk = and i32 %i.bmj, 28
  %i.bml = icmp eq i32 %i.bmk, 12
  %switch.offset.i.i.i8.i.i.i.i = add nuw nsw i32 %i.bmj, 651
  %spec.select.i.i.i9.i.i.i.i = select i1 %i.bml, i32 %switch.offset.i.i.i8.i.i.i.i, i32 %i.bkj
  br label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit308.i.i

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit308.i.i:        ; preds = %.split.i.i.i7.i.i.i.i, %bb.kd
  %.0.i.i6.i.i.i.i = phi i32 [ %i.bkj, %bb.kd ], [ %spec.select.i.i.i9.i.i.i.i, %.split.i.i.i7.i.i.i.i ]
  %i.bmm = sext i32 %.0.i.i6.i.i.i.i to i64
  %i.bmn = getelementptr [12 x i8], ptr %i.bki, i64 %i.bmm
  %i.bmo = getelementptr i8, ptr %i.bmn, i64 -572
  %i.bmp = load i8, ptr %i.bmo, align 4, !tbaa !526, !range !100, !noundef !236
  %i.bmq = icmp eq i8 %i.bmp, 0
  br i1 %i.bmq, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit308.thread.i.i, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit308.thread423.i.i

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit308.thread423.i.i: ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit308.i.i, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i298.i.i
  store i8 0, ptr %i.bjf, align 4, !tbaa !802
  br label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit308.thread.i.i

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit308.thread.i.i: ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit308.thread423.i.i, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit308.i.i, %switch.early.test.split.i.i.i.i302.i.i, %switch.early.test.i.i.i.i301.i.i, %bb.jn, %.loopexit.i.i
  %.3196.i.i = phi i1 [ %.2195.i.i, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit308.i.i ], [ %.2195.i.i, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit308.thread423.i.i ], [ %.1194410.i.i, %bb.jn ], [ %.1194410.i.i, %.loopexit.i.i ], [ %.2195.i.i, %switch.early.test.i.i.i.i301.i.i ], [ %.2195.i.i, %switch.early.test.split.i.i.i.i302.i.i ]
  %i.bmr = load ptr, ptr %i.ayd, align 8, !tbaa !798 ; 3 uses
  %.not238.i.i = icmp eq ptr %i.bmr, null
  br i1 %.not238.i.i, label %bb.km, label %bb.ke

bb.ke:                                            ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit308.thread.i.i
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmr, i64 20
  %i.bmt = load i32, ptr %i.bms, align 4, !tbaa !614
  %i.bmu = and i32 %i.bmt, 4
  %.not239.i.i = icmp eq i32 %i.bmu, 0
  br i1 %.not239.i.i, label %bb.kf, label %bb.km

bb.kf:                                            ; preds = %bb.ke
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.arj, i64 8304
  %i.bmw = load i32, ptr %i.bmv, align 8, !tbaa !551
  switch i32 %i.bmw, label %.thread426.i.i [
    i32 2, label %bb.kg
    i32 3, label %.thread426.sink.split.i.i
  ]

bb.kg:                                            ; preds = %bb.kf
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.arj, i64 301
  %i.bmy = load i8, ptr %i.bmx, align 1, !tbaa !768, !range !100, !noundef !236
  %i.bmz = trunc nuw i8 %i.bmy to i1
  br i1 %i.bmz, label %.thread426.i.i, label %.thread426.sink.split.i.i

.thread426.sink.split.i.i:                        ; preds = %bb.kg, %bb.kf
  %.sink540.i.i = phi i64 [ 352, %bb.kg ], [ 2512, %bb.kf ]
  %.sink538.i.i = phi i64 [ 336, %bb.kg ], [ 2496, %bb.kf ]
  %.sink535.i.i = phi i64 [ 384, %bb.kg ], [ 2544, %bb.kf ]
  %.sink531.i.i = phi i64 [ 368, %bb.kg ], [ 2528, %bb.kf ]
  %i.bna = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 4 uses
  %i.bnb = getelementptr i8, ptr %i.bna, i64 %.sink540.i.i
  %i.bnc = load float, ptr %i.bnb, align 4, !tbaa !764
  %i.bnd = getelementptr i8, ptr %i.bna, i64 %.sink538.i.i
  %i.bne = load float, ptr %i.bnd, align 4, !tbaa !764
  %i.bnf = getelementptr i8, ptr %i.bna, i64 %.sink535.i.i
  %i.bng = load float, ptr %i.bnf, align 4, !tbaa !764
  %i.bnh = fsub float %i.bnc, %i.bne
  %i.bni = getelementptr i8, ptr %i.bna, i64 %.sink531.i.i
  %i.bnj = load float, ptr %i.bni, align 4, !tbaa !764
  %i.bnk = fsub float %i.bng, %i.bnj
  %.sroa.0.0.vec.insert.i.i.i345 = insertelement <2 x float> poison, float %i.bnh, i64 0
  %.sroa.0.4.vec.insert.i.i.i346 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i345, float %i.bnk, i64 1
  br label %.thread426.i.i

.thread426.i.i:                                   ; preds = %.thread426.sink.split.i.i, %bb.kg, %bb.kf
  %.sroa.0381.1.i.i = phi <2 x float> [ zeroinitializer, %bb.kg ], [ zeroinitializer, %bb.kf ], [ %.sroa.0.4.vec.insert.i.i.i346, %.thread426.sink.split.i.i ] ; 3 uses
  %.sroa.0381.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0381.1.i.i, i64 0
  %i.bnl = fcmp une float %.sroa.0381.0.vec.extract.i.i, 0.000000e+00
  %.sroa.0381.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0381.1.i.i, i64 1
  %i.bnm = fcmp une float %.sroa.0381.4.vec.extract.i.i, 0.000000e+00
  %or.cond12.i.i = select i1 %i.bnl, i1 true, i1 %i.bnm
  br i1 %or.cond12.i.i, label %bb.kh, label %bb.km

bb.kh:                                            ; preds = %.thread426.i.i
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.arj, i64 64
  %i.bno = load float, ptr %i.bnn, align 8, !tbaa !1389
  %i.bnp = fmul float %i.bno, 8.000000e+02
  %i.bnq = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 3 uses
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bnq, i64 4528
  %i.bns = load float, ptr %i.bnr, align 8, !tbaa !429
  %i.bnt = fmul float %i.bnp, %i.bns
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.arj, i64 8756 ; 4 uses
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.arj, i64 8217
  store i8 1, ptr %i.bnv, align 1, !tbaa !676
  %i.bnw = insertelement <2 x float> poison, float %i.bnt, i64 0
  %i.bnx = shufflevector <2 x float> %i.bnw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bny = fmul <2 x float> %.sroa.0381.1.i.i, %i.bnx
  %i.bnz = load <2 x float>, ptr %i.bnu, align 4, !tbaa !75
  %i.boa = fadd <2 x float> %i.bnz, %i.bny        ; 2 uses
  store <2 x float> %i.boa, ptr %i.bnu, align 4, !tbaa !75
  %i.bob = fptosi <2 x float> %i.boa to <2 x i32>
  %.fr = freeze <2 x i32> %i.bob                  ; 2 uses
  %2 = sitofp <2 x i32> %.fr to <2 x float>       ; 2 uses
  %.fr.scalar = bitcast <2 x i32> %.fr to i64
  %or.cond15.i.i.not = icmp eq i64 %.fr.scalar, 0
  br i1 %or.cond15.i.i.not, label %bb.km, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bmr, i64 960
  %i.bod = load ptr, ptr %i.boc, align 8, !tbaa !674 ; 8 uses
  %.phi.trans.insert.i.i.i347 = getelementptr inbounds nuw i8, ptr %i.bod, i64 239 ; 2 uses
  %.pre.i.i.i348 = load i32, ptr %.phi.trans.insert.i.i.i347, align 1 ; 2 uses
  %i.boe = and i32 %.pre.i.i.i348, 256
  %i.bof = icmp eq i32 %i.boe, 0
  br i1 %i.bof, label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ki
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bod, i64 40 ; 2 uses
  %i.boh = and i32 %.pre.i.i.i348, -3585
  store i32 %i.boh, ptr %.phi.trans.insert.i.i.i347, align 1
  %i.boi = getelementptr inbounds nuw i8, ptr %i.bod, i64 244
  store i32 2139095039, ptr %i.boi, align 4, !tbaa !75
  %.sroa_idx36.i.i.i = getelementptr inbounds nuw i8, ptr %i.bod, i64 248
  store i32 2139095039, ptr %.sroa_idx36.i.i.i, align 4, !tbaa !75
  %i.boj = load <2 x float>, ptr %i.bog, align 4, !tbaa !75 ; 2 uses
  %i.bok = fadd <2 x float> %i.boj, %2
  %i.bol = fptosi <2 x float> %i.bok to <2 x i32>
  %i.bom = sitofp <2 x i32> %i.bol to <2 x float> ; 2 uses
  store <2 x float> %i.bom, ptr %i.bog, align 8, !tbaa !75
  %i.bon = fsub <2 x float> %i.bom, %i.boj        ; 5 uses
  %i.boo = shufflevector <2 x float> %i.bon, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bop = extractelement <2 x float> %i.bon, i64 0
  %i.boq = fcmp oeq float %i.bop, 0.000000e+00
  %i.bor = extractelement <2 x float> %i.bon, i64 1
  %i.bos = fcmp oeq float %i.bor, 0.000000e+00
  %or.cond.i321.i.i = select i1 %i.boq, i1 %i.bos, i1 false
  br i1 %or.cond.i321.i.i, label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit.i.i, label %bb.kj

bb.kj:                                            ; preds = %._crit_edge.i.i.i
  %i.bot = getelementptr inbounds nuw i8, ptr %i.bod, i64 20
  %i.bou = load i32, ptr %i.bot, align 4, !tbaa !614
  %i.bov = and i32 %i.bou, 256
  %.not.i.i322.i.i = icmp eq i32 %i.bov, 0
  br i1 %.not.i.i322.i.i, label %bb.kk, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i.i.i

bb.kk:                                            ; preds = %bb.kj
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bnq, i64 10068 ; 2 uses
  %i.box = load float, ptr %i.bow, align 4, !tbaa !573
  %i.boy = fcmp ugt float %i.box, 0.000000e+00
  br i1 %i.boy, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i.i.i, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.boz = getelementptr inbounds nuw i8, ptr %i.bnq, i64 68
  %i.bpa = load float, ptr %i.boz, align 4, !tbaa !720
  store float %i.bpa, ptr %i.bow, align 4, !tbaa !573
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i.i.i

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i.i.i: ; preds = %bb.kl, %bb.kk, %bb.kj
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.bod, i64 280 ; 2 uses
  %i.bpc = load <2 x float>, ptr %i.bpb, align 8, !tbaa !75
  %i.bpd = fadd <2 x float> %i.bon, %i.bpc
  store <2 x float> %i.bpd, ptr %i.bpb, align 8, !tbaa !75
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bod, i64 312 ; 2 uses
  %i.bpf = load <2 x float>, ptr %i.bpe, align 8, !tbaa !75
  %i.bpg = fadd <2 x float> %i.bon, %i.bpf
  store <2 x float> %i.bpg, ptr %i.bpe, align 8, !tbaa !75
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bod, i64 296 ; 2 uses
  %i.bpi = load <4 x float>, ptr %i.bph, align 8, !tbaa !75
  %i.bpj = fadd <4 x float> %i.boo, %i.bpi
  store <4 x float> %i.bpj, ptr %i.bph, align 8, !tbaa !75
  br label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit.i.i

_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit.i.i: ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i.i.i, %._crit_edge.i.i.i, %bb.ki
  %i.bpk = load <2 x float>, ptr %i.bnu, align 4, !tbaa !75
  %i.bpl = fsub <2 x float> %i.bpk, %2
  store <2 x float> %i.bpl, ptr %i.bnu, align 4, !tbaa !75
  br label %bb.km

bb.km:                                            ; preds = %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit.i.i, %bb.kh, %.thread426.i.i, %bb.ke, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit308.thread.i.i
  %.not240.i.i = icmp eq ptr %.3.i.i339, null
  br i1 %.not240.i.i, label %bb.le, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bpm = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 3 uses
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpm, i64 8224 ; 2 uses
  %i.bpo = load ptr, ptr %i.bpn, align 8, !tbaa !370 ; 2 uses
  %i.bpp = icmp eq ptr %i.bpo, null
  br i1 %i.bpp, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpo, i64 960
  %i.bpr = load ptr, ptr %i.bpq, align 8, !tbaa !674
  %.not.i323.i.i = icmp eq ptr %.3.i.i339, %i.bpr
  br i1 %.not.i323.i.i, label %_ZN5ImGuiL28NavUpdateWindowingApplyFocusEP11ImGuiWindow.exit.i.i, label %bb.kp

bb.kp:                                            ; preds = %bb.ko, %bb.kn
  call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  %i.bps = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 11 uses
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bps, i64 8224
  %i.bpu = load ptr, ptr %i.bpt, align 8, !tbaa !370 ; 2 uses
  %.not.i.i324.i.i = icmp eq ptr %i.bpu, null
  br i1 %.not.i.i324.i.i, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpu, i64 20
  %i.bpw = load i32, ptr %i.bpv, align 4, !tbaa !614
  %i.bpx = and i32 %i.bpw, 65536
  %.not13.i.i.i.i = icmp eq i32 %i.bpx, 0
  br i1 %.not13.i.i.i.i, label %bb.kr, label %.sink.split.i.i.i.i

bb.kr:                                            ; preds = %bb.kq, %bb.kp
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bps, i64 8304
  %i.bpz = load i32, ptr %i.bpy, align 8, !tbaa !551
  switch i32 %i.bpz, label %.thread.i.i.i.i [
    i32 2, label %bb.ks
    i32 3, label %bb.kt
  ]

bb.ks:                                            ; preds = %bb.kr
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bps, i64 40
  %i.bqb = load i32, ptr %i.bqa, align 8, !tbaa !737
  %i.bqc = and i32 %i.bqb, 1
  %i.bqd = icmp eq i32 %i.bqc, 0
  br i1 %i.bqd, label %.sink.split.i.i.i.i, label %.thread.i.i.i.i

bb.kt:                                            ; preds = %bb.kr
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bps, i64 40
  %i.bqf = load i32, ptr %i.bqe, align 8, !tbaa !737
  %i.bqg = and i32 %i.bqf, 2
  %i.bqh = icmp eq i32 %i.bqg, 0
  br i1 %i.bqh, label %.sink.split.i.i.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.kt, %bb.ks, %bb.kr
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bps, i64 118
  %i.bqj = load i8, ptr %i.bqi, align 2, !tbaa !702, !range !100, !noundef !236
  %i.bqk = trunc nuw i8 %i.bqj to i1
  br i1 %i.bqk, label %.sink.split.i.i.i.i, label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit.i.i.i

.sink.split.i.i.i.i:                              ; preds = %.thread.i.i.i.i, %bb.kt, %bb.ks, %bb.kq
  %.sink.i.i.i.i = phi i8 [ 0, %bb.kq ], [ 0, %bb.kt ], [ 0, %bb.ks ], [ 1, %.thread.i.i.i.i ]
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bps, i64 8216
  store i8 %.sink.i.i.i.i, ptr %i.bql, align 8, !tbaa !424
  br label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit.i.i.i

_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit.i.i.i: ; preds = %.sink.split.i.i.i.i, %.thread.i.i.i.i
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bps, i64 8218
  store i8 1, ptr %i.bqm, align 2, !tbaa !712
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bps, i64 8217
  store i8 1, ptr %i.bqn, align 1, !tbaa !676
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bps, i64 8152
  %i.bqp = load i32, ptr %i.bqo, align 8, !tbaa !705 ; 4 uses
  %i.bqq = icmp eq i32 %i.bqp, 0
  br i1 %i.bqq, label %_ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb.exit.i.i.i, label %bb.ku

bb.ku:                                            ; preds = %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit.i.i.i
  %i.bqr = icmp sgt i32 %i.bqp, 0
  br i1 %i.bqr, label %.lr.ph54.i.i.i.i, label %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.i.i.i.i

.lr.ph54.i.i.i.i:                                 ; preds = %bb.ku
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bps, i64 8160
  %i.bqt = load ptr, ptr %i.bqs, align 8, !tbaa !505 ; 2 uses
  %i.bqu = getelementptr inbounds nuw i8, ptr %.3.i.i339, i64 960
  %wide.trip.count63.i.i.i.i = zext nneg i32 %i.bqp to i64 ; 2 uses
  br label %bb.kv

bb.kv:                                            ; preds = %select.unfold.i.i.i.i, %.lr.ph54.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph54.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %select.unfold.i.i.i.i ] ; 4 uses
  %i.bqv = getelementptr inbounds nuw [56 x i8], ptr %i.bqt, i64 %indvars.iv.i.i.i.i
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqv, i64 8
  %i.bqx = load ptr, ptr %i.bqw, align 8, !tbaa !707
  %.not34.i.i.i.i = icmp eq ptr %i.bqx, null
  br i1 %.not34.i.i.i.i, label %select.unfold.i.i.i.i, label %.lr.ph.i.i325.i.i

.lr.ph.i.i325.i.i:                                ; preds = %bb.kv, %.loopexit.i.i.i.i
  %indvars.iv59.i.i.i.i = phi i64 [ %indvars.iv.next60.i.i.i.i, %.loopexit.i.i.i.i ], [ %indvars.iv.i.i.i.i, %bb.kv ] ; 2 uses
  %i.bqy = getelementptr inbounds nuw [56 x i8], ptr %i.bqt, i64 %indvars.iv59.i.i.i.i
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.bqy, i64 8
  %i.bra = load ptr, ptr %i.bqz, align 8, !tbaa !707 ; 3 uses
  %.not35.i.i.i.i = icmp eq ptr %i.bra, null
  br i1 %.not35.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.kw

bb.kw:                                            ; preds = %.lr.ph.i.i325.i.i
  %i.brb = load ptr, ptr %i.bqu, align 8, !tbaa !674
  %i.brc = icmp eq ptr %i.brb, %i.bra
  br i1 %i.brc, label %select.unfold.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.kw, %bb.kx
  %.079.i.i.i.i.i = phi ptr [ %i.brf, %bb.kx ], [ %.3.i.i339, %bb.kw ] ; 2 uses
  %i.brd = icmp eq ptr %.079.i.i.i.i.i, %i.bra
  br i1 %i.brd, label %select.unfold.i.i.i.i, label %bb.kx

bb.kx:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.bre = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 952
  %i.brf = load ptr, ptr %i.bre, align 8, !tbaa !675 ; 2 uses
  %.not.i.i.i326.i.i = icmp eq ptr %i.brf, null
  br i1 %.not.i.i.i326.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !31

.loopexit.i.i.i.i:                                ; preds = %bb.kx, %.lr.ph.i.i325.i.i
  %indvars.iv.next60.i.i.i.i = add nuw nsw i64 %indvars.iv59.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next60.i.i.i.i, %wide.trip.count63.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i325.i.i, !llvm.loop !34

select.unfold.i.i.i.i:                            ; preds = %bb.kw, %.lr.ph.i.i.i.i.i, %bb.kv
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond64.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count63.i.i.i.i
  br i1 %exitcond64.not.i.i.i.i, label %_ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb.exit.i.i.i, label %bb.kv, !llvm.loop !35
end_hunk_0
begin_hunk_1_@_ZN5ImGui5BeginEPKcPbi:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.avr, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false), !tbaa.struct !386
  store i8 0, ptr %i.avs, align 8, !tbaa !571
  br label %bb.iu

bb.iu:                                            ; preds = %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit.thread, %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit
  %i.bap = load i32, ptr %i.anh, align 4, !tbaa !614
  %i.baq = and i32 %i.bap, 16777216
  %.not244.i = icmp eq i32 %i.baq, 0
  br i1 %.not244.i, label %bb.ix, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.bar = load i128, ptr %i.avr, align 1
  %i.bas = load i128, ptr %23, align 8
  %i.bat = icmp ne i128 %i.bar, %i.bas
  %i.bau = zext i1 %i.bat to i32
  %.not245.i = icmp eq i32 %i.bau, 0
  br i1 %.not245.i, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  store i8 1, ptr %i.avs, align 8, !tbaa !571
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv, %bb.iu
  %i.bav = getelementptr inbounds nuw i8, ptr %i.awm, i64 8
  %i.baw = getelementptr inbounds nuw i8, ptr %i.awm, i64 16
  %i.bax = load <2 x float>, ptr %i.bav, align 4, !tbaa !75 ; 2 uses
  %i.bay = load <2 x float>, ptr %i.baw, align 4, !tbaa !75 ; 2 uses
  %i.baz = fcmp olt <2 x float> %i.bax, %i.bay
  %i.bba = select <2 x i1> %i.baz, <2 x float> %i.bax, <2 x float> %i.bay ; 3 uses
  %i.bbb = load <2 x float>, ptr %i.avg, align 8, !tbaa !75
  %i.bbc = fmul <2 x float> %i.bba, %i.bbb
  %i.bbd = load <2 x float>, ptr %i.alx, align 8, !tbaa !75
  %i.bbe = fadd <2 x float> %i.bbc, %i.bbd        ; 2 uses
  %i.bbf = zext i1 %i.awp to i64                  ; 3 uses
  %i.bbg = extractelement <2 x float> %i.bbe, i64 0
  %i.bbh = extractelement <2 x float> %i.bbe, i64 1
  %.sroa.speculated = select i1 %i.awp, float %i.bbh, float %i.bbg
  %i.bbi = getelementptr inbounds nuw [4 x i8], ptr %i.avt, i64 %i.bbf
  %i.bbj = load float, ptr %i.bbi, align 4, !tbaa !75 ; 3 uses
  %i.bbk = fadd float %i.bbj, %.sroa.speculated   ; 2 uses
  %i.bbl = getelementptr inbounds nuw [4 x i8], ptr %i.avu, i64 %i.bbf
  %i.bbm = load float, ptr %i.bbl, align 4, !tbaa !75
  %i.bbn = getelementptr inbounds nuw [4 x i8], ptr %i.avv, i64 %i.bbf
  %i.bbo = load float, ptr %i.bbn, align 4, !tbaa !75
  %i.bbp = fsub float %i.bbm, %i.bbo
  %i.bbq = load float, ptr %i.aok, align 4, !tbaa !541
  %i.bbr = fadd float %i.bbp, %i.bbq              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  %i.bbs = load i64, ptr %i.alx, align 8, !tbaa !75
  store i64 %i.bbs, ptr %24, align 8, !tbaa !75
  %.sroa.sel909.idx.sroa.sel.idx = select i1 %i.awp, i64 4, i64 0
  %.sroa.sel909.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %24, i64 %.sroa.sel909.idx.sroa.sel.idx ; 2 uses
  store float %i.bbr, ptr %.sroa.sel909.idx.sroa.sel, align 4, !tbaa !75
  %i.bbt = load i8, ptr %i.avs, align 8, !tbaa !571, !range !100, !noundef !236
  %i.bbu = trunc nuw i8 %i.bbt to i1
  br i1 %i.bbu, label %bb.iy, label %_Z7ImClampRK6ImVec2S1_S1_.exit

bb.iy:                                            ; preds = %bb.ix
  store float %i.bbk, ptr %.sroa.sel909.idx.sroa.sel, align 4, !tbaa !75
  %i.bbv = fcmp oeq float %i.bbj, 0.000000e+00
  br i1 %i.bbv, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.bbw = fcmp ogt float %i.bbj, 0.000000e+00
  %i.bbx = fcmp ule float %i.bbk, %i.bbr
  %i.bby = xor i1 %i.bbw, %i.bbx
  br i1 %i.bby, label %bb.ja, label %_Z7ImClampRK6ImVec2S1_S1_.exit

bb.ja:                                            ; preds = %bb.iz, %bb.iy
  br label %_Z7ImClampRK6ImVec2S1_S1_.exit

_Z7ImClampRK6ImVec2S1_S1_.exit:                   ; preds = %bb.ja, %bb.iz, %bb.ix
  %.0221.i = phi i1 [ true, %bb.ja ], [ false, %bb.iz ], [ false, %bb.ix ]
  %i.bbz = icmp eq i64 %indvars.iv1026, 3
  %i.bca = icmp eq i64 %indvars.iv1026, 2         ; 2 uses
  %or.cond13.i = and i1 %or.cond996, %i.bca
  %or.cond249.i = or i1 %i.bbz, %or.cond13.i
  %i.bcb = insertelement <2 x i1> poison, i1 %i.awo, i64 0
  %i.bcc = insertelement <2 x i1> %i.bcb, i1 %or.cond249.i, i64 1
  %i.bcd = select <2 x i1> %i.bcc, <2 x float> %i.avx, <2 x float> splat (float f0xFF7FFFFF) ; 2 uses
  %i.bce = insertelement <2 x i1> poison, i1 %i.awn, i64 0
  %i.bcf = insertelement <2 x i1> %i.bce, i1 %i.bca, i64 1
  %i.bcg = select <2 x i1> %i.bcf, <2 x float> %i.akv, <2 x float> splat (float f0x7F7FFFFF) ; 2 uses
  %.0. = load <2 x float>, ptr %24, align 8, !tbaa !75 ; 3 uses
  %i.bch = fcmp olt <2 x float> %.0., %i.bcd
  %i.bci = fcmp ogt <2 x float> %.0., %i.bcg
  %i.bcj = select <2 x i1> %i.bci, <2 x float> %i.bcg, <2 x float> %.0.
  %i.bck = select <2 x i1> %i.bch, <2 x float> %i.bcd, <2 x float> %i.bcj ; 2 uses
  store <2 x float> %i.bck, ptr %24, align 8, !tbaa !75
  br i1 %.0221.i, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit
  %i.bcl = bitcast <2 x float> %i.bck to i64
  %i.bcm = extractelement <2 x float> %i.bba, i64 0
  %i.bcn = extractelement <2 x float> %i.bba, i64 1
  call fastcc void @_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_(ptr noundef nonnull %i.akc, i64 %i.bcl, float %i.bcm, float %i.bcn, ptr noundef %20, ptr noundef %21), !inline_history !1430
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %_Z7ImClampRK6ImVec2S1_S1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %.thread974

.thread974:                                       ; preds = %.thread1187, %bb.ik, %bb.jc, %bb.ip
  %.4.i = phi i32 [ %.3.i, %bb.ip ], [ %.2.i1021, %bb.jc ], [ %.2.i1021, %.thread1187 ], [ %.2.i1021, %bb.ik ]
  %i.bco = load i8, ptr %i.c, align 1, !tbaa !243, !range !100, !noundef !236
  %i.bcp = trunc nuw i8 %i.bco to i1
  %spec.select997 = select i1 %i.bcp, i32 %i.awi, i32 %.19591018
  %i.bcq = load i8, ptr %i.d, align 1, !tbaa !243, !range !100, !noundef !236
  %i.bcr = trunc nuw i8 %i.bcq to i1
  %.2955 = select i1 %i.bcr, i32 %i.awi, i32 %.19541019
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %bb.jd

bb.jd:                                            ; preds = %.thread974, %bb.ib
  %.3961 = phi i32 [ %.19591018, %bb.ib ], [ %spec.select997, %.thread974 ] ; 3 uses
  %.3956 = phi i32 [ %.19541019, %bb.ib ], [ %.2955, %.thread974 ] ; 5 uses
  %.5.i = phi i32 [ %.2.i1021, %bb.ib ], [ %.4.i, %.thread974 ] ; 4 uses
  %indvars.iv.next1027 = add nuw nsw i64 %indvars.iv1026, 1 ; 2 uses
  %exitcond1029.not = icmp eq i64 %indvars.iv.next1027, 4
  br i1 %exitcond1029.not, label %bb.hy, label %bb.ib, !llvm.loop !1433

bb.je:                                            ; preds = %_ZN5ImGui5PopIDEv.exit
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.awh, i64 960
  %i.bct = load ptr, ptr %i.bcs, align 8, !tbaa !674
  %i.bcu = icmp eq ptr %i.bct, %i.akc
  br i1 %i.bcu, label %bb.jf, label %bb.jj

bb.jf:                                            ; preds = %bb.je
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.ang, i64 8304
  %i.bcw = load i32, ptr %i.bcv, align 8, !tbaa !551
  switch i32 %i.bcw, label %.thread977 [
    i32 2, label %bb.jg
    i32 3, label %.thread977.sink.split
  ]

bb.jg:                                            ; preds = %bb.jf
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.ang, i64 301
  %i.bcy = load i8, ptr %i.bcx, align 1, !tbaa !830, !range !100, !noundef !236
  %i.bcz = trunc nuw i8 %i.bcy to i1
  br i1 %i.bcz, label %.thread977.sink.split, label %.thread977

.thread977.sink.split:                            ; preds = %bb.jf, %bb.jg
  %.sink1221 = phi i64 [ 352, %bb.jg ], [ 2352, %bb.jf ]
  %.sink1218 = phi i64 [ 336, %bb.jg ], [ 2336, %bb.jf ]
  %.sink1215 = phi i64 [ 384, %bb.jg ], [ 2384, %bb.jf ]
  %.sink1210 = phi i64 [ 368, %bb.jg ], [ 2368, %bb.jf ]
  %i.bda = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 4 uses
  %i.bdb = getelementptr i8, ptr %i.bda, i64 %.sink1221
  %i.bdc = load float, ptr %i.bdb, align 4, !tbaa !764
  %i.bdd = getelementptr i8, ptr %i.bda, i64 %.sink1218
  %i.bde = load float, ptr %i.bdd, align 4, !tbaa !764
  %i.bdf = getelementptr i8, ptr %i.bda, i64 %.sink1215
  %i.bdg = load float, ptr %i.bdf, align 4, !tbaa !764
  %i.bdh = fsub float %i.bdc, %i.bde
  %i.bdi = getelementptr i8, ptr %i.bda, i64 %.sink1210
  %i.bdj = load float, ptr %i.bdi, align 4, !tbaa !764
  %i.bdk = fsub float %i.bdg, %i.bdj
  %.sroa.0.0.vec.insert.i735 = insertelement <2 x float> poison, float %i.bdh, i64 0
  %.sroa.0.4.vec.insert.i736 = insertelement <2 x float> %.sroa.0.0.vec.insert.i735, float %i.bdk, i64 1
  br label %.thread977

.thread977:                                       ; preds = %.thread977.sink.split, %bb.jf, %bb.jg
  %.sroa.0894.1 = phi <2 x float> [ zeroinitializer, %bb.jg ], [ zeroinitializer, %bb.jf ], [ %.sroa.0.4.vec.insert.i736, %.thread977.sink.split ] ; 3 uses
  %.sroa.0894.0.vec.extract = extractelement <2 x float> %.sroa.0894.1, i64 0
  %i.bdl = fcmp une float %.sroa.0894.0.vec.extract, 0.000000e+00
  %.sroa.0894.4.vec.extract = extractelement <2 x float> %.sroa.0894.1, i64 1
  %i.bdm = fcmp une float %.sroa.0894.4.vec.extract, 0.000000e+00
  %or.cond16.i = select i1 %i.bdl, i1 true, i1 %i.bdm
  br i1 %or.cond16.i, label %bb.jh, label %bb.jj

bb.jh:                                            ; preds = %.thread977
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.ang, i64 64
  %i.bdo = load float, ptr %i.bdn, align 8, !tbaa !727
  %i.bdp = fmul float %i.bdo, 6.000000e+02
  %i.bdq = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 4528
  %i.bds = load float, ptr %i.bdr, align 8, !tbaa !429
  %i.bdt = fmul float %i.bdp, %i.bds
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.ang, i64 8764 ; 5 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.ang, i64 8748
  store i8 0, ptr %i.bdv, align 4, !tbaa !802
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.ang, i64 8217
  store i8 1, ptr %i.bdw, align 1, !tbaa !676
  %i.bdx = insertelement <2 x float> poison, float %i.bdt, i64 0
  %i.bdy = shufflevector <2 x float> %i.bdx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bdz = fmul <2 x float> %.sroa.0894.1, %i.bdy
  %i.bea = load <2 x float>, ptr %i.bdu, align 4, !tbaa !75
  %i.beb = fadd <2 x float> %i.bea, %i.bdz        ; 3 uses
  store <2 x float> %i.beb, ptr %i.bdu, align 4, !tbaa !75
  %i.bec = load <2 x float>, ptr %i.alx, align 8, !tbaa !75
  %i.bed = fsub <2 x float> %i.avx, %i.bec
  %i.bee = load <2 x float>, ptr %i.avg, align 8, !tbaa !75
  %i.bef = fsub <2 x float> %i.bed, %i.bee        ; 2 uses
  %i.beg = fcmp oge <2 x float> %i.beb, %i.bef
  %i.beh = select <2 x i1> %i.beg, <2 x float> %i.beb, <2 x float> %i.bef ; 2 uses
  store <2 x float> %i.beh, ptr %i.bdu, align 4, !tbaa !75
  %i.bei = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 33, float noundef 1.000000e+00), !inline_history !1430
  store i32 %i.bei, ptr %i.i, align 16, !tbaa !237
  %i.bej = fptosi <2 x float> %i.beh to <2 x i32>
  %.fr = freeze <2 x i32> %i.bej                  ; 2 uses
  %.fr.scalar = bitcast <2 x i32> %.fr to i64
  %or.cond19.i.not = icmp eq i64 %.fr.scalar, 0
  br i1 %or.cond19.i.not, label %bb.jj, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.bek = sitofp <2 x i32> %.fr to <2 x float>   ; 2 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %i.akc, i64 56
  %i.bem = load <2 x float>, ptr %i.bel, align 8, !tbaa !75
  %i.ben = fadd <2 x float> %i.bem, %i.bek
  %i.beo = bitcast <2 x float> %i.ben to i64
  %i.bep = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %i.akc, i64 %i.beo), !inline_history !1430
  store <2 x float> %i.bep, ptr %21, align 8, !tbaa !75
  %i.beq = load <2 x float>, ptr %i.bdu, align 4, !tbaa !75
  %i.ber = fsub <2 x float> %i.beq, %i.bek
  store <2 x float> %i.ber, ptr %i.bdu, align 4, !tbaa !75
  br label %bb.jj

bb.jj:                                            ; preds = %.thread977, %bb.ji, %bb.jh, %bb.je, %_ZN5ImGui5PopIDEv.exit
  %.sroa.022.0.copyload.i = load float, ptr %i.alx, align 8, !tbaa !75 ; 4 uses
  %.sroa.423.0.copyload.i = load float, ptr %i.aly, align 4, !tbaa !75 ; 4 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %i.akc, i64 56 ; 2 uses
  %.sroa.020.0.copyload.i = load float, ptr %i.bes, align 8, !tbaa !75 ; 4 uses
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akc, i64 60 ; 2 uses
  %.sroa.421.0.copyload.i = load float, ptr %.sroa.421.0..sroa_idx.i, align 4, !tbaa !75 ; 4 uses
  %i.bet = load float, ptr %21, align 8, !tbaa !249 ; 6 uses
  %i.beu = fcmp une float %i.bet, f0x7F7FFFFF
  br i1 %i.beu, label %bb.jk, label %bb.jm

bb.jk:                                            ; preds = %bb.jj
  %i.bev = load float, ptr %i.avg, align 8, !tbaa !615
  %i.bew = fcmp une float %i.bev, %i.bet
  %i.bex = fcmp une float %.sroa.020.0.copyload.i, %i.bet
  %or.cond250.i = select i1 %i.bew, i1 true, i1 %i.bex
  br i1 %or.cond250.i, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  store float %i.bet, ptr %i.bes, align 8, !tbaa !725
  store float %i.bet, ptr %i.avg, align 8, !tbaa !615
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk, %bb.jj
  %i.bey = phi float [ %i.bet, %bb.jl ], [ %.sroa.020.0.copyload.i, %bb.jk ], [ %.sroa.020.0.copyload.i, %bb.jj ]
  %i.bez = load float, ptr %i.aov, align 4, !tbaa !250 ; 6 uses
  %i.bfa = fcmp une float %i.bez, f0x7F7FFFFF
  br i1 %i.bfa, label %bb.jn, label %bb.jp

bb.jn:                                            ; preds = %bb.jm
  %i.bfb = load float, ptr %i.avh, align 4, !tbaa !616
  %i.bfc = fcmp une float %i.bfb, %i.bez
  %i.bfd = fcmp une float %.sroa.421.0.copyload.i, %i.bez
  %or.cond998 = select i1 %i.bfc, i1 true, i1 %i.bfd
  br i1 %or.cond998, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  store float %i.bez, ptr %.sroa.421.0..sroa_idx.i, align 4, !tbaa !909
  store float %i.bez, ptr %i.avh, align 4, !tbaa !616
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jn, %bb.jo, %bb.jm
  %i.bfe = phi float [ %.sroa.421.0.copyload.i, %bb.jn ], [ %i.bez, %bb.jo ], [ %.sroa.421.0.copyload.i, %bb.jm ]
  %i.bff = load float, ptr %20, align 8, !tbaa !249 ; 2 uses
  %i.bfg = fcmp une float %i.bff, f0x7F7FFFFF
  br i1 %i.bfg, label %bb.jq, label %bb.js

bb.jq:                                            ; preds = %bb.jp
  %i.bfh = fptosi float %i.bff to i32
  %i.bfi = sitofp i32 %i.bfh to float             ; 3 uses
  %i.bfj = fcmp une float %.sroa.022.0.copyload.i, %i.bfi
  br i1 %i.bfj, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  store float %i.bfi, ptr %i.alx, align 8, !tbaa !693
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq, %bb.jp
  %i.bfk = phi float [ %i.bfi, %bb.jr ], [ %.sroa.022.0.copyload.i, %bb.jq ], [ %.sroa.022.0.copyload.i, %bb.jp ]
  %i.bfl = load float, ptr %i.aou, align 4, !tbaa !250 ; 2 uses
  %i.bfm = fcmp une float %i.bfl, f0x7F7FFFFF
  br i1 %i.bfm, label %bb.jt, label %bb.jv

bb.jt:                                            ; preds = %bb.js
  %i.bfn = fptosi float %i.bfl to i32
  %i.bfo = sitofp i32 %i.bfn to float             ; 3 uses
  %i.bfp = fcmp une float %.sroa.423.0.copyload.i, %i.bfo
  br i1 %i.bfp, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  store float %i.bfo, ptr %i.aly, align 4, !tbaa !735
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt, %bb.js
  %i.bfq = phi float [ %i.bfo, %bb.ju ], [ %.sroa.423.0.copyload.i, %bb.jt ], [ %.sroa.423.0.copyload.i, %bb.js ]
  %i.bfr = fcmp une float %.sroa.022.0.copyload.i, %i.bfk
  %i.bfs = fcmp une float %.sroa.423.0.copyload.i, %i.bfq
  %or.cond1222 = select i1 %i.bfr, i1 true, i1 %i.bfs
  %i.bft = fcmp une float %.sroa.020.0.copyload.i, %i.bey
  %or.cond1223 = select i1 %or.cond1222, i1 true, i1 %i.bft
  %i.bfu = fcmp une float %.sroa.421.0.copyload.i, %i.bfe
  %or.cond1224 = select i1 %or.cond1223, i1 true, i1 %i.bfu
  br i1 %or.cond1224, label %bb.jw, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit715

bb.jw:                                            ; preds = %bb.jv
  %i.bfv = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.bfw = load i32, ptr %i.anh, align 4, !tbaa !614
  %i.bfx = and i32 %i.bfw, 256
  %.not.i714 = icmp eq i32 %i.bfx, 0
  br i1 %.not.i714, label %bb.jx, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit715

bb.jx:                                            ; preds = %bb.jw
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfv, i64 10068 ; 2 uses
  %i.bfz = load float, ptr %i.bfy, align 4, !tbaa !573
  %i.bga = fcmp ugt float %i.bfz, 0.000000e+00
  br i1 %i.bga, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit715, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bfv, i64 68
  %i.bgc = load float, ptr %i.bgb, align 4, !tbaa !720
  store float %i.bgc, ptr %i.bfy, align 4, !tbaa !573
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit715

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit715: ; preds = %bb.jv, %bb.jy, %bb.jx, %bb.jw
  %.not242.i = icmp eq i32 %.3956, -1
  br i1 %.not242.i, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit, label %bb.jz

bb.jz:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit715
  %i.bgd = load float, ptr %i.aok, align 4, !tbaa !541
  %i.bge = call fastcc { <2 x float>, <2 x float> } @_ZL19GetResizeBorderRectP11ImGuiWindowiff(ptr noundef nonnull %i.akc, i32 noundef %.3956, float noundef %i.aoj, float noundef %i.bgd), !inline_history !1430 ; 2 uses
  %i.bgf = extractvalue { <2 x float>, <2 x float> } %i.bge, 0
  %i.bgg = extractvalue { <2 x float>, <2 x float> } %i.bge, 1
  store <2 x float> %i.bgf, ptr %i.avr, align 8, !tbaa !75
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ang, i64 9816
  store <2 x float> %i.bgg, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !75
  br label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit

_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit: ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit715, %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  %.not483 = icmp eq i32 %.5.i, 0
  br i1 %.not483, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread, label %bb.ka

bb.ka:                                            ; preds = %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit
  %.not484 = trunc i32 %.5.i to i1
  %spec.select532 = select i1 %.not484, i1 true, i1 %.1413
  %.not485 = icmp ne i32 %.5.i, 1
  %spec.select549 = select i1 %.not485, i1 true, i1 %.4
  br label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread

_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread: ; preds = %bb.he, %bb.ha, %bb.hb, %bb.hd, %bb.gz, %bb.ka, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit, %bb.gy, %bb.gx
  %.0958 = phi i32 [ -1, %bb.gy ], [ %.3961, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit ], [ %.3961, %bb.ka ], [ -1, %bb.gx ], [ -1, %bb.gz ], [ -1, %bb.hd ], [ -1, %bb.hb ], [ -1, %bb.ha ], [ -1, %bb.he ]
  %.0953 = phi i32 [ -1, %bb.gy ], [ %.3956, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit ], [ %.3956, %bb.ka ], [ -1, %bb.gx ], [ -1, %bb.gz ], [ -1, %bb.hd ], [ -1, %bb.hb ], [ -1, %bb.ha ], [ -1, %bb.he ]
  %.4416 = phi i1 [ %.1413, %bb.gy ], [ %.1413, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit ], [ %spec.select532, %bb.ka ], [ %.1413, %bb.gx ], [ %.1413, %bb.gz ], [ %.1413, %bb.hd ], [ %.1413, %bb.hb ], [ %.1413, %bb.ha ], [ %.1413, %bb.he ]
  %.6 = phi i1 [ %.4, %bb.gy ], [ %.4, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit ], [ %spec.select549, %bb.ka ], [ %.4, %bb.gx ], [ %.4, %bb.gz ], [ %.4, %bb.hd ], [ %.4, %bb.hb ], [ %.4, %bb.ha ], [ %.4, %bb.he ]
  %i.bgh = trunc i32 %.0958 to i8
  %i.bgi = load ptr, ptr %i.g, align 8, !tbaa !601 ; 40 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgi, i64 216
  store i8 %i.bgh, ptr %i.bgj, align 8, !tbaa !1449
  %i.bgk = trunc i32 %.0953 to i8
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bgi, i64 217
  store i8 %i.bgk, ptr %i.bgl, align 1, !tbaa !1450
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgi, i64 207
  %i.bgn = load i8, ptr %i.bgm, align 1, !tbaa !613, !range !100, !noundef !236
  %i.bgo = trunc nuw i8 %i.bgn to i1
  br i1 %i.bgo, label %_Z7ImClampRK6ImVec2S1_S1_.exit.i, label %bb.kb

bb.kb:                                            ; preds = %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgi, i64 56
  %i.bgq = load float, ptr %i.bgp, align 8, !tbaa !725
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgi, i64 60
  %i.bgs = load float, ptr %i.bgr, align 4, !tbaa !909
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgi, i64 116
  %i.bgu = load float, ptr %i.bgt, align 4, !tbaa !933
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgi, i64 124 ; 2 uses
  %i.bgw = load float, ptr %i.bgv, align 4, !tbaa !936 ; 2 uses
  %i.bgx = fadd float %i.bgu, %i.bgw
  %i.bgy = fsub float %i.bgs, %i.bgx
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bgi, i64 552
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgi, i64 560
  %i.bhb = load <2 x float>, ptr %i.bha, align 8, !tbaa !75
  %i.bhc = load <2 x float>, ptr %i.bgz, align 8, !tbaa !75
  %i.bhd = fsub <2 x float> %i.bhb, %i.bhc
  %i.bhe = fadd <2 x float> %i.aep, %i.bhd        ; 2 uses
  br i1 %i.eg, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bgi, i64 64
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bgi, i64 88
  %i.bhh = load <2 x float>, ptr %i.bhg, align 8, !tbaa !75
  %i.bhi = fmul <2 x float> %i.bhh, splat (float 2.000000e+00)
  %i.bhj = load <2 x float>, ptr %i.bhf, align 8, !tbaa !75
  %i.bhk = fadd <2 x float> %i.bhi, %i.bhj
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kb, %bb.kc
  %.sroa.0826.0 = phi <2 x float> [ %i.bhk, %bb.kc ], [ zeroinitializer, %bb.kb ] ; 3 uses
  %i.bhl = extractelement <2 x float> %i.bhe, i64 0
  %i.bhm = select i1 %.4416, float %i.bgq, float %i.bhl
  %i.bhn = extractelement <2 x float> %i.bhe, i64 1
  %i.bho = select i1 %.6, float %i.bgy, float %i.bhn ; 2 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bgi, i64 200 ; 3 uses
  %i.bhq = load i8, ptr %i.bhp, align 8, !tbaa !834, !range !100, !noundef !236
  %i.bhr = and i32 %.1403, 16384
  %.not486 = icmp eq i32 %i.bhr, 0
  br i1 %.not486, label %bb.ke, label %bb.kg

bb.ke:                                            ; preds = %bb.kd
  %.sroa.0826.4.vec.extract = extractelement <2 x float> %.sroa.0826.0, i64 1
end_hunk_1
begin_hunk_2_@_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_:bb.a
  %i.bg = trunc nsw i32 %i.bf to i16
  store i16 %i.bg, ptr %i.ax, align 4, !tbaa !229
  %i.bh = sext i32 %i.bf to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bh ; 3 uses
  store i32 %i.av, ptr %i.bi, align 4, !tbaa !231
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 6
  store i16 0, ptr %i.bj, align 2, !tbaa !233
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i16 0, ptr %i.bk, align 4, !tbaa !232
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i: ; preds = %bb.j, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i
  %i.bl = phi i16 [ 1, %bb.j ], [ %i.bc, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.bm = phi i64 [ %i.bh, %bb.j ], [ %i.az, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 6
  store i16 %i.bl, ptr %i.bo, align 2, !tbaa !233
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 10600 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !235
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !235
  br label %_ZN5ImGui7MemFreeEPv.exit.i

_ZN5ImGui7MemFreeEPv.exit.i:                      ; preds = %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i, %bb.h, %bb.g
  %i.bs = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !226
  %i.bt = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  tail call void %i.bs(ptr noundef %i.as, ptr noundef %i.bt), !inline_history !49
  br label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i, %_ZN5ImGui8MemAllocEm.exit.i
  store ptr %i.n, ptr %i.an, align 8, !tbaa !494
  store i32 %i.i, ptr %i.b, align 4, !tbaa !495
  %.pre3 = load i32, ptr %0, align 8, !tbaa !496
  br label %_ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit

_ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit:      ; preds = %._ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit_crit_edge, %bb.k
  %i.bu = phi i32 [ %i.a, %._ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit_crit_edge ], [ %.pre3, %bb.k ]
  %i.bv = phi ptr [ %.pre, %._ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit_crit_edge ], [ %i.n, %bb.k ]
  %i.bw = sext i32 %i.bu to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i64, ptr %1, align 8
  store i64 %i.by, ptr %i.bx, align 8
  %i.bz = load i32, ptr %0, align 8, !tbaa !496
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %0, align 8, !tbaa !496
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @_ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow(ptr nofree noundef captures(none) %0) local_unnamed_addr #43 {
bb.a:
  %1 = alloca %struct.ImRect, align 8             ; 7 uses
  %2 = alloca %struct.ImRect, align 4             ; 7 uses
  %3 = alloca %struct.ImRect, align 8             ; 5 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImRect, align 8             ; 6 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !399
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !400  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3508
  %i.h = load <2 x float>, ptr %i.e, align 8, !tbaa !75 ; 3 uses
  %i.i = load <2 x float>, ptr %i.f, align 8, !tbaa !75
  %i.j = fadd <2 x float> %i.h, %i.i              ; 2 uses
  %i.k = load <2 x float>, ptr %i.g, align 4, !tbaa !75 ; 2 uses
  %i.l = fsub <2 x float> %i.j, %i.h
  %i.m = fmul <2 x float> %i.k, splat (float 2.000000e+00)
  %i.n = fcmp ogt <2 x float> %i.l, %i.m
  %i.o = fneg <2 x float> %i.k
  %i.p = select <2 x i1> %i.n, <2 x float> %i.o, <2 x float> zeroinitializer ; 2 uses
  %i.q = fsub <2 x float> %i.h, %i.p              ; 2 uses
  %i.r = fadd <2 x float> %i.j, %i.p              ; 3 uses
  store <2 x float> %i.q, ptr %1, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !614  ; 3 uses
  %i.v = and i32 %i.u, 268435456
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 5264
  %i.x = load i32, ptr %i.w, align 8, !tbaa !867
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 5272
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !497
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr [120 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -240
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !893 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 3308
  %i.af = load float, ptr %i.ae, align 4, !tbaa !960 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 379
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !950, !range !100, !noundef !236
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 620
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !380
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 628
  %i.am = load float, ptr %i.al, align 4, !tbaa !381
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ao = load float, ptr %i.an, align 8, !tbaa !693 ; 2 uses
  %i.ap = fadd float %i.af, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !615
  %i.as = fadd float %i.ao, %i.ar
  %i.at = fsub float %i.as, %i.af
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 192
  %i.av = load float, ptr %i.au, align 8, !tbaa !1004
  %i.aw = fsub float %i.at, %i.av
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink109 = phi float [ f0xFF7FFFFF, %bb.c ], [ %i.ap, %bb.d ]
  %.sink108 = phi float [ %i.ak, %bb.c ], [ f0xFF7FFFFF, %bb.d ]
  %.sink107 = phi float [ f0x7F7FFFFF, %bb.c ], [ %i.aw, %bb.d ]
  %.sink = phi float [ %i.am, %bb.c ], [ f0x7F7FFFFF, %bb.d ]
  store float %.sink109, ptr %2, align 4, !tbaa !75
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %.sink108, ptr %i.ax, align 4, !tbaa !75
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.sink107, ptr %i.ay, align 4, !tbaa !75
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %.sink, ptr %i.az, align 4, !tbaa !75
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.bd = call <2 x float> @_ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy(ptr noundef nonnull align 4 dereferenceable(8) %i.ba, ptr noundef nonnull align 4 dereferenceable(8) %i.bb, ptr noundef nonnull %i.bc, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  %i.be = and i32 %i.u, 67108864
  %.not38 = icmp eq i32 %i.be, 0
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 228
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.bi = load i64, ptr %i.bf, align 4, !tbaa !75 ; 2 uses
  store i64 %i.bi, ptr %3, align 8, !tbaa !75
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !75
  %i.bk = call <2 x float> @_ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy(ptr noundef nonnull align 4 dereferenceable(8) %i.bf, ptr noundef nonnull align 4 dereferenceable(8) %i.bg, ptr noundef nonnull %i.bh, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.bl = and i32 %i.u, 33554432
  %.not39 = icmp eq i32 %i.bl, 0
  br i1 %.not39, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 3516
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !985 ; 2 uses
  %i.bo = tail call fastcc <2 x float> @_ZN5ImGuiL22NavCalcPreferredRefPosEi(i32 noundef 33554432) ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !1010
  %i.br = icmp eq i32 %i.bq, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 8216
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !424, !range !100 ; 3 uses
  br i1 %i.br, label %.thread.i, label %_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit

.thread.i:                                        ; preds = %bb.i
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 8224
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !370
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8217
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !676, !range !100, !noundef !236
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = icmp ne ptr %i.bw, null
  %or.cond3.i = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %or.cond3.i, label %_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread.i
  %i.cb = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x float> %i.cc, <float 0.000000e+00, float 2.000000e+01> ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cf = fadd <2 x float> %i.bo, %i.cd
  %i.cg = fsub <2 x float> %i.bo, %i.cd
  %i.ch = shufflevector <2 x float> %i.cf, <2 x float> %i.cg, <2 x i32> <i32 0, i32 3>
  %i.ci = load <2 x float>, ptr %i.ce, align 4, !tbaa !75 ; 2 uses
  %i.cj = fmul <2 x float> %i.ci, <float 5.000000e-01, float 1.000000e+00>
  %i.ck = fsub <2 x float> %i.ch, %i.cj           ; 3 uses
  %i.cl = fadd <2 x float> %i.ci, %i.ck           ; 2 uses
  %i.cm = fcmp oge <2 x float> %i.ck, %i.q
  %6 = freeze <2 x i1> %i.cm
  %7 = bitcast <2 x i1> %6 to i2
  %or.cond.not106 = icmp eq i2 %7, -1
  %i.cn = extractelement <2 x float> %i.r, i64 0
  %i.co = extractelement <2 x float> %i.cl, i64 0
  %i.cp = fcmp ole float %i.co, %i.cn
  %or.cond97.not103 = select i1 %or.cond.not106, i1 %i.cp, i1 false
  %i.cq = fcmp ole <2 x float> %i.cl, %i.r
  %i.cr = extractelement <2 x i1> %i.cq, i64 1
  %or.cond100 = select i1 %or.cond97.not103, i1 %i.cr, i1 false
  br i1 %or.cond100, label %bb.r, label %_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit

_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit:  ; preds = %bb.i, %bb.k, %bb.j
  %i.cs = phi i8 [ 1, %bb.j ], [ %i.bt, %bb.k ], [ %i.bt, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.ct = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cv = fmul <2 x float> %i.cu, <float 1.600000e+01, float 1.000000e+01>
  %i.cw = fadd <2 x float> %i.cv, %i.bo
  store <2 x float> %i.cw, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.cx = trunc nuw i8 %i.cs to i1
  br i1 %i.cx, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 8217
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !676, !range !100, !noundef !236
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 114
  %i.dc = load i8, ptr %i.db, align 2, !tbaa !738, !range !100, !noundef !236
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = fadd <2 x float> %i.bo, <float 1.600000e+01, float 8.000000e+00>
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l, %_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> splat (float 2.400000e+01), <2 x float> %i.bo)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dg = phi <2 x float> [ %i.df, %bb.o ], [ %i.de, %bb.n ]
  %i.dh = fadd <2 x float> %i.bo, <float -1.600000e+01, float -8.000000e+00>
  store <2 x float> %i.dh, ptr %5, align 8, !tbaa !75
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %i.dg, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !75
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.dk = call <2 x float> @_ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy(ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.di, ptr noundef nonnull %i.dj, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dm = load <2 x float>, ptr %i.dl, align 8, !tbaa !75
  br label %bb.r

bb.r:                                             ; preds = %bb.k, %bb.p, %bb.q, %bb.g, %bb.e
  %.sroa.086.1 = phi <2 x float> [ %i.dm, %bb.q ], [ %i.bd, %bb.e ], [ %i.bk, %bb.g ], [ %i.ck, %bb.k ], [ %i.dk, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  ret <2 x float> %.sroa.086.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc <2 x float> @_ZL38CalcNextScrollFromScrollTargetAndClampP11ImGuiWindow(ptr nofree noundef readonly captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load <2 x float>, ptr %i.a, align 8, !tbaa !75 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load float, ptr %i.e, align 8, !tbaa !939
  %i.g = load <2 x float>, ptr %i.c, align 8, !tbaa !75
  %i.h = load <2 x float>, ptr %i.d, align 8, !tbaa !75
  %i.i = fadd <2 x float> %i.g, %i.h              ; 2 uses
  %i.j = extractelement <2 x float> %i.i, i64 0
  %i.k = fadd float %i.j, %i.f                    ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.m = load float, ptr %i.l, align 4, !tbaa !936
  %i.n = extractelement <2 x float> %i.i, i64 1
  %i.o = fadd float %i.n, %i.m                    ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 207
  %i.r = load i8, ptr %i.q, align 1, !tbaa !613, !range !100, !noundef !236
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  br i1 %i.s, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.x = load float, ptr %i.p, align 8, !tbaa !75 ; 8 uses
  %i.y = fcmp olt float %i.x, f0x7F7FFFFF
  br i1 %i.y, label %bb.b, label %.split.us.1

bb.b:                                             ; preds = %.split.us.preheader
  %i.z = load float, ptr %i.t, align 8, !tbaa !75 ; 3 uses
  %i.aa = load float, ptr %i.u, align 8, !tbaa !75 ; 3 uses
  %i.ab = fcmp ogt float %i.aa, 0.000000e+00
  %.pre104 = load float, ptr %i.w, align 8, !tbaa !75 ; 2 uses
  br i1 %i.ab, label %bb.c, label %_ZL18CalcScrollEdgeSnapfffff.exit.us

bb.c:                                             ; preds = %bb.b
  %i.ac = load float, ptr %i.v, align 8, !tbaa !75
  %i.ad = fadd float %i.ac, %.pre104
  %i.ae = fsub float %i.ad, %i.k                  ; 2 uses
  %i.af = fcmp ugt float %i.x, %i.aa
  br i1 %i.af, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = tail call noundef float @llvm.fmuladd.f32(float %i.x, float %i.z, float 0.000000e+00)
  br label %_ZL18CalcScrollEdgeSnapfffff.exit.us

bb.e:                                             ; preds = %bb.c
  %i.ah = fsub float %i.ae, %i.aa
  %i.ai = fcmp ult float %i.x, %i.ah
  br i1 %i.ai, label %_ZL18CalcScrollEdgeSnapfffff.exit.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = fsub float %i.ae, %i.x
  %i.ak = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.z, float %i.x)
  br label %_ZL18CalcScrollEdgeSnapfffff.exit.us

_ZL18CalcScrollEdgeSnapfffff.exit.us:             ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.041.us = phi float [ %i.x, %bb.b ], [ %i.ag, %bb.d ], [ %i.ak, %bb.f ], [ %i.x, %bb.e ]
  %i.al = fsub float %.pre104, %i.k
  %i.am = fneg float %i.z
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float %i.al, float %.041.us)
  %.sroa.063.0.vec.insert77 = insertelement <2 x float> %i.b, float %i.an, i64 0
  br label %.split.us.1

.split.us.1:                                      ; preds = %_ZL18CalcScrollEdgeSnapfffff.exit.us, %.split.us.preheader
  %.sroa.063.0 = phi <2 x float> [ %.sroa.063.0.vec.insert77, %_ZL18CalcScrollEdgeSnapfffff.exit.us ], [ %i.b, %.split.us.preheader ] ; 2 uses
  %.sroa.063.0.vec.extract81 = extractelement <2 x float> %.sroa.063.0, i64 0 ; 2 uses
  %i.ao = fcmp oge float %.sroa.063.0.vec.extract81, 0.000000e+00
  %i.ap = select i1 %i.ao, float %.sroa.063.0.vec.extract81, float 0.000000e+00
  %i.aq = fadd float %i.ap, 5.000000e-01
  %i.ar = fptosi float %i.aq to i64
  %i.as = sitofp i64 %i.ar to float
  %.sroa.063.0.vec.insert79 = insertelement <2 x float> %.sroa.063.0, float %i.as, i64 0 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.au = load float, ptr %i.at, align 4, !tbaa !75 ; 8 uses
  %i.av = fcmp olt float %i.au, f0x7F7FFFFF
  br i1 %i.av, label %bb.g, label %.split44.us.loopexit

bb.g:                                             ; preds = %.split.us.1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !75 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.az = load float, ptr %i.ay, align 4, !tbaa !75 ; 3 uses
  %i.ba = fcmp ogt float %i.az, 0.000000e+00
  br i1 %i.ba, label %bb.h, label %._ZL18CalcScrollEdgeSnapfffff.exit.us.1_crit_edge

._ZL18CalcScrollEdgeSnapfffff.exit.us.1_crit_edge: ; preds = %bb.g
  %.phi.trans.insert105 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.pre106 = load float, ptr %.phi.trans.insert105, align 4, !tbaa !75
  br label %_ZL18CalcScrollEdgeSnapfffff.exit.us.1

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.be = load float, ptr %i.bd, align 4, !tbaa !75 ; 4 uses
  %i.bf = fadd float %i.bc, %i.be
  %i.bg = fsub float %i.bf, %i.o                  ; 2 uses
  %i.bh = fcmp ugt float %i.au, %i.az
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.ax, float 0.000000e+00)
  br label %_ZL18CalcScrollEdgeSnapfffff.exit.us.1

bb.j:                                             ; preds = %bb.h
  %i.bj = fsub float %i.bg, %i.az
  %i.bk = fcmp ult float %i.au, %i.bj
  br i1 %i.bk, label %_ZL18CalcScrollEdgeSnapfffff.exit.us.1, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = fsub float %i.bg, %i.au
  %i.bm = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.ax, float %i.au)
  br label %_ZL18CalcScrollEdgeSnapfffff.exit.us.1

_ZL18CalcScrollEdgeSnapfffff.exit.us.1:           ; preds = %._ZL18CalcScrollEdgeSnapfffff.exit.us.1_crit_edge, %bb.k, %bb.j, %bb.i
  %i.bn = phi float [ %.pre106, %._ZL18CalcScrollEdgeSnapfffff.exit.us.1_crit_edge ], [ %i.be, %bb.i ], [ %i.be, %bb.k ], [ %i.be, %bb.j ]
  %.041.us.1 = phi float [ %i.au, %._ZL18CalcScrollEdgeSnapfffff.exit.us.1_crit_edge ], [ %i.bi, %bb.i ], [ %i.bm, %bb.k ], [ %i.au, %bb.j ]
  %i.bo = fsub float %i.bn, %i.o
  %i.bp = fneg float %i.ax
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bo, float %.041.us.1)
  %.sroa.063.4.vec.insert95 = insertelement <2 x float> %.sroa.063.0.vec.insert79, float %i.bq, i64 1
  br label %.split44.us.loopexit

.split44.us.loopexit:                             ; preds = %_ZL18CalcScrollEdgeSnapfffff.exit.us.1, %.split.us.1
  %.sroa.063.6 = phi <2 x float> [ %.sroa.063.4.vec.insert95, %_ZL18CalcScrollEdgeSnapfffff.exit.us.1 ], [ %.sroa.063.0.vec.insert79, %.split.us.1 ] ; 2 uses
  %.sroa.063.4.vec.extract97 = extractelement <2 x float> %.sroa.063.6, i64 1 ; 2 uses
  %i.br = fcmp oge float %.sroa.063.4.vec.extract97, 0.000000e+00
  %i.bs = select i1 %i.br, float %.sroa.063.4.vec.extract97, float 0.000000e+00
end_hunk_2
