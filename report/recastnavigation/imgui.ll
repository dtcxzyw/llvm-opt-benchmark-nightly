Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui?download=true
inline.NumInlined: 3240
inline.NumDeleted: 627
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN5ImGui5BeginEPKcPbi:bb.a
  store i8 1, ptr %i.bku, align 2, !tbaa !688
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bkt, i64 712 ; 2 uses
  %i.bkw = load ptr, ptr %i.bkv, align 8, !tbaa !424
  call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %i.bkw, ptr noundef nonnull align 4 dereferenceable(8) %36, ptr noundef nonnull align 4 dereferenceable(8) %i.bhu, i1 noundef zeroext false) #35
  %i.bkx = load ptr, ptr %i.bkv, align 8, !tbaa !424 ; 2 uses
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkx, i64 160
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bkx, i64 168
  %i.bla = load ptr, ptr %i.bkz, align 8, !tbaa !939
  %i.blb = load i32, ptr %i.bky, align 8, !tbaa !940
  %i.blc = sext i32 %i.blb to i64
  %i.bld = getelementptr [16 x i8], ptr %i.bla, i64 %i.blc
  %i.ble = getelementptr i8, ptr %i.bld, i64 -16
  %i.blf = getelementptr inbounds nuw i8, ptr %i.bkt, i64 608
  %i.blg = load <4 x float>, ptr %i.ble, align 4, !tbaa !86
  store <4 x float> %i.blg, ptr %i.blf, align 8, !tbaa !86
  br i1 %or.cond479, label %.thread979, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.blh = getelementptr inbounds nuw i8, ptr %i.jy, i64 432
  %i.bli = load i32, ptr %i.blh, align 8, !tbaa !931 ; 2 uses
  %i.blj = icmp sgt i32 %i.bli, 1
  br i1 %i.blj, label %bb.ky, label %..thread977_crit_edge

..thread977_crit_edge:                            ; preds = %bb.kx
  %.pre1049 = load ptr, ptr %i.g, align 8, !tbaa !595
  br label %.thread977

bb.ky:                                            ; preds = %bb.kx
  %i.blk = getelementptr inbounds nuw i8, ptr %i.jy, i64 440
  %i.bll = load ptr, ptr %i.blk, align 8, !tbaa !500
  %i.blm = zext nneg i32 %i.bli to i64
  %i.bln = getelementptr [8 x i8], ptr %i.bll, i64 %i.blm
  %i.blo = getelementptr i8, ptr %i.bln, i64 -16
  %i.blp = load ptr, ptr %i.blo, align 8, !tbaa !595 ; 5 uses
  %.not446 = icmp eq ptr %i.blp, null
  %.pre1050 = load ptr, ptr %i.g, align 8, !tbaa !595 ; 6 uses
  br i1 %.not446, label %.thread977, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blp, i64 40
  %i.blr = load float, ptr %i.blq, align 8, !tbaa !704 ; 2 uses
  %i.bls = getelementptr inbounds nuw i8, ptr %i.blp, i64 44
  %i.blt = load float, ptr %i.bls, align 4, !tbaa !744 ; 2 uses
  %i.blu = getelementptr inbounds nuw i8, ptr %i.blp, i64 48
  %i.blv = load float, ptr %i.blu, align 8, !tbaa !916
  %i.blw = fadd float %i.blr, %i.blv
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blp, i64 52
  %i.bly = load float, ptr %i.blx, align 4, !tbaa !917
  %i.blz = fadd float %i.blt, %i.bly
  %i.bma = getelementptr inbounds nuw i8, ptr %.pre1050, i64 40
  %i.bmb = load float, ptr %i.bma, align 8, !tbaa !704 ; 2 uses
  %i.bmc = getelementptr inbounds nuw i8, ptr %.pre1050, i64 44
  %i.bmd = load float, ptr %i.bmc, align 4, !tbaa !744 ; 2 uses
  %i.bme = getelementptr inbounds nuw i8, ptr %.pre1050, i64 48
  %i.bmf = load float, ptr %i.bme, align 8, !tbaa !916
  %i.bmg = fadd float %i.bmb, %i.bmf
  %i.bmh = getelementptr inbounds nuw i8, ptr %.pre1050, i64 52
  %i.bmi = load float, ptr %i.bmh, align 4, !tbaa !917
  %i.bmj = fadd float %i.bmd, %i.bmi
  %i.bmk = fcmp olt float %i.bmd, %i.blz
  %i.bml = fcmp ogt float %i.bmj, %i.blt
  %or.cond993 = select i1 %i.bmk, i1 %i.bml, i1 false
  %i.bmm = fcmp olt float %i.bmb, %i.blw
  %or.cond994 = select i1 %or.cond993, i1 %i.bmm, i1 false
  %i.bmn = fcmp ogt float %i.bmg, %i.blr
  %spec.select995 = select i1 %or.cond994, i1 %i.bmn, i1 false
  br label %.thread977

.thread977:                                       ; preds = %..thread977_crit_edge, %bb.kz, %bb.ky
  %i.bmo = phi ptr [ %.pre1049, %..thread977_crit_edge ], [ %.pre1050, %bb.ky ], [ %.pre1050, %bb.kz ]
  %i.bmp = phi i1 [ false, %..thread977_crit_edge ], [ false, %bb.ky ], [ %spec.select995, %bb.kz ]
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.jy, i64 712
  %i.bmr = load ptr, ptr %i.bmq, align 8, !tbaa !424 ; 2 uses
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmr, i64 32
  %i.bmt = load i32, ptr %i.bms, align 8, !tbaa !941
  %i.bmu = icmp eq i32 %i.bmt, 0
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmo, i64 712 ; 2 uses
  %i.bmw = load ptr, ptr %i.bmv, align 8, !tbaa !424 ; 2 uses
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bmw, i64 8
  %i.bmy = load ptr, ptr %i.bmx, align 8, !tbaa !942
  %i.bmz = load i32, ptr %i.bmw, align 8, !tbaa !943
  %i.bna = sext i32 %i.bmz to i64
  %i.bnb = getelementptr [72 x i8], ptr %i.bmy, i64 %i.bna
  %i.bnc = getelementptr i8, ptr %i.bnb, i64 -32
  %i.bnd = load i32, ptr %i.bnc, align 8, !tbaa !945
  %i.bne = icmp ne i32 %i.bnd, 0
  %or.cond23 = select i1 %i.bne, i1 true, i1 %i.bmu
  %or.cond25 = or i1 %i.bmp, %or.cond23
  br i1 %or.cond25, label %.thread979, label %bb.la

bb.la:                                            ; preds = %.thread977
  store ptr %i.bmr, ptr %i.bmv, align 8, !tbaa !424
  br label %.thread979

.thread979:                                       ; preds = %bb.kw, %bb.la, %.thread977
  %.1981 = phi i1 [ false, %.thread977 ], [ true, %bb.la ], [ false, %bb.kw ]
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.j, i64 8552
  %i.bng = load ptr, ptr %i.bnf, align 8, !tbaa !803 ; 2 uses
  %.not447 = icmp eq ptr %i.bng, null
  br i1 %.not447, label %bb.lb, label %bb.lc

bb.lb:                                            ; preds = %.thread979
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.j, i64 8080
  %i.bni = load ptr, ptr %i.bnh, align 8, !tbaa !388
  br label %bb.lc

bb.lc:                                            ; preds = %.thread979, %bb.lb
  %i.bnj = phi ptr [ %i.bni, %bb.lb ], [ %i.bng, %.thread979 ] ; 2 uses
  br i1 %spec.select987, label %._crit_edge1051, label %bb.ld

._crit_edge1051:                                  ; preds = %bb.lc
  %.pre1052 = load ptr, ptr %i.g, align 8, !tbaa !595
  br label %bb.lf

bb.ld:                                            ; preds = %bb.lc
  %.not448 = icmp eq ptr %i.bnj, null
  %.pre1053 = load ptr, ptr %i.g, align 8, !tbaa !595 ; 3 uses
  br i1 %.not448, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bnk = getelementptr inbounds nuw i8, ptr %.pre1053, i64 976
  %i.bnl = load ptr, ptr %i.bnk, align 8, !tbaa !893
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bnj, i64 976
  %i.bnn = load ptr, ptr %i.bnm, align 8, !tbaa !893
  %i.bno = icmp eq ptr %i.bnl, %i.bnn
  br label %bb.lf

bb.lf:                                            ; preds = %._crit_edge1051, %bb.ld, %bb.le
  %i.bnp = phi ptr [ %.pre1052, %._crit_edge1051 ], [ %.pre1053, %bb.ld ], [ %.pre1053, %bb.le ] ; 52 uses
  %i.bnq = phi i1 [ true, %._crit_edge1051 ], [ false, %bb.ld ], [ %i.bno, %bb.le ] ; 2 uses
  %i.bnr = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 9 uses
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bnp, i64 20 ; 3 uses
  %i.bnt = load i32, ptr %i.bns, align 4, !tbaa !608 ; 7 uses
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bnp, i64 209
  store i8 0, ptr %i.bnu, align 1, !tbaa !920
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bnp, i64 368 ; 2 uses
  store i32 1, ptr %i.bnv, align 8, !tbaa !899
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnp, i64 96 ; 5 uses
  %i.bnx = load float, ptr %i.bnw, align 8, !tbaa !932 ; 7 uses
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnp, i64 100 ; 3 uses
  %i.bnz = load float, ptr %i.bny, align 4, !tbaa !1407 ; 3 uses
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnp, i64 207
  %i.bob = load i8, ptr %i.boa, align 1, !tbaa !607, !range !120, !noundef !254
  %i.boc = trunc nuw i8 %i.bob to i1
  br i1 %i.boc, label %bb.lg, label %bb.lj

bb.lg:                                            ; preds = %bb.lf
  %i.bod = getelementptr inbounds nuw i8, ptr %i.bnr, i64 3224 ; 3 uses
  %i.boe = load float, ptr %i.bod, align 4, !tbaa !1422
  store float %i.bnz, ptr %i.bod, align 8, !tbaa !439
  br i1 %i.bnq, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bnr, i64 8072
  %i.bog = load i8, ptr %i.bof, align 8, !tbaa !440, !range !120, !noundef !254
  %i.boh = trunc nuw i8 %i.bog to i1
  %i.boi = select i1 %i.boh, i64 11, i64 12
  br label %bb.li

bb.li:                                            ; preds = %bb.lh, %bb.lg
  %i.boj = phi i64 [ 12, %bb.lg ], [ %i.boi, %bb.lh ]
  %i.bok = getelementptr inbounds nuw i8, ptr %i.bnr, i64 3412
  %i.bol = getelementptr inbounds nuw [16 x i8], ptr %i.bok, i64 %i.boj
  %i.bom = getelementptr inbounds nuw i8, ptr %i.bnr, i64 3148
  %i.bon = load float, ptr %i.bom, align 4, !tbaa !399
  %i.boo = load <4 x float>, ptr %i.bol, align 4, !tbaa !86
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
  %.sroa.025.0.copyload.i = load <2 x float>, ptr %37, align 8, !tbaa !86
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.bhl, align 8, !tbaa !86
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.025.0.copyload.i, <2 x float> %.sroa.0.0.copyload.i, i32 noundef %i.boy, i1 noundef zeroext true, float noundef %i.bnx)
  store float %i.boe, ptr %i.bod, align 8, !tbaa !439
  br label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

bb.lj:                                            ; preds = %bb.lf
  %i.boz = and i32 %i.bnt, 128
  %.not.i632 = icmp eq i32 %i.boz, 0
  br i1 %.not.i632, label %bb.lk, label %._crit_edge.i633

._crit_edge.i633:                                 ; preds = %bb.lj
  %.pre.i634 = and i32 %i.bnt, 1
  br label %bb.lm

bb.lk:                                            ; preds = %bb.lj
  %i.bpa = and i32 %i.bnt, 100663296
  %.not.i.i643 = icmp eq i32 %i.bpa, 0
  %i.bpb = and i32 %i.bnt, 16777216
  %.not2.i.i = icmp eq i32 %i.bpb, 0
  %..i.i644 = select i1 %.not2.i.i, i64 2, i64 3
  %.0.i.i = select i1 %.not.i.i643, i64 %..i.i644, i64 4
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bnr, i64 3412
  %i.bpd = getelementptr inbounds nuw [16 x i8], ptr %i.bpc, i64 %.0.i.i ; 3 uses
  %.sroa.0.0.copyload.i113.i = load float, ptr %i.bpd, align 4, !tbaa !86
  %.sroa.4.0..sroa_idx.i114.i = getelementptr inbounds nuw i8, ptr %i.bpd, i64 4
  %.sroa.6.0..sroa_idx.i118.i = getelementptr inbounds nuw i8, ptr %i.bpd, i64 12
  %.sroa.6.0.copyload.i119.i = load float, ptr %.sroa.6.0..sroa_idx.i118.i, align 4, !tbaa !86
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bnr, i64 3148
  %i.bpf = load float, ptr %i.bpe, align 4, !tbaa !399
  %i.bpg = fmul float %.sroa.6.0.copyload.i119.i, %i.bpf
  %38 = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i114.i, align 4, !tbaa !86 ; 3 uses
  %39 = fcmp olt <2 x float> %38, zeroinitializer
  %40 = fcmp ogt <2 x float> %38, splat (float 1.000000e+00)
  %41 = select <2 x i1> %40, <2 x float> splat (float 1.000000e+00), <2 x float> %38
  %42 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %41, <2 x float> splat (float 2.550000e+02), <2 x float> splat (float 5.000000e-01))
  %43 = select <2 x i1> %39, <2 x float> splat (float 5.000000e-01), <2 x float> %42
  %44 = fptosi <2 x float> %43 to <2 x i32>
  %45 = shl <2 x i32> %44, <i32 8, i32 16>        ; 2 uses
  %46 = extractelement <2 x i32> %45, i64 0
  %47 = extractelement <2 x i32> %45, i64 1
  %48 = insertelement <2 x float> poison, float %.sroa.0.0.copyload.i113.i, i64 0
  %49 = insertelement <2 x float> %48, float %i.bpg, i64 1 ; 3 uses
  %50 = fcmp ogt <2 x float> %49, splat (float 1.000000e+00)
  %51 = select <2 x i1> %50, <2 x float> splat (float 1.000000e+00), <2 x float> %49
  %52 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %51, <2 x float> splat (float 2.550000e+02), <2 x float> splat (float 5.000000e-01))
  %53 = fcmp olt <2 x float> %49, zeroinitializer
  %54 = select <2 x i1> %53, <2 x float> splat (float 5.000000e-01), <2 x float> %52 ; 2 uses
  %55 = extractelement <2 x float> %54, i64 0
  %56 = fptosi float %55 to i32
  %57 = or i32 %46, %56
  %58 = or i32 %57, %47                           ; 2 uses
  %59 = extractelement <2 x float> %54, i64 1
  %i.bph = fptosi float %59 to i32
  %i.bpi = shl i32 %i.bph, 24
  %i.bpj = or i32 %i.bpi, %58
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.bnr, i64 7784
  %i.bpl = load i32, ptr %i.bpk, align 8, !tbaa !853
  %i.bpm = and i32 %i.bpl, 64
  %.not101.not.i = icmp eq i32 %i.bpm, 0
  br i1 %.not101.not.i, label %.critedge.i645, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bnr, i64 7888
  %i.bpo = load float, ptr %i.bpn, align 8, !tbaa !854 ; 3 uses
  %i.bpp = and i32 %58, 16777215
  %i.bpq = fcmp olt float %i.bpo, 0.000000e+00
  %i.bpr = fcmp ogt float %i.bpo, 1.000000e+00
  %i.bps = select i1 %i.bpr, float 1.000000e+00, float %i.bpo
  %i.bpt = call float @llvm.fmuladd.f32(float %i.bps, float 2.550000e+02, float 5.000000e-01)
  %i.bpu = select i1 %i.bpq, float 5.000000e-01, float %i.bpt
  %i.bpv = fptosi float %i.bpu to i32
  %i.bpw = shl i32 %i.bpv, 24
  %i.bpx = or disjoint i32 %i.bpw, %i.bpp
  br label %.critedge.i645

.critedge.i645:                                   ; preds = %bb.ll, %bb.lk
  %.0100.i = phi i32 [ %i.bpx, %bb.ll ], [ %i.bpj, %bb.lk ]
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bnp, i64 712
  %i.bpz = load ptr, ptr %i.bpy, align 8, !tbaa !424
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #35
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bnp, i64 40
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bnp, i64 104
  %i.bqc = load float, ptr %i.bqb, align 8, !tbaa !736
  %i.bqd = load <2 x float>, ptr %i.bqa, align 8, !tbaa !86 ; 2 uses
  %i.bqe = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bqc, i64 1
  %i.bqf = fadd <2 x float> %i.bqd, %i.bqe
  store <2 x float> %i.bqf, ptr %19, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #35
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bnp, i64 48
  %i.bqh = load <2 x float>, ptr %i.bqg, align 8, !tbaa !86
  %i.bqi = fadd <2 x float> %i.bqd, %i.bqh
  store <2 x float> %i.bqi, ptr %20, align 8
  %i.bqj = and i32 %i.bnt, 1                      ; 2 uses
  %.not102.i = icmp eq i32 %i.bqj, 0
  %i.bqk = select i1 %.not102.i, i32 192, i32 0
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bpz, ptr noundef nonnull align 4 dereferenceable(8) %19, ptr noundef nonnull align 4 dereferenceable(8) %20, i32 noundef %.0100.i, float noundef %i.bnx, i32 noundef %i.bqk) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #35
  br label %bb.lm

bb.lm:                                            ; preds = %.critedge.i645, %._crit_edge.i633
  %.pre-phi.i635 = phi i32 [ %.pre.i634, %._crit_edge.i633 ], [ %i.bqj, %.critedge.i645 ]
  %.not103.i = icmp eq i32 %.pre-phi.i635, 0      ; 2 uses
  br i1 %.not103.i, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %bb.lm
  %i.bql = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bql, i64 3412
  %i.bqn = select i1 %i.bnq, i64 11, i64 10
  %i.bqo = getelementptr inbounds nuw [16 x i8], ptr %i.bqm, i64 %i.bqn
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bql, i64 3148
  %i.bqq = load float, ptr %i.bqp, align 4, !tbaa !399
  %i.bqr = load <4 x float>, ptr %i.bqo, align 4, !tbaa !86
  %i.bqs = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bqq, i64 3
  %i.bqt = fmul <4 x float> %i.bqr, %i.bqs        ; 3 uses
  %i.bqu = fcmp olt <4 x float> %i.bqt, zeroinitializer
  %i.bqv = fcmp ogt <4 x float> %i.bqt, splat (float 1.000000e+00)
  %i.bqw = select <4 x i1> %i.bqv, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bqt
  %i.bqx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bqw, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bqy = select <4 x i1> %i.bqu, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bqx
  %i.bqz = fptosi <4 x float> %i.bqy to <4 x i32>
  %i.bra = shl <4 x i32> %i.bqz, <i32 0, i32 8, i32 16, i32 24>
  %i.brb = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bra)
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bnp, i64 712
  %i.brd = load ptr, ptr %i.brc, align 8, !tbaa !424
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.brd, ptr noundef nonnull align 4 dereferenceable(16) %37, ptr noundef nonnull align 4 dereferenceable(8) %i.bhl, i32 noundef %i.brb, float noundef %i.bnx, i32 noundef 48) #35
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %bb.lm
  %i.bre = and i32 %i.bnt, 1024
  %.not104.i = icmp eq i32 %i.bre, 0
  br i1 %.not104.i, label %bb.lt, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #35
  %i.brf = getelementptr inbounds nuw i8, ptr %i.bnp, i64 40
  %i.brg = getelementptr inbounds nuw i8, ptr %i.bnp, i64 104
  %i.brh = load float, ptr %i.brg, align 8, !tbaa !736
  %i.bri = getelementptr inbounds nuw i8, ptr %i.bnp, i64 56
  %i.brj = load float, ptr %i.bri, align 8, !tbaa !737
  %i.brk = getelementptr inbounds nuw i8, ptr %i.bnp, i64 108
  %i.brl = load float, ptr %i.brk, align 4, !tbaa !925
  %i.brm = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.brn = getelementptr inbounds nuw i8, ptr %i.bnp, i64 48
  %i.bro = load <2 x float>, ptr %i.brf, align 8, !tbaa !86 ; 4 uses
  %i.brp = extractelement <2 x float> %i.bro, i64 1 ; 3 uses
  %i.brq = fadd float %i.brp, %i.brh              ; 3 uses
  %i.brr = insertelement <2 x float> %i.bro, float %i.brq, i64 1
  %i.brs = insertelement <2 x float> poison, float %i.brj, i64 0
  %i.brt = insertelement <2 x float> %i.brs, float %i.brl, i64 1
  %i.bru = fadd <2 x float> %i.brr, %i.brt        ; 2 uses
  %i.brv = load <2 x float>, ptr %i.brn, align 8, !tbaa !86
  %i.brw = fadd <2 x float> %i.bro, %i.brv        ; 2 uses
  %.inv6.i.i.i = fcmp oge float %i.brq, %i.brp
  %i.brx = select i1 %.inv6.i.i.i, float %i.brq, float %i.brp
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %i.bro, float %i.brx, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %21, align 16, !tbaa !86
  %i.bry = fcmp olt <2 x float> %i.bru, %i.brw
  %i.brz = select <2 x i1> %i.bry, <2 x float> %i.bru, <2 x float> %i.brw
  store <2 x float> %i.brz, ptr %i.brm, align 8, !tbaa !86
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.bnp, i64 712 ; 2 uses
  %i.bsb = load ptr, ptr %i.bsa, align 8, !tbaa !424
  %i.bsc = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bsc, i64 3620
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bsc, i64 3148
  %i.bsf = load float, ptr %i.bse, align 4, !tbaa !399
  %i.bsg = load <4 x float>, ptr %i.bsd, align 4, !tbaa !86
  %i.bsh = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bsf, i64 3
  %i.bsi = fmul <4 x float> %i.bsg, %i.bsh        ; 3 uses
  %i.bsj = fcmp olt <4 x float> %i.bsi, zeroinitializer
  %i.bsk = fcmp ogt <4 x float> %i.bsi, splat (float 1.000000e+00)
  %i.bsl = select <4 x i1> %i.bsk, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bsi
  %i.bsm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bsl, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bsn = select <4 x i1> %i.bsj, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bsm
  %i.bso = fptosi <4 x float> %i.bsn to <4 x i32>
  %i.bsp = shl <4 x i32> %i.bso, <i32 0, i32 8, i32 16, i32 24>
  %i.bsq = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bsp)
  %i.bsr = select i1 %.not103.i, float 0.000000e+00, float %i.bnx
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bsb, ptr noundef nonnull align 4 dereferenceable(8) %21, ptr noundef nonnull align 4 dereferenceable(8) %i.brm, i32 noundef %i.bsq, float noundef %i.bsr, i32 noundef 48) #35
  %i.bss = getelementptr inbounds nuw i8, ptr %i.bnr, i64 3224
  %i.bst = load float, ptr %i.bss, align 4, !tbaa !1422 ; 2 uses
  %i.bsu = fcmp ogt float %i.bst, 0.000000e+00
  br i1 %i.bsu, label %bb.lq, label %bb.ls

bb.lq:                                            ; preds = %bb.lp
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bnp, i64 52
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.bnp, i64 44
  %i.bsx = getelementptr inbounds nuw i8, ptr %21, i64 12
  %i.bsy = load float, ptr %i.bsx, align 4, !tbaa !393
  %i.bsz = load float, ptr %i.bsw, align 4, !tbaa !744
  %i.bta = load float, ptr %i.bsv, align 4, !tbaa !917
  %i.btb = fadd float %i.bsz, %i.bta
  %i.btc = fcmp olt float %i.bsy, %i.btb
  br i1 %i.btc, label %bb.lr, label %bb.ls

bb.lr:                                            ; preds = %bb.lq
  %i.btd = load ptr, ptr %i.bsa, align 8, !tbaa !424
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #35
  %i.bte = load <4 x float>, ptr %21, align 16    ; 2 uses
  %i.btf = fmul float %i.bnz, 5.000000e-01        ; 2 uses
  %i.btg = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.btf, i64 0
  %i.bth = shufflevector <4 x float> %i.bte, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bti = fadd <2 x float> %i.btg, %i.bth
  store <2 x float> %i.bti, ptr %22, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #35
  %bc.i = bitcast <4 x float> %i.bte to <2 x i64>
  %i.btj = extractelement <2 x i64> %bc.i, i64 1
  %i.btk = bitcast i64 %i.btj to <2 x float>      ; 2 uses
  %.sroa.0188.0.vec.extract.i = extractelement <2 x float> %i.btk, i64 0
  %i.btl = fsub float %.sroa.0188.0.vec.extract.i, %i.btf
  %.sroa.0.4.vec.insert.i150.i = insertelement <2 x float> %i.btk, float %i.btl, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i150.i, ptr %23, align 8
  %i.btm = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.btn = getelementptr inbounds nuw i8, ptr %i.btm, i64 3492
  %i.bto = getelementptr inbounds nuw i8, ptr %i.btm, i64 3148
  %i.btp = load float, ptr %i.bto, align 4, !tbaa !399
  %i.btq = load <4 x float>, ptr %i.btn, align 4, !tbaa !86
  %i.btr = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.btp, i64 3
  %i.bts = fmul <4 x float> %i.btq, %i.btr        ; 3 uses
  %i.btt = fcmp olt <4 x float> %i.bts, zeroinitializer
  %i.btu = fcmp ogt <4 x float> %i.bts, splat (float 1.000000e+00)
  %i.btv = select <4 x i1> %i.btu, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bts
  %i.btw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.btv, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.btx = select <4 x i1> %i.btt, <4 x float> splat (float 5.000000e-01), <4 x float> %i.btw
  %i.bty = fptosi <4 x float> %i.btx to <4 x i32>
  %i.btz = shl <4 x i32> %i.bty, <i32 0, i32 8, i32 16, i32 24>
  %i.bua = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.btz)
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.btd, ptr noundef nonnull align 4 dereferenceable(8) %22, ptr noundef nonnull align 4 dereferenceable(8) %23, i32 noundef %i.bua, float noundef %i.bst) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lr, %bb.lq, %bb.lp
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #35
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %bb.lo
  %i.bub = getelementptr inbounds nuw i8, ptr %i.bnp, i64 200
  %i.buc = load i8, ptr %i.bub, align 8, !tbaa !840, !range !120, !noundef !254
  %i.bud = trunc nuw i8 %i.buc to i1
  br i1 %i.bud, label %bb.lu, label %bb.lv

bb.lu:                                            ; preds = %bb.lt
  call void @_ZN5ImGui9ScrollbarE9ImGuiAxis(i32 noundef 0) #35
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.lt
  %i.bue = getelementptr inbounds nuw i8, ptr %i.bnp, i64 201
  %i.buf = load i8, ptr %i.bue, align 1, !tbaa !936, !range !120, !noundef !254
  %i.bug = trunc nuw i8 %i.buf to i1
  br i1 %i.bug, label %bb.lw, label %bb.lx

bb.lw:                                            ; preds = %bb.lv
  call void @_ZN5ImGui9ScrollbarE9ImGuiAxis(i32 noundef 1) #35
  br label %bb.lx

bb.lx:                                            ; preds = %bb.lw, %bb.lv
  %i.buh = and i32 %i.bnt, 2
  %.not105.i = icmp eq i32 %i.buh, 0
  %i.bui = icmp ne i32 %i.alz, 0
  %or.cond.i636 = and i1 %i.bui, %.not105.i
  br i1 %or.cond.i636, label %.lr.ph.i638, label %.loopexit.i

.lr.ph.i638:                                      ; preds = %bb.lx
  %i.buj = getelementptr inbounds nuw i8, ptr %i.bnp, i64 40 ; 2 uses
  %i.buk = getelementptr inbounds nuw i8, ptr %i.bnp, i64 48 ; 2 uses
  %i.bul = getelementptr inbounds nuw i8, ptr %i.bnp, i64 44
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bnp, i64 52
  %i.bun = call float @llvm.fmuladd.f32(float %i.bnz, float 5.000000e-01, float 5.000000e-01)
  %i.buo = fptosi float %i.bun to i32
  %i.bup = sitofp i32 %i.buo to float             ; 5 uses
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bnp, i64 712 ; 8 uses
  %i.bur = fadd float %i.bnx, %i.bup              ; 3 uses
  %i.bus = getelementptr inbounds nuw i8, ptr %26, i64 4
  %i.but = load i32, ptr %i.i, align 16, !tbaa !255 ; 2 uses
  %i.buu = icmp ult i32 %i.but, 16777216
  br i1 %i.buu, label %bb.lz, label %bb.ly

bb.ly:                                            ; preds = %.lr.ph.i638
  %i.buv = load ptr, ptr %i.buq, align 8, !tbaa !424
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #35
  %i.buw = getelementptr inbounds nuw i8, ptr %i.buv, i64 80
  %i.bux = load <2 x float>, ptr %i.buj, align 8, !tbaa !86 ; 3 uses
  %i.buy = load <2 x float>, ptr %i.buk, align 8, !tbaa !86
  %i.buz = fadd <2 x float> %i.bux, %i.buy
  %i.bva = fsub <2 x float> %i.buz, %i.bux
  %i.bvb = fadd <2 x float> %i.bux, %i.bva        ; 3 uses
  %i.bvc = insertelement <2 x float> poison, float %i.amh, i64 0
  %i.bvd = insertelement <2 x float> %i.bvc, float %i.bup, i64 1
  %i.bve = fsub <2 x float> %i.bvb, %i.bvd
  store <2 x float> %i.bve, ptr %24, align 8
  call void @_ZN8ImVectorI6ImVec2E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.buw, ptr noundef nonnull align 4 dereferenceable(8) %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #35
  %i.bvf = load ptr, ptr %i.buq, align 8, !tbaa !424
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #35
  %i.bvg = insertelement <2 x float> poison, float %i.bup, i64 0
  %i.bvh = insertelement <2 x float> %i.bvg, float %i.amh, i64 1
  %i.bvi = fsub <2 x float> %i.bvb, %i.bvh
  store <2 x float> %i.bvi, ptr %25, align 8
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.bvf, i64 80
  call void @_ZN8ImVectorI6ImVec2E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bvj, ptr noundef nonnull align 4 dereferenceable(8) %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #35
  %i.bvk = load ptr, ptr %i.buq, align 8, !tbaa !424
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #35
  %i.bvl = insertelement <2 x float> poison, float %i.bur, i64 0
  %i.bvm = shufflevector <2 x float> %i.bvl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bvn = fsub <2 x float> %i.bvb, %i.bvm
  store <2 x float> %i.bvn, ptr %26, align 8, !tbaa !86
  call void @_ZN10ImDrawList13PathArcToFastERK6ImVec2fii(ptr noundef nonnull align 8 dereferenceable(224) %i.bvk, ptr noundef nonnull align 4 dereferenceable(8) %26, float noundef %i.bnx, i32 noundef 0, i32 noundef 3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  %i.bvo = load ptr, ptr %i.buq, align 8, !tbaa !424 ; 3 uses
  %i.bvp = getelementptr inbounds nuw i8, ptr %i.bvo, i64 80 ; 2 uses
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvo, i64 88
  %i.bvr = load ptr, ptr %i.bvq, align 8, !tbaa !453
  %i.bvs = load i32, ptr %i.bvp, align 8, !tbaa !454
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(224) %i.bvo, ptr noundef %i.bvr, i32 noundef %i.bvs, i32 noundef %i.but) #35
  store i32 0, ptr %i.bvp, align 8, !tbaa !454
  br label %bb.lz

bb.lz:                                            ; preds = %bb.ly, %.lr.ph.i638
  %exitcond.not.i642.peel = icmp eq i32 %i.alz, 1
  br i1 %exitcond.not.i642.peel, label %.loopexit.i, label %.peel.next

.peel.next:                                       ; preds = %bb.lz
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.bvu = load i32, ptr %i.bvt, align 4, !tbaa !255 ; 2 uses
  %i.bvv = icmp ult i32 %i.bvu, 16777216
  br i1 %i.bvv, label %.loopexit.i, label %bb.ma

bb.ma:                                            ; preds = %.peel.next
  %i.bvw = load float, ptr %i.buj, align 8, !tbaa !269 ; 3 uses
  %i.bvx = load float, ptr %i.buk, align 8, !tbaa !269
  %i.bvy = fadd float %i.bvw, %i.bvx
  %i.bvz = load float, ptr %i.bul, align 4, !tbaa !270 ; 3 uses
  %i.bwa = load float, ptr %i.bum, align 4, !tbaa !270
  %i.bwb = fadd float %i.bvz, %i.bwa
  %i.bwc = fsub float %i.bvy, %i.bvw
  %i.bwd = call float @llvm.fmuladd.f32(float %i.bwc, float 0.000000e+00, float %i.bvw) ; 3 uses
  %i.bwe = fsub float %i.bwb, %i.bvz
  %i.bwf = fadd float %i.bvz, %i.bwe              ; 3 uses
  %i.bwg = load ptr, ptr %i.buq, align 8, !tbaa !424
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #35
  %i.bwh = fadd float %i.bwd, %i.bup
  %i.bwi = fsub float %i.bwf, %i.amh
  %.sroa.0.0.vec.insert.i164.i = insertelement <2 x float> poison, float %i.bwh, i64 0
  %.sroa.0.4.vec.insert.i165.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i164.i, float %i.bwi, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i165.i, ptr %24, align 8
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwg, i64 80
  call void @_ZN8ImVectorI6ImVec2E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bwj, ptr noundef nonnull align 4 dereferenceable(8) %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #35
  %i.bwk = load ptr, ptr %i.buq, align 8, !tbaa !424
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #35
  %i.bwl = fadd float %i.bwd, %i.amh
  %i.bwm = fsub float %i.bwf, %i.bup
  %.sroa.0.0.vec.insert.i168.i = insertelement <2 x float> poison, float %i.bwl, i64 0
  %.sroa.0.4.vec.insert.i169.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i168.i, float %i.bwm, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i169.i, ptr %25, align 8
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.bwk, i64 80
  call void @_ZN8ImVectorI6ImVec2E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bwn, ptr noundef nonnull align 4 dereferenceable(8) %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #35
  %i.bwo = load ptr, ptr %i.buq, align 8, !tbaa !424
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #35
  %i.bwp = fadd float %i.bur, %i.bwd
  %i.bwq = fsub float %i.bwf, %i.bur
  store float %i.bwp, ptr %26, align 8, !tbaa !269
  store float %i.bwq, ptr %i.bus, align 4, !tbaa !270
  call void @_ZN10ImDrawList13PathArcToFastERK6ImVec2fii(ptr noundef nonnull align 8 dereferenceable(224) %i.bwo, ptr noundef nonnull align 4 dereferenceable(8) %26, float noundef %i.bnx, i32 noundef 3, i32 noundef 6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  %i.bwr = load ptr, ptr %i.buq, align 8, !tbaa !424 ; 3 uses
  %i.bws = getelementptr inbounds nuw i8, ptr %i.bwr, i64 80 ; 2 uses
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.bwr, i64 88
  %i.bwu = load ptr, ptr %i.bwt, align 8, !tbaa !453
  %i.bwv = load i32, ptr %i.bws, align 8, !tbaa !454
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(224) %i.bwr, ptr noundef %i.bwu, i32 noundef %i.bwv, i32 noundef %i.bvu) #35
  store i32 0, ptr %i.bws, align 8, !tbaa !454
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.lz, %.peel.next, %bb.ma, %bb.lx
  %i.bww = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 4 uses
  %i.bwx = load float, ptr %i.bny, align 4, !tbaa !1407 ; 6 uses
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.bww, i64 3492
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bww, i64 3496
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.bww, i64 3148
  %i.bxa = load float, ptr %i.bwz, align 4, !tbaa !399
  %i.bxb = load <4 x float>, ptr %i.bwy, align 4, !tbaa !86 ; 2 uses
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !86
  %i.bxc = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bxa, i64 3
  %i.bxd = fmul <4 x float> %i.bxb, %i.bxc        ; 3 uses
  %i.bxe = fcmp ogt <4 x float> %i.bxd, splat (float 1.000000e+00)
  %i.bxf = select <4 x i1> %i.bxe, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bxd
  %i.bxg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bxf, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %60 = shufflevector <4 x float> %i.bxb, <4 x float> %i.bxd, <4 x i32> <i32 0, i32 poison, i32 2, i32 7>
  %61 = insertelement <4 x float> %60, float %.sroa.4.0.copyload.i.i.i, i64 1
  %62 = fcmp olt <4 x float> %61, zeroinitializer
  %63 = select <4 x i1> %62, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bxg ; 4 uses
  %i.bxh = extractelement <4 x float> %63, i64 0
  %i.bxi = fptosi float %i.bxh to i32
  %64 = extractelement <4 x float> %63, i64 1
  %65 = fptosi float %64 to i32
  %66 = shl i32 %65, 8
  %67 = or i32 %66, %i.bxi
  %68 = extractelement <4 x float> %63, i64 2
  %69 = fptosi float %68 to i32
  %70 = shl i32 %69, 16
  %71 = or i32 %67, %70
  %72 = extractelement <4 x float> %63, i64 3
  %73 = fptosi float %72 to i32
  %74 = shl i32 %73, 24
  %i.bxj = or i32 %71, %74                        ; 4 uses
  %i.bxk = fcmp ogt float %i.bwx, 0.000000e+00
  br i1 %i.bxk, label %bb.mb, label %.critedge.i.i

bb.mb:                                            ; preds = %.loopexit.i
  %i.bxl = load i32, ptr %i.bns, align 4, !tbaa !608
  %i.bxm = and i32 %i.bxl, 128
  %i.bxn = icmp eq i32 %i.bxm, 0
  br i1 %i.bxn, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.bnp, i64 712
  %i.bxp = load ptr, ptr %i.bxo, align 8, !tbaa !424
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bnp, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #35
  %i.bxr = getelementptr inbounds nuw i8, ptr %i.bnp, i64 48
  %i.bxs = load <2 x float>, ptr %i.bxq, align 8, !tbaa !86
  %i.bxt = load <2 x float>, ptr %i.bxr, align 8, !tbaa !86
  %i.bxu = fadd <2 x float> %i.bxs, %i.bxt
  store <2 x float> %i.bxu, ptr %16, align 8
  %i.bxv = load float, ptr %i.bnw, align 8, !tbaa !932
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.bxp, ptr noundef nonnull align 4 dereferenceable(8) %i.bxq, ptr noundef nonnull align 4 dereferenceable(8) %16, i32 noundef %i.bxj, float noundef %i.bxv, i32 noundef 0, float noundef %i.bwx) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  br label %.critedge.i.i

bb.md:                                            ; preds = %bb.mb
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bnp, i64 24 ; 2 uses
  %i.bxx = load i32, ptr %i.bxw, align 8, !tbaa !883 ; 2 uses
  %i.bxy = and i32 %i.bxx, 4
  %.not.i170.i = icmp eq i32 %i.bxy, 0
  br i1 %.not.i170.i, label %bb.mf, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.bxz = load float, ptr %i.bnw, align 8, !tbaa !932 ; 6 uses
  %i.bya = getelementptr inbounds nuw i8, ptr %i.bnp, i64 40
  %i.byb = load float, ptr %i.bya, align 8, !tbaa !704
  %i.byc = getelementptr inbounds nuw i8, ptr %i.bnp, i64 44
  %i.byd = load float, ptr %i.byc, align 4, !tbaa !744 ; 2 uses
  %i.bye = getelementptr inbounds nuw i8, ptr %i.bnp, i64 48
  %i.byf = load float, ptr %i.bye, align 8, !tbaa !916
  %i.byg = fadd float %i.byb, %i.byf
  %i.byh = getelementptr inbounds nuw i8, ptr %i.bnp, i64 52
  %i.byi = load float, ptr %i.byh, align 4, !tbaa !917
  %i.byj = fadd float %i.byd, %i.byi
  %i.byk = fadd float %i.byg, -1.000000e+00       ; 3 uses
  %i.byl = fadd float %i.byj, -1.000000e+00
  %i.bym = fadd float %i.bxz, %i.byd              ; 3 uses
  %i.byn = fsub float %i.byl, %i.bxz
  %i.byo = getelementptr inbounds nuw i8, ptr %i.bnp, i64 712 ; 3 uses
  %i.byp = load ptr, ptr %i.byo, align 8, !tbaa !424
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  %i.byq = fsub float %i.byk, %i.byk
  %i.byr = fadd float %i.byk, %i.byq
  %i.bys = fsub float %i.byn, %i.bym              ; 2 uses
  %i.byt = call float @llvm.fmuladd.f32(float %i.bys, float 0.000000e+00, float %i.bym)
  %i.byu = fadd float %i.byr, 5.000000e-01
  %i.byv = fadd float %i.byt, 5.000000e-01
  %i.byw = fmul float %i.bxz, 0.000000e+00        ; 2 uses
  %i.byx = fsub float %i.byu, %i.bxz
  %i.byy = fadd float %i.byw, %i.byv
  %.sroa.0.0.vec.insert.i36.i.i.i = insertelement <2 x float> poison, float %i.byx, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i37.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i36.i.i.i, float %i.byy, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i37.i.i.i, ptr %14, align 8
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.byp, ptr noundef nonnull align 4 dereferenceable(8) %14, float noundef %i.bxz, float noundef f0xBF490FDB, float noundef 0.000000e+00, i32 noundef 0) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  %i.byz = load ptr, ptr %i.byo, align 8, !tbaa !424
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  %i.bza = fadd float %i.bym, %i.bys
  %i.bzb = fadd float %i.bza, 5.000000e-01
  %i.bzc = fadd float %i.byw, %i.bzb
  %.sroa.0.4.vec.insert.i45.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i36.i.i.i, float %i.bzc, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i45.i.i.i, ptr %15, align 8
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.byz, ptr noundef nonnull align 4 dereferenceable(8) %15, float noundef %i.bxz, float noundef 0.000000e+00, float noundef f0x3F490FDB, i32 noundef 0) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  %i.bzd = load ptr, ptr %i.byo, align 8, !tbaa !424 ; 3 uses
  %i.bze = getelementptr inbounds nuw i8, ptr %i.bzd, i64 80 ; 2 uses
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.bzd, i64 88
  %i.bzg = load ptr, ptr %i.bzf, align 8, !tbaa !453
  %i.bzh = load i32, ptr %i.bze, align 8, !tbaa !454
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(224) %i.bzd, ptr noundef %i.bzg, i32 noundef %i.bzh, i32 noundef %i.bxj, i32 noundef 0, float noundef %i.bwx) #35
  store i32 0, ptr %i.bze, align 8, !tbaa !454
  %.pre.i.i637 = load i32, ptr %i.bxw, align 8, !tbaa !883
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %bb.md
  %i.bzi = phi i32 [ %.pre.i.i637, %bb.me ], [ %i.bxx, %bb.md ]
  %i.bzj = and i32 %i.bzi, 8
  %.not42.i.i = icmp eq i32 %i.bzj, 0
  br i1 %.not42.i.i, label %.critedge.i.i, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.bzk = load float, ptr %i.bnw, align 8, !tbaa !932 ; 6 uses
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.bnp, i64 40
  %i.bzm = load float, ptr %i.bzl, align 8, !tbaa !704 ; 2 uses
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.bnp, i64 44
  %i.bzo = load float, ptr %i.bzn, align 4, !tbaa !744
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.bnp, i64 48
  %i.bzq = load float, ptr %i.bzp, align 8, !tbaa !916
  %i.bzr = fadd float %i.bzm, %i.bzq
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.bnp, i64 52
  %i.bzt = load float, ptr %i.bzs, align 4, !tbaa !917
  %i.bzu = fadd float %i.bzo, %i.bzt
  %i.bzv = fadd float %i.bzr, -1.000000e+00
  %i.bzw = fadd float %i.bzu, -1.000000e+00       ; 3 uses
  %i.bzx = fadd float %i.bzk, %i.bzm              ; 3 uses
  %i.bzy = fsub float %i.bzv, %i.bzk
  %i.bzz = getelementptr inbounds nuw i8, ptr %i.bnp, i64 712 ; 3 uses
  %i.caa = load ptr, ptr %i.bzz, align 8, !tbaa !424
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.cab = fsub float %i.bzy, %i.bzx              ; 2 uses
  %i.cac = fadd float %i.bzx, %i.cab
  %i.cad = fsub float %i.bzw, %i.bzw
  %i.cae = fadd float %i.bzw, %i.cad
  %i.caf = fadd float %i.cac, 5.000000e-01
  %i.cag = fadd float %i.cae, 5.000000e-01
  %i.cah = fmul float %i.bzk, 0.000000e+00        ; 2 uses
  %i.cai = fadd float %i.cah, %i.caf
  %i.caj = fsub float %i.cag, %i.bzk              ; 2 uses
  %.sroa.0.0.vec.insert.i36.i48.i.i = insertelement <2 x float> poison, float %i.cai, i64 0
  %.sroa.0.4.vec.insert.i37.i49.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i36.i48.i.i, float %i.caj, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i37.i49.i.i, ptr %12, align 8
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.caa, ptr noundef nonnull align 4 dereferenceable(8) %12, float noundef %i.bzk, float noundef f0x3F490FDB, float noundef f0x3FC90FDB, i32 noundef 0) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  %i.cak = load ptr, ptr %i.bzz, align 8, !tbaa !424
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  %i.cal = call float @llvm.fmuladd.f32(float %i.cab, float 0.000000e+00, float %i.bzx)
  %i.cam = fadd float %i.cal, 5.000000e-01
  %i.can = fadd float %i.cah, %i.cam
  %.sroa.0.0.vec.insert.i44.i50.i.i = insertelement <2 x float> poison, float %i.can, i64 0
  %.sroa.0.4.vec.insert.i45.i51.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i44.i50.i.i, float %i.caj, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i45.i51.i.i, ptr %13, align 8
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.cak, ptr noundef nonnull align 4 dereferenceable(8) %13, float noundef %i.bzk, float noundef f0x3FC90FDB, float noundef f0x4016CBE4, i32 noundef 0) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  %i.cao = load ptr, ptr %i.bzz, align 8, !tbaa !424 ; 3 uses
  %i.cap = getelementptr inbounds nuw i8, ptr %i.cao, i64 80 ; 2 uses
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cao, i64 88
  %i.car = load ptr, ptr %i.caq, align 8, !tbaa !453
  %i.cas = load i32, ptr %i.cap, align 8, !tbaa !454
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(224) %i.cao, ptr noundef %i.car, i32 noundef %i.cas, i32 noundef %i.bxj, i32 noundef 0, float noundef %i.bwx) #35
  store i32 0, ptr %i.cap, align 8, !tbaa !454
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.mg, %bb.mf, %bb.mc, %.loopexit.i
  %i.cat = getelementptr inbounds nuw i8, ptr %i.bnp, i64 216
  %i.cau = load i8, ptr %i.cat, align 8, !tbaa !1418 ; 2 uses
  %.not43.i.i = icmp eq i8 %i.cau, -1
  %i.cav = getelementptr inbounds nuw i8, ptr %i.bnp, i64 217
  %i.caw = load i8, ptr %i.cav, align 1, !tbaa !1419 ; 2 uses
  %.not44.i.i = icmp eq i8 %i.caw, -1             ; 3 uses
  %or.cond.i.i = select i1 %.not43.i.i, i1 %.not44.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.ml, label %.critedge._crit_edge.i.i

.critedge._crit_edge.i.i:                         ; preds = %.critedge.i.i
  %spec.select.i.i = select i1 %.not44.i.i, i8 %i.cau, i8 %i.caw ; 2 uses
  %i.cax = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.cay = getelementptr inbounds nuw i8, ptr %i.cax, i64 3412
  %i.caz = select i1 %.not44.i.i, i64 28, i64 29
  %i.cba = getelementptr inbounds nuw [16 x i8], ptr %i.cay, i64 %i.caz ; 2 uses
  %.sroa.4.0..sroa_idx.i53.i.i = getelementptr inbounds nuw i8, ptr %i.cba, i64 4
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.cax, i64 3148
  %i.cbc = load float, ptr %i.cbb, align 4, !tbaa !399
  %i.cbd = load <4 x float>, ptr %i.cba, align 4, !tbaa !86 ; 2 uses
  %.sroa.4.0.copyload.i54.i.i = load float, ptr %.sroa.4.0..sroa_idx.i53.i.i, align 4, !tbaa !86
  %i.cbe = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.cbc, i64 3
  %i.cbf = fmul <4 x float> %i.cbd, %i.cbe        ; 3 uses
  %i.cbg = fcmp ogt <4 x float> %i.cbf, splat (float 1.000000e+00)
  %i.cbh = select <4 x i1> %i.cbg, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cbf
  %i.cbi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cbh, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %75 = shufflevector <4 x float> %i.cbd, <4 x float> %i.cbf, <4 x i32> <i32 0, i32 poison, i32 2, i32 7>
  %76 = insertelement <4 x float> %75, float %.sroa.4.0.copyload.i54.i.i, i64 1
  %77 = fcmp olt <4 x float> %76, zeroinitializer
  %78 = select <4 x i1> %77, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cbi ; 4 uses
  %i.cbj = extractelement <4 x float> %78, i64 0
  %i.cbk = fptosi float %i.cbj to i32
  %79 = extractelement <4 x float> %78, i64 1
  %80 = fptosi float %79 to i32
  %81 = shl i32 %80, 8
  %82 = or i32 %81, %i.cbk
  %83 = extractelement <4 x float> %78, i64 2
  %84 = fptosi float %83 to i32
  %85 = shl i32 %84, 16
  %86 = or i32 %82, %85
  %87 = extractelement <4 x float> %78, i64 3
  %88 = fptosi float %87 to i32
  %89 = shl i32 %88, 24
  %i.cbl = or i32 %86, %89
  %i.cbm = load float, ptr %i.bny, align 4, !tbaa !1407 ; 2 uses
  %i.cbn = fcmp ole float %i.cbm, 2.000000e+00
  %i.cbo = select i1 %i.cbn, float 2.000000e+00, float %i.cbm
  %i.cbp = load float, ptr %i.bnw, align 8, !tbaa !932 ; 11 uses
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.bnp, i64 40
  %i.cbr = load float, ptr %i.cbq, align 8, !tbaa !704 ; 5 uses
  %i.cbs = getelementptr inbounds nuw i8, ptr %i.bnp, i64 44
  %i.cbt = load float, ptr %i.cbs, align 4, !tbaa !744 ; 5 uses
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.bnp, i64 48
  %i.cbv = load float, ptr %i.cbu, align 8, !tbaa !916
  %i.cbw = fadd float %i.cbr, %i.cbv
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.bnp, i64 52
  %i.cby = load float, ptr %i.cbx, align 4, !tbaa !917
  %i.cbz = fadd float %i.cbt, %i.cby
  %i.cca = fadd float %i.cbw, -1.000000e+00       ; 3 uses
  %i.ccb = fadd float %i.cbz, -1.000000e+00       ; 4 uses
  switch i8 %spec.select.i.i, label %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i [
    i8 0, label %bb.mh
    i8 1, label %bb.mi
    i8 2, label %bb.mj
    i8 3, label %bb.mk
  ]

bb.mh:                                            ; preds = %.critedge._crit_edge.i.i
  %i.ccc = fadd float %i.cbp, %i.cbt
  %i.ccd = fadd float %i.cbr, 0.000000e+00
  %i.cce = fsub float %i.ccb, %i.cbp
  %.sroa.044.0.vec.insert.i.i.i.i = insertelement <2 x float> poison, float %i.cbr, i64 0
  %.sroa.044.4.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.044.0.vec.insert.i.i.i.i, float %i.ccc, i64 1
  %.sroa.10.8.vec.insert.i.i.i.i = insertelement <2 x float> poison, float %i.ccd, i64 0
  %.sroa.10.12.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.10.8.vec.insert.i.i.i.i, float %i.cce, i64 1
  br label %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i

bb.mi:                                            ; preds = %.critedge._crit_edge.i.i
  %.sroa.9.8.vec.insert.i.i67.i.i = insertelement <2 x float> poison, float %i.cca, i64 0 ; 2 uses
  %i.ccf = fadd float %i.cbp, %i.cbt
  %i.ccg = fsub float %i.ccb, %i.cbp
  %.sroa.044.4.vec.insert53.i.i68.i.i = insertelement <2 x float> %.sroa.9.8.vec.insert.i.i67.i.i, float %i.ccf, i64 1
  %.sroa.10.12.vec.insert66.i.i69.i.i = insertelement <2 x float> %.sroa.9.8.vec.insert.i.i67.i.i, float %i.ccg, i64 1
  br label %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i

bb.mj:                                            ; preds = %.critedge._crit_edge.i.i
  %i.cch = fadd float %i.cbp, %i.cbr
  %i.cci = insertelement <2 x float> poison, float %i.cca, i64 0
  %i.ccj = insertelement <2 x float> %i.cci, float %i.cbt, i64 1
  %i.cck = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.cbp, i64 0
  %i.ccl = fsub <2 x float> %i.ccj, %i.cck
  %.sroa.044.0.vec.insert49.i.i.i.i = insertelement <2 x float> poison, float %i.cch, i64 0
  %.sroa.044.4.vec.insert55.i.i.i.i = insertelement <2 x float> %.sroa.044.0.vec.insert49.i.i.i.i, float %i.cbt, i64 1
  br label %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i

bb.mk:                                            ; preds = %.critedge._crit_edge.i.i
  %i.ccm = fadd float %i.cbp, %i.cbr
  %i.ccn = fsub float %i.cca, %i.cbp
  %.sroa.044.0.vec.insert51.i.i59.i.i = insertelement <2 x float> poison, float %i.ccm, i64 0
  %.sroa.044.4.vec.insert57.i.i60.i.i = insertelement <2 x float> %.sroa.044.0.vec.insert51.i.i59.i.i, float %i.ccb, i64 1
  %.sroa.10.8.vec.insert64.i.i61.i.i = insertelement <2 x float> poison, float %i.ccn, i64 0
  %.sroa.10.12.vec.insert70.i.i62.i.i = insertelement <2 x float> %.sroa.10.8.vec.insert64.i.i61.i.i, float %i.ccb, i64 1
  br label %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i

_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i: ; preds = %bb.mk, %bb.mj, %bb.mi, %bb.mh, %.critedge._crit_edge.i.i
  %.sroa.044.0.i.i.i.i = phi <2 x float> [ %.sroa.044.4.vec.insert57.i.i60.i.i, %bb.mk ], [ %.sroa.044.4.vec.insert.i.i.i.i, %bb.mh ], [ %.sroa.044.4.vec.insert53.i.i68.i.i, %bb.mi ], [ %.sroa.044.4.vec.insert55.i.i.i.i, %bb.mj ], [ zeroinitializer, %.critedge._crit_edge.i.i ] ; 3 uses
  %.sroa.10.0.i.i.i.i = phi <2 x float> [ %.sroa.10.12.vec.insert70.i.i62.i.i, %bb.mk ], [ %.sroa.10.12.vec.insert.i.i.i.i, %bb.mh ], [ %.sroa.10.12.vec.insert66.i.i69.i.i, %bb.mi ], [ %i.ccl, %bb.mj ], [ zeroinitializer, %.critedge._crit_edge.i.i ]
  %i.cco = sext i8 %spec.select.i.i to i64
  %i.ccp = getelementptr inbounds [28 x i8], ptr @_ZL17resize_border_def, i64 %i.cco ; 4 uses
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.bnp, i64 712 ; 3 uses
  %i.ccr = load ptr, ptr %i.ccq, align 8, !tbaa !424
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.ccp, i64 8
  %i.cct = load <2 x float>, ptr %i.ccs, align 4, !tbaa !86
  %i.ccu = fsub <2 x float> %.sroa.10.0.i.i.i.i, %.sroa.044.0.i.i.i.i ; 2 uses
  %i.ccv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ccu, <2 x float> %i.cct, <2 x float> %.sroa.044.0.i.i.i.i)
  %i.ccw = fadd <2 x float> %i.ccv, splat (float 5.000000e-01)
  %i.ccx = load <2 x float>, ptr %i.ccp, align 4, !tbaa !86
  %i.ccy = insertelement <2 x float> poison, float %i.cbp, i64 0
  %i.ccz = shufflevector <2 x float> %i.ccy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cda = fmul <2 x float> %i.ccz, %i.ccx        ; 2 uses
  %i.cdb = fadd <2 x float> %i.ccw, %i.cda
  store <2 x float> %i.cdb, ptr %10, align 8
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.ccp, i64 24
  %i.cdd = load float, ptr %i.cdc, align 4, !tbaa !1424 ; 4 uses
  %i.cde = fadd float %i.cdd, f0xBF490FDB
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.ccr, ptr noundef nonnull align 4 dereferenceable(8) %10, float noundef %i.cbp, float noundef %i.cde, float noundef %i.cdd, i32 noundef 0) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  %i.cdf = load ptr, ptr %i.ccq, align 8, !tbaa !424
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.ccp, i64 16
  %i.cdh = load <2 x float>, ptr %i.cdg, align 4, !tbaa !86
  %i.cdi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ccu, <2 x float> %i.cdh, <2 x float> %.sroa.044.0.i.i.i.i)
  %i.cdj = fadd <2 x float> %i.cdi, splat (float 5.000000e-01)
  %i.cdk = fadd <2 x float> %i.cda, %i.cdj
  store <2 x float> %i.cdk, ptr %11, align 8
  %i.cdl = fadd float %i.cdd, f0x3F490FDB
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.cdf, ptr noundef nonnull align 4 dereferenceable(8) %11, float noundef %i.cbp, float noundef %i.cdd, float noundef %i.cdl, i32 noundef 0) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  %i.cdm = load ptr, ptr %i.ccq, align 8, !tbaa !424 ; 3 uses
  %i.cdn = getelementptr inbounds nuw i8, ptr %i.cdm, i64 80 ; 2 uses
  %i.cdo = getelementptr inbounds nuw i8, ptr %i.cdm, i64 88
  %i.cdp = load ptr, ptr %i.cdo, align 8, !tbaa !453
  %i.cdq = load i32, ptr %i.cdn, align 8, !tbaa !454
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(224) %i.cdm, ptr noundef %i.cdp, i32 noundef %i.cdq, i32 noundef %i.cbl, i32 noundef 0, float noundef %i.cbo) #35
  store i32 0, ptr %i.cdn, align 8, !tbaa !454
  br label %bb.ml

bb.ml:                                            ; preds = %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i, %.critedge.i.i
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.bww, i64 3224
  %i.cds = load float, ptr %i.cdr, align 8, !tbaa !439 ; 2 uses
  %i.cdt = fcmp ogt float %i.cds, 0.000000e+00
  br i1 %i.cdt, label %bb.mm, label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

bb.mm:                                            ; preds = %bb.ml
  %i.cdu = load i32, ptr %i.bns, align 4, !tbaa !608
  %i.cdv = and i32 %i.cdu, 1
  %.not47.i.i = icmp eq i32 %i.cdv, 0
  br i1 %.not47.i.i, label %bb.mn, label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

bb.mn:                                            ; preds = %bb.mm
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.bnp, i64 40
  %i.cdx = getelementptr inbounds nuw i8, ptr %i.bnp, i64 44
  %i.cdy = load float, ptr %i.cdx, align 4, !tbaa !744
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.bnp, i64 104
  %i.cea = load float, ptr %i.cdz, align 8, !tbaa !736
  %i.ceb = fadd float %i.cdy, %i.cea
  %i.cec = fadd float %i.ceb, -1.000000e+00       ; 2 uses
  %i.ced = getelementptr inbounds nuw i8, ptr %i.bnp, i64 712
  %i.cee = load ptr, ptr %i.ced, align 8, !tbaa !424
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35
  %i.cef = load float, ptr %i.cdw, align 8, !tbaa !704 ; 2 uses
  %i.ceg = getelementptr inbounds nuw i8, ptr %17, i64 4
  store float %i.cec, ptr %i.ceg, align 4, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #35
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.bnp, i64 48
  %i.cei = load float, ptr %i.ceh, align 8, !tbaa !916
  %i.cej = fadd float %i.cef, %i.cei
  %i.cek = fneg float %i.bwx
  %i.cel = insertelement <2 x float> poison, float %i.bwx, i64 0
  %i.cem = insertelement <2 x float> %i.cel, float %i.cek, i64 1
  %i.cen = insertelement <2 x float> poison, float %i.cef, i64 0
  %i.ceo = insertelement <2 x float> %i.cen, float %i.cej, i64 1
  %i.cep = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cem, <2 x float> splat (float 5.000000e-01), <2 x float> %i.ceo) ; 2 uses
  %i.ceq = extractelement <2 x float> %i.cep, i64 0
  store float %i.ceq, ptr %17, align 4, !tbaa !269
  %i.cer = extractelement <2 x float> %i.cep, i64 1
  store float %i.cer, ptr %18, align 4, !tbaa !269
  %i.ces = getelementptr inbounds nuw i8, ptr %18, i64 4
  store float %i.cec, ptr %i.ces, align 4, !tbaa !270
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.cee, ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef %i.bxj, float noundef %i.cds) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  br label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit: ; preds = %bb.li, %bb.ml, %bb.mm, %bb.mn
  store i32 0, ptr %i.bnv, align 8, !tbaa !899
  %.pre1054 = load ptr, ptr %i.g, align 8, !tbaa !595 ; 57 uses
  br i1 %.1981, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit
  %i.cet = getelementptr inbounds nuw i8, ptr %.pre1054, i64 720
  %i.ceu = getelementptr inbounds nuw i8, ptr %.pre1054, i64 712
  store ptr %i.cet, ptr %i.ceu, align 8, !tbaa !424
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mo, %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit
  %i.cev = and i32 %.1359, 8
  %.not449 = icmp eq i32 %i.cev, 0
  %i.cew = getelementptr inbounds nuw i8, ptr %.pre1054, i64 80
  %i.cex = load float, ptr %i.cew, align 8, !tbaa !926 ; 3 uses
  %i.cey = fcmp une float %i.cex, 0.000000e+00    ; 2 uses
  br i1 %i.cey, label %bb.mt, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.cez = and i32 %.1359, 2056
  %i.cfa = icmp eq i32 %i.cez, 2048
  br i1 %i.cfa, label %bb.mr, label %bb.ms

bb.mr:                                            ; preds = %bb.mq
  %i.cfb = getelementptr inbounds nuw i8, ptr %.pre1054, i64 64
  %i.cfc = load float, ptr %i.cfb, align 8, !tbaa !946
  br label %bb.ms

bb.ms:                                            ; preds = %bb.mq, %bb.mr
  %i.cfd = phi float [ %i.cfc, %bb.mr ], [ 0.000000e+00, %bb.mq ] ; 2 uses
  %i.cfe = getelementptr inbounds nuw i8, ptr %.pre1054, i64 48
  %i.cff = load float, ptr %i.cfe, align 8, !tbaa !916
  %i.cfg = getelementptr inbounds nuw i8, ptr %.pre1054, i64 88
  %i.cfh = load float, ptr %i.cfg, align 8, !tbaa !933
  %i.cfi = fneg float %i.cfh
  %i.cfj = call float @llvm.fmuladd.f32(float %i.cfi, float 2.000000e+00, float %i.cff)
  %i.cfk = getelementptr inbounds nuw i8, ptr %.pre1054, i64 112
  %i.cfl = load float, ptr %i.cfk, align 8, !tbaa !928
  %i.cfm = getelementptr inbounds nuw i8, ptr %.pre1054, i64 120
  %i.cfn = load float, ptr %i.cfm, align 8, !tbaa !938
  %i.cfo = fadd float %i.cfl, %i.cfn
  %i.cfp = fsub float %i.cfj, %i.cfo              ; 2 uses
  %i.cfq = fcmp oge float %i.cfd, %i.cfp
  %i.cfr = select i1 %i.cfq, float %i.cfd, float %i.cfp
  br label %bb.mt

bb.mt:                                            ; preds = %bb.mp, %bb.ms
  %i.cfs = phi float [ %i.cfr, %bb.ms ], [ %i.cex, %bb.mp ]
end_hunk_0
begin_hunk_1_@_ZN5ImGui28DebugRenderViewportThumbnailEP10ImDrawListP14ImGuiViewportPRK6ImRect:bb.a
  %i.u = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %.scalar, i64 3
  %i.v = fmul <4 x float> %i.t, %i.u              ; 3 uses
  %i.w = fcmp olt <4 x float> %i.v, zeroinitializer
  %i.x = fcmp ogt <4 x float> %i.v, splat (float 1.000000e+00)
  %i.y = select <4 x i1> %i.x, <4 x float> splat (float 1.000000e+00), <4 x float> %i.v
  %i.z = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.aa = select <4 x i1> %i.w, <4 x float> splat (float 5.000000e-01), <4 x float> %i.z
  %i.ab = fptosi <4 x float> %i.aa to <4 x i32>
  %i.ac = shl <4 x i32> %i.ab, <i32 0, i32 8, i32 16, i32 24>
  %i.ad = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ac)
  tail call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.p, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.d, i32 noundef %i.ad, float noundef 0.000000e+00, i32 noundef 0) #35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 5088
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 5096
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !500 ; 2 uses
  %i.ah = load i32, ptr %i.ae, align 8, !tbaa !502 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %.idx = shl nsw i64 %i.ai, 3
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 %.idx
  %.not194 = icmp eq i32 %i.ah, 0
  br i1 %.not194, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8080
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4384
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 4400
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %i.ap = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3492
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 3148
  %i.as = load float, ptr %i.ar, align 4, !tbaa !399
  %i.at = load <4 x float>, ptr %i.aq, align 4, !tbaa !86
  %i.au = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.as, i64 3
  %i.av = fmul <4 x float> %i.at, %i.au           ; 3 uses
  %i.aw = fcmp olt <4 x float> %i.av, zeroinitializer
  %i.ax = fcmp ogt <4 x float> %i.av, splat (float 1.000000e+00)
  %i.ay = select <4 x i1> %i.ax, <4 x float> splat (float 1.000000e+00), <4 x float> %i.av
  %i.az = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ba = select <4 x i1> %i.aw, <4 x float> splat (float 5.000000e-01), <4 x float> %i.az
  %i.bb = fptosi <4 x float> %i.ba to <4 x i32>
  %i.bc = shl <4 x i32> %i.bb, <i32 0, i32 8, i32 16, i32 24>
  %i.bd = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bc)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.d, i32 noundef %i.bd, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #35
  %i.be = load i32, ptr %1, align 8, !tbaa !467
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 10268
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !1053
  %i.bh = icmp eq i32 %i.be, %i.bg
  br i1 %i.bh, label %bb.i, label %bb.j

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.0195 = phi ptr [ %i.ag, %.lr.ph ], [ %i.gq, %bb.h ] ; 2 uses
  %i.bi = load ptr, ptr %.0195, align 8, !tbaa !595 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 205
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !414, !range !120, !noundef !254
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !608
  %i.bo = and i32 %i.bn, 16777216
  %.not47 = icmp eq i32 %i.bo, 0
  br i1 %.not47, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bs = load float, ptr %i.br, align 8, !tbaa !737
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !736
  %i.bv = load <2 x float>, ptr %i.bp, align 8, !tbaa !86 ; 6 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 1
  %i.bx = fmul <2 x float> %i.k, %i.bv
  %i.by = fadd <2 x float> %i.n, %i.bx
  %i.bz = fptosi <2 x float> %i.by to <2 x i32>
  %i.ca = sitofp <2 x i32> %i.bz to <2 x float>   ; 3 uses
  %i.cb = load <2 x float>, ptr %2, align 4       ; 8 uses
  %i.cc = load <2 x float>, ptr %i.d, align 4     ; 8 uses
  %i.cd = fcmp ogt <2 x float> %i.cb, %i.ca
  %i.ce = fcmp olt <2 x float> %i.cc, %i.ca
  %i.cf = select <2 x i1> %i.ce, <2 x float> %i.cc, <2 x float> %i.ca
  %i.cg = select <2 x i1> %i.cd, <2 x float> %i.cb, <2 x float> %i.cf
  store <2 x float> %i.cg, ptr %3, align 8, !tbaa !86
  %i.ch = load <2 x float>, ptr %i.bq, align 8, !tbaa !86
  %i.ci = fadd <2 x float> %i.bv, %i.ch
  %i.cj = fmul <2 x float> %i.k, %i.ci
  %i.ck = fadd <2 x float> %i.n, %i.cj
  %i.cl = fptosi <2 x float> %i.ck to <2 x i32>
  %i.cm = sitofp <2 x i32> %i.cl to <2 x float>   ; 3 uses
  %i.cn = fcmp ogt <2 x float> %i.cb, %i.cm
  %i.co = fcmp olt <2 x float> %i.cc, %i.cm
  %i.cp = select <2 x i1> %i.co, <2 x float> %i.cc, <2 x float> %i.cm
  %i.cq = select <2 x i1> %i.cn, <2 x float> %i.cb, <2 x float> %i.cp
  store <2 x float> %i.cq, ptr %i.ak, align 8, !tbaa !86
  %i.cr = fmul <2 x float> %i.k, %i.bv
  %i.cs = fadd <2 x float> %i.n, %i.cr
  %i.ct = fptosi <2 x float> %i.cs to <2 x i32>
  %i.cu = sitofp <2 x i32> %i.ct to <2 x float>   ; 3 uses
  %i.cv = fcmp ogt <2 x float> %i.cb, %i.cu
  %i.cw = fcmp olt <2 x float> %i.cc, %i.cu
  %i.cx = select <2 x i1> %i.cw, <2 x float> %i.cc, <2 x float> %i.cu
  %i.cy = select <2 x i1> %i.cv, <2 x float> %i.cb, <2 x float> %i.cx
  store <2 x float> %i.cy, ptr %4, align 8, !tbaa !86
  %i.cz = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.bu, i64 1
  %i.db = fadd <2 x float> %i.bv, %i.da           ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.db, %i.bv
  %i.dc = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.dd = call float @llvm.fmuladd.f32(float %i.dc, float 3.000000e+00, float %i.bw)
  %i.de = insertelement <2 x float> %i.db, float %i.dd, i64 1
  %i.df = fmul <2 x float> %i.k, %i.de
  %i.dg = fadd <2 x float> %i.n, %i.df
  %i.dh = fptosi <2 x float> %i.dg to <2 x i32>
  %i.di = sitofp <2 x i32> %i.dh to <2 x float>   ; 3 uses
  %i.dj = fcmp ogt <2 x float> %i.cb, %i.di
  %i.dk = fcmp olt <2 x float> %i.cc, %i.di
  %i.dl = select <2 x i1> %i.dk, <2 x float> %i.cc, <2 x float> %i.di
  %i.dm = select <2 x i1> %i.dj, <2 x float> %i.cb, <2 x float> %i.dl
  store <2 x float> %i.dm, ptr %i.al, align 8, !tbaa !86
  %i.dn = load ptr, ptr %i.am, align 8, !tbaa !388 ; 2 uses
  %.not48 = icmp eq ptr %i.dn, null
  br i1 %.not48, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.do = getelementptr inbounds nuw i8, ptr %i.bi, i64 976
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !893
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 976
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !893
  %i.ds = icmp eq ptr %i.dp, %i.dr
  %i.dt = select i1 %i.ds, i64 11, i64 10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.du = phi i64 [ 10, %bb.d ], [ %i.dt, %bb.e ]
  %i.dv = load ptr, ptr %i.o, align 8, !tbaa !424
  %i.dw = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 3444
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 3148
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !399
  %i.ea = load <4 x float>, ptr %i.dx, align 4, !tbaa !86
  %i.eb = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.dz, i64 3
  %i.ec = fmul <4 x float> %i.ea, %i.eb           ; 3 uses
  %i.ed = fcmp olt <4 x float> %i.ec, zeroinitializer
  %i.ee = fcmp ogt <4 x float> %i.ec, splat (float 1.000000e+00)
  %i.ef = select <4 x i1> %i.ee, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ec
  %i.eg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ef, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.eh = select <4 x i1> %i.ed, <4 x float> splat (float 5.000000e-01), <4 x float> %i.eg
  %i.ei = fptosi <4 x float> %i.eh to <4 x i32>
  %i.ej = shl <4 x i32> %i.ei, <i32 0, i32 8, i32 16, i32 24>
  %i.ek = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ej)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.dv, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.ak, i32 noundef %i.ek, float noundef 0.000000e+00, i32 noundef 0) #35
  %i.el = load ptr, ptr %i.o, align 8, !tbaa !424
  %i.em = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 3412
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %i.du
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 3148
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !399
  %i.er = load <4 x float>, ptr %i.eo, align 4, !tbaa !86
  %i.es = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.eq, i64 3
  %i.et = fmul <4 x float> %i.er, %i.es           ; 3 uses
  %i.eu = fcmp olt <4 x float> %i.et, zeroinitializer
  %i.ev = fcmp ogt <4 x float> %i.et, splat (float 1.000000e+00)
  %i.ew = select <4 x i1> %i.ev, <4 x float> splat (float 1.000000e+00), <4 x float> %i.et
  %i.ex = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ew, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ey = select <4 x i1> %i.eu, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ex
  %i.ez = fptosi <4 x float> %i.ey to <4 x i32>
  %i.fa = shl <4 x i32> %i.ez, <i32 0, i32 8, i32 16, i32 24>
  %i.fb = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.fa)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.el, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.al, i32 noundef %i.fb, float noundef 0.000000e+00, i32 noundef 0) #35
  %i.fc = load ptr, ptr %i.o, align 8, !tbaa !424
  %i.fd = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 3492
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 3148
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !399
  %i.fh = load <4 x float>, ptr %i.fe, align 4, !tbaa !86
  %i.fi = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.fg, i64 3
  %i.fj = fmul <4 x float> %i.fh, %i.fi           ; 3 uses
  %i.fk = fcmp olt <4 x float> %i.fj, zeroinitializer
  %i.fl = fcmp ogt <4 x float> %i.fj, splat (float 1.000000e+00)
  %i.fm = select <4 x i1> %i.fl, <4 x float> splat (float 1.000000e+00), <4 x float> %i.fj
  %i.fn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fm, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.fo = select <4 x i1> %i.fk, <4 x float> splat (float 5.000000e-01), <4 x float> %i.fn
  %i.fp = fptosi <4 x float> %i.fo to <4 x i32>
  %i.fq = shl <4 x i32> %i.fp, <i32 0, i32 8, i32 16, i32 24>
  %i.fr = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.fq)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.fc, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.ak, i32 noundef %i.fr, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #35
  %i.fs = load ptr, ptr %i.o, align 8, !tbaa !424
  %i.ft = load ptr, ptr %i.an, align 8, !tbaa !425
  %i.fu = load float, ptr %i.ao, align 8, !tbaa !426
  %i.fv = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 3412
  %.sroa.4.0..sroa_idx.i139 = getelementptr inbounds nuw i8, ptr %i.fv, i64 3416
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 3148
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !399
  %i.fz = load <4 x float>, ptr %i.fw, align 4, !tbaa !86 ; 2 uses
  %.sroa.4.0.copyload.i140 = load float, ptr %.sroa.4.0..sroa_idx.i139, align 4, !tbaa !86
  %i.ga = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.fy, i64 3
  %i.gb = fmul <4 x float> %i.fz, %i.ga           ; 3 uses
  %i.gc = fcmp ogt <4 x float> %i.gb, splat (float 1.000000e+00)
  %i.gd = select <4 x i1> %i.gc, <4 x float> splat (float 1.000000e+00), <4 x float> %i.gb
  %i.ge = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %5 = shufflevector <4 x float> %i.fz, <4 x float> %i.gb, <4 x i32> <i32 0, i32 poison, i32 2, i32 7>
  %6 = insertelement <4 x float> %5, float %.sroa.4.0.copyload.i140, i64 1
  %7 = fcmp olt <4 x float> %6, zeroinitializer
  %8 = select <4 x i1> %7, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ge ; 4 uses
  %i.gf = extractelement <4 x float> %8, i64 0
  %i.gg = fptosi float %i.gf to i32
  %9 = extractelement <4 x float> %8, i64 1
  %10 = fptosi float %9 to i32
  %11 = shl i32 %10, 8
  %12 = or i32 %11, %i.gg
  %13 = extractelement <4 x float> %8, i64 2
  %14 = fptosi float %13 to i32
  %15 = shl i32 %14, 16
  %16 = or i32 %12, %15
  %17 = extractelement <4 x float> %8, i64 3
  %18 = fptosi float %17 to i32
  %19 = shl i32 %18, 24
  %i.gh = or i32 %16, %19
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !333 ; 5 uses
  %.not193 = icmp eq ptr %i.gj, inttoptr (i64 -1 to ptr)
  br i1 %.not193, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.gk = ptrtoaddr ptr %i.gj to i64
  %i.gl = xor i64 %i.gk, -1
  %scevgep.i = getelementptr i8, ptr %i.gj, i64 %i.gl
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.gp, %.critedge2.i ], [ %i.gj, %.lr.ph.preheader.i ] ; 5 uses
  %i.gm = load i8, ptr %.015.i, align 1, !tbaa !93
  switch i8 %i.gm, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !93
  %.not14.i = icmp eq i8 %i.go, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.g, %.lr.ph.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.gp, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !18

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.lr.ph.i, %bb.g, %.critedge2.i, %bb.f
  %.0.lcssa.i = phi ptr [ inttoptr (i64 -1 to ptr), %bb.f ], [ %.015.i, %bb.g ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ]
  call void @_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(224) %i.fs, ptr noundef %i.ft, float noundef %i.fu, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.gh, ptr noundef %i.gj, ptr noundef %.0.lcssa.i, float noundef 0.000000e+00, ptr noundef null) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %.0195, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.gq, %i.aj
  br i1 %.not, label %._crit_edge, label %bb.b

bb.i:                                             ; preds = %._crit_edge
  %i.gr = load ptr, ptr %i.o, align 8, !tbaa !424
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.gr, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.d, i32 noundef -16711681, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui26DebugRenderKeyboardPreviewEP10ImDrawList(ptr noundef %0) local_unnamed_addr #11 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 8 uses
  %5 = alloca %struct.ImVec2, align 8             ; 6 uses
  %6 = alloca %struct.ImVec2, align 8             ; 5 uses
  %7 = alloca %struct.ImVec2, align 8             ; 5 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4400
  %i.c = load float, ptr %i.b, align 8, !tbaa !426
  %i.d = fdiv float %i.c, 1.300000e+01            ; 3 uses
  %i.e = insertelement <2 x float> poison, float %i.d, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.g = fmul <2 x float> %i.f, <float 5.000000e+00, float 3.000000e+00> ; 2 uses
  %i.h = fmul float %i.d, 2.000000e+00            ; 2 uses
  %i.i = fmul <2 x float> %i.f, <float 7.000000e+00, float 4.000000e+00>
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !309
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.l, align 8, !tbaa !86 ; 5 uses
  store <2 x float> %.sroa.0.0.copyload.i, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.m = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 2 uses
  %i.n = fmul <2 x float> %i.f, <float 9.000000e+00, float 3.500000e+01> ; 3 uses
  %i.o = fadd <2 x float> %i.n, <float -0.000000e+00, float -1.000000e+00> ; 3 uses
  %i.p = extractelement <2 x float> %i.o, i64 1   ; 3 uses
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 3.000000e+00, float %i.m)
  %i.r = insertelement <2 x float> %.sroa.0.0.copyload.i, float %i.q, i64 0
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> <float 2.000000e+00, float 3.000000e+00>, <2 x float> %i.r)
  %i.t = fadd <2 x float> %i.s, splat (float 1.000000e+01) ; 2 uses
  store <2 x float> %i.t, ptr %2, align 8, !tbaa !86
  %i.u = fadd float %i.m, 5.000000e+00
  %i.v = fsub float %i.u, %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.w = fsub <2 x float> %i.t, %.sroa.0.0.copyload.i
  store <2 x float> %i.w, ptr %3, align 8
  call void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.x = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 7712
  %i.z = load i32, ptr %i.y, align 8, !tbaa !682
  %i.aa = and i32 %i.z, 256
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = fmul float %i.d, 2.500000e+01
  call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i1 noundef zeroext true) #35
  %i.ac = extractelement <2 x float> %i.g, i64 1  ; 3 uses
  %i.ad = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 0, i32 3>
  %i.ag = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i

bb.c:                                             ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59
  call void @_ZN10ImDrawList11PopClipRectEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #35
  br label %bb.e

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i:         ; preds = %bb.b, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr @__const._ZN5ImGui26DebugRenderKeyboardPreviewEP10ImDrawList.keys_to_display, i64 %indvars.iv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.ai = load <2 x i32>, ptr %i.ah, align 8, !tbaa !255
  %i.aj = sitofp <2 x i32> %i.ai to <2 x float>   ; 2 uses
  %i.ak = extractelement <2 x float> %i.aj, i64 1
  %i.al = call float @llvm.fmuladd.f32(float %i.ak, float %i.p, float %i.v)
  %i.am = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = insertelement <2 x float> %.sroa.0.0.copyload.i, float %i.al, i64 0
  %i.ao = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.af, <2 x float> %i.an) ; 2 uses
  store <2 x float> %i.ao, ptr %4, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.ap = fadd <2 x float> %i.ag, %i.ao
  store <2 x float> %i.ap, ptr %5, align 8
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -3355444, float noundef %i.ac, i32 noundef 0) #35
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -15198184, float noundef %i.ac, i32 noundef 0, float noundef 1.000000e+00) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.aq = load <2 x float>, ptr %4, align 8, !tbaa !86
  %i.ar = fadd <2 x float> %i.g, %i.aq            ; 2 uses
  store <2 x float> %i.ar, ptr %6, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.as = fadd <2 x float> %i.ae, %i.ar
  store <2 x float> %i.as, ptr %7, align 8, !tbaa !86
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef -4079167, float noundef %i.h, i32 noundef 0, float noundef 2.000000e+00) #35
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef -197380, float noundef %i.h, i32 noundef 0) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.at = load <2 x float>, ptr %4, align 8, !tbaa !86
  %i.au = fadd <2 x float> %i.i, %i.at
  store <2 x float> %i.au, ptr %8, align 8, !tbaa !86
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1552
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef -12566464, ptr noundef %i.aw, ptr noundef null) #35
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !1553 ; 4 uses
  %i.az = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.ba = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ay)
  %i.bb = icmp eq i32 %i.ba, 1
  %i.bc = sext i32 %i.ay to i64                   ; 2 uses
  %i.bd = getelementptr [16 x i8], ptr %i.az, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 -7932
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !257, !range !120, !noundef !254
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.d, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59

bb.d:                                             ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i
  %i.bh = add i32 %i.ay, -512
  %or.cond.i.i4.i.i = icmp ult i32 %i.bh, 155
  br i1 %or.cond.i.i4.i.i, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit, label %switch.early.test.i.i.i.i

switch.early.test.i.i.i.i:                        ; preds = %bb.d
  br i1 %i.bb, label %switch.early.test.split.i.i.i.i, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread

switch.early.test.split.i.i.i.i:                  ; preds = %switch.early.test.i.i.i.i
  %i.bi = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ay, i1 true)
  %i.bj = and i32 %i.bi, 28
  %switch.i.i.i.i = icmp eq i32 %i.bj, 12
  br i1 %switch.i.i.i.i, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit:               ; preds = %bb.d, %switch.early.test.split.i.i.i.i
  %i.bk = getelementptr [12 x i8], ptr %i.az, i64 %i.bc
  %i.bl = getelementptr i8, ptr %i.bk, i64 -716
  %i.bm = load i8, ptr %i.bl, align 4, !tbaa !536, !range !120, !noundef !254
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread:        ; preds = %switch.early.test.split.i.i.i.i, %switch.early.test.i.i.i.i, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -2147483393, float noundef %i.ac, i32 noundef 0) #35
  br label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59:      ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %bb.c, label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i, !llvm.loop !1550

bb.e:                                             ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  ret void
}
end_hunk_1
begin_hunk_2_@_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb:bb.a
  %i.bv = fcmp ogt <4 x float> %i.bi, %i.bt
  %i.bw = shufflevector <4 x i1> %i.bu, <4 x i1> %i.bv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bx = select <4 x i1> %i.bw, <4 x float> %i.bt, <4 x float> %i.bi ; 2 uses
  %i.by = add i32 %.02755.us, 3                   ; 2 uses
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %5, i32 noundef 3, i32 noundef -16711681, i32 noundef 1, float noundef 1.000000e+00) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.bz = icmp ult i32 %i.by, %i.k
  br i1 %i.bz, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !1708

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ca = load i32, ptr %i.m, align 8, !tbaa !1096
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %i.cc = load ptr, ptr %i.o, align 8, !tbaa !1098
  %i.cd = load i32, ptr %i.p, align 8, !tbaa !1099
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [20 x i8], ptr %i.cc, i64 %i.ce ; 3 uses
  br label %_ZN6ImRect3AddERK6ImVec2.exit.2

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.cg = load ptr, ptr %i.n, align 8, !tbaa !1097 ; 4 uses
  %i.ch = load ptr, ptr %i.o, align 8, !tbaa !1098
  %i.ci = load i32, ptr %i.p, align 8, !tbaa !1099
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [20 x i8], ptr %i.ch, i64 %i.cj ; 3 uses
  %.not.us71 = icmp eq ptr %i.cg, null            ; 3 uses
  br label %.preheader.us70.preheader

.preheader.us70.preheader:                        ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us78.2, %.lr.ph.split.split.us
  %.02755.us62 = phi i32 [ %i.h, %.lr.ph.split.split.us ], [ %i.eb, %_ZN6ImRect3AddERK6ImVec2.exit.us78.2 ] ; 5 uses
  %i.cl = phi <4 x float> [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, %.lr.ph.split.split.us ], [ %i.ea, %_ZN6ImRect3AddERK6ImVec2.exit.us78.2 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  br i1 %.not.us71, label %_ZN6ImRect3AddERK6ImVec2.exit.us78, label %bb.e

bb.e:                                             ; preds = %.preheader.us70.preheader
  %i.cm = zext i32 %.02755.us62 to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !275
  %i.cp = zext i16 %i.co to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us78

_ZN6ImRect3AddERK6ImVec2.exit.us78:               ; preds = %bb.e, %.preheader.us70.preheader
  %i.cq = phi i32 [ %i.cp, %bb.e ], [ %.02755.us62, %.preheader.us70.preheader ]
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [20 x i8], ptr %i.ck, i64 %i.cr
  %i.ct = load <2 x float>, ptr %i.cs, align 4, !tbaa !86
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.cv = fcmp olt <4 x float> %i.cl, %i.cu
  %i.cw = fcmp ogt <4 x float> %i.cl, %i.cu
  %i.cx = shufflevector <4 x i1> %i.cv, <4 x i1> %i.cw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cy = select <4 x i1> %i.cx, <4 x float> %i.cu, <4 x float> %i.cl ; 3 uses
  %i.cz = add nuw i32 %.02755.us62, 1             ; 2 uses
  br i1 %.not.us71, label %_ZN6ImRect3AddERK6ImVec2.exit.us78.1, label %bb.f

bb.f:                                             ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us78
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !275
  %i.dd = zext i16 %i.dc to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us78.1

_ZN6ImRect3AddERK6ImVec2.exit.us78.1:             ; preds = %bb.f, %_ZN6ImRect3AddERK6ImVec2.exit.us78
  %i.de = phi i32 [ %i.dd, %bb.f ], [ %i.cz, %_ZN6ImRect3AddERK6ImVec2.exit.us78 ]
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [20 x i8], ptr %i.ck, i64 %i.df
  %i.dh = load <2 x float>, ptr %i.dg, align 4, !tbaa !86
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.dj = fcmp olt <4 x float> %i.cy, %i.di
  %i.dk = fcmp ogt <4 x float> %i.cy, %i.di
  %i.dl = shufflevector <4 x i1> %i.dj, <4 x i1> %i.dk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dm = select <4 x i1> %i.dl, <4 x float> %i.di, <4 x float> %i.cy ; 3 uses
  %i.dn = add i32 %.02755.us62, 2                 ; 2 uses
  br i1 %.not.us71, label %_ZN6ImRect3AddERK6ImVec2.exit.us78.2, label %bb.g

bb.g:                                             ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us78.1
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !275
  %i.dr = zext i16 %i.dq to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us78.2

_ZN6ImRect3AddERK6ImVec2.exit.us78.2:             ; preds = %bb.g, %_ZN6ImRect3AddERK6ImVec2.exit.us78.1
  %i.ds = phi i32 [ %i.dr, %bb.g ], [ %i.dn, %_ZN6ImRect3AddERK6ImVec2.exit.us78.1 ]
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [20 x i8], ptr %i.ck, i64 %i.dt
  %i.dv = load <2 x float>, ptr %i.du, align 4, !tbaa !86
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.dx = fcmp olt <4 x float> %i.dm, %i.dw
  %i.dy = fcmp ogt <4 x float> %i.dm, %i.dw
  %i.dz = shufflevector <4 x i1> %i.dx, <4 x i1> %i.dy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ea = select <4 x i1> %i.dz, <4 x float> %i.dw, <4 x float> %i.dm ; 2 uses
  %i.eb = add i32 %.02755.us62, 3                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.ec = icmp ult i32 %i.eb, %i.k
  br i1 %i.ec, label %.preheader.us70.preheader, label %._crit_edge, !llvm.loop !1708

._crit_edge.loopexit123:                          ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.2
  %i.ed = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us78.2, %_ZN6ImRect3AddERK6ImVec2.exit.us.2, %._crit_edge.loopexit123, %bb.a
  %i.ee = phi <4 x float> [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, %bb.a ], [ %i.bx, %_ZN6ImRect3AddERK6ImVec2.exit.us.2 ], [ %i.ed, %._crit_edge.loopexit123 ], [ %i.ea, %_ZN6ImRect3AddERK6ImVec2.exit.us78.2 ]
  br i1 %4, label %bb.h, label %bb.i

_ZN6ImRect3AddERK6ImVec2.exit.2:                  ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.2, %.lr.ph.split.split.preheader
  %.02755 = phi i32 [ %i.fd, %_ZN6ImRect3AddERK6ImVec2.exit.2 ], [ %i.h, %.lr.ph.split.split.preheader ] ; 4 uses
  %i.ef = phi <4 x float> [ %i.fc, %_ZN6ImRect3AddERK6ImVec2.exit.2 ], [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %.lr.ph.split.split.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %.pre = zext i32 %.02755 to i64
  %i.eg = getelementptr inbounds nuw [20 x i8], ptr %i.cf, i64 %.pre
  %i.eh = load <2 x float>, ptr %i.eg, align 4, !tbaa !86
  %i.ei = add nuw i32 %.02755, 1
  %.pre103 = zext i32 %i.ei to i64
  %i.ej = getelementptr inbounds nuw [20 x i8], ptr %i.cf, i64 %.pre103
  %i.ek = load <2 x float>, ptr %i.ej, align 4, !tbaa !86
  %i.el = add i32 %.02755, 2
  %.pre105 = zext i32 %i.el to i64
  %i.em = getelementptr inbounds nuw [20 x i8], ptr %i.cf, i64 %.pre105
  %i.en = load <2 x float>, ptr %i.em, align 4, !tbaa !86
  %i.eo = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ep = fcmp ogt <4 x float> %i.ef, %i.eo
  %i.eq = fcmp olt <4 x float> %i.ef, %i.eo
  %i.er = shufflevector <4 x i1> %i.ep, <4 x i1> %i.eq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.es = select <4 x i1> %i.er, <4 x float> %i.eo, <4 x float> %i.ef ; 3 uses
  %i.et = shufflevector <2 x float> %i.ek, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.eu = fcmp ogt <4 x float> %i.es, %i.et
  %i.ev = fcmp olt <4 x float> %i.es, %i.et
  %i.ew = shufflevector <4 x i1> %i.eu, <4 x i1> %i.ev, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ex = select <4 x i1> %i.ew, <4 x float> %i.et, <4 x float> %i.es ; 3 uses
  %i.ey = shufflevector <2 x float> %i.en, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ez = fcmp ogt <4 x float> %i.ex, %i.ey
  %i.fa = fcmp olt <4 x float> %i.ex, %i.ey
  %i.fb = shufflevector <4 x i1> %i.ez, <4 x i1> %i.fa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fc = select <4 x i1> %i.fb, <4 x float> %i.ey, <4 x float> %i.ex ; 2 uses
  %i.fd = add i32 %.02755, 3                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.fe = icmp ult i32 %i.fd, %i.k
  br i1 %i.fe, label %_ZN6ImRect3AddERK6ImVec2.exit.2, label %._crit_edge.loopexit123, !llvm.loop !1709

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.ff = fptosi <2 x float> %i.a to <2 x i32>
  %i.fg = sitofp <2 x i32> %i.ff to <2 x float>
  store <2 x float> %i.fg, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.fh = fptosi <2 x float> %i.c to <2 x i32>
  %i.fi = sitofp <2 x i32> %i.fh to <2 x float>
  store <2 x float> %i.fi, ptr %7, align 8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef -65281, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.fj = fptosi <4 x float> %i.ee to <4 x i32>
  %i.fk = sitofp <4 x i32> %i.fj to <4 x float>   ; 2 uses
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  store <2 x float> %i.fl, ptr %8, align 8
  %i.fm = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.fm, ptr %9, align 8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9, i32 noundef -256, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  store i32 %i.e, ptr %i.d, align 8, !tbaa !1101
  ret void
}

declare void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare void @_ZN11ImFontAtlas10RemoveFontEP6ImFont(ptr noundef nonnull align 8 dereferenceable(760), ptr noundef) local_unnamed_addr #2

declare void @_Z27ImFontAtlasFontDiscardBakesP11ImFontAtlasP6ImFonti(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui11TextWrappedEPKcz(ptr noundef, ...) local_unnamed_addr #2

declare noundef ptr @_ZN11ImFontBaked9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(104), i16 noundef zeroext) local_unnamed_addr #2

declare void @_Z36ImFontAtlasBuildGetOversampleFactorsP12ImFontConfigP11ImFontBakedPiS3_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui30DebugNodeFontGlyphesForSrcMaskEP6ImFontP11ImFontBakedi(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 7 uses
  %4 = alloca %struct.ImVec2, align 8             ; 6 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !309  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !688
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !424  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3412
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3416
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 3148
  %i.i = load float, ptr %i.h, align 4, !tbaa !399
  %i.j = load <4 x float>, ptr %i.g, align 4, !tbaa !86 ; 2 uses
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !86
  %i.k = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.i, i64 3
  %i.l = fmul <4 x float> %i.j, %i.k              ; 3 uses
  %i.m = fcmp ogt <4 x float> %i.l, splat (float 1.000000e+00)
  %i.n = select <4 x i1> %i.m, <4 x float> splat (float 1.000000e+00), <4 x float> %i.l
  %i.o = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.n, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %6 = shufflevector <4 x float> %i.j, <4 x float> %i.l, <4 x i32> <i32 0, i32 poison, i32 2, i32 7>
  %7 = insertelement <4 x float> %6, float %.sroa.4.0.copyload.i, i64 1
  %8 = fcmp olt <4 x float> %7, zeroinitializer
  %9 = select <4 x i1> %8, <4 x float> splat (float 5.000000e-01), <4 x float> %i.o ; 4 uses
  %i.p = extractelement <4 x float> %9, i64 0
  %i.q = fptosi float %i.p to i32
  %10 = extractelement <4 x float> %9, i64 1
  %11 = fptosi float %10 to i32
  %12 = shl i32 %11, 8
  %13 = or i32 %12, %i.q
  %14 = extractelement <4 x float> %9, i64 2
  %15 = fptosi float %14 to i32
  %16 = shl i32 %15, 16
  %17 = or i32 %13, %16
  %18 = extractelement <4 x float> %9, i64 3
  %19 = fptosi float %18 to i32
  %20 = shl i32 %19, 24
  %i.r = or i32 %17, %20
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.t = load float, ptr %i.s, align 4, !tbaa !1027 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 3232
  %i.v = load float, ptr %i.u, align 8, !tbaa !1713
  %i.w = fadd float %i.t, %i.v                    ; 2 uses
  %i.x = fmul float %i.w, 1.600000e+01
  %i.y = insertelement <2 x float> poison, float %i.x, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.b:                                             ; preds = %bb.s
  ret void

bb.c:                                             ; preds = %bb.a, %bb.s
  %.06076 = phi i32 [ 0, %bb.a ], [ %i.dc, %bb.s ] ; 12 uses
  %i.ae = and i32 %.06076, 8191
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.c
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.af = or disjoint i32 %.06076, 8191
  %i.ag = call noundef zeroext i1 @_ZN6ImFont18IsGlyphRangeUnusedEjj(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %.06076, i32 noundef %i.af) #35
  br i1 %i.ag, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.ah = or disjoint i32 %.06076, 7936
  br label %bb.s

bb.f:                                             ; preds = %.thread
  %i.ai = icmp slt i32 %.1, 1
  br i1 %i.ai, label %bb.s, label %bb.j

bb.g:                                             ; preds = %.preheader, %.thread
  %.05874 = phi i32 [ %i.as, %.thread ], [ 0, %.preheader ] ; 2 uses
  %.05973 = phi i32 [ %.1, %.thread ], [ 0, %.preheader ] ; 3 uses
  %i.aj = add nuw nsw i32 %.05874, %.06076
  %i.ak = trunc i32 %i.aj to i16                  ; 2 uses
  %i.al = call noundef zeroext i1 @_ZN11ImFontBaked13IsGlyphLoadedEt(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext %i.ak) #35
  br i1 %i.al, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.am = call noundef ptr @_ZN11ImFontBaked9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext %i.ak) #35 ; 2 uses
  %.not66 = icmp eq ptr %i.am, null
  br i1 %.not66, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = lshr i32 %i.an, 2
  %i.ap = and i32 %i.ao, 15
  %i.aq = lshr i32 %2, %i.ap
  %i.ar = and i32 %i.aq, 1
  %spec.select = add nsw i32 %i.ar, %.05973
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.i, %bb.h
  %.1 = phi i32 [ %.05973, %bb.h ], [ %spec.select, %bb.i ], [ %.05973, %bb.g ] ; 4 uses
  %i.as = add nuw nsw i32 %.05874, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.as, 256
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !1710

bb.j:                                             ; preds = %bb.f
  %i.at = zext nneg i32 %.06076 to i64
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = add nuw nsw i32 %.06076, 255
  %.not64 = icmp eq i32 %.1, 1
  %i.aw = select i1 %.not64, ptr @.str.475, ptr @.str.474
  %i.ax = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.au, ptr noundef nonnull @.str.473, i32 noundef %.06076, i32 noundef %i.av, i32 noundef %.1, ptr noundef nonnull %i.aw) #35
  br i1 %i.ax, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 5184
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !309
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 280
  %.sroa.0.0.copyload.i68 = load <2 x float>, ptr %i.bb, align 8, !tbaa !86
  br label %bb.m

bb.l:                                             ; preds = %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store <2 x float> %i.z, ptr %5, align 8, !tbaa !86
  call void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @_ZN5ImGui7TreePopEv() #35
  br label %bb.s

bb.m:                                             ; preds = %bb.k, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread
  %.075 = phi i32 [ 0, %bb.k ], [ %i.db, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.bc = and i32 %.075, 15
  %i.bd = lshr i32 %.075, 4
  %i.be = uitofp nneg i32 %i.bc to float
  %i.bf = uitofp nneg i32 %i.bd to float
  %i.bg = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.bf, i64 1
  %i.bi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.ab, <2 x float> %.sroa.0.0.copyload.i68) ; 2 uses
  store <2 x float> %i.bi, ptr %3, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.bj = fadd <2 x float> %i.ad, %i.bi
  store <2 x float> %i.bj, ptr %4, align 8, !tbaa !86
  %i.bk = add nuw nsw i32 %.075, %.06076
  %i.bl = trunc i32 %i.bk to i16                  ; 3 uses
  %i.bm = call noundef zeroext i1 @_ZN11ImFontBaked13IsGlyphLoadedEt(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext %i.bl) #35
  br i1 %i.bm, label %bb.n, label %.thread70

.thread70:                                        ; preds = %bb.m
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef 855638015, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #35
  br label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bn = call noundef ptr @_ZN11ImFontBaked9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext %i.bl) #35 ; 3 uses
  %.not65 = icmp eq ptr %i.bn, null               ; 2 uses
  %i.bo = select i1 %.not65, i32 855638015, i32 1694498815
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.bo, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #35
  br i1 %.not65, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = load i32, ptr %i.bn, align 4
  %i.bq = lshr i32 %i.bp, 2
  %i.br = and i32 %i.bq, 15
  %i.bs = shl nuw nsw i32 1, %i.br
  %i.bt = and i32 %i.bs, %2
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN6ImFont10RenderCharEP10ImDrawListfRK6ImVec2jtPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull %i.f, float noundef %i.t, ptr noundef nonnull align 4 dereferenceable(8) %3, i32 noundef %i.r, i16 noundef zeroext %i.bl, ptr noundef null) #35
  %i.bv = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 5 uses
  %i.bw = load <2 x float>, ptr %3, align 8, !tbaa !86 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 5184
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !309 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 608
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.bw, i64 0 ; 2 uses
  %.val5.i.i = load float, ptr %i.bz, align 4, !tbaa !269 ; 2 uses
  %.inv.i.i.i = fcmp oge float %.sroa.0.0.vec.extract.i, %.val5.i.i
  %..i.i.i = select i1 %.inv.i.i.i, float %.sroa.0.0.vec.extract.i, float %.val5.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 224
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 3252
  %i.cc = load float, ptr %i.ca, align 8, !tbaa !269 ; 2 uses
  %i.cd = load float, ptr %i.cb, align 4, !tbaa !269 ; 2 uses
  %i.ce = fsub float %..i.i.i, %i.cd
  %i.cf = fcmp ult float %i.cc, %i.ce
  br i1 %i.cf, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = load <2 x float>, ptr %4, align 8, !tbaa !86 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 616
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.bw, i64 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 612
  %.val6.i.i = load float, ptr %i.ci, align 4, !tbaa !270 ; 2 uses
  %.inv6.i.i.i = fcmp oge float %.sroa.0.4.vec.extract.i, %.val6.i.i
  %i.cj = select i1 %.inv6.i.i.i, float %.sroa.0.4.vec.extract.i, float %.val6.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bv, i64 228
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !270 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bv, i64 3256
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !270 ; 2 uses
  %i.co = fsub float %i.cj, %i.cn
  %i.cp = fcmp oge float %i.cl, %i.co
  %i.cq = load <2 x float>, ptr %i.ch, align 4, !tbaa !86 ; 2 uses
  %i.cr = fcmp olt <2 x float> %i.cg, %i.cq
  %i.cs = select <2 x i1> %i.cr, <2 x float> %i.cg, <2 x float> %i.cq
  %i.ct = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cu = insertelement <2 x float> %i.ct, float %i.cn, i64 1
  %i.cv = fadd <2 x float> %i.cu, %i.cs           ; 2 uses
  %i.cw = extractelement <2 x float> %i.cv, i64 0
  %i.cx = fcmp olt float %i.cc, %i.cw
  %or.cond.i = select i1 %i.cp, i1 %i.cx, i1 false
  %i.cy = extractelement <2 x float> %i.cv, i64 1
  %i.cz = fcmp olt float %i.cl, %i.cy
  %or.cond = select i1 %or.cond.i, i1 %i.cz, i1 false
  br i1 %or.cond, label %bb.r, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.da = call noundef zeroext i1 @_ZN5ImGui14BeginTooltipExEii(i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui18DebugNodeFontGlyphEP6ImFontPK11ImFontGlyph(ptr noundef nonnull %0, ptr noundef nonnull %i.bn)
  call void @_ZN5ImGui3EndEv()
  br label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread: ; preds = %bb.p, %bb.q, %.thread70, %bb.r, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.db = add nuw nsw i32 %.075, 1                ; 2 uses
  %exitcond77.not = icmp eq i32 %i.db, 256
  br i1 %exitcond77.not, label %bb.l, label %bb.m, !llvm.loop !1711

bb.s:                                             ; preds = %bb.l, %bb.f, %bb.j, %bb.e
  %.161 = phi i32 [ %i.ah, %bb.e ], [ %.06076, %bb.j ], [ %.06076, %bb.f ], [ %.06076, %bb.l ]
  %i.dc = add i32 %.161, 256                      ; 2 uses
  %i.dd = icmp ult i32 %i.dc, 65536
  br i1 %i.dd, label %bb.c, label %bb.b, !llvm.loop !1712
}

declare noundef zeroext i1 @_ZN6ImFont18IsGlyphRangeUnusedEjj(ptr noundef nonnull align 8 dereferenceable(76), i32 noundef, i32 noundef) local_unnamed_addr #2

end_hunk_2
