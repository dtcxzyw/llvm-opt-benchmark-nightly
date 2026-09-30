Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.bnf = load ptr, ptr %i.bne, align 8, !tbaa !757 ; 2 uses
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnf, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.bng, align 8, !tbaa !435
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bnf, i64 48
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !436
  call void @_ZN10ImDrawList11PushTextureE12ImTextureRef(ptr noundef nonnull align 8 dereferenceable(224) %i.bnb, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
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
  %31 = lshr i32 %i.bqj, 24
  %32 = and i32 %31, 1
  %..i.i675 = or disjoint i32 %32, 2
  %.0.i.i = select i1 %.not.i.i674, i32 %..i.i675, i32 4
  %i.brr = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3532
  %33 = zext nneg i32 %.0.i.i to i64
  %i.brs = getelementptr inbounds nuw [16 x i8], ptr %i.brr, i64 %33 ; 3 uses
  %.sroa.0.0.copyload.i112.i = load float, ptr %i.brs, align 4, !tbaa !75
  %.sroa.4.0..sroa_idx.i113.i = getelementptr inbounds nuw i8, ptr %i.brs, i64 4
  %.sroa.6.0..sroa_idx.i117.i = getelementptr inbounds nuw i8, ptr %i.brs, i64 12
  %.sroa.6.0.copyload.i118.i = load float, ptr %.sroa.6.0..sroa_idx.i117.i, align 4, !tbaa !75
  %i.brt = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3220
  %i.bru = load float, ptr %i.brt, align 4, !tbaa !383
  %i.brv = fmul float %.sroa.6.0.copyload.i118.i, %i.bru
  %i.brw = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i113.i, align 4, !tbaa !75 ; 3 uses
  %i.brx = fcmp olt <2 x float> %i.brw, zeroinitializer
  %i.bry = fcmp ogt <2 x float> %i.brw, splat (float 1.000000e+00)
  %i.brz = select <2 x i1> %i.bry, <2 x float> splat (float 1.000000e+00), <2 x float> %i.brw
  %i.bsa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.brz, <2 x float> splat (float 2.550000e+02), <2 x float> splat (float 5.000000e-01))
  %i.bsb = select <2 x i1> %i.brx, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bsa
  %i.bsc = fptosi <2 x float> %i.bsb to <2 x i32>
  %i.bsd = shl <2 x i32> %i.bsc, <i32 8, i32 16>  ; 2 uses
  %i.bse = extractelement <2 x i32> %i.bsd, i64 0
  %i.bsf = extractelement <2 x i32> %i.bsd, i64 1
  %i.bsg = insertelement <2 x float> poison, float %.sroa.0.0.copyload.i112.i, i64 0
  %i.bsh = insertelement <2 x float> %i.bsg, float %i.brv, i64 1 ; 3 uses
  %i.bsi = fcmp ogt <2 x float> %i.bsh, splat (float 1.000000e+00)
  %i.bsj = select <2 x i1> %i.bsi, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bsh
  %i.bsk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bsj, <2 x float> splat (float 2.550000e+02), <2 x float> splat (float 5.000000e-01))
  %i.bsl = fcmp olt <2 x float> %i.bsh, zeroinitializer
  %i.bsm = select <2 x i1> %i.bsl, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bsk ; 2 uses
  %i.bsn = extractelement <2 x float> %i.bsm, i64 0
  %i.bso = fptosi float %i.bsn to i32
  %i.bsp = or i32 %i.bse, %i.bso
  %i.bsq = or i32 %i.bsp, %i.bsf                  ; 2 uses
  %i.bsr = extractelement <2 x float> %i.bsm, i64 1
  %i.bss = fptosi float %i.bsr to i32
  %i.bst = shl i32 %i.bss, 24
  %i.bsu = or i32 %i.bst, %i.bsq
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bqh, i64 7928
  %i.bsw = load i32, ptr %i.bsv, align 8, !tbaa !852
  %i.bsx = and i32 %i.bsw, 64
  %.not105.not.i = icmp eq i32 %i.bsx, 0
  br i1 %.not105.not.i, label %.critedge.i676, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bqh, i64 8032
  %i.bsz = load float, ptr %i.bsy, align 8, !tbaa !853 ; 3 uses
  %i.bta = and i32 %i.bsq, 16777215
  %i.btb = fcmp olt float %i.bsz, 0.000000e+00
  %i.btc = fcmp ogt float %i.bsz, 1.000000e+00
  %i.btd = select i1 %i.btc, float 1.000000e+00, float %i.bsz
  %i.bte = call float @llvm.fmuladd.f32(float %i.btd, float 2.550000e+02, float 5.000000e-01)
  %i.btf = select i1 %i.btb, float 5.000000e-01, float %i.bte
  %i.btg = fptosi float %i.btf to i32
  %i.bth = shl i32 %i.btg, 24
  %i.bti = or disjoint i32 %i.bth, %i.bta
  br label %.critedge.i676

.critedge.i676:                                   ; preds = %bb.lj, %bb.li
  %.0103.i = phi i32 [ %i.bti, %bb.lj ], [ %i.bsu, %bb.li ] ; 2 uses
  %.not106.i = icmp ult i32 %.0103.i, 16777216
  br i1 %.not106.i, label %bb.ll, label %bb.lk

bb.lk:                                            ; preds = %.critedge.i676
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  %i.btj = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40
  %i.btk = getelementptr inbounds nuw i8, ptr %i.bqf, i64 104
  %i.btl = load float, ptr %i.btk, align 8, !tbaa !724
  %i.btm = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48
  %i.btn = load <2 x float>, ptr %i.btj, align 8, !tbaa !75 ; 2 uses
  %i.bto = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.btl, i64 1
  %i.btp = fadd <2 x float> %i.bto, %i.btn
  %i.btq = load <2 x float>, ptr %i.btm, align 8, !tbaa !75
  %i.btr = fadd <2 x float> %i.btn, %i.btq
  store <2 x float> %i.btp, ptr %15, align 8, !tbaa !75
  %i.bts = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store <2 x float> %i.btr, ptr %i.bts, align 8, !tbaa !75
  %i.btt = and i32 %i.bqj, 1
  %.not107.i = icmp eq i32 %i.btt, 0
  %i.btu = select i1 %.not107.i, i32 192, i32 240
  %i.btv = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712
  %i.btw = load ptr, ptr %i.btv, align 8, !tbaa !408
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.btw, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %i.bts, i32 noundef %.0103.i, float noundef %i.bqn, i32 noundef %i.btu)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %.critedge.i676, %bb.lh
  %i.btx = and i32 %i.bqj, 1
  %.not108.i = icmp eq i32 %i.btx, 0              ; 2 uses
  br i1 %.not108.i, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll
  %i.bty = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.btz = getelementptr inbounds nuw i8, ptr %i.bty, i64 3532
  %i.bua = select i1 %i.bqg, i64 11, i64 10
  %i.bub = getelementptr inbounds nuw [16 x i8], ptr %i.btz, i64 %i.bua
  %i.buc = getelementptr inbounds nuw i8, ptr %i.bty, i64 3220
  %i.bud = load float, ptr %i.buc, align 4, !tbaa !383
  %i.bue = load <4 x float>, ptr %i.bub, align 4, !tbaa !75
  %i.buf = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bud, i64 3
  %i.bug = fmul <4 x float> %i.bue, %i.buf        ; 3 uses
  %i.buh = fcmp olt <4 x float> %i.bug, zeroinitializer
  %i.bui = fcmp ogt <4 x float> %i.bug, splat (float 1.000000e+00)
  %i.buj = select <4 x i1> %i.bui, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bug
  %i.buk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.buj, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bul = select <4 x i1> %i.buh, <4 x float> splat (float 5.000000e-01), <4 x float> %i.buk
  %i.bum = fptosi <4 x float> %i.bul to <4 x i32>
  %i.bun = shl <4 x i32> %i.bum, <i32 0, i32 8, i32 16, i32 24>
  %i.buo = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bun)
  %i.bup = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712
  %i.buq = load ptr, ptr %i.bup, align 8, !tbaa !408
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.buq, ptr noundef nonnull align 4 dereferenceable(16) %30, ptr noundef nonnull align 4 dereferenceable(8) %i.bkb, i32 noundef %i.buo, float noundef %i.bqn, i32 noundef 48)
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.ll
  %i.bur = and i32 %i.bqj, 1024
  %.not109.i = icmp eq i32 %i.bur, 0
  br i1 %.not109.i, label %bb.ls, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40
  %i.but = getelementptr inbounds nuw i8, ptr %i.bqf, i64 104
  %i.buu = load float, ptr %i.but, align 8, !tbaa !724
  %i.buv = getelementptr inbounds nuw i8, ptr %i.bqf, i64 56
  %i.buw = load float, ptr %i.buv, align 8, !tbaa !725
  %i.bux = getelementptr inbounds nuw i8, ptr %i.bqf, i64 108
  %i.buy = load float, ptr %i.bux, align 4, !tbaa !930
  %i.buz = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.bva = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48
  %i.bvb = load <2 x float>, ptr %i.bus, align 8, !tbaa !75 ; 4 uses
  %i.bvc = extractelement <2 x float> %i.bvb, i64 1 ; 3 uses
  %i.bvd = fadd float %i.bvc, %i.buu              ; 3 uses
  %i.bve = insertelement <2 x float> %i.bvb, float %i.bvd, i64 1
  %i.bvf = insertelement <2 x float> poison, float %i.buw, i64 0
  %i.bvg = insertelement <2 x float> %i.bvf, float %i.buy, i64 1
  %i.bvh = fadd <2 x float> %i.bve, %i.bvg        ; 2 uses
  %i.bvi = load <2 x float>, ptr %i.bva, align 8, !tbaa !75
  %i.bvj = fadd <2 x float> %i.bvb, %i.bvi        ; 2 uses
  %.inv12.i.i.i = fcmp oge float %i.bvd, %i.bvc
  %i.bvk = select i1 %.inv12.i.i.i, float %i.bvd, float %i.bvc
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %i.bvb, float %i.bvk, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %16, align 16, !tbaa !75
  %i.bvl = fcmp ogt <2 x float> %i.bvj, %i.bvh
  %i.bvm = select <2 x i1> %i.bvl, <2 x float> %i.bvh, <2 x float> %i.bvj
  store <2 x float> %i.bvm, ptr %i.buz, align 8, !tbaa !75
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712 ; 2 uses
  %i.bvo = load ptr, ptr %i.bvn, align 8, !tbaa !408
  %i.bvp = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvp, i64 3740
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bvp, i64 3220
  %i.bvs = load float, ptr %i.bvr, align 4, !tbaa !383
  %i.bvt = load <4 x float>, ptr %i.bvq, align 4, !tbaa !75
  %i.bvu = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bvs, i64 3
  %i.bvv = fmul <4 x float> %i.bvt, %i.bvu        ; 3 uses
  %i.bvw = fcmp olt <4 x float> %i.bvv, zeroinitializer
  %i.bvx = fcmp ogt <4 x float> %i.bvv, splat (float 1.000000e+00)
  %i.bvy = select <4 x i1> %i.bvx, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bvv
  %i.bvz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bvy, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bwa = select <4 x i1> %i.bvw, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bvz
  %i.bwb = fptosi <4 x float> %i.bwa to <4 x i32>
  %i.bwc = shl <4 x i32> %i.bwb, <i32 0, i32 8, i32 16, i32 24>
  %i.bwd = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bwc)
  %i.bwe = select i1 %.not108.i, float 0.000000e+00, float %i.bqn
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bvo, ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(8) %i.buz, i32 noundef %i.bwd, float noundef %i.bwe, i32 noundef 48)
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3296
  %i.bwg = load float, ptr %i.bwf, align 4, !tbaa !1453 ; 2 uses
  %i.bwh = fcmp ogt float %i.bwg, 0.000000e+00
  br i1 %i.bwh, label %bb.lp, label %bb.lr

bb.lp:                                            ; preds = %bb.lo
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bqf, i64 52
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bqf, i64 44
  %i.bwk = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.bwl = load float, ptr %i.bwk, align 4, !tbaa !378 ; 2 uses
  %i.bwm = load float, ptr %i.bwj, align 4, !tbaa !735
  %i.bwn = load float, ptr %i.bwi, align 4, !tbaa !616
  %i.bwo = fadd float %i.bwm, %i.bwn
  %i.bwp = fcmp olt float %i.bwl, %i.bwo
  br i1 %i.bwp, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.bwq = load ptr, ptr %i.bvn, align 8, !tbaa !408
  %i.bwr = load <4 x float>, ptr %16, align 16
  %i.bws = shufflevector <4 x float> %i.bwr, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bwt = load float, ptr %i.buz, align 8, !tbaa !374
  %i.bwu = fneg float %i.bqp
  %i.bwv = insertelement <2 x float> poison, float %i.bqp, i64 0
  %i.bww = insertelement <2 x float> %i.bwv, float %i.bwu, i64 1
  %i.bwx = insertelement <2 x float> %i.bws, float %i.bwt, i64 1
  %i.bwy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bww, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bwx) ; 2 uses
  %i.bwz = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bwz, i64 3612
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bwz, i64 3220
  %i.bxc = load float, ptr %i.bxb, align 4, !tbaa !383
  %i.bxd = load <4 x float>, ptr %i.bxa, align 4, !tbaa !75
  %i.bxe = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bxc, i64 3
  %i.bxf = fmul <4 x float> %i.bxd, %i.bxe        ; 3 uses
  %i.bxg = fcmp olt <4 x float> %i.bxf, zeroinitializer
  %i.bxh = fcmp ogt <4 x float> %i.bxf, splat (float 1.000000e+00)
  %i.bxi = select <4 x i1> %i.bxh, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bxf
  %i.bxj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bxi, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bxk = select <4 x i1> %i.bxg, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bxj
  %i.bxl = fptosi <4 x float> %i.bxk to <4 x i32>
  %i.bxm = shl <4 x i32> %i.bxl, <i32 0, i32 8, i32 16, i32 24>
  %i.bxn = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bxm)
end_hunk_0
