Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.bnh = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bnh, i64 5312
  %i.bnj = load ptr, ptr %i.bni, align 8, !tbaa !289 ; 3 uses
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bnj, i64 206
  store i8 1, ptr %i.bnk, align 2, !tbaa !679
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bnj, i64 712 ; 2 uses
  %i.bnm = load ptr, ptr %i.bnl, align 8, !tbaa !408
  call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %i.bnm, ptr noundef nonnull align 4 dereferenceable(8) %29, ptr noundef nonnull align 4 dereferenceable(8) %i.bkk, i1 noundef zeroext false)
  %i.bnn = load ptr, ptr %i.bnl, align 8, !tbaa !408 ; 2 uses
  %i.bno = getelementptr inbounds nuw i8, ptr %i.bnn, i64 160
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bnn, i64 168
  %i.bnq = load ptr, ptr %i.bnp, align 8, !tbaa !941
  %i.bnr = load i32, ptr %i.bno, align 8, !tbaa !942
  %i.bns = sext i32 %i.bnr to i64
  %i.bnt = getelementptr [16 x i8], ptr %i.bnq, i64 %i.bns
  %i.bnu = getelementptr i8, ptr %i.bnt, i64 -16
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bnj, i64 616
  %i.bnw = load <4 x float>, ptr %i.bnu, align 4, !tbaa !75
  store <4 x float> %i.bnw, ptr %i.bnv, align 8, !tbaa !75
  br i1 %or.cond534, label %.thread986, label %bb.kv

bb.kv:                                            ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit.i
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.kb, i64 432
  %i.bny = load i32, ptr %i.bnx, align 8, !tbaa !935 ; 2 uses
  %i.bnz = icmp sgt i32 %i.bny, 1
  br i1 %i.bnz, label %bb.kw, label %..thread984_crit_edge

..thread984_crit_edge:                            ; preds = %bb.kv
  %.pre1046 = load ptr, ptr %i.g, align 8, !tbaa !601
  br label %.thread984

bb.kw:                                            ; preds = %bb.kv
  %i.boa = getelementptr inbounds nuw i8, ptr %i.kb, i64 440
  %i.bob = load ptr, ptr %i.boa, align 8, !tbaa !494
  %i.boc = zext nneg i32 %i.bny to i64
  %i.bod = getelementptr [8 x i8], ptr %i.bob, i64 %i.boc
  %i.boe = getelementptr i8, ptr %i.bod, i64 -16
  %i.bof = load ptr, ptr %i.boe, align 8, !tbaa !601 ; 5 uses
  %.not495 = icmp eq ptr %i.bof, null
  %.pre1047 = load ptr, ptr %i.g, align 8, !tbaa !601 ; 6 uses
  br i1 %.not495, label %.thread984, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bof, i64 40
  %i.boh = load float, ptr %i.bog, align 8, !tbaa !693 ; 2 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %i.bof, i64 44
  %i.boj = load float, ptr %i.boi, align 4, !tbaa !735 ; 2 uses
  %i.bok = getelementptr inbounds nuw i8, ptr %i.bof, i64 48
  %i.bol = load float, ptr %i.bok, align 8, !tbaa !615
  %i.bom = fadd float %i.boh, %i.bol
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bof, i64 52
  %i.boo = load float, ptr %i.bon, align 4, !tbaa !616
  %i.bop = fadd float %i.boj, %i.boo
  %i.boq = getelementptr inbounds nuw i8, ptr %.pre1047, i64 40
  %i.bor = load float, ptr %i.boq, align 8, !tbaa !693 ; 2 uses
  %i.bos = getelementptr inbounds nuw i8, ptr %.pre1047, i64 44
  %i.bot = load float, ptr %i.bos, align 4, !tbaa !735 ; 2 uses
  %i.bou = getelementptr inbounds nuw i8, ptr %.pre1047, i64 48
  %i.bov = load float, ptr %i.bou, align 8, !tbaa !615
  %i.bow = fadd float %i.bor, %i.bov
  %i.box = getelementptr inbounds nuw i8, ptr %.pre1047, i64 52
  %i.boy = load float, ptr %i.box, align 4, !tbaa !616
  %i.boz = fadd float %i.bot, %i.boy
  %i.bpa = fcmp olt float %i.bot, %i.bop
  %i.bpb = fcmp ogt float %i.boz, %i.boj
  %or.cond1001 = select i1 %i.bpa, i1 %i.bpb, i1 false
  %i.bpc = fcmp olt float %i.bor, %i.bom
  %or.cond1002 = select i1 %or.cond1001, i1 %i.bpc, i1 false
  %i.bpd = fcmp ogt float %i.bow, %i.boh
  %spec.select1003 = select i1 %or.cond1002, i1 %i.bpd, i1 false
  br label %.thread984

.thread984:                                       ; preds = %..thread984_crit_edge, %bb.kx, %bb.kw
  %i.bpe = phi ptr [ %.pre1046, %..thread984_crit_edge ], [ %.pre1047, %bb.kw ], [ %.pre1047, %bb.kx ]
  %i.bpf = phi i1 [ false, %..thread984_crit_edge ], [ false, %bb.kw ], [ %spec.select1003, %bb.kx ]
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.kb, i64 712
  %i.bph = load ptr, ptr %i.bpg, align 8, !tbaa !408 ; 2 uses
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 32
  %i.bpj = load i32, ptr %i.bpi, align 8, !tbaa !943
  %i.bpk = icmp eq i32 %i.bpj, 0
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpe, i64 712 ; 2 uses
  %i.bpm = load ptr, ptr %i.bpl, align 8, !tbaa !408 ; 2 uses
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpm, i64 8
  %i.bpo = load ptr, ptr %i.bpn, align 8, !tbaa !944
  %i.bpp = load i32, ptr %i.bpm, align 8, !tbaa !945
  %i.bpq = sext i32 %i.bpp to i64
  %i.bpr = getelementptr [72 x i8], ptr %i.bpo, i64 %i.bpq
  %i.bps = getelementptr i8, ptr %i.bpr, i64 -32
  %i.bpt = load i32, ptr %i.bps, align 8, !tbaa !947
  %i.bpu = icmp ne i32 %i.bpt, 0
  %or.cond33 = select i1 %i.bpu, i1 true, i1 %i.bpk
  %or.cond35 = or i1 %i.bpf, %or.cond33
  br i1 %or.cond35, label %.thread986, label %bb.ky

bb.ky:                                            ; preds = %.thread984
  store ptr %i.bph, ptr %i.bpl, align 8, !tbaa !408
  br label %.thread986

.thread986:                                       ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit.i, %bb.ky, %.thread984
  %.1988 = phi i1 [ false, %.thread984 ], [ true, %bb.ky ], [ false, %_Z7ImClampRK6ImVec2S1_S1_.exit.i ]
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.j, i64 8712
  %i.bpw = load ptr, ptr %i.bpv, align 8, !tbaa !798 ; 2 uses
  %.not496 = icmp eq ptr %i.bpw, null
  br i1 %.not496, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %.thread986
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.j, i64 8224
  %i.bpy = load ptr, ptr %i.bpx, align 8, !tbaa !370
  br label %bb.la

bb.la:                                            ; preds = %.thread986, %bb.kz
  %i.bpz = phi ptr [ %i.bpy, %bb.kz ], [ %i.bpw, %.thread986 ] ; 2 uses
  br i1 %spec.select995, label %._crit_edge1048, label %bb.lb

._crit_edge1048:                                  ; preds = %bb.la
  %.pre1049 = load ptr, ptr %i.g, align 8, !tbaa !601
  br label %bb.ld

bb.lb:                                            ; preds = %bb.la
  %.not497 = icmp eq ptr %i.bpz, null
  %.pre1050 = load ptr, ptr %i.g, align 8, !tbaa !601 ; 3 uses
  br i1 %.not497, label %bb.ld, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.bqa = getelementptr inbounds nuw i8, ptr %.pre1050, i64 976
  %i.bqb = load ptr, ptr %i.bqa, align 8, !tbaa !900
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bpz, i64 976
  %i.bqd = load ptr, ptr %i.bqc, align 8, !tbaa !900
  %i.bqe = icmp eq ptr %i.bqb, %i.bqd
  br label %bb.ld

bb.ld:                                            ; preds = %._crit_edge1048, %bb.lb, %bb.lc
  %i.bqf = phi ptr [ %.pre1049, %._crit_edge1048 ], [ %.pre1050, %bb.lb ], [ %.pre1050, %bb.lc ] ; 52 uses
  %i.bqg = phi i1 [ true, %._crit_edge1048 ], [ false, %bb.lb ], [ %i.bqe, %bb.lc ] ; 2 uses
  %i.bqh = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 9 uses
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqf, i64 20 ; 3 uses
  %i.bqj = load i32, ptr %i.bqi, align 4, !tbaa !614 ; 7 uses
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqf, i64 209
  store i8 0, ptr %i.bqk, align 1, !tbaa !927
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqf, i64 368 ; 2 uses
  store i32 1, ptr %i.bql, align 8, !tbaa !905
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqf, i64 96 ; 5 uses
  %i.bqn = load float, ptr %i.bqm, align 8, !tbaa !936 ; 7 uses
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bqf, i64 100 ; 3 uses
  %i.bqp = load float, ptr %i.bqo, align 4, !tbaa !929 ; 4 uses
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqf, i64 207
  %i.bqr = load i8, ptr %i.bqq, align 1, !tbaa !613, !range !100, !noundef !236
  %i.bqs = trunc nuw i8 %i.bqr to i1
  br i1 %i.bqs, label %bb.le, label %bb.lh

bb.le:                                            ; preds = %bb.ld
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3296 ; 3 uses
  %i.bqu = load float, ptr %i.bqt, align 4, !tbaa !1453
  store float %i.bqp, ptr %i.bqt, align 8, !tbaa !423
  br i1 %i.bqg, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bqh, i64 8216
  %i.bqw = load i8, ptr %i.bqv, align 8, !tbaa !424, !range !100, !noundef !236
  %i.bqx = trunc nuw i8 %i.bqw to i1
  %i.bqy = select i1 %i.bqx, i64 11, i64 12
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.le
  %i.bqz = phi i64 [ 12, %bb.le ], [ %i.bqy, %bb.lf ]
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3532
  %i.brb = getelementptr inbounds nuw [16 x i8], ptr %i.bra, i64 %i.bqz
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3220
  %i.brd = load float, ptr %i.brc, align 4, !tbaa !383
  %i.bre = load <4 x float>, ptr %i.brb, align 4, !tbaa !75
  %i.brf = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.brd, i64 3
  %i.brg = fmul <4 x float> %i.bre, %i.brf        ; 3 uses
  %i.brh = fcmp olt <4 x float> %i.brg, zeroinitializer
  %i.bri = fcmp ogt <4 x float> %i.brg, splat (float 1.000000e+00)
  %i.brj = select <4 x i1> %i.bri, <4 x float> splat (float 1.000000e+00), <4 x float> %i.brg
  %i.brk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.brj, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.brl = select <4 x i1> %i.brh, <4 x float> splat (float 5.000000e-01), <4 x float> %i.brk
  %i.brm = fptosi <4 x float> %i.brl to <4 x i32>
  %i.brn = shl <4 x i32> %i.brm, <i32 0, i32 8, i32 16, i32 24>
  %i.bro = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.brn)
  %.sroa.028.0.copyload.i = load <2 x float>, ptr %30, align 8, !tbaa !75
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.bkb, align 8, !tbaa !75
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.028.0.copyload.i, <2 x float> %.sroa.0.0.copyload.i, i32 noundef %i.bro, i1 noundef zeroext true, float noundef %i.bqn)
  store float %i.bqu, ptr %i.bqt, align 8, !tbaa !423
  br label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

bb.lh:                                            ; preds = %bb.ld
  %i.brp = and i32 %i.bqj, 128
  %.not.i667 = icmp eq i32 %i.brp, 0
  br i1 %.not.i667, label %bb.li, label %bb.ll

bb.li:                                            ; preds = %bb.lh
  %i.brq = and i32 %i.bqj, 100663296
  %.not.i.i674 = icmp eq i32 %i.brq, 0
  %i.brr = and i32 %i.bqj, 16777216
  %.not2.i.i = icmp eq i32 %i.brr, 0
  %..i.i675 = select i1 %.not2.i.i, i64 2, i64 3
  %.0.i.i = select i1 %.not.i.i674, i64 %..i.i675, i64 4
  %i.brs = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3532
  %i.brt = getelementptr inbounds nuw [16 x i8], ptr %i.brs, i64 %.0.i.i ; 3 uses
  %.sroa.0.0.copyload.i112.i = load float, ptr %i.brt, align 4, !tbaa !75
  %.sroa.4.0..sroa_idx.i113.i = getelementptr inbounds nuw i8, ptr %i.brt, i64 4
  %.sroa.6.0..sroa_idx.i117.i = getelementptr inbounds nuw i8, ptr %i.brt, i64 12
  %.sroa.6.0.copyload.i118.i = load float, ptr %.sroa.6.0..sroa_idx.i117.i, align 4, !tbaa !75
  %i.bru = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3220
  %i.brv = load float, ptr %i.bru, align 4, !tbaa !383
  %i.brw = fmul float %.sroa.6.0.copyload.i118.i, %i.brv
  %31 = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i113.i, align 4, !tbaa !75 ; 3 uses
  %32 = fcmp olt <2 x float> %31, zeroinitializer
  %33 = fcmp ogt <2 x float> %31, splat (float 1.000000e+00)
  %34 = select <2 x i1> %33, <2 x float> splat (float 1.000000e+00), <2 x float> %31
  %35 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> splat (float 2.550000e+02), <2 x float> splat (float 5.000000e-01))
  %36 = select <2 x i1> %32, <2 x float> splat (float 5.000000e-01), <2 x float> %35
  %37 = fptosi <2 x float> %36 to <2 x i32>
  %38 = shl <2 x i32> %37, <i32 8, i32 16>        ; 2 uses
  %39 = extractelement <2 x i32> %38, i64 0
  %40 = extractelement <2 x i32> %38, i64 1
  %41 = insertelement <2 x float> poison, float %.sroa.0.0.copyload.i112.i, i64 0
  %42 = insertelement <2 x float> %41, float %i.brw, i64 1 ; 3 uses
  %43 = fcmp ogt <2 x float> %42, splat (float 1.000000e+00)
  %44 = select <2 x i1> %43, <2 x float> splat (float 1.000000e+00), <2 x float> %42
  %45 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %44, <2 x float> splat (float 2.550000e+02), <2 x float> splat (float 5.000000e-01))
  %46 = fcmp olt <2 x float> %42, zeroinitializer
  %47 = select <2 x i1> %46, <2 x float> splat (float 5.000000e-01), <2 x float> %45 ; 2 uses
  %48 = extractelement <2 x float> %47, i64 0
  %49 = fptosi float %48 to i32
  %50 = or i32 %39, %49
  %51 = or i32 %50, %40                           ; 2 uses
  %52 = extractelement <2 x float> %47, i64 1
  %i.brx = fptosi float %52 to i32
  %i.bry = shl i32 %i.brx, 24
  %i.brz = or i32 %i.bry, %51
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.bqh, i64 7928
  %i.bsb = load i32, ptr %i.bsa, align 8, !tbaa !852
  %i.bsc = and i32 %i.bsb, 64
  %.not105.not.i = icmp eq i32 %i.bsc, 0
  br i1 %.not105.not.i, label %.critedge.i676, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bqh, i64 8032
  %i.bse = load float, ptr %i.bsd, align 8, !tbaa !853 ; 3 uses
  %i.bsf = and i32 %51, 16777215
  %i.bsg = fcmp olt float %i.bse, 0.000000e+00
  %i.bsh = fcmp ogt float %i.bse, 1.000000e+00
  %i.bsi = select i1 %i.bsh, float 1.000000e+00, float %i.bse
  %i.bsj = call float @llvm.fmuladd.f32(float %i.bsi, float 2.550000e+02, float 5.000000e-01)
  %i.bsk = select i1 %i.bsg, float 5.000000e-01, float %i.bsj
  %i.bsl = fptosi float %i.bsk to i32
  %i.bsm = shl i32 %i.bsl, 24
  %i.bsn = or disjoint i32 %i.bsm, %i.bsf
  br label %.critedge.i676

.critedge.i676:                                   ; preds = %bb.lj, %bb.li
  %.0103.i = phi i32 [ %i.bsn, %bb.lj ], [ %i.brz, %bb.li ] ; 2 uses
  %.not106.i = icmp ult i32 %.0103.i, 16777216
  br i1 %.not106.i, label %bb.ll, label %bb.lk

bb.lk:                                            ; preds = %.critedge.i676
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bqf, i64 104
  %i.bsq = load float, ptr %i.bsp, align 8, !tbaa !724
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48
  %i.bss = load <2 x float>, ptr %i.bso, align 8, !tbaa !75 ; 2 uses
  %i.bst = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bsq, i64 1
  %i.bsu = fadd <2 x float> %i.bst, %i.bss
  %i.bsv = load <2 x float>, ptr %i.bsr, align 8, !tbaa !75
  %i.bsw = fadd <2 x float> %i.bss, %i.bsv
  store <2 x float> %i.bsu, ptr %15, align 8, !tbaa !75
  %i.bsx = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store <2 x float> %i.bsw, ptr %i.bsx, align 8, !tbaa !75
  %i.bsy = and i32 %i.bqj, 1
  %.not107.i = icmp eq i32 %i.bsy, 0
  %i.bsz = select i1 %.not107.i, i32 192, i32 240
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712
  %i.btb = load ptr, ptr %i.bta, align 8, !tbaa !408
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.btb, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %i.bsx, i32 noundef %.0103.i, float noundef %i.bqn, i32 noundef %i.bsz)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %.critedge.i676, %bb.lh
  %i.btc = and i32 %i.bqj, 1
  %.not108.i = icmp eq i32 %i.btc, 0              ; 2 uses
  br i1 %.not108.i, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll
  %i.btd = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.bte = getelementptr inbounds nuw i8, ptr %i.btd, i64 3532
  %i.btf = select i1 %i.bqg, i64 11, i64 10
  %i.btg = getelementptr inbounds nuw [16 x i8], ptr %i.bte, i64 %i.btf
  %i.bth = getelementptr inbounds nuw i8, ptr %i.btd, i64 3220
  %i.bti = load float, ptr %i.bth, align 4, !tbaa !383
  %i.btj = load <4 x float>, ptr %i.btg, align 4, !tbaa !75
  %i.btk = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bti, i64 3
  %i.btl = fmul <4 x float> %i.btj, %i.btk        ; 3 uses
  %i.btm = fcmp olt <4 x float> %i.btl, zeroinitializer
  %i.btn = fcmp ogt <4 x float> %i.btl, splat (float 1.000000e+00)
  %i.bto = select <4 x i1> %i.btn, <4 x float> splat (float 1.000000e+00), <4 x float> %i.btl
  %i.btp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bto, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.btq = select <4 x i1> %i.btm, <4 x float> splat (float 5.000000e-01), <4 x float> %i.btp
  %i.btr = fptosi <4 x float> %i.btq to <4 x i32>
  %i.bts = shl <4 x i32> %i.btr, <i32 0, i32 8, i32 16, i32 24>
  %i.btt = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bts)
  %i.btu = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712
  %i.btv = load ptr, ptr %i.btu, align 8, !tbaa !408
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.btv, ptr noundef nonnull align 4 dereferenceable(16) %30, ptr noundef nonnull align 4 dereferenceable(8) %i.bkb, i32 noundef %i.btt, float noundef %i.bqn, i32 noundef 48)
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.ll
  %i.btw = and i32 %i.bqj, 1024
  %.not109.i = icmp eq i32 %i.btw, 0
  br i1 %.not109.i, label %bb.ls, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  %i.btx = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40
  %i.bty = getelementptr inbounds nuw i8, ptr %i.bqf, i64 104
  %i.btz = load float, ptr %i.bty, align 8, !tbaa !724
  %i.bua = getelementptr inbounds nuw i8, ptr %i.bqf, i64 56
  %i.bub = load float, ptr %i.bua, align 8, !tbaa !725
  %i.buc = getelementptr inbounds nuw i8, ptr %i.bqf, i64 108
  %i.bud = load float, ptr %i.buc, align 4, !tbaa !930
  %i.bue = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.buf = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48
  %i.bug = load <2 x float>, ptr %i.btx, align 8, !tbaa !75 ; 4 uses
  %i.buh = extractelement <2 x float> %i.bug, i64 1 ; 3 uses
  %i.bui = fadd float %i.buh, %i.btz              ; 3 uses
  %i.buj = insertelement <2 x float> %i.bug, float %i.bui, i64 1
  %i.buk = insertelement <2 x float> poison, float %i.bub, i64 0
  %i.bul = insertelement <2 x float> %i.buk, float %i.bud, i64 1
  %i.bum = fadd <2 x float> %i.buj, %i.bul        ; 2 uses
  %i.bun = load <2 x float>, ptr %i.buf, align 8, !tbaa !75
  %i.buo = fadd <2 x float> %i.bug, %i.bun        ; 2 uses
  %.inv12.i.i.i = fcmp oge float %i.bui, %i.buh
  %i.bup = select i1 %.inv12.i.i.i, float %i.bui, float %i.buh
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %i.bug, float %i.bup, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %16, align 8, !tbaa !75
  %i.buq = fcmp ogt <2 x float> %i.buo, %i.bum
  %i.bur = select <2 x i1> %i.buq, <2 x float> %i.bum, <2 x float> %i.buo
  store <2 x float> %i.bur, ptr %i.bue, align 8, !tbaa !75
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712 ; 2 uses
  %i.but = load ptr, ptr %i.bus, align 8, !tbaa !408
  %i.buu = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.buv = getelementptr inbounds nuw i8, ptr %i.buu, i64 3740
  %i.buw = getelementptr inbounds nuw i8, ptr %i.buu, i64 3220
  %i.bux = load float, ptr %i.buw, align 4, !tbaa !383
  %i.buy = load <4 x float>, ptr %i.buv, align 4, !tbaa !75
  %i.buz = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bux, i64 3
  %i.bva = fmul <4 x float> %i.buy, %i.buz        ; 3 uses
  %i.bvb = fcmp olt <4 x float> %i.bva, zeroinitializer
  %i.bvc = fcmp ogt <4 x float> %i.bva, splat (float 1.000000e+00)
  %i.bvd = select <4 x i1> %i.bvc, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bva
  %i.bve = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bvd, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bvf = select <4 x i1> %i.bvb, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bve
  %i.bvg = fptosi <4 x float> %i.bvf to <4 x i32>
  %i.bvh = shl <4 x i32> %i.bvg, <i32 0, i32 8, i32 16, i32 24>
  %i.bvi = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bvh)
  %i.bvj = select i1 %.not108.i, float 0.000000e+00, float %i.bqn
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.but, ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(8) %i.bue, i32 noundef %i.bvi, float noundef %i.bvj, i32 noundef 48)
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3296
  %i.bvl = load float, ptr %i.bvk, align 4, !tbaa !1453 ; 2 uses
  %i.bvm = fcmp ogt float %i.bvl, 0.000000e+00
  br i1 %i.bvm, label %bb.lp, label %bb.lr

bb.lp:                                            ; preds = %bb.lo
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bqf, i64 52
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bqf, i64 44
  %i.bvp = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.bvq = load float, ptr %i.bvp, align 4, !tbaa !378 ; 2 uses
  %i.bvr = load float, ptr %i.bvo, align 4, !tbaa !735
  %i.bvs = load float, ptr %i.bvn, align 4, !tbaa !616
  %i.bvt = fadd float %i.bvr, %i.bvs
  %i.bvu = fcmp olt float %i.bvq, %i.bvt
  br i1 %i.bvu, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.bvv = load ptr, ptr %i.bus, align 8, !tbaa !408
  %i.bvw = load <2 x float>, ptr %16, align 8
  %i.bvx = load float, ptr %i.bue, align 8, !tbaa !374
  %i.bvy = fneg float %i.bqp
  %i.bvz = insertelement <2 x float> poison, float %i.bqp, i64 0
  %i.bwa = insertelement <2 x float> %i.bvz, float %i.bvy, i64 1
  %i.bwb = insertelement <2 x float> %i.bvw, float %i.bvx, i64 1
  %i.bwc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bwa, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bwb) ; 2 uses
  %i.bwd = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bwd, i64 3612
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.bwd, i64 3220
  %i.bwg = load float, ptr %i.bwf, align 4, !tbaa !383
  %i.bwh = load <4 x float>, ptr %i.bwe, align 4, !tbaa !75
  %i.bwi = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bwg, i64 3
  %i.bwj = fmul <4 x float> %i.bwh, %i.bwi        ; 3 uses
  %i.bwk = fcmp olt <4 x float> %i.bwj, zeroinitializer
  %i.bwl = fcmp ogt <4 x float> %i.bwj, splat (float 1.000000e+00)
  %i.bwm = select <4 x i1> %i.bwl, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bwj
  %i.bwn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bwm, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bwo = select <4 x i1> %i.bwk, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bwn
  %i.bwp = fptosi <4 x float> %i.bwo to <4 x i32>
  %i.bwq = shl <4 x i32> %i.bwp, <i32 0, i32 8, i32 16, i32 24>
  %i.bwr = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bwq)
  %i.bws = extractelement <2 x float> %i.bwc, i64 0
  %i.bwt = extractelement <2 x float> %i.bwc, i64 1
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.bvv, float noundef %i.bws, float noundef %i.bwt, float noundef %i.bvq, i32 noundef %i.bwr, float noundef %i.bvl)
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp, %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lr, %bb.ln
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.bqf, i64 200
  %i.bwv = load i8, ptr %i.bwu, align 8, !tbaa !835, !range !100, !noundef !236
  %i.bww = trunc nuw i8 %i.bwv to i1
  br i1 %i.bww, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  call void @_ZN5ImGui9ScrollbarE9ImGuiAxis(i32 noundef 0)
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %i.bwx = getelementptr inbounds nuw i8, ptr %i.bqf, i64 201
  %i.bwy = load i8, ptr %i.bwx, align 1, !tbaa !938, !range !100, !noundef !236
  %i.bwz = trunc nuw i8 %i.bwy to i1
  br i1 %i.bwz, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  call void @_ZN5ImGui9ScrollbarE9ImGuiAxis(i32 noundef 1)
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %bb.lu
  %i.bxa = and i32 %i.bqj, 2
  %.not110.i = icmp eq i32 %i.bxa, 0
  %or.cond.i668 = select i1 %.0405, i1 %.not110.i, i1 false
  %i.bxb = icmp ne i32 %.0404, 0
  %or.cond185.i = and i1 %i.bxb, %or.cond.i668
  br i1 %or.cond185.i, label %.lr.ph.i669, label %.loopexit.i

.lr.ph.i669:                                      ; preds = %bb.lw
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40 ; 2 uses
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48 ; 2 uses
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bqf, i64 44
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bqf, i64 52
  %i.bxg = call float @llvm.fmuladd.f32(float %i.bqp, float 5.000000e-01, float 5.000000e-01)
  %i.bxh = fptosi float %i.bxg to i32
  %i.bxi = sitofp i32 %i.bxh to float             ; 5 uses
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712 ; 8 uses
  %i.bxk = fadd float %i.bqn, %i.bxi              ; 3 uses
  %i.bxl = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.bxm = load i32, ptr %i.i, align 16, !tbaa !237 ; 2 uses
  %i.bxn = icmp ult i32 %i.bxm, 16777216
  br i1 %i.bxn, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %.lr.ph.i669
  %i.bxo = load ptr, ptr %i.bxj, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bxo, i64 80
  %i.bxq = load <2 x float>, ptr %i.bxc, align 8, !tbaa !75 ; 3 uses
  %i.bxr = load <2 x float>, ptr %i.bxd, align 8, !tbaa !75
  %i.bxs = fadd <2 x float> %i.bxq, %i.bxr
  %i.bxt = fsub <2 x float> %i.bxs, %i.bxq
  %i.bxu = fadd <2 x float> %i.bxq, %i.bxt        ; 3 uses
  %i.bxv = insertelement <2 x float> poison, float %i.anc, i64 0
  %i.bxw = insertelement <2 x float> %i.bxv, float %i.bxi, i64 1
  %i.bxx = fsub <2 x float> %i.bxu, %i.bxw
  store <2 x float> %i.bxx, ptr %17, align 8
  call void @_ZN8ImVectorI6ImVec2E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bxp, ptr noundef nonnull align 4 dereferenceable(8) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  %i.bxy = load ptr, ptr %i.bxj, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  %i.bxz = insertelement <2 x float> poison, float %i.bxi, i64 0
  %i.bya = insertelement <2 x float> %i.bxz, float %i.anc, i64 1
  %i.byb = fsub <2 x float> %i.bxu, %i.bya
  store <2 x float> %i.byb, ptr %18, align 8
  %i.byc = getelementptr inbounds nuw i8, ptr %i.bxy, i64 80
  call void @_ZN8ImVectorI6ImVec2E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.byc, ptr noundef nonnull align 4 dereferenceable(8) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41
  %i.byd = load ptr, ptr %i.bxj, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  %i.bye = insertelement <2 x float> poison, float %i.bxk, i64 0
  %i.byf = shufflevector <2 x float> %i.bye, <2 x float> poison, <2 x i32> zeroinitializer
  %i.byg = fsub <2 x float> %i.bxu, %i.byf
  store <2 x float> %i.byg, ptr %19, align 8, !tbaa !75
  call void @_ZN10ImDrawList13PathArcToFastERK6ImVec2fii(ptr noundef nonnull align 8 dereferenceable(224) %i.byd, ptr noundef nonnull align 4 dereferenceable(8) %19, float noundef %i.bqn, i32 noundef 0, i32 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41
  %i.byh = load ptr, ptr %i.bxj, align 8, !tbaa !408 ; 3 uses
  %i.byi = getelementptr inbounds nuw i8, ptr %i.byh, i64 80 ; 2 uses
  %i.byj = getelementptr inbounds nuw i8, ptr %i.byh, i64 88
  %i.byk = load ptr, ptr %i.byj, align 8, !tbaa !438
  %i.byl = load i32, ptr %i.byi, align 8, !tbaa !439
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(224) %i.byh, ptr noundef %i.byk, i32 noundef %i.byl, i32 noundef %i.bxm)
  store i32 0, ptr %i.byi, align 8, !tbaa !439
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %.lr.ph.i669
  %exitcond.not.i673.peel = icmp eq i32 %.0404, 1
  br i1 %exitcond.not.i673.peel, label %.loopexit.i, label %.peel.next

.peel.next:                                       ; preds = %bb.ly
  %i.bym = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.byn = load i32, ptr %i.bym, align 4, !tbaa !237 ; 2 uses
  %i.byo = icmp ult i32 %i.byn, 16777216
  br i1 %i.byo, label %.loopexit.i, label %bb.lz

bb.lz:                                            ; preds = %.peel.next
  %i.byp = load float, ptr %i.bxc, align 8, !tbaa !249 ; 3 uses
  %i.byq = load float, ptr %i.bxd, align 8, !tbaa !249
  %i.byr = fadd float %i.byp, %i.byq
  %i.bys = load float, ptr %i.bxe, align 4, !tbaa !250 ; 3 uses
  %i.byt = load float, ptr %i.bxf, align 4, !tbaa !250
  %i.byu = fadd float %i.bys, %i.byt
  %i.byv = fsub float %i.byr, %i.byp
  %i.byw = call float @llvm.fmuladd.f32(float %i.byv, float 0.000000e+00, float %i.byp) ; 3 uses
  %i.byx = fsub float %i.byu, %i.bys
  %i.byy = fadd float %i.bys, %i.byx              ; 3 uses
  %i.byz = load ptr, ptr %i.bxj, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  %i.bza = fadd float %i.byw, %i.bxi
  %i.bzb = fsub float %i.byy, %i.anc
  %.sroa.0.0.vec.insert.i156.i = insertelement <2 x float> poison, float %i.bza, i64 0
  %.sroa.0.4.vec.insert.i157.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i156.i, float %i.bzb, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i157.i, ptr %17, align 8
  %i.bzc = getelementptr inbounds nuw i8, ptr %i.byz, i64 80
  call void @_ZN8ImVectorI6ImVec2E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bzc, ptr noundef nonnull align 4 dereferenceable(8) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  %i.bzd = load ptr, ptr %i.bxj, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  %i.bze = fadd float %i.byw, %i.anc
  %i.bzf = fsub float %i.byy, %i.bxi
  %.sroa.0.0.vec.insert.i160.i = insertelement <2 x float> poison, float %i.bze, i64 0
  %.sroa.0.4.vec.insert.i161.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i160.i, float %i.bzf, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i161.i, ptr %18, align 8
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bzd, i64 80
  call void @_ZN8ImVectorI6ImVec2E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bzg, ptr noundef nonnull align 4 dereferenceable(8) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41
  %i.bzh = load ptr, ptr %i.bxj, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  %i.bzi = fadd float %i.bxk, %i.byw
  %i.bzj = fsub float %i.byy, %i.bxk
  store float %i.bzi, ptr %19, align 8, !tbaa !249
  store float %i.bzj, ptr %i.bxl, align 4, !tbaa !250
  call void @_ZN10ImDrawList13PathArcToFastERK6ImVec2fii(ptr noundef nonnull align 8 dereferenceable(224) %i.bzh, ptr noundef nonnull align 4 dereferenceable(8) %19, float noundef %i.bqn, i32 noundef 3, i32 noundef 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41
  %i.bzk = load ptr, ptr %i.bxj, align 8, !tbaa !408 ; 3 uses
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.bzk, i64 80 ; 2 uses
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.bzk, i64 88
  %i.bzn = load ptr, ptr %i.bzm, align 8, !tbaa !438
  %i.bzo = load i32, ptr %i.bzl, align 8, !tbaa !439
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(224) %i.bzk, ptr noundef %i.bzn, i32 noundef %i.bzo, i32 noundef %i.byn)
  store i32 0, ptr %i.bzl, align 8, !tbaa !439
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ly, %.peel.next, %bb.lz, %bb.lw
  br i1 %.0405, label %bb.ma, label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

bb.ma:                                            ; preds = %.loopexit.i
  %i.bzp = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 4 uses
  %i.bzq = load float, ptr %i.bqo, align 4, !tbaa !929 ; 6 uses
  %i.bzr = getelementptr inbounds nuw i8, ptr %i.bzp, i64 3612
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bzp, i64 3616
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.bzp, i64 3220
  %i.bzt = load float, ptr %i.bzs, align 4, !tbaa !383
  %i.bzu = load <4 x float>, ptr %i.bzr, align 4, !tbaa !75 ; 2 uses
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !75
  %i.bzv = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bzt, i64 3
  %i.bzw = fmul <4 x float> %i.bzu, %i.bzv        ; 3 uses
  %i.bzx = fcmp ogt <4 x float> %i.bzw, splat (float 1.000000e+00)
  %i.bzy = select <4 x i1> %i.bzx, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bzw
  %i.bzz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bzy, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %53 = shufflevector <4 x float> %i.bzu, <4 x float> %i.bzw, <4 x i32> <i32 0, i32 poison, i32 2, i32 7>
  %54 = insertelement <4 x float> %53, float %.sroa.4.0.copyload.i.i.i, i64 1
  %55 = fcmp olt <4 x float> %54, zeroinitializer
  %56 = select <4 x i1> %55, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bzz ; 4 uses
  %i.caa = extractelement <4 x float> %56, i64 0
  %i.cab = fptosi float %i.caa to i32
  %57 = extractelement <4 x float> %56, i64 1
  %58 = fptosi float %57 to i32
  %59 = shl i32 %58, 8
  %60 = or i32 %59, %i.cab
  %61 = extractelement <4 x float> %56, i64 2
  %62 = fptosi float %61 to i32
  %63 = shl i32 %62, 16
  %64 = or i32 %60, %63
  %65 = extractelement <4 x float> %56, i64 3
  %66 = fptosi float %65 to i32
  %67 = shl i32 %66, 24
  %i.cac = or i32 %64, %67                        ; 4 uses
  %i.cad = fcmp ogt float %i.bzq, 0.000000e+00
  br i1 %i.cad, label %bb.mb, label %.critedge.i.i

bb.mb:                                            ; preds = %bb.ma
  %i.cae = load i32, ptr %i.bqi, align 4, !tbaa !614
  %i.caf = and i32 %i.cae, 128
  %i.cag = icmp eq i32 %i.caf, 0
  br i1 %i.cag, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.cah = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712
  %i.cai = load ptr, ptr %i.cah, align 8, !tbaa !408
  %i.caj = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  %i.cak = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48
  %i.cal = load <2 x float>, ptr %i.caj, align 8, !tbaa !75
  %i.cam = load <2 x float>, ptr %i.cak, align 8, !tbaa !75
  %i.can = fadd <2 x float> %i.cal, %i.cam
  store <2 x float> %i.can, ptr %14, align 8
  %i.cao = load float, ptr %i.bqm, align 8, !tbaa !936
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.cai, ptr noundef nonnull align 4 dereferenceable(8) %i.caj, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef %i.cac, float noundef %i.cao, float noundef %i.bzq, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %.critedge.i.i

bb.md:                                            ; preds = %bb.mb
  %i.cap = getelementptr inbounds nuw i8, ptr %i.bqf, i64 24 ; 2 uses
  %i.caq = load i32, ptr %i.cap, align 8, !tbaa !890 ; 2 uses
  %i.car = and i32 %i.caq, 4
  %.not.i162.i = icmp eq i32 %i.car, 0
  br i1 %.not.i162.i, label %bb.mf, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.cas = load float, ptr %i.bqm, align 8, !tbaa !936 ; 6 uses
  %i.cat = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40
  %i.cau = load float, ptr %i.cat, align 8, !tbaa !693
  %i.cav = getelementptr inbounds nuw i8, ptr %i.bqf, i64 44
  %i.caw = load float, ptr %i.cav, align 4, !tbaa !735 ; 2 uses
  %i.cax = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48
  %i.cay = load float, ptr %i.cax, align 8, !tbaa !615
  %i.caz = fadd float %i.cau, %i.cay
  %i.cba = getelementptr inbounds nuw i8, ptr %i.bqf, i64 52
  %i.cbb = load float, ptr %i.cba, align 4, !tbaa !616
  %i.cbc = fadd float %i.caw, %i.cbb
  %i.cbd = fadd float %i.caz, -1.000000e+00       ; 3 uses
  %i.cbe = fadd float %i.cbc, -1.000000e+00
  %i.cbf = fadd float %i.cas, %i.caw              ; 3 uses
  %i.cbg = fsub float %i.cbe, %i.cas
  %i.cbh = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712 ; 3 uses
  %i.cbi = load ptr, ptr %i.cbh, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.cbj = fsub float %i.cbd, %i.cbd
  %i.cbk = fadd float %i.cbd, %i.cbj
  %i.cbl = fsub float %i.cbg, %i.cbf              ; 2 uses
  %i.cbm = call float @llvm.fmuladd.f32(float %i.cbl, float 0.000000e+00, float %i.cbf)
  %i.cbn = fadd float %i.cbk, 5.000000e-01
  %i.cbo = fadd float %i.cbm, 5.000000e-01
  %i.cbp = fmul float %i.cas, 0.000000e+00        ; 2 uses
  %i.cbq = fsub float %i.cbn, %i.cas
  %i.cbr = fadd float %i.cbp, %i.cbo
  %.sroa.0.0.vec.insert.i25.i.i.i = insertelement <2 x float> poison, float %i.cbq, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i26.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i25.i.i.i, float %i.cbr, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i26.i.i.i, ptr %12, align 8
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.cbi, ptr noundef nonnull align 4 dereferenceable(8) %12, float noundef %i.cas, float noundef f0xBF490FDB, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  %i.cbs = load ptr, ptr %i.cbh, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  %i.cbt = fadd float %i.cbf, %i.cbl
  %i.cbu = fadd float %i.cbt, 5.000000e-01
  %i.cbv = fadd float %i.cbp, %i.cbu
  %.sroa.0.4.vec.insert.i34.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i25.i.i.i, float %i.cbv, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i34.i.i.i, ptr %13, align 8
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.cbs, ptr noundef nonnull align 4 dereferenceable(8) %13, float noundef %i.cas, float noundef 0.000000e+00, float noundef f0x3F490FDB, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  %i.cbw = load ptr, ptr %i.cbh, align 8, !tbaa !408 ; 3 uses
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cbw, i64 80 ; 2 uses
  %i.cby = getelementptr inbounds nuw i8, ptr %i.cbw, i64 88
  %i.cbz = load ptr, ptr %i.cby, align 8, !tbaa !438
  %i.cca = load i32, ptr %i.cbx, align 8, !tbaa !439
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %i.cbw, ptr noundef %i.cbz, i32 noundef %i.cca, i32 noundef %i.cac, float noundef %i.bzq, i32 noundef 0)
  store i32 0, ptr %i.cbx, align 8, !tbaa !439
  %.pre.i.i = load i32, ptr %i.cap, align 8, !tbaa !890
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %bb.md
  %i.ccb = phi i32 [ %.pre.i.i, %bb.me ], [ %i.caq, %bb.md ]
  %i.ccc = and i32 %i.ccb, 8
  %.not42.i.i = icmp eq i32 %i.ccc, 0
  br i1 %.not42.i.i, label %.critedge.i.i, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.ccd = load float, ptr %i.bqm, align 8, !tbaa !936 ; 6 uses
  %i.cce = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40
  %i.ccf = load float, ptr %i.cce, align 8, !tbaa !693 ; 2 uses
  %i.ccg = getelementptr inbounds nuw i8, ptr %i.bqf, i64 44
  %i.cch = load float, ptr %i.ccg, align 4, !tbaa !735
  %i.cci = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48
  %i.ccj = load float, ptr %i.cci, align 8, !tbaa !615
  %i.cck = fadd float %i.ccf, %i.ccj
  %i.ccl = getelementptr inbounds nuw i8, ptr %i.bqf, i64 52
  %i.ccm = load float, ptr %i.ccl, align 4, !tbaa !616
  %i.ccn = fadd float %i.cch, %i.ccm
  %i.cco = fadd float %i.cck, -1.000000e+00
  %i.ccp = fadd float %i.ccn, -1.000000e+00       ; 3 uses
  %i.ccq = fadd float %i.ccd, %i.ccf              ; 3 uses
  %i.ccr = fsub float %i.cco, %i.ccd
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712 ; 3 uses
  %i.cct = load ptr, ptr %i.ccs, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.ccu = fsub float %i.ccr, %i.ccq              ; 2 uses
  %i.ccv = fadd float %i.ccq, %i.ccu
  %i.ccw = fsub float %i.ccp, %i.ccp
  %i.ccx = fadd float %i.ccp, %i.ccw
  %i.ccy = fadd float %i.ccv, 5.000000e-01
  %i.ccz = fadd float %i.ccx, 5.000000e-01
  %i.cda = fmul float %i.ccd, 0.000000e+00        ; 2 uses
  %i.cdb = fadd float %i.cda, %i.ccy
  %i.cdc = fsub float %i.ccz, %i.ccd              ; 2 uses
  %.sroa.0.0.vec.insert.i25.i48.i.i = insertelement <2 x float> poison, float %i.cdb, i64 0
  %.sroa.0.4.vec.insert.i26.i49.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i25.i48.i.i, float %i.cdc, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i26.i49.i.i, ptr %10, align 8
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.cct, ptr noundef nonnull align 4 dereferenceable(8) %10, float noundef %i.ccd, float noundef f0x3F490FDB, float noundef f0x3FC90FDB, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  %i.cdd = load ptr, ptr %i.ccs, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.cde = call float @llvm.fmuladd.f32(float %i.ccu, float 0.000000e+00, float %i.ccq)
  %i.cdf = fadd float %i.cde, 5.000000e-01
  %i.cdg = fadd float %i.cda, %i.cdf
  %.sroa.0.0.vec.insert.i33.i50.i.i = insertelement <2 x float> poison, float %i.cdg, i64 0
  %.sroa.0.4.vec.insert.i34.i51.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i33.i50.i.i, float %i.cdc, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i34.i51.i.i, ptr %11, align 8
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.cdd, ptr noundef nonnull align 4 dereferenceable(8) %11, float noundef %i.ccd, float noundef f0x3FC90FDB, float noundef f0x4016CBE4, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  %i.cdh = load ptr, ptr %i.ccs, align 8, !tbaa !408 ; 3 uses
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.cdh, i64 80 ; 2 uses
  %i.cdj = getelementptr inbounds nuw i8, ptr %i.cdh, i64 88
  %i.cdk = load ptr, ptr %i.cdj, align 8, !tbaa !438
  %i.cdl = load i32, ptr %i.cdi, align 8, !tbaa !439
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %i.cdh, ptr noundef %i.cdk, i32 noundef %i.cdl, i32 noundef %i.cac, float noundef %i.bzq, i32 noundef 0)
  store i32 0, ptr %i.cdi, align 8, !tbaa !439
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.mg, %bb.mf, %bb.mc, %bb.ma
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.bqf, i64 216
  %i.cdn = load i8, ptr %i.cdm, align 8, !tbaa !1449 ; 2 uses
  %.not43.i.i = icmp eq i8 %i.cdn, -1
  %i.cdo = getelementptr inbounds nuw i8, ptr %i.bqf, i64 217
  %i.cdp = load i8, ptr %i.cdo, align 1, !tbaa !1450 ; 2 uses
  %.not44.i.i = icmp eq i8 %i.cdp, -1             ; 3 uses
  %or.cond.i.i = select i1 %.not43.i.i, i1 %.not44.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.ml, label %.critedge._crit_edge.i.i

.critedge._crit_edge.i.i:                         ; preds = %.critedge.i.i
  %spec.select.i.i = select i1 %.not44.i.i, i8 %i.cdn, i8 %i.cdp ; 2 uses
  %i.cdq = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.cdq, i64 3532
  %i.cds = select i1 %.not44.i.i, i64 29, i64 30
  %i.cdt = getelementptr inbounds nuw [16 x i8], ptr %i.cdr, i64 %i.cds ; 2 uses
  %.sroa.4.0..sroa_idx.i53.i.i = getelementptr inbounds nuw i8, ptr %i.cdt, i64 4
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.cdq, i64 3220
  %i.cdv = load float, ptr %i.cdu, align 4, !tbaa !383
  %i.cdw = load <4 x float>, ptr %i.cdt, align 4, !tbaa !75 ; 2 uses
  %.sroa.4.0.copyload.i54.i.i = load float, ptr %.sroa.4.0..sroa_idx.i53.i.i, align 4, !tbaa !75
  %i.cdx = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.cdv, i64 3
  %i.cdy = fmul <4 x float> %i.cdw, %i.cdx        ; 3 uses
  %i.cdz = fcmp ogt <4 x float> %i.cdy, splat (float 1.000000e+00)
  %i.cea = select <4 x i1> %i.cdz, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cdy
  %i.ceb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cea, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %68 = shufflevector <4 x float> %i.cdw, <4 x float> %i.cdy, <4 x i32> <i32 0, i32 poison, i32 2, i32 7>
  %69 = insertelement <4 x float> %68, float %.sroa.4.0.copyload.i54.i.i, i64 1
  %70 = fcmp olt <4 x float> %69, zeroinitializer
  %71 = select <4 x i1> %70, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ceb ; 4 uses
  %i.cec = extractelement <4 x float> %71, i64 0
  %i.ced = fptosi float %i.cec to i32
  %72 = extractelement <4 x float> %71, i64 1
  %73 = fptosi float %72 to i32
  %74 = shl i32 %73, 8
  %75 = or i32 %74, %i.ced
  %76 = extractelement <4 x float> %71, i64 2
  %77 = fptosi float %76 to i32
  %78 = shl i32 %77, 16
  %79 = or i32 %75, %78
  %80 = extractelement <4 x float> %71, i64 3
  %81 = fptosi float %80 to i32
  %82 = shl i32 %81, 24
  %i.cee = or i32 %79, %82
  %i.cef = load float, ptr %i.bqo, align 4, !tbaa !929 ; 2 uses
  %i.ceg = fcmp ole float %i.cef, 2.000000e+00
  %i.ceh = select i1 %i.ceg, float 2.000000e+00, float %i.cef
  %i.cei = load float, ptr %i.bqm, align 8, !tbaa !936 ; 11 uses
  %i.cej = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40
  %i.cek = load float, ptr %i.cej, align 8, !tbaa !693 ; 5 uses
  %i.cel = getelementptr inbounds nuw i8, ptr %i.bqf, i64 44
  %i.cem = load float, ptr %i.cel, align 4, !tbaa !735 ; 5 uses
  %i.cen = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48
  %i.ceo = load float, ptr %i.cen, align 8, !tbaa !615
  %i.cep = fadd float %i.cek, %i.ceo
  %i.ceq = getelementptr inbounds nuw i8, ptr %i.bqf, i64 52
  %i.cer = load float, ptr %i.ceq, align 4, !tbaa !616
  %i.ces = fadd float %i.cem, %i.cer
  %i.cet = fadd float %i.cep, -1.000000e+00       ; 3 uses
  %i.ceu = fadd float %i.ces, -1.000000e+00       ; 4 uses
  switch i8 %spec.select.i.i, label %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i [
    i8 0, label %bb.mh
    i8 1, label %bb.mi
    i8 2, label %bb.mj
    i8 3, label %bb.mk
  ]

bb.mh:                                            ; preds = %.critedge._crit_edge.i.i
  %i.cev = fadd float %i.cei, %i.cem
  %i.cew = fadd float %i.cek, 0.000000e+00
  %i.cex = fsub float %i.ceu, %i.cei
  %.sroa.044.0.vec.insert.i.i.i.i = insertelement <2 x float> poison, float %i.cek, i64 0
  %.sroa.044.4.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.044.0.vec.insert.i.i.i.i, float %i.cev, i64 1
  %.sroa.10.8.vec.insert.i.i.i.i = insertelement <2 x float> poison, float %i.cew, i64 0
  %.sroa.10.12.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.10.8.vec.insert.i.i.i.i, float %i.cex, i64 1
  br label %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i

bb.mi:                                            ; preds = %.critedge._crit_edge.i.i
  %.sroa.9.8.vec.insert.i.i67.i.i = insertelement <2 x float> poison, float %i.cet, i64 0 ; 2 uses
  %i.cey = fadd float %i.cei, %i.cem
  %i.cez = fsub float %i.ceu, %i.cei
  %.sroa.044.4.vec.insert53.i.i68.i.i = insertelement <2 x float> %.sroa.9.8.vec.insert.i.i67.i.i, float %i.cey, i64 1
  %.sroa.10.12.vec.insert66.i.i69.i.i = insertelement <2 x float> %.sroa.9.8.vec.insert.i.i67.i.i, float %i.cez, i64 1
  br label %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i

bb.mj:                                            ; preds = %.critedge._crit_edge.i.i
  %i.cfa = fadd float %i.cei, %i.cek
  %i.cfb = insertelement <2 x float> poison, float %i.cet, i64 0
  %i.cfc = insertelement <2 x float> %i.cfb, float %i.cem, i64 1
  %i.cfd = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.cei, i64 0
  %i.cfe = fsub <2 x float> %i.cfc, %i.cfd
  %.sroa.044.0.vec.insert49.i.i.i.i = insertelement <2 x float> poison, float %i.cfa, i64 0
  %.sroa.044.4.vec.insert55.i.i.i.i = insertelement <2 x float> %.sroa.044.0.vec.insert49.i.i.i.i, float %i.cem, i64 1
  br label %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i

bb.mk:                                            ; preds = %.critedge._crit_edge.i.i
  %i.cff = fadd float %i.cei, %i.cek
  %i.cfg = fsub float %i.cet, %i.cei
  %.sroa.044.0.vec.insert51.i.i59.i.i = insertelement <2 x float> poison, float %i.cff, i64 0
  %.sroa.044.4.vec.insert57.i.i60.i.i = insertelement <2 x float> %.sroa.044.0.vec.insert51.i.i59.i.i, float %i.ceu, i64 1
  %.sroa.10.8.vec.insert64.i.i61.i.i = insertelement <2 x float> poison, float %i.cfg, i64 0
  %.sroa.10.12.vec.insert70.i.i62.i.i = insertelement <2 x float> %.sroa.10.8.vec.insert64.i.i61.i.i, float %i.ceu, i64 1
  br label %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i

_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i: ; preds = %bb.mk, %bb.mj, %bb.mi, %bb.mh, %.critedge._crit_edge.i.i
  %.sroa.044.0.i.i.i.i = phi <2 x float> [ %.sroa.044.4.vec.insert57.i.i60.i.i, %bb.mk ], [ %.sroa.044.4.vec.insert.i.i.i.i, %bb.mh ], [ %.sroa.044.4.vec.insert53.i.i68.i.i, %bb.mi ], [ %.sroa.044.4.vec.insert55.i.i.i.i, %bb.mj ], [ zeroinitializer, %.critedge._crit_edge.i.i ] ; 3 uses
  %.sroa.10.0.i.i.i.i = phi <2 x float> [ %.sroa.10.12.vec.insert70.i.i62.i.i, %bb.mk ], [ %.sroa.10.12.vec.insert.i.i.i.i, %bb.mh ], [ %.sroa.10.12.vec.insert66.i.i69.i.i, %bb.mi ], [ %i.cfe, %bb.mj ], [ zeroinitializer, %.critedge._crit_edge.i.i ]
  %i.cfh = sext i8 %spec.select.i.i to i64
  %i.cfi = getelementptr inbounds [28 x i8], ptr @_ZL17resize_border_def, i64 %i.cfh ; 4 uses
  %i.cfj = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712 ; 3 uses
  %i.cfk = load ptr, ptr %i.cfj, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.cfi, i64 8
  %i.cfm = fsub <2 x float> %.sroa.10.0.i.i.i.i, %.sroa.044.0.i.i.i.i ; 2 uses
  %i.cfn = load <2 x float>, ptr %i.cfl, align 4, !tbaa !75
  %i.cfo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cfm, <2 x float> %i.cfn, <2 x float> %.sroa.044.0.i.i.i.i)
  %i.cfp = fadd <2 x float> %i.cfo, splat (float 5.000000e-01)
  %i.cfq = load <2 x float>, ptr %i.cfi, align 4, !tbaa !75
  %i.cfr = insertelement <2 x float> poison, float %i.cei, i64 0
  %i.cfs = shufflevector <2 x float> %i.cfr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cft = fmul <2 x float> %i.cfs, %i.cfq        ; 2 uses
  %i.cfu = fadd <2 x float> %i.cfp, %i.cft
  store <2 x float> %i.cfu, ptr %8, align 8
  %i.cfv = getelementptr inbounds nuw i8, ptr %i.cfi, i64 24
  %i.cfw = load float, ptr %i.cfv, align 4, !tbaa !1455 ; 4 uses
  %i.cfx = fadd float %i.cfw, f0xBF490FDB
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.cfk, ptr noundef nonnull align 4 dereferenceable(8) %8, float noundef %i.cei, float noundef %i.cfx, float noundef %i.cfw, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  %i.cfy = load ptr, ptr %i.cfj, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.cfi, i64 16
  %i.cga = load <2 x float>, ptr %i.cfz, align 4, !tbaa !75
  %i.cgb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cfm, <2 x float> %i.cga, <2 x float> %.sroa.044.0.i.i.i.i)
  %i.cgc = fadd <2 x float> %i.cgb, splat (float 5.000000e-01)
  %i.cgd = fadd <2 x float> %i.cft, %i.cgc
  store <2 x float> %i.cgd, ptr %9, align 8
  %i.cge = fadd float %i.cfw, f0x3F490FDB
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.cfy, ptr noundef nonnull align 4 dereferenceable(8) %9, float noundef %i.cei, float noundef %i.cfw, float noundef %i.cge, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  %i.cgf = load ptr, ptr %i.cfj, align 8, !tbaa !408 ; 3 uses
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.cgf, i64 80 ; 2 uses
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.cgf, i64 88
  %i.cgi = load ptr, ptr %i.cgh, align 8, !tbaa !438
  %i.cgj = load i32, ptr %i.cgg, align 8, !tbaa !439
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %i.cgf, ptr noundef %i.cgi, i32 noundef %i.cgj, i32 noundef %i.cee, float noundef %i.ceh, i32 noundef 0)
  store i32 0, ptr %i.cgg, align 8, !tbaa !439
  br label %bb.ml

bb.ml:                                            ; preds = %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i, %.critedge.i.i
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.bzp, i64 3296
  %i.cgl = load float, ptr %i.cgk, align 8, !tbaa !423 ; 2 uses
  %i.cgm = fcmp ogt float %i.cgl, 0.000000e+00
  br i1 %i.cgm, label %bb.mm, label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

bb.mm:                                            ; preds = %bb.ml
  %i.cgn = load i32, ptr %i.bqi, align 4, !tbaa !614
  %i.cgo = and i32 %i.cgn, 1
  %.not47.i.i = icmp eq i32 %i.cgo, 0
  br i1 %.not47.i.i, label %bb.mn, label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

bb.mn:                                            ; preds = %bb.mm
  %i.cgp = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.bqf, i64 44
  %i.cgr = load float, ptr %i.cgq, align 4, !tbaa !735
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.bqf, i64 104
  %i.cgt = load float, ptr %i.cgs, align 8, !tbaa !724
  %i.cgu = fadd float %i.cgr, %i.cgt
  %i.cgv = fadd float %i.cgu, -1.000000e+00
  %i.cgw = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712
  %i.cgx = load ptr, ptr %i.cgw, align 8, !tbaa !408
  %i.cgy = load float, ptr %i.cgp, align 8, !tbaa !693 ; 2 uses
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48
  %i.cha = load float, ptr %i.cgz, align 8, !tbaa !615
  %i.chb = fadd float %i.cgy, %i.cha
  %i.chc = fneg float %i.bzq
  %i.chd = insertelement <2 x float> poison, float %i.bzq, i64 0
  %i.che = insertelement <2 x float> %i.chd, float %i.chc, i64 1
  %i.chf = insertelement <2 x float> poison, float %i.cgy, i64 0
  %i.chg = insertelement <2 x float> %i.chf, float %i.chb, i64 1
  %i.chh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.che, <2 x float> splat (float 5.000000e-01), <2 x float> %i.chg) ; 2 uses
  %i.chi = extractelement <2 x float> %i.chh, i64 0
  %i.chj = extractelement <2 x float> %i.chh, i64 1
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.cgx, float noundef %i.chi, float noundef %i.chj, float noundef %i.cgv, i32 noundef %i.cac, float noundef %i.cgl)
  br label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit: ; preds = %bb.lg, %.loopexit.i, %bb.ml, %bb.mm, %bb.mn
  store i32 0, ptr %i.bql, align 8, !tbaa !905
  %.pre1051 = load ptr, ptr %i.g, align 8, !tbaa !601 ; 57 uses
  br i1 %.1988, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit
  %i.chk = getelementptr inbounds nuw i8, ptr %.pre1051, i64 720
  %i.chl = getelementptr inbounds nuw i8, ptr %.pre1051, i64 712
  store ptr %i.chk, ptr %i.chl, align 8, !tbaa !408
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mo, %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit
  %i.chm = and i32 %.1403, 8
  %.not498 = icmp eq i32 %i.chm, 0
  %i.chn = getelementptr inbounds nuw i8, ptr %.pre1051, i64 80
  %i.cho = load float, ptr %i.chn, align 8, !tbaa !931 ; 3 uses
  %i.chp = fcmp une float %i.cho, 0.000000e+00    ; 2 uses
  br i1 %i.chp, label %bb.mt, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.chq = and i32 %.1403, 2056
  %i.chr = icmp eq i32 %i.chq, 2048
  br i1 %i.chr, label %bb.mr, label %bb.ms

bb.mr:                                            ; preds = %bb.mq
  %i.chs = getelementptr inbounds nuw i8, ptr %.pre1051, i64 64
  %i.cht = load float, ptr %i.chs, align 8, !tbaa !1456
  br label %bb.ms

bb.ms:                                            ; preds = %bb.mq, %bb.mr
  %i.chu = phi float [ %i.cht, %bb.mr ], [ 0.000000e+00, %bb.mq ] ; 2 uses
  %i.chv = getelementptr inbounds nuw i8, ptr %.pre1051, i64 48
  %i.chw = load float, ptr %i.chv, align 8, !tbaa !615
  %i.chx = getelementptr inbounds nuw i8, ptr %.pre1051, i64 88
  %i.chy = load float, ptr %i.chx, align 8, !tbaa !948
  %i.chz = fneg float %i.chy
  %i.cia = call float @llvm.fmuladd.f32(float %i.chz, float 2.000000e+00, float %i.chw)
  %i.cib = getelementptr inbounds nuw i8, ptr %.pre1051, i64 112
  %i.cic = load float, ptr %i.cib, align 8, !tbaa !933
  %i.cid = getelementptr inbounds nuw i8, ptr %.pre1051, i64 120
  %i.cie = load float, ptr %i.cid, align 8, !tbaa !940
  %i.cif = fadd float %i.cic, %i.cie
  %i.cig = fsub float %i.cia, %i.cif              ; 2 uses
  %i.cih = fcmp oge float %i.chu, %i.cig
  %i.cii = select i1 %i.cih, float %i.chu, float %i.cig
  br label %bb.mt

bb.mt:                                            ; preds = %bb.mp, %bb.ms
  %i.cij = phi float [ %i.cii, %bb.ms ], [ %i.cho, %bb.mp ]
  %i.cik = getelementptr inbounds nuw i8, ptr %.pre1051, i64 84
  %i.cil = load float, ptr %i.cik, align 4, !tbaa !932 ; 3 uses
  %i.cim = fcmp une float %i.cil, 0.000000e+00    ; 2 uses
  br i1 %i.cim, label %._crit_edge1052, label %bb.mu

._crit_edge1052:                                  ; preds = %bb.mt
  %.phi.trans.insert1053 = getelementptr inbounds nuw i8, ptr %.pre1051, i64 92
  %.pre1054 = load float, ptr %.phi.trans.insert1053, align 4, !tbaa !949
  %.phi.trans.insert1055 = getelementptr inbounds nuw i8, ptr %.pre1051, i64 116
  %.pre1056 = load float, ptr %.phi.trans.insert1055, align 4, !tbaa !934
end_hunk_0
begin_hunk_1_@_ZN5ImGui28DebugRenderViewportThumbnailEP10ImDrawListP14ImGuiViewportPRK6ImRect:bb.a
  %i.cu = extractelement <4 x float> %i.ck, i64 3
  %i.cv = fptosi float %i.cu to i32
  %i.cw = sitofp i32 %i.cv to float               ; 3 uses
  %i.cx = extractelement <2 x float> %i.cb, i64 1 ; 2 uses
  %i.cy = fsub float %i.ch, %i.cx
  %i.cz = call float @llvm.fmuladd.f32(float %i.cy, float 3.000000e+00, float %i.cx)
  %i.da = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.db = insertelement <4 x float> %i.da, float %i.cf, i64 2
  %i.dc = insertelement <4 x float> %i.db, float %i.cz, i64 3
  %i.dd = fmul <4 x float> %i.at, %i.dc
  %i.de = fadd <4 x float> %i.au, %i.dd           ; 4 uses
  %i.df = extractelement <4 x float> %i.de, i64 0
  %i.dg = fptosi float %i.df to i32
  %i.dh = sitofp i32 %i.dg to float               ; 3 uses
  %i.di = extractelement <4 x float> %i.de, i64 1
  %i.dj = fptosi float %i.di to i32
  %i.dk = sitofp i32 %i.dj to float               ; 3 uses
  %i.dl = extractelement <4 x float> %i.de, i64 2
  %i.dm = fptosi float %i.dl to i32
  %i.dn = sitofp i32 %i.dm to float               ; 3 uses
  %i.do = extractelement <4 x float> %i.de, i64 3
  %i.dp = fptosi float %i.do to i32
  %i.dq = sitofp i32 %i.dp to float               ; 3 uses
  %i.dr = load float, ptr %2, align 4, !tbaa !249 ; 8 uses
  %i.ds = fcmp ogt float %i.dr, %i.cn
  br i1 %i.ds, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dt = load float, ptr %i.d, align 4, !tbaa !249 ; 2 uses
  %i.du = fcmp olt float %i.dt, %i.cn
  %..i.i = select i1 %i.du, float %i.dt, float %i.cn
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.dv = phi float [ %i.dr, %bb.d ], [ %..i.i, %bb.e ]
  %i.dw = load float, ptr %i.f, align 4, !tbaa !250 ; 8 uses
  %i.dx = fcmp ogt float %i.dw, %i.cq
  br i1 %i.dx, label %_Z7ImClampRK6ImVec2S1_S1_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dy = load float, ptr %i.e, align 4, !tbaa !250 ; 2 uses
  %i.dz = fcmp olt float %i.dy, %i.cq
  %.19.i.i = select i1 %i.dz, float %i.dy, float %i.cq
  br label %_Z7ImClampRK6ImVec2S1_S1_.exit.i

_Z7ImClampRK6ImVec2S1_S1_.exit.i:                 ; preds = %bb.g, %bb.f
  %i.ea = phi float [ %i.dw, %bb.f ], [ %.19.i.i, %bb.g ]
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.dv, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.ea, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %3, align 8, !tbaa !75
  %i.eb = fcmp ogt float %i.dr, %i.ct
  br i1 %i.eb, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit.i
  %i.ec = load float, ptr %i.d, align 4, !tbaa !249 ; 2 uses
  %i.ed = fcmp olt float %i.ec, %i.ct
  %..i6.i = select i1 %i.ed, float %i.ec, float %i.ct
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_Z7ImClampRK6ImVec2S1_S1_.exit.i
  %i.ee = phi float [ %i.dr, %_Z7ImClampRK6ImVec2S1_S1_.exit.i ], [ %..i6.i, %bb.h ]
  %i.ef = fcmp ogt float %i.dw, %i.cw
  br i1 %i.ef, label %_ZN6ImRect12ClipWithFullERKS_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eg = load float, ptr %i.e, align 4, !tbaa !250 ; 2 uses
  %i.eh = fcmp olt float %i.eg, %i.cw
  %.19.i7.i = select i1 %i.eh, float %i.eg, float %i.cw
  br label %_ZN6ImRect12ClipWithFullERKS_.exit

_ZN6ImRect12ClipWithFullERKS_.exit:               ; preds = %bb.i, %bb.j
  %i.ei = phi float [ %i.dw, %bb.i ], [ %.19.i7.i, %bb.j ]
  %.sroa.0.0.vec.insert.i8.i = insertelement <2 x float> poison, float %i.ee, i64 0
  %.sroa.0.4.vec.insert.i9.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i8.i, float %i.ei, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i9.i, ptr %i.ao, align 8, !tbaa !75
  %i.ej = fcmp ogt float %i.dr, %i.dh
  br i1 %i.ej, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN6ImRect12ClipWithFullERKS_.exit
  %i.ek = load float, ptr %i.d, align 4, !tbaa !249 ; 2 uses
  %i.el = fcmp olt float %i.ek, %i.dh
  %..i.i90 = select i1 %i.el, float %i.ek, float %i.dh
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN6ImRect12ClipWithFullERKS_.exit
  %i.em = phi float [ %i.dr, %_ZN6ImRect12ClipWithFullERKS_.exit ], [ %..i.i90, %bb.k ]
  %i.en = fcmp ogt float %i.dw, %i.dk
  br i1 %i.en, label %_Z7ImClampRK6ImVec2S1_S1_.exit.i92, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eo = load float, ptr %i.e, align 4, !tbaa !250 ; 2 uses
  %i.ep = fcmp olt float %i.eo, %i.dk
  %.19.i.i91 = select i1 %i.ep, float %i.eo, float %i.dk
  br label %_Z7ImClampRK6ImVec2S1_S1_.exit.i92

_Z7ImClampRK6ImVec2S1_S1_.exit.i92:               ; preds = %bb.m, %bb.l
  %i.eq = phi float [ %i.dw, %bb.l ], [ %.19.i.i91, %bb.m ]
  %.sroa.0.0.vec.insert.i.i93 = insertelement <2 x float> poison, float %i.em, i64 0
  %.sroa.0.4.vec.insert.i.i94 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i93, float %i.eq, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i94, ptr %4, align 8, !tbaa !75
  %i.er = fcmp ogt float %i.dr, %i.dn
  br i1 %i.er, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit.i92
  %i.es = load float, ptr %i.d, align 4, !tbaa !249 ; 2 uses
  %i.et = fcmp olt float %i.es, %i.dn
  %..i6.i95 = select i1 %i.et, float %i.es, float %i.dn
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_Z7ImClampRK6ImVec2S1_S1_.exit.i92
  %i.eu = phi float [ %i.dr, %_Z7ImClampRK6ImVec2S1_S1_.exit.i92 ], [ %..i6.i95, %bb.n ]
  %i.ev = fcmp ogt float %i.dw, %i.dq
  br i1 %i.ev, label %_ZN6ImRect12ClipWithFullERKS_.exit99, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ew = load float, ptr %i.e, align 4, !tbaa !250 ; 2 uses
  %i.ex = fcmp olt float %i.ew, %i.dq
  %.19.i7.i96 = select i1 %i.ex, float %i.ew, float %i.dq
  br label %_ZN6ImRect12ClipWithFullERKS_.exit99

_ZN6ImRect12ClipWithFullERKS_.exit99:             ; preds = %bb.o, %bb.p
  %i.ey = phi float [ %i.dw, %bb.o ], [ %.19.i7.i96, %bb.p ]
  %.sroa.0.0.vec.insert.i8.i97 = insertelement <2 x float> poison, float %i.eu, i64 0
  %.sroa.0.4.vec.insert.i9.i98 = insertelement <2 x float> %.sroa.0.0.vec.insert.i8.i97, float %i.ey, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i9.i98, ptr %i.ap, align 8, !tbaa !75
  %i.ez = load ptr, ptr %i.aq, align 8, !tbaa !370 ; 2 uses
  %.not48 = icmp eq ptr %i.ez, null
  br i1 %.not48, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN6ImRect12ClipWithFullERKS_.exit99
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bo, i64 976
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !900
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 976
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !900
  %i.fe = icmp eq ptr %i.fb, %i.fd
  %i.ff = select i1 %i.fe, i64 11, i64 10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN6ImRect12ClipWithFullERKS_.exit99
  %i.fg = phi i64 [ 10, %_ZN6ImRect12ClipWithFullERKS_.exit99 ], [ %i.ff, %bb.q ]
  %i.fh = load ptr, ptr %i.s, align 8, !tbaa !408
  %i.fi = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 3564
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 3220
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !383
  %i.fm = load <4 x float>, ptr %i.fj, align 4, !tbaa !75
  %i.fn = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.fl, i64 3
  %i.fo = fmul <4 x float> %i.fm, %i.fn           ; 3 uses
  %i.fp = fcmp olt <4 x float> %i.fo, zeroinitializer
  %i.fq = fcmp ogt <4 x float> %i.fo, splat (float 1.000000e+00)
  %i.fr = select <4 x i1> %i.fq, <4 x float> splat (float 1.000000e+00), <4 x float> %i.fo
  %i.fs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fr, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ft = select <4 x i1> %i.fp, <4 x float> splat (float 5.000000e-01), <4 x float> %i.fs
  %i.fu = fptosi <4 x float> %i.ft to <4 x i32>
  %i.fv = shl <4 x i32> %i.fu, <i32 0, i32 8, i32 16, i32 24>
  %i.fw = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.fv)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.fh, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.ao, i32 noundef %i.fw, float noundef 0.000000e+00, i32 noundef 0)
  %i.fx = load ptr, ptr %i.s, align 8, !tbaa !408
  %i.fy = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 3532
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fg
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 3220
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !383
  %i.gd = load <4 x float>, ptr %i.ga, align 4, !tbaa !75
  %i.ge = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.gc, i64 3
  %i.gf = fmul <4 x float> %i.gd, %i.ge           ; 3 uses
  %i.gg = fcmp olt <4 x float> %i.gf, zeroinitializer
  %i.gh = fcmp ogt <4 x float> %i.gf, splat (float 1.000000e+00)
  %i.gi = select <4 x i1> %i.gh, <4 x float> splat (float 1.000000e+00), <4 x float> %i.gf
  %i.gj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gi, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.gk = select <4 x i1> %i.gg, <4 x float> splat (float 5.000000e-01), <4 x float> %i.gj
  %i.gl = fptosi <4 x float> %i.gk to <4 x i32>
  %i.gm = shl <4 x i32> %i.gl, <i32 0, i32 8, i32 16, i32 24>
  %i.gn = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.gm)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.fx, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.ap, i32 noundef %i.gn, float noundef 0.000000e+00, i32 noundef 0)
  %i.go = load ptr, ptr %i.s, align 8, !tbaa !408
  %i.gp = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 3612
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 3220
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !383
  %i.gt = load <4 x float>, ptr %i.gq, align 4, !tbaa !75
  %i.gu = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.gs, i64 3
  %i.gv = fmul <4 x float> %i.gt, %i.gu           ; 3 uses
  %i.gw = fcmp olt <4 x float> %i.gv, zeroinitializer
  %i.gx = fcmp ogt <4 x float> %i.gv, splat (float 1.000000e+00)
  %i.gy = select <4 x i1> %i.gx, <4 x float> splat (float 1.000000e+00), <4 x float> %i.gv
  %i.gz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gy, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ha = select <4 x i1> %i.gw, <4 x float> splat (float 5.000000e-01), <4 x float> %i.gz
  %i.hb = fptosi <4 x float> %i.ha to <4 x i32>
  %i.hc = shl <4 x i32> %i.hb, <i32 0, i32 8, i32 16, i32 24>
  %i.hd = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.hc)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.go, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.ao, i32 noundef %i.hd, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  %i.he = load ptr, ptr %i.s, align 8, !tbaa !408
  %i.hf = load ptr, ptr %i.ar, align 8, !tbaa !409
  %i.hg = load float, ptr %i.as, align 8, !tbaa !410
  %i.hh = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 3532
  %.sroa.4.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.hh, i64 3536
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 3220
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !383
  %i.hl = load <4 x float>, ptr %i.hi, align 4, !tbaa !75 ; 2 uses
  %.sroa.4.0.copyload.i123 = load float, ptr %.sroa.4.0..sroa_idx.i122, align 4, !tbaa !75
  %i.hm = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.hk, i64 3
  %i.hn = fmul <4 x float> %i.hl, %i.hm           ; 3 uses
  %i.ho = fcmp ogt <4 x float> %i.hn, splat (float 1.000000e+00)
  %i.hp = select <4 x i1> %i.ho, <4 x float> splat (float 1.000000e+00), <4 x float> %i.hn
  %i.hq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hp, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %5 = shufflevector <4 x float> %i.hl, <4 x float> %i.hn, <4 x i32> <i32 0, i32 poison, i32 2, i32 7>
  %6 = insertelement <4 x float> %5, float %.sroa.4.0.copyload.i123, i64 1
  %7 = fcmp olt <4 x float> %6, zeroinitializer
  %8 = select <4 x i1> %7, <4 x float> splat (float 5.000000e-01), <4 x float> %i.hq ; 4 uses
  %i.hr = extractelement <4 x float> %8, i64 0
  %i.hs = fptosi float %i.hr to i32
  %9 = extractelement <4 x float> %8, i64 1
  %10 = fptosi float %9 to i32
  %11 = shl i32 %10, 8
  %12 = or i32 %11, %i.hs
  %13 = extractelement <4 x float> %8, i64 2
  %14 = fptosi float %13 to i32
  %15 = shl i32 %14, 16
  %16 = or i32 %12, %15
  %17 = extractelement <4 x float> %8, i64 3
  %18 = fptosi float %17 to i32
  %19 = shl i32 %18, 24
  %i.ht = or i32 %16, %19
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !313 ; 5 uses
  %.not176 = icmp eq ptr %i.hv, inttoptr (i64 -1 to ptr)
  br i1 %.not176, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r
  %i.hw = ptrtoaddr ptr %i.hv to i64
  %i.hx = xor i64 %i.hw, -1
  %scevgep.i = getelementptr i8, ptr %i.hv, i64 %i.hx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.ib, %.critedge2.i ], [ %i.hv, %.lr.ph.preheader.i ] ; 5 uses
  %i.hy = load i8, ptr %.015.i, align 1, !tbaa !82
  switch i8 %i.hy, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.s
  ]

bb.s:                                             ; preds = %.lr.ph.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !82
  %.not14.i = icmp eq i8 %i.ia, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.s, %.lr.ph.i
  %i.ib = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ib, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.lr.ph.i, %bb.s, %.critedge2.i, %bb.r
  %.0.lcssa.i = phi ptr [ inttoptr (i64 -1 to ptr), %bb.r ], [ %.015.i, %bb.s ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ]
  call void @_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(224) %i.he, ptr noundef %i.hf, float noundef %i.hg, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.ht, ptr noundef %i.hv, ptr noundef %.0.lcssa.i, float noundef 0.000000e+00, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %bb.c, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %.0178, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ic, %i.an
  br i1 %.not, label %._crit_edge, label %bb.b

bb.u:                                             ; preds = %._crit_edge
  %i.id = load ptr, ptr %i.s, align 8, !tbaa !408
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.id, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.d, i32 noundef -16711681, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui26DebugRenderKeyboardPreviewEP10ImDrawList(ptr noundef %0) local_unnamed_addr #12 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 8 uses
  %5 = alloca %struct.ImVec2, align 8             ; 6 uses
  %6 = alloca %struct.ImVec2, align 8             ; 5 uses
  %7 = alloca %struct.ImVec2, align 8             ; 5 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4568
  %i.c = load float, ptr %i.b, align 8, !tbaa !410
  %i.d = fdiv float %i.c, 1.300000e+01            ; 3 uses
  %i.e = insertelement <2 x float> poison, float %i.d, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.g = fmul <2 x float> %i.f, <float 5.000000e+00, float 3.000000e+00> ; 2 uses
  %i.h = fmul float %i.d, 2.000000e+00            ; 2 uses
  %i.i = fmul <2 x float> %i.f, <float 7.000000e+00, float 4.000000e+00>
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !289
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.l, align 8, !tbaa !75 ; 5 uses
  store <2 x float> %.sroa.0.0.copyload.i, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.m = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 2 uses
  %i.n = fmul <2 x float> %i.f, <float 9.000000e+00, float 3.500000e+01> ; 3 uses
  %i.o = fadd <2 x float> %i.n, <float -0.000000e+00, float -1.000000e+00> ; 3 uses
  %i.p = extractelement <2 x float> %i.o, i64 1   ; 3 uses
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 3.000000e+00, float %i.m)
  %i.r = insertelement <2 x float> %.sroa.0.0.copyload.i, float %i.q, i64 0
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> <float 2.000000e+00, float 3.000000e+00>, <2 x float> %i.r)
  %i.t = fadd <2 x float> %i.s, splat (float 1.000000e+01) ; 2 uses
  store <2 x float> %i.t, ptr %2, align 8, !tbaa !75
  %i.u = fadd float %i.m, 5.000000e+00
  %i.v = fsub float %i.u, %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.w = fsub <2 x float> %i.t, %.sroa.0.0.copyload.i
  store <2 x float> %i.w, ptr %3, align 8
  call void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.x = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 7856
  %i.z = load i32, ptr %i.y, align 8, !tbaa !670
  %i.aa = and i32 %i.z, 256
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = fmul float %i.d, 2.500000e+01
  call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i1 noundef zeroext true)
  %i.ac = extractelement <2 x float> %i.g, i64 1  ; 3 uses
  %i.ad = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 0, i32 3>
  %i.ag = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i

bb.c:                                             ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59
  call void @_ZN10ImDrawList11PopClipRectEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  br label %bb.e

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i:         ; preds = %bb.b, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr @__const._ZN5ImGui26DebugRenderKeyboardPreviewEP10ImDrawList.keys_to_display, i64 %indvars.iv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.ai = load <2 x i32>, ptr %i.ah, align 8, !tbaa !237
  %i.aj = sitofp <2 x i32> %i.ai to <2 x float>   ; 2 uses
  %i.ak = extractelement <2 x float> %i.aj, i64 1
  %i.al = call float @llvm.fmuladd.f32(float %i.ak, float %i.p, float %i.v)
  %i.am = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = insertelement <2 x float> %.sroa.0.0.copyload.i, float %i.al, i64 0
  %i.ao = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.af, <2 x float> %i.an) ; 2 uses
  store <2 x float> %i.ao, ptr %4, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.ap = fadd <2 x float> %i.ag, %i.ao
  store <2 x float> %i.ap, ptr %5, align 8
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -3355444, float noundef %i.ac, i32 noundef 0)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -15198184, float noundef %i.ac, float noundef 1.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.aq = load <2 x float>, ptr %4, align 8, !tbaa !75
  %i.ar = fadd <2 x float> %i.g, %i.aq            ; 2 uses
  store <2 x float> %i.ar, ptr %6, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.as = fadd <2 x float> %i.ae, %i.ar
  store <2 x float> %i.as, ptr %7, align 8, !tbaa !75
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef -4079167, float noundef %i.h, float noundef 2.000000e+00, i32 noundef 0)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef -197380, float noundef %i.h, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.at = load <2 x float>, ptr %4, align 8, !tbaa !75
  %i.au = fadd <2 x float> %i.i, %i.at
  store <2 x float> %i.au, ptr %8, align 8, !tbaa !75
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1592
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef -12566464, ptr noundef %i.aw, ptr noundef null)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !1593 ; 4 uses
  %i.az = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.ba = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ay)
  %i.bb = icmp eq i32 %i.ba, 1
  %i.bc = sext i32 %i.ay to i64                   ; 2 uses
  %i.bd = getelementptr [16 x i8], ptr %i.az, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 -7884
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !239, !range !100, !noundef !236
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
  %i.bl = getelementptr i8, ptr %i.bk, i64 -572
  %i.bm = load i8, ptr %i.bl, align 4, !tbaa !526, !range !100, !noundef !236
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread:        ; preds = %switch.early.test.split.i.i.i.i, %switch.early.test.i.i.i.i, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -2147483393, float noundef %i.ac, i32 noundef 0)
  br label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59:      ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %bb.c, label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i, !llvm.loop !1590

bb.e:                                             ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  ret void
}
end_hunk_1
begin_hunk_2_@_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb:bb.a
  %i.bv = fcmp ogt <4 x float> %i.bi, %i.bt
  %i.bw = shufflevector <4 x i1> %i.bu, <4 x i1> %i.bv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bx = select <4 x i1> %i.bw, <4 x float> %i.bt, <4 x float> %i.bi ; 2 uses
  %i.by = add i32 %.02752.us, 3                   ; 2 uses
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %5, i32 noundef 3, i32 noundef -16711681, float noundef 1.000000e+00, i32 noundef 512)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.bz = icmp ult i32 %i.by, %i.k
  br i1 %i.bz, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !1752

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ca = load i32, ptr %i.m, align 8, !tbaa !1098
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %i.cc = load ptr, ptr %i.o, align 8, !tbaa !1100
  %i.cd = load i32, ptr %i.p, align 8, !tbaa !1101
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [20 x i8], ptr %i.cc, i64 %i.ce ; 3 uses
  br label %_ZN6ImRect3AddERK6ImVec2.exit.2

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.cg = load ptr, ptr %i.n, align 8, !tbaa !1099 ; 4 uses
  %i.ch = load ptr, ptr %i.o, align 8, !tbaa !1100
  %i.ci = load i32, ptr %i.p, align 8, !tbaa !1101
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [20 x i8], ptr %i.ch, i64 %i.cj ; 3 uses
  %.not.us68 = icmp eq ptr %i.cg, null            ; 3 uses
  br label %.preheader.us67.preheader

.preheader.us67.preheader:                        ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us75.2, %.lr.ph.split.split.us
  %.02752.us59 = phi i32 [ %i.h, %.lr.ph.split.split.us ], [ %i.eb, %_ZN6ImRect3AddERK6ImVec2.exit.us75.2 ] ; 5 uses
  %i.cl = phi <4 x float> [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, %.lr.ph.split.split.us ], [ %i.ea, %_ZN6ImRect3AddERK6ImVec2.exit.us75.2 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  br i1 %.not.us68, label %_ZN6ImRect3AddERK6ImVec2.exit.us75, label %bb.e

bb.e:                                             ; preds = %.preheader.us67.preheader
  %i.cm = zext i32 %.02752.us59 to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !255
  %i.cp = zext i16 %i.co to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us75

_ZN6ImRect3AddERK6ImVec2.exit.us75:               ; preds = %bb.e, %.preheader.us67.preheader
  %i.cq = phi i32 [ %i.cp, %bb.e ], [ %.02752.us59, %.preheader.us67.preheader ]
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [20 x i8], ptr %i.ck, i64 %i.cr
  %i.ct = load <2 x float>, ptr %i.cs, align 4, !tbaa !75
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.cv = fcmp olt <4 x float> %i.cl, %i.cu
  %i.cw = fcmp ogt <4 x float> %i.cl, %i.cu
  %i.cx = shufflevector <4 x i1> %i.cv, <4 x i1> %i.cw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cy = select <4 x i1> %i.cx, <4 x float> %i.cu, <4 x float> %i.cl ; 3 uses
  %i.cz = add nuw i32 %.02752.us59, 1             ; 2 uses
  br i1 %.not.us68, label %_ZN6ImRect3AddERK6ImVec2.exit.us75.1, label %bb.f

bb.f:                                             ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us75
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !255
  %i.dd = zext i16 %i.dc to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us75.1

_ZN6ImRect3AddERK6ImVec2.exit.us75.1:             ; preds = %bb.f, %_ZN6ImRect3AddERK6ImVec2.exit.us75
  %i.de = phi i32 [ %i.dd, %bb.f ], [ %i.cz, %_ZN6ImRect3AddERK6ImVec2.exit.us75 ]
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [20 x i8], ptr %i.ck, i64 %i.df
  %i.dh = load <2 x float>, ptr %i.dg, align 4, !tbaa !75
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.dj = fcmp olt <4 x float> %i.cy, %i.di
  %i.dk = fcmp ogt <4 x float> %i.cy, %i.di
  %i.dl = shufflevector <4 x i1> %i.dj, <4 x i1> %i.dk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dm = select <4 x i1> %i.dl, <4 x float> %i.di, <4 x float> %i.cy ; 3 uses
  %i.dn = add i32 %.02752.us59, 2                 ; 2 uses
  br i1 %.not.us68, label %_ZN6ImRect3AddERK6ImVec2.exit.us75.2, label %bb.g

bb.g:                                             ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us75.1
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !255
  %i.dr = zext i16 %i.dq to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us75.2

_ZN6ImRect3AddERK6ImVec2.exit.us75.2:             ; preds = %bb.g, %_ZN6ImRect3AddERK6ImVec2.exit.us75.1
  %i.ds = phi i32 [ %i.dr, %bb.g ], [ %i.dn, %_ZN6ImRect3AddERK6ImVec2.exit.us75.1 ]
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [20 x i8], ptr %i.ck, i64 %i.dt
  %i.dv = load <2 x float>, ptr %i.du, align 4, !tbaa !75
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.dx = fcmp olt <4 x float> %i.dm, %i.dw
  %i.dy = fcmp ogt <4 x float> %i.dm, %i.dw
  %i.dz = shufflevector <4 x i1> %i.dx, <4 x i1> %i.dy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ea = select <4 x i1> %i.dz, <4 x float> %i.dw, <4 x float> %i.dm ; 2 uses
  %i.eb = add i32 %.02752.us59, 3                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.ec = icmp ult i32 %i.eb, %i.k
  br i1 %i.ec, label %.preheader.us67.preheader, label %._crit_edge, !llvm.loop !1752

._crit_edge.loopexit120:                          ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.2
  %i.ed = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us75.2, %_ZN6ImRect3AddERK6ImVec2.exit.us.2, %._crit_edge.loopexit120, %bb.a
  %i.ee = phi <4 x float> [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, %bb.a ], [ %i.bx, %_ZN6ImRect3AddERK6ImVec2.exit.us.2 ], [ %i.ed, %._crit_edge.loopexit120 ], [ %i.ea, %_ZN6ImRect3AddERK6ImVec2.exit.us75.2 ]
  br i1 %4, label %bb.h, label %bb.i

_ZN6ImRect3AddERK6ImVec2.exit.2:                  ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.2, %.lr.ph.split.split.preheader
  %.02752 = phi i32 [ %i.fd, %_ZN6ImRect3AddERK6ImVec2.exit.2 ], [ %i.h, %.lr.ph.split.split.preheader ] ; 4 uses
  %i.ef = phi <4 x float> [ %i.fc, %_ZN6ImRect3AddERK6ImVec2.exit.2 ], [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %.lr.ph.split.split.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %.pre = zext i32 %.02752 to i64
  %i.eg = getelementptr inbounds nuw [20 x i8], ptr %i.cf, i64 %.pre
  %i.eh = load <2 x float>, ptr %i.eg, align 4, !tbaa !75
  %i.ei = add nuw i32 %.02752, 1
  %.pre100 = zext i32 %i.ei to i64
  %i.ej = getelementptr inbounds nuw [20 x i8], ptr %i.cf, i64 %.pre100
  %i.ek = load <2 x float>, ptr %i.ej, align 4, !tbaa !75
  %i.el = add i32 %.02752, 2
  %.pre102 = zext i32 %i.el to i64
  %i.em = getelementptr inbounds nuw [20 x i8], ptr %i.cf, i64 %.pre102
  %i.en = load <2 x float>, ptr %i.em, align 4, !tbaa !75
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
  %i.fd = add i32 %.02752, 3                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.fe = icmp ult i32 %i.fd, %i.k
  br i1 %i.fe, label %_ZN6ImRect3AddERK6ImVec2.exit.2, label %._crit_edge.loopexit120, !llvm.loop !1753

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.ff = fptosi <2 x float> %i.a to <2 x i32>
  %i.fg = sitofp <2 x i32> %i.ff to <2 x float>
  store <2 x float> %i.fg, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.fh = fptosi <2 x float> %i.c to <2 x i32>
  %i.fi = sitofp <2 x i32> %i.fh to <2 x float>
  store <2 x float> %i.fi, ptr %7, align 8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef -65281, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.fj = fptosi <4 x float> %i.ee to <4 x i32>
  %i.fk = sitofp <4 x i32> %i.fj to <4 x float>   ; 2 uses
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  store <2 x float> %i.fl, ptr %8, align 8
  %i.fm = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.fm, ptr %9, align 8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9, i32 noundef -256, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  store i32 %i.e, ptr %i.d, align 8, !tbaa !1103
  ret void
}

declare void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, i32 noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN11ImFontAtlas10RemoveFontEP6ImFont(ptr noundef nonnull align 8 dereferenceable(760), ptr noundef) local_unnamed_addr #2

declare void @_Z27ImFontAtlasFontDiscardBakesP11ImFontAtlasP6ImFonti(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui11TextWrappedEPKcz(ptr noundef, ...) local_unnamed_addr #2

declare noundef ptr @_ZN11ImFontBaked9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(104), i16 noundef zeroext) local_unnamed_addr #2

declare void @_Z36ImFontAtlasBuildGetOversampleFactorsP12ImFontConfigP11ImFontBakedPiS3_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui29DebugNodeFontGlyphsForSrcMaskEP6ImFontP11ImFontBakedi(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 7 uses
  %4 = alloca %struct.ImVec2, align 8             ; 6 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !679
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !408  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3532
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3536
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 3220
  %i.i = load float, ptr %i.h, align 4, !tbaa !383
  %i.j = load <4 x float>, ptr %i.g, align 4, !tbaa !75 ; 2 uses
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !75
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
  %i.t = load float, ptr %i.s, align 4, !tbaa !1024 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 3304
  %i.v = load float, ptr %i.u, align 8, !tbaa !1757
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
  %.06076 = phi i32 [ 0, %bb.a ], [ %i.de, %bb.s ] ; 12 uses
  %i.ae = and i32 %.06076, 8191
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.c
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.af = or disjoint i32 %.06076, 8191
  %i.ag = call noundef zeroext i1 @_ZN6ImFont18IsGlyphRangeUnusedEjj(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %.06076, i32 noundef %i.af)
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
  %i.al = call noundef zeroext i1 @_ZN11ImFontBaked13IsGlyphLoadedEt(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext %i.ak)
  br i1 %i.al, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.am = call noundef ptr @_ZN11ImFontBaked9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext %i.ak) ; 2 uses
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
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !1754

bb.j:                                             ; preds = %bb.f
  %i.at = zext nneg i32 %.06076 to i64
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = add nuw nsw i32 %.06076, 255
  %.not64 = icmp eq i32 %.1, 1
  %i.aw = select i1 %.not64, ptr @.str.487, ptr @.str.486
  %i.ax = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.au, ptr noundef nonnull @.str.485, i32 noundef %.06076, i32 noundef %i.av, i32 noundef %.1, ptr noundef nonnull %i.aw)
  br i1 %i.ax, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 5312
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !289
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 280
  %.sroa.0.0.copyload.i68 = load <2 x float>, ptr %i.bb, align 8, !tbaa !75
  br label %bb.m

bb.l:                                             ; preds = %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store <2 x float> %i.z, ptr %5, align 8, !tbaa !75
  call void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.s

bb.m:                                             ; preds = %bb.k, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread
  %.075 = phi i32 [ 0, %bb.k ], [ %i.dd, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.bc = and i32 %.075, 15
  %i.bd = lshr i32 %.075, 4
  %i.be = uitofp nneg i32 %i.bc to float
  %i.bf = uitofp nneg i32 %i.bd to float
  %i.bg = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.bf, i64 1
  %i.bi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.ab, <2 x float> %.sroa.0.0.copyload.i68) ; 2 uses
  store <2 x float> %i.bi, ptr %3, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.bj = fadd <2 x float> %i.ad, %i.bi
  store <2 x float> %i.bj, ptr %4, align 8, !tbaa !75
  %i.bk = add nuw nsw i32 %.075, %.06076
  %i.bl = trunc i32 %i.bk to i16                  ; 3 uses
  %i.bm = call noundef zeroext i1 @_ZN11ImFontBaked13IsGlyphLoadedEt(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext %i.bl)
  br i1 %i.bm, label %bb.n, label %.thread70

.thread70:                                        ; preds = %bb.m
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef 855638015, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  br label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bn = call noundef ptr @_ZN11ImFontBaked9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext %i.bl) ; 3 uses
  %.not65 = icmp eq ptr %i.bn, null               ; 2 uses
  %i.bo = select i1 %.not65, i32 855638015, i32 1694498815
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.bo, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
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
  call void @_ZN6ImFont10RenderCharEP10ImDrawListfRK6ImVec2jtPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull %i.f, float noundef %i.t, ptr noundef nonnull align 4 dereferenceable(8) %3, i32 noundef %i.r, i16 noundef zeroext %i.bl, ptr noundef null)
  %i.bv = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %i.bw = load <2 x float>, ptr %3, align 8, !tbaa !75 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 5312
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !289 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 616
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.bw, i64 0 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !249 ; 2 uses
  %.inv.i.i.i = fcmp oge float %.sroa.0.0.vec.extract.i, %i.ca
  %..i.i.i = select i1 %.inv.i.i.i, float %.sroa.0.0.vec.extract.i, float %i.ca
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 272
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 3324
  %i.cd = load float, ptr %i.cb, align 8, !tbaa !249 ; 2 uses
  %i.ce = load float, ptr %i.cc, align 4, !tbaa !249 ; 2 uses
  %i.cf = fsub float %..i.i.i, %i.ce
  %i.cg = fcmp ult float %i.cd, %i.cf
  br i1 %i.cg, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = load <2 x float>, ptr %4, align 8, !tbaa !75 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 624
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.bw, i64 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 620
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !250 ; 2 uses
  %.inv12.i.i.i = fcmp oge float %.sroa.0.4.vec.extract.i, %i.ck
  %i.cl = select i1 %.inv12.i.i.i, float %.sroa.0.4.vec.extract.i, float %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bv, i64 276
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !250 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bv, i64 3328
  %i.cp = load float, ptr %i.co, align 8, !tbaa !250 ; 2 uses
  %i.cq = fsub float %i.cl, %i.cp
  %i.cr = fcmp oge float %i.cn, %i.cq
  %i.cs = load <2 x float>, ptr %i.ci, align 4, !tbaa !75 ; 2 uses
  %i.ct = fcmp olt <2 x float> %i.ch, %i.cs
  %i.cu = select <2 x i1> %i.ct, <2 x float> %i.ch, <2 x float> %i.cs
  %i.cv = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.cp, i64 1
  %i.cx = fadd <2 x float> %i.cw, %i.cu           ; 2 uses
  %i.cy = extractelement <2 x float> %i.cx, i64 0
  %i.cz = fcmp olt float %i.cd, %i.cy
  %or.cond.i = select i1 %i.cr, i1 %i.cz, i1 false
  %i.da = extractelement <2 x float> %i.cx, i64 1
  %i.db = fcmp olt float %i.cn, %i.da
  %or.cond = select i1 %or.cond.i, i1 %i.db, i1 false
  br i1 %or.cond, label %bb.r, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.dc = call noundef zeroext i1 @_ZN5ImGui14BeginTooltipExEii(i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui18DebugNodeFontGlyphEP6ImFontPK11ImFontGlyph(ptr noundef nonnull %0, ptr noundef nonnull %i.bn)
  call void @_ZN5ImGui3EndEv()
  br label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread: ; preds = %bb.p, %bb.q, %.thread70, %bb.r, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.dd = add nuw nsw i32 %.075, 1                ; 2 uses
  %exitcond77.not = icmp eq i32 %i.dd, 256
  br i1 %exitcond77.not, label %bb.l, label %bb.m, !llvm.loop !1755

bb.s:                                             ; preds = %bb.l, %bb.f, %bb.j, %bb.e
  %.161 = phi i32 [ %i.ah, %bb.e ], [ %.06076, %bb.j ], [ %.06076, %bb.f ], [ %.06076, %bb.l ]
  %i.de = add i32 %.161, 256                      ; 2 uses
  %i.df = icmp ult i32 %i.de, 65536
  br i1 %i.df, label %bb.c, label %bb.b, !llvm.loop !1756
}

declare noundef zeroext i1 @_ZN6ImFont18IsGlyphRangeUnusedEjj(ptr noundef nonnull align 8 dereferenceable(76), i32 noundef, i32 noundef) local_unnamed_addr #2

end_hunk_2
