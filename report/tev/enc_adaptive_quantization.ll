Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_adaptive_quantization?download=true
inline.NumInlined: 2912
inline.NumDeleted: 1466
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 42
begin_hunk_0_@"_ZZN3jxl6N_AVX212_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPNS_10ThreadPoolEPNS_5PlaneIfEESE_ENK3$_1clEjm":bb.a
  %i.aau = fadd <8 x float> %i.aak, %i.aal        ; 2 uses
  %i.aav = tail call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.aau, <8 x float> zeroinitializer, <8 x float> %i.aau) ; 3 uses
  %i.aaw = fmul <8 x float> %i.aav, %i.aav        ; 2 uses
  %i.aax = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.aaw, <8 x float> splat (float f0x42EFD02B), <8 x float> splat (float f0x3C23D70A))
  %i.aay = fmul <8 x float> %i.aav, splat (float f0x431D2FBD)
  %i.aaz = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.aay, <8 x float> %i.aaw, <8 x float> splat (float f0x40ACF18E))
  %i.aba = fdiv <8 x float> %i.aax, %i.aaz
  %i.abb = fadd <8 x float> %i.aat, %i.aba
  %i.abc = add i64 %i.uq, 6                       ; 2 uses
  %i.abd = mul i64 %i.abc, %.val.i.us
  %i.abe = getelementptr inbounds nuw i8, ptr %.val60.i.us, i64 %i.abd ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.abe, i64 64) ]
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.abe, i64 %.val63.i.us
  %i.abg = mul i64 %i.abc, %.val61.i.us
  %i.abh = getelementptr inbounds nuw i8, ptr %.val62.i.us, i64 %i.abg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.abh, i64 64) ]
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.abh, i64 %.val63.i.us
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.abi, i64 %i.ua
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.abf, i64 %i.ua
  %i.abl = load <8 x float>, ptr %i.abj, align 32, !tbaa !24
  %i.abm = fadd <8 x float> %i.abl, splat (float 1.600000e-01) ; 2 uses
  %i.abn = load <8 x float>, ptr %i.abk, align 32, !tbaa !24 ; 2 uses
  %i.abo = fsub <8 x float> %i.abm, %i.abn        ; 2 uses
  %i.abp = tail call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.abo, <8 x float> zeroinitializer, <8 x float> %i.abo) ; 3 uses
  %i.abq = fmul <8 x float> %i.abp, %i.abp        ; 2 uses
  %i.abr = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.abq, <8 x float> splat (float f0x42EFD02B), <8 x float> splat (float f0x3C23D70A))
  %i.abs = fmul <8 x float> %i.abp, splat (float f0x431D2FBD)
  %i.abt = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.abs, <8 x float> %i.abq, <8 x float> splat (float f0x40ACF18E))
  %i.abu = fdiv <8 x float> %i.abr, %i.abt
  %i.abv = fadd <8 x float> %i.abb, %i.abu
  %i.abw = fadd <8 x float> %i.abm, %i.abn        ; 2 uses
  %i.abx = tail call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.abw, <8 x float> zeroinitializer, <8 x float> %i.abw) ; 3 uses
  %i.aby = fmul <8 x float> %i.abx, %i.abx        ; 2 uses
  %i.abz = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.aby, <8 x float> splat (float f0x42EFD02B), <8 x float> splat (float f0x3C23D70A))
  %i.aca = fmul <8 x float> %i.abx, splat (float f0x431D2FBD)
  %i.acb = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.aca, <8 x float> %i.aby, <8 x float> splat (float f0x40ACF18E))
  %i.acc = fdiv <8 x float> %i.abz, %i.acb
  %i.acd = fadd <8 x float> %i.abv, %i.acc
  %i.ace = add i64 %i.uq, 7                       ; 2 uses
  %i.acf = mul i64 %i.ace, %.val.i.us
  %i.acg = getelementptr inbounds nuw i8, ptr %.val60.i.us, i64 %i.acf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.acg, i64 64) ]
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.acg, i64 %.val63.i.us
  %i.aci = mul i64 %i.ace, %.val61.i.us
  %i.acj = getelementptr inbounds nuw i8, ptr %.val62.i.us, i64 %i.aci ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.acj, i64 64) ]
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %.val63.i.us
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.ack, i64 %i.ua
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %i.ua
  %i.acn = load <8 x float>, ptr %i.acl, align 32, !tbaa !24
  %i.aco = fadd <8 x float> %i.acn, splat (float 1.600000e-01) ; 2 uses
  %i.acp = load <8 x float>, ptr %i.acm, align 32, !tbaa !24 ; 2 uses
  %i.acq = fsub <8 x float> %i.aco, %i.acp        ; 2 uses
  %i.acr = tail call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.acq, <8 x float> zeroinitializer, <8 x float> %i.acq) ; 3 uses
  %i.acs = fmul <8 x float> %i.acr, %i.acr        ; 2 uses
  %i.act = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.acs, <8 x float> splat (float f0x42EFD02B), <8 x float> splat (float f0x3C23D70A))
  %i.acu = fmul <8 x float> %i.acr, splat (float f0x431D2FBD)
  %i.acv = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.acu, <8 x float> %i.acs, <8 x float> splat (float f0x40ACF18E))
  %i.acw = fdiv <8 x float> %i.act, %i.acv
  %i.acx = fadd <8 x float> %i.acd, %i.acw
  %i.acy = fadd <8 x float> %i.aco, %i.acp        ; 2 uses
  %i.acz = tail call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.acy, <8 x float> zeroinitializer, <8 x float> %i.acy) ; 3 uses
  %i.ada = fmul <8 x float> %i.acz, %i.acz        ; 2 uses
  %i.adb = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ada, <8 x float> splat (float f0x42EFD02B), <8 x float> splat (float f0x3C23D70A))
  %i.adc = fmul <8 x float> %i.acz, splat (float f0x431D2FBD)
  %i.add = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.adc, <8 x float> %i.ada, <8 x float> splat (float f0x40ACF18E))
  %i.ade = fdiv <8 x float> %i.adb, %i.add
  %i.adf = fadd <8 x float> %i.acx, %i.ade        ; 2 uses
  %i.adg = shufflevector <8 x float> %i.adf, <8 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.adh = fadd <8 x float> %i.adf, %i.adg        ; 2 uses
  %i.adi = shufflevector <8 x float> %i.adh, <8 x float> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.adj = fadd <8 x float> %i.adh, %i.adi        ; 2 uses
  %i.adk = shufflevector <8 x float> %i.adj, <8 x float> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.adl = fadd <8 x float> %i.adj, %i.adk
  %i.adm = fmul <8 x float> %i.adl, splat (float 7.812500e-03)
  %i.adn = bitcast <8 x float> %i.adm to <8 x i32> ; 2 uses
  %i.ado = add <8 x i32> %i.adn, splat (i32 -1059760811) ; 2 uses
  %i.adp = ashr <8 x i32> %i.ado, splat (i32 23)
  %i.adq = and <8 x i32> %i.ado, splat (i32 -8388608)
  %i.adr = sub <8 x i32> %i.adn, %i.adq
  %i.ads = bitcast <8 x i32> %i.adr to <8 x float>
  %i.adt = sitofp <8 x i32> %i.adp to <8 x float>
  %i.adu = fadd <8 x float> %i.ads, splat (float -1.000000e+00) ; 4 uses
  fence acq_rel
  %i.adv = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.adu, <8 x float> splat (float f0x3F3E11C7), <8 x float> splat (float f0x3FB6E02B))
  %i.adw = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.adu, <8 x float> splat (float f0x3E32458C), <8 x float> splat (float f0x3F813CED))
  fence acq_rel
  %i.adx = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.adv, <8 x float> %i.adu, <8 x float> splat (float f0xB5F85AB0))
  %i.ady = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.adw, <8 x float> %i.adu, <8 x float> splat (float f0x3F7D8625))
  fence acq_rel
  %i.adz = fdiv <8 x float> %i.adx, %i.ady
  %i.aea = fadd <8 x float> %i.adz, %i.adt
  %i.aeb = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.aea, <8 x float> splat (float f0x3DCDF31A), <8 x float> %i.up) ; 2 uses
  %.val65.i.us = load i64, ptr %i.tj, align 8     ; 22 uses
  %.val66.i.us = load ptr, ptr %i.tk, align 8     ; 22 uses
  %.val67.i.us = load i64, ptr %i.ab, align 8     ; 38 uses
  %.val68.i.us = load i64, ptr %i.al, align 8     ; 9 uses
  %i.aec = add i64 %.val68.i.us, 1                ; 7 uses
  %i.aed = add i64 %.val68.i.us, %i.to            ; 10 uses
  %i.aee = mul i64 %i.aed, %.val65.i.us
  %i.aef = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.aee ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aef, i64 64) ]
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.aef, i64 %.val67.i.us
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.aeg, i64 %i.ua ; 2 uses
  %i.aei = add i64 %i.aec, %i.to
  %i.aej = mul i64 %i.aei, %.val65.i.us
  %i.aek = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.aej ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aek, i64 64) ]
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %.val67.i.us
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %i.ua
  %i.aen = load <8 x float>, ptr %i.aeh, align 32, !tbaa !24 ; 3 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aeh, i64 4
  %i.aep = load <8 x float>, ptr %i.aeo, align 4, !tbaa !24
  %i.aeq = load <8 x float>, ptr %i.aem, align 32, !tbaa !24
  %i.aer = add i64 %.val68.i.us, %i.tt
  %i.aes = mul i64 %i.aer, %.val65.i.us
  %i.aet = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.aes ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aet, i64 64) ]
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.aet, i64 %.val67.i.us
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %i.ua ; 2 uses
  %i.aew = add i64 %i.aec, %i.tt
  %i.aex = mul i64 %i.aew, %.val65.i.us
  %i.aey = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.aex ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aey, i64 64) ]
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.aey, i64 %.val67.i.us
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %i.ua
  %i.afb = load <8 x float>, ptr %i.aev, align 32, !tbaa !24 ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aev, i64 4
  %i.afd = load <8 x float>, ptr %i.afc, align 4, !tbaa !24
  %i.afe = load <8 x float>, ptr %i.afa, align 32, !tbaa !24
  %i.aff = add i64 %.val68.i.us, %i.tu
  %i.afg = mul i64 %i.aff, %.val65.i.us
  %i.afh = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.afg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.afh, i64 64) ]
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.afh, i64 %.val67.i.us
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.afi, i64 %i.ua ; 2 uses
  %i.afk = add i64 %i.aec, %i.tu
  %i.afl = mul i64 %i.afk, %.val65.i.us
  %i.afm = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.afl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.afm, i64 64) ]
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.afm, i64 %.val67.i.us
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %i.ua
  %i.afp = load <8 x float>, ptr %i.afj, align 32, !tbaa !24 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afj, i64 4
  %i.afr = load <8 x float>, ptr %i.afq, align 4, !tbaa !24
  %i.afs = load <8 x float>, ptr %i.afo, align 32, !tbaa !24
  %i.aft = add i64 %.val68.i.us, %i.tv
  %i.afu = mul i64 %i.aft, %.val65.i.us
  %i.afv = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.afu ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.afv, i64 64) ]
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %.val67.i.us
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.afw, i64 %i.ua ; 2 uses
  %i.afy = add i64 %i.aec, %i.tv
  %i.afz = mul i64 %i.afy, %.val65.i.us
  %i.aga = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.afz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aga, i64 64) ]
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.aga, i64 %.val67.i.us
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %i.agb, i64 %i.ua
  %i.agd = load <8 x float>, ptr %i.afx, align 32, !tbaa !24 ; 2 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.afx, i64 4
  %i.agf = load <8 x float>, ptr %i.age, align 4, !tbaa !24
  %i.agg = load <8 x float>, ptr %i.agc, align 32, !tbaa !24
  %i.agh = add i64 %.val68.i.us, %i.tw
  %i.agi = mul i64 %i.agh, %.val65.i.us
  %i.agj = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.agi ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.agj, i64 64) ]
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.agj, i64 %.val67.i.us
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.agk, i64 %i.ua ; 2 uses
  %i.agm = add i64 %i.aec, %i.tw
  %i.agn = mul i64 %i.agm, %.val65.i.us
  %i.ago = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.agn ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ago, i64 64) ]
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.ago, i64 %.val67.i.us
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %i.ua
  %i.agr = load <8 x float>, ptr %i.agl, align 32, !tbaa !24 ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agl, i64 4
  %i.agt = load <8 x float>, ptr %i.ags, align 4, !tbaa !24
  %i.agu = load <8 x float>, ptr %i.agq, align 32, !tbaa !24
  %i.agv = add i64 %.val68.i.us, %i.tx
  %i.agw = mul i64 %i.agv, %.val65.i.us
  %i.agx = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.agw ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.agx, i64 64) ]
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %.val67.i.us
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.ua ; 2 uses
  %i.aha = add i64 %i.aec, %i.tx
  %i.ahb = mul i64 %i.aha, %.val65.i.us
  %i.ahc = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.ahb ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ahc, i64 64) ]
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %.val67.i.us
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %i.ua
  %i.ahf = load <8 x float>, ptr %i.agz, align 32, !tbaa !24 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agz, i64 4
  %i.ahh = load <8 x float>, ptr %i.ahg, align 4, !tbaa !24
  %i.ahi = load <8 x float>, ptr %i.ahe, align 32, !tbaa !24
  %i.ahj = add i64 %i.aec, %i.ty
  %i.ahk = mul i64 %i.ahj, %.val65.i.us
  %i.ahl = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.ahk ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ahl, i64 64) ]
  %i.ahm = add i64 %i.tz, %.val68.i.us
  %i.ahn = mul i64 %i.ahm, %.val65.i.us
  %i.aho = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.ahn ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aho, i64 64) ]
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %.val67.i.us
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.ua ; 2 uses
  %i.ahr = add i64 %.val68.i.us, %i.ty
  %i.ahs = mul i64 %i.ahr, %.val65.i.us
  %i.aht = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.ahs ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aht, i64 64) ]
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.aht, i64 %.val67.i.us
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %i.ua ; 2 uses
  %i.ahw = load <8 x float>, ptr %i.ahv, align 32, !tbaa !24 ; 2 uses
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %.val67.i.us
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.ahx, i64 %i.ua
  %i.ahz = load <8 x float>, ptr %i.ahy, align 32, !tbaa !24
  %i.aia = fsub <8 x float> %i.ahw, %i.ahz
  %i.aib = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aia)
  %i.aic = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> splat (float 2.060000e-02), <8 x float> %i.aib)
  %i.aid = fsub <8 x float> %i.ahf, %i.ahi
  %i.aie = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aid)
  %i.aif = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> splat (float 2.060000e-02), <8 x float> %i.aie)
  %i.aig = fsub <8 x float> %i.agr, %i.agu
  %i.aih = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aig)
  %i.aii = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> splat (float 2.060000e-02), <8 x float> %i.aih)
  %i.aij = fsub <8 x float> %i.agd, %i.agg
  %i.aik = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aij)
  %i.ail = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> splat (float 2.060000e-02), <8 x float> %i.aik)
  %i.aim = fsub <8 x float> %i.afp, %i.afs
  %i.ain = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aim)
  %i.aio = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> splat (float 2.060000e-02), <8 x float> %i.ain)
  %i.aip = fsub <8 x float> %i.afb, %i.afe
  %i.aiq = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aip)
  %i.air = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> splat (float 2.060000e-02), <8 x float> %i.aiq)
  %i.ais = fsub <8 x float> %i.aen, %i.aeq
  %i.ait = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ais)
  %i.aiu = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> splat (float 2.060000e-02), <8 x float> %i.ait)
  %i.aiv = fsub <8 x float> %i.aen, %i.aep
  %i.aiw = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aiv)
  %i.aix = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> splat (float 2.060000e-02), <8 x float> %i.aiw)
  %i.aiy = bitcast <8 x float> %i.aix to <8 x i32>
  %i.aiz = and <8 x i32> %i.aiy, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0>
  %i.aja = bitcast <8 x i32> %i.aiz to <8 x float>
  %i.ajb = fadd <8 x float> %i.aja, zeroinitializer
  %i.ajc = fadd <8 x float> %i.aiu, %i.ajb
  %i.ajd = fsub <8 x float> %i.afb, %i.afd
  %i.aje = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ajd)
  %i.ajf = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> splat (float 2.060000e-02), <8 x float> %i.aje)
  %i.ajg = bitcast <8 x float> %i.ajf to <8 x i32>
  %i.ajh = and <8 x i32> %i.ajg, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0>
  %i.aji = bitcast <8 x i32> %i.ajh to <8 x float>
  %i.ajj = fadd <8 x float> %i.ajc, %i.aji
  %i.ajk = fadd <8 x float> %i.air, %i.ajj
  %i.ajl = fsub <8 x float> %i.afp, %i.afr
  %i.ajm = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ajl)
  %i.ajn = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> splat (float 2.060000e-02), <8 x float> %i.ajm)
  %i.ajo = bitcast <8 x float> %i.ajn to <8 x i32>
  %i.ajp = and <8 x i32> %i.ajo, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0>
  %i.ajq = bitcast <8 x i32> %i.ajp to <8 x float>
  %i.ajr = fadd <8 x float> %i.ajk, %i.ajq
  %i.ajs = fadd <8 x float> %i.aio, %i.ajr
  %i.ajt = fsub <8 x float> %i.agd, %i.agf
  %i.aju = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ajt)
  %i.ajv = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> splat (float 2.060000e-02), <8 x float> %i.aju)
  %i.ajw = bitcast <8 x float> %i.ajv to <8 x i32>
  %i.ajx = and <8 x i32> %i.ajw, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0>
  %i.ajy = bitcast <8 x i32> %i.ajx to <8 x float>
  %i.ajz = fadd <8 x float> %i.ajs, %i.ajy
  %i.aka = fadd <8 x float> %i.ail, %i.ajz
  %i.akb = fsub <8 x float> %i.agr, %i.agt
  %i.akc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.akb)
  %i.akd = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> splat (float 2.060000e-02), <8 x float> %i.akc)
  %i.ake = bitcast <8 x float> %i.akd to <8 x i32>
  %i.akf = and <8 x i32> %i.ake, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0>
  %i.akg = bitcast <8 x i32> %i.akf to <8 x float>
  %i.akh = fadd <8 x float> %i.aka, %i.akg
  %i.aki = fadd <8 x float> %i.aii, %i.akh
  %i.akj = fsub <8 x float> %i.ahf, %i.ahh
  %i.akk = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.akj)
  %i.akl = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> splat (float 2.060000e-02), <8 x float> %i.akk)
  %i.akm = bitcast <8 x float> %i.akl to <8 x i32>
  %i.akn = and <8 x i32> %i.akm, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0>
  %i.ako = bitcast <8 x i32> %i.akn to <8 x float>
  %i.akp = fadd <8 x float> %i.aki, %i.ako
  %i.akq = fadd <8 x float> %i.aif, %i.akp
  %i.akr = getelementptr inbounds nuw i8, ptr %i.ahv, i64 4
  %i.aks = load <8 x float>, ptr %i.akr, align 4, !tbaa !24
  %i.akt = fsub <8 x float> %i.ahw, %i.aks
  %i.aku = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.akt)
  %i.akv = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> splat (float 2.060000e-02), <8 x float> %i.aku)
  %i.akw = bitcast <8 x float> %i.akv to <8 x i32>
  %i.akx = and <8 x i32> %i.akw, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0>
  %i.aky = bitcast <8 x i32> %i.akx to <8 x float>
  %i.akz = fadd <8 x float> %i.akq, %i.aky
  %i.ala = fadd <8 x float> %i.aic, %i.akz
  %i.alb = load <8 x float>, ptr %i.ahq, align 32, !tbaa !24 ; 3 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.ahq, i64 4
  %i.ald = load <8 x float>, ptr %i.alc, align 4, !tbaa !24
  %i.ale = fsub <8 x float> %i.alb, %i.ald
  %i.alf = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ale)
  %i.alg = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> splat (float 2.060000e-02), <8 x float> %i.alf)
  %i.alh = bitcast <8 x float> %i.alg to <8 x i32>
  %i.ali = and <8 x i32> %i.alh, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0>
  %i.alj = bitcast <8 x i32> %i.ali to <8 x float>
  %i.alk = fadd <8 x float> %i.ala, %i.alj
  %i.all = fsub <8 x float> %i.alb, %i.alb
  %i.alm = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.all)
  %i.aln = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> splat (float 2.060000e-02), <8 x float> %i.alm)
  %i.alo = fadd <8 x float> %i.aln, %i.alk        ; 2 uses
  %i.alp = shufflevector <8 x float> %i.alo, <8 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.alq = fadd <8 x float> %i.alo, %i.alp        ; 2 uses
  %i.alr = shufflevector <8 x float> %i.alq, <8 x float> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.als = fadd <8 x float> %i.alq, %i.alr        ; 2 uses
  %i.alt = shufflevector <8 x float> %i.als, <8 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.alu = fadd <8 x float> %i.als, %i.alt
  %i.alv = extractelement <8 x float> %i.alu, i64 0
  %i.alw = fmul float %i.alv, 3.800000e-01
  %i.alx = fsub float 4.200000e-01, %i.alw
  %i.aly = insertelement <8 x float> poison, float %i.alx, i64 0
  %i.alz = shufflevector <8 x float> %i.aly, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ama = fadd <8 x float> %i.aeb, %i.alz
  %.val69.i.us = load i64, ptr %i.th, align 8     ; 8 uses
  %.val70.i.us = load ptr, ptr %i.ti, align 8     ; 8 uses
  %.val73.i.us = load i64, ptr %i.tl, align 8     ; 8 uses
  %.val74.i.us = load ptr, ptr %i.tm, align 8     ; 8 uses
  %i.amb = mul i64 %.val69.i.us, %i.aed
  %i.amc = getelementptr inbounds nuw i8, ptr %.val70.i.us, i64 %i.amb ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.amc, i64 64) ]
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.amc, i64 %.val67.i.us
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %i.ua
  %i.amf = mul i64 %.val73.i.us, %i.aed
  %i.amg = getelementptr inbounds nuw i8, ptr %.val74.i.us, i64 %i.amf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.amg, i64 64) ]
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %i.amg, i64 %.val67.i.us
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %i.ua
  %i.amj = load <8 x i32>, ptr %i.ame, align 32, !tbaa !24
  %i.amk = load <8 x float>, ptr %i.ami, align 32, !tbaa !24 ; 2 uses
  %i.aml = fadd <8 x float> %i.aen, splat (float f0x3B51AE51)
  %i.amm = and <8 x i32> %i.amj, splat (i32 2147483647)
  %i.amn = bitcast <8 x i32> %i.amm to <8 x float>
  %i.amo = fadd <8 x float> %i.aml, %i.amn        ; 2 uses
  %i.amp = fcmp ogt <8 x float> %i.amk, %i.amo
  %i.amq = fsub <8 x float> %i.amk, %i.amo
  %i.amr = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.amq, <8 x float> splat (float f0x3C2B9B7F))
  %i.ams = fadd <8 x float> %i.amr, zeroinitializer
  %i.amt = select <8 x i1> %i.amp, <8 x float> %i.ams, <8 x float> zeroinitializer
  %i.amu = add i64 %i.aed, 1                      ; 3 uses
  %i.amv = mul i64 %.val69.i.us, %i.amu
  %i.amw = getelementptr inbounds nuw i8, ptr %.val70.i.us, i64 %i.amv ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.amw, i64 64) ]
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr %i.amw, i64 %.val67.i.us
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %i.amx, i64 %i.ua
  %i.amz = mul i64 %i.amu, %.val65.i.us
  %i.ana = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.amz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ana, i64 64) ]
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %i.ana, i64 %.val67.i.us
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %i.anb, i64 %i.ua
  %i.and = mul i64 %.val73.i.us, %i.amu
  %i.ane = getelementptr inbounds nuw i8, ptr %.val74.i.us, i64 %i.and ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ane, i64 64) ]
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr %i.ane, i64 %.val67.i.us
  %i.ang = getelementptr inbounds nuw [4 x i8], ptr %i.anf, i64 %i.ua
  %i.anh = load <8 x i32>, ptr %i.amy, align 32, !tbaa !24
  %i.ani = load <8 x float>, ptr %i.ang, align 32, !tbaa !24 ; 2 uses
  %i.anj = load <8 x float>, ptr %i.anc, align 32, !tbaa !24
  %i.ank = fadd <8 x float> %i.anj, splat (float f0x3B51AE51)
  %i.anl = and <8 x i32> %i.anh, splat (i32 2147483647)
  %i.anm = bitcast <8 x i32> %i.anl to <8 x float>
  %i.ann = fadd <8 x float> %i.ank, %i.anm        ; 2 uses
  %i.ano = fcmp ogt <8 x float> %i.ani, %i.ann
  %i.anp = fsub <8 x float> %i.ani, %i.ann
  %i.anq = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.anp, <8 x float> splat (float f0x3C2B9B7F))
  %i.anr = select <8 x i1> %i.ano, <8 x float> %i.anq, <8 x float> zeroinitializer
  %i.ans = fadd <8 x float> %i.amt, %i.anr
  %i.ant = add i64 %i.aed, 2                      ; 3 uses
  %i.anu = mul i64 %.val69.i.us, %i.ant
  %i.anv = getelementptr inbounds nuw i8, ptr %.val70.i.us, i64 %i.anu ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.anv, i64 64) ]
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %.val67.i.us
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %i.anw, i64 %i.ua
  %i.any = mul i64 %i.ant, %.val65.i.us
  %i.anz = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.any ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.anz, i64 64) ]
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %i.anz, i64 %.val67.i.us
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.aoa, i64 %i.ua
  %i.aoc = mul i64 %.val73.i.us, %i.ant
  %i.aod = getelementptr inbounds nuw i8, ptr %.val74.i.us, i64 %i.aoc ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aod, i64 64) ]
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %i.aod, i64 %.val67.i.us
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %i.aoe, i64 %i.ua
  %i.aog = load <8 x i32>, ptr %i.anx, align 32, !tbaa !24
  %i.aoh = load <8 x float>, ptr %i.aof, align 32, !tbaa !24 ; 2 uses
  %i.aoi = load <8 x float>, ptr %i.aob, align 32, !tbaa !24
  %i.aoj = fadd <8 x float> %i.aoi, splat (float f0x3B51AE51)
  %i.aok = and <8 x i32> %i.aog, splat (i32 2147483647)
  %i.aol = bitcast <8 x i32> %i.aok to <8 x float>
  %i.aom = fadd <8 x float> %i.aoj, %i.aol        ; 2 uses
  %i.aon = fcmp ogt <8 x float> %i.aoh, %i.aom
  %i.aoo = fsub <8 x float> %i.aoh, %i.aom
  %i.aop = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.aoo, <8 x float> splat (float f0x3C2B9B7F))
  %i.aoq = select <8 x i1> %i.aon, <8 x float> %i.aop, <8 x float> zeroinitializer
  %i.aor = fadd <8 x float> %i.ans, %i.aoq
  %i.aos = add i64 %i.aed, 3                      ; 3 uses
  %i.aot = mul i64 %.val69.i.us, %i.aos
  %i.aou = getelementptr inbounds nuw i8, ptr %.val70.i.us, i64 %i.aot ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aou, i64 64) ]
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %i.aou, i64 %.val67.i.us
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr %i.aov, i64 %i.ua
  %i.aox = mul i64 %i.aos, %.val65.i.us
  %i.aoy = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.aox ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZZN3jxl6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPNS_10ThreadPoolEPNS_5PlaneIfEESE_ENK3$_1clEjm":bb.a
  %i.xw = fmul <4 x float> %i.xv, splat (float f0x42EFD02B)
  %i.xx = fadd <4 x float> %i.xw, splat (float f0x3C23D70A)
  %i.xy = fmul <4 x float> %i.xu, splat (float f0x431D2FBD)
  %i.xz = fmul <4 x float> %i.xy, %i.xv
  %i.ya = fadd <4 x float> %i.xz, splat (float f0x40ACF18E)
  %i.yb = fdiv <4 x float> %i.xx, %i.ya
  %i.yc = fadd <4 x float> %i.xs, %i.yb           ; 3 uses
  %i.yd = add nuw nsw i64 %.07.i.i.us, 1          ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.yd, 8
  br i1 %exitcond.not.i.i.us, label %_ZN3jxl6N_SSE412_GLOBAL__N_115GammaModulationIN3hwy6N_SSE44SimdIfLm4ELi0EEENS4_6Vec128IfLm4EEEEET0_T_mmRKNS_5PlaneIfEESE_RKNS_5RectTImEES9_.exit.i.us, label %bb.ak, !llvm.loop !629

_ZN3jxl6N_SSE412_GLOBAL__N_115GammaModulationIN3hwy6N_SSE44SimdIfLm4ELi0EEENS4_6Vec128IfLm4EEEEET0_T_mmRKNS_5PlaneIfEESE_RKNS_5RectTImEES9_.exit.i.us: ; preds = %bb.ak
  %.scalar.i.us = fmul float %i.vw, f0x3F4CF547
  %i.ye = insertelement <4 x float> poison, float %.scalar.i.us, i64 0
  %i.yf = shufflevector <4 x float> %i.ye, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yg = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.yf, <4 x float> splat (float 1.000000e-03)) ; 3 uses
  %i.yh = fadd <4 x float> %i.yg, splat (float f0x43974C46)
  %i.yi = fdiv <4 x float> splat (float 1.000000e+00), %i.yh
  %i.yj = fmul <4 x float> %i.yg, %i.yg           ; 2 uses
  %i.yk = fadd <4 x float> %i.yj, splat (float f0x406DF31D)
  %i.yl = fdiv <4 x float> splat (float 1.000000e+00), %i.yk
  %i.ym = fadd <4 x float> %i.yj, splat (float f0x3F6DF31D)
  %i.yn = fdiv <4 x float> splat (float 1.000000e+00), %i.ym
  %i.yo = fmul <4 x float> %i.yl, splat (float f0x40D96B1C)
  %i.yp = fmul <4 x float> %i.yi, splat (float f0x418ACD8C)
  %i.yq = fadd <4 x float> %i.yp, %i.yo
  %i.yr = fmul <4 x float> %i.yn, splat (float f0x411788B3)
  %i.ys = fadd <4 x float> %i.yr, %i.yq
  %i.yt = fadd <4 x float> %i.ys, splat (float f0xBF43C361)
  %i.yu = shufflevector <4 x float> %i.yc, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.yv = fadd <4 x float> %i.yc, %i.yu           ; 2 uses
  %i.yw = shufflevector <4 x float> %i.yv, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.yx = fadd <4 x float> %i.yv, %i.yw
  %i.yy = fmul <4 x float> %i.yx, splat (float 7.812500e-03)
  %i.yz = bitcast <4 x float> %i.yy to <4 x i32>  ; 2 uses
  %i.za = add <4 x i32> %i.yz, splat (i32 -1059760811) ; 2 uses
  %i.zb = ashr <4 x i32> %i.za, splat (i32 23)
  %i.zc = and <4 x i32> %i.za, splat (i32 -8388608)
  %i.zd = sub <4 x i32> %i.yz, %i.zc
  %i.ze = bitcast <4 x i32> %i.zd to <4 x float>
  %i.zf = sitofp <4 x i32> %i.zb to <4 x float>
  %i.zg = fadd <4 x float> %i.ze, splat (float -1.000000e+00) ; 4 uses
  fence acq_rel
  %i.zh = fmul <4 x float> %i.zg, splat (float f0x3F3E11C7)
  %i.zi = fadd <4 x float> %i.zh, splat (float f0x3FB6E02B)
  %i.zj = fmul <4 x float> %i.zg, splat (float f0x3E32458C)
  %i.zk = fadd <4 x float> %i.zj, splat (float f0x3F813CED)
  fence acq_rel
  %i.zl = fmul <4 x float> %i.zg, %i.zi
  %i.zm = fadd <4 x float> %i.zl, splat (float f0xB5F85AB0)
  %i.zn = fmul <4 x float> %i.zg, %i.zk
  %i.zo = fadd <4 x float> %i.zn, splat (float f0x3F7D8625)
  fence acq_rel
  %i.zp = fdiv <4 x float> %i.zm, %i.zo
  %i.zq = fadd <4 x float> %i.zp, %i.zf
  %i.zr = fmul <4 x float> %i.zq, splat (float f0x3DCDF31A)
  %i.zs = fadd <4 x float> %i.zr, %i.yt           ; 2 uses
  %.val65.i.us = load i64, ptr %i.vd, align 8     ; 22 uses
  %.val66.i.us = load ptr, ptr %i.ve, align 8     ; 22 uses
  %.val67.i.us = load i64, ptr %i.ab, align 8     ; 38 uses
  %.val68.i.us = load i64, ptr %i.al, align 8     ; 9 uses
  %i.zt = add i64 %.val68.i.us, 1                 ; 7 uses
  %i.zu = add i64 %.val68.i.us, %i.vi             ; 10 uses
  %i.zv = mul i64 %i.zu, %.val65.i.us
  %i.zw = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.zv ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.zw, i64 64) ]
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %.val67.i.us
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zx, i64 %i.vu ; 4 uses
  %i.zz = add i64 %i.zt, %i.vi
  %i.aaa = mul i64 %i.zz, %.val65.i.us
  %i.aab = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.aaa ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aab, i64 64) ]
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %.val67.i.us
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %i.vu ; 2 uses
  %i.aae = load <4 x float>, ptr %i.zy, align 16, !tbaa !24 ; 3 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zy, i64 4
  %i.aag = load <4 x float>, ptr %i.aaf, align 4, !tbaa !24, !alias.scope !654
  %i.aah = load <4 x float>, ptr %i.aad, align 16, !tbaa !24
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zy, i64 16
  %i.aaj = load <4 x float>, ptr %i.aai, align 16, !tbaa !24 ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zy, i64 20
  %i.aal = load <4 x float>, ptr %i.aak, align 4, !tbaa !24, !alias.scope !654
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aad, i64 16
  %i.aan = load <4 x float>, ptr %i.aam, align 16, !tbaa !24
  %i.aao = add i64 %.val68.i.us, %i.vn
  %i.aap = mul i64 %i.aao, %.val65.i.us
  %i.aaq = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.aap ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aaq, i64 64) ]
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.aaq, i64 %.val67.i.us
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.aar, i64 %i.vu ; 4 uses
  %i.aat = add i64 %i.zt, %i.vn
  %i.aau = mul i64 %i.aat, %.val65.i.us
  %i.aav = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.aau ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aav, i64 64) ]
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.aav, i64 %.val67.i.us
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.aaw, i64 %i.vu ; 2 uses
  %i.aay = load <4 x float>, ptr %i.aas, align 16, !tbaa !24 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aas, i64 4
  %i.aba = load <4 x float>, ptr %i.aaz, align 4, !tbaa !24, !alias.scope !654
  %i.abb = load <4 x float>, ptr %i.aax, align 16, !tbaa !24
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aas, i64 16
  %i.abd = load <4 x float>, ptr %i.abc, align 16, !tbaa !24 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aas, i64 20
  %i.abf = load <4 x float>, ptr %i.abe, align 4, !tbaa !24, !alias.scope !654
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  %i.abh = load <4 x float>, ptr %i.abg, align 16, !tbaa !24
  %i.abi = add i64 %.val68.i.us, %i.vo
  %i.abj = mul i64 %i.abi, %.val65.i.us
  %i.abk = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.abj ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.abk, i64 64) ]
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.abk, i64 %.val67.i.us
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.abl, i64 %i.vu ; 4 uses
  %i.abn = add i64 %i.zt, %i.vo
  %i.abo = mul i64 %i.abn, %.val65.i.us
  %i.abp = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.abo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.abp, i64 64) ]
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.abp, i64 %.val67.i.us
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.abq, i64 %i.vu ; 2 uses
  %i.abs = load <4 x float>, ptr %i.abm, align 16, !tbaa !24 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abm, i64 4
  %i.abu = load <4 x float>, ptr %i.abt, align 4, !tbaa !24, !alias.scope !654
  %i.abv = load <4 x float>, ptr %i.abr, align 16, !tbaa !24
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  %i.abx = load <4 x float>, ptr %i.abw, align 16, !tbaa !24 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abm, i64 20
  %i.abz = load <4 x float>, ptr %i.aby, align 4, !tbaa !24, !alias.scope !654
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abr, i64 16
  %i.acb = load <4 x float>, ptr %i.aca, align 16, !tbaa !24
  %i.acc = add i64 %.val68.i.us, %i.vp
  %i.acd = mul i64 %i.acc, %.val65.i.us
  %i.ace = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.acd ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ace, i64 64) ]
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %.val67.i.us
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %i.vu ; 4 uses
  %i.ach = add i64 %i.zt, %i.vp
  %i.aci = mul i64 %i.ach, %.val65.i.us
  %i.acj = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.aci ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.acj, i64 64) ]
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %.val67.i.us
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.ack, i64 %i.vu ; 2 uses
  %i.acm = load <4 x float>, ptr %i.acg, align 16, !tbaa !24 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acg, i64 4
  %i.aco = load <4 x float>, ptr %i.acn, align 4, !tbaa !24, !alias.scope !654
  %i.acp = load <4 x float>, ptr %i.acl, align 16, !tbaa !24
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acg, i64 16
  %i.acr = load <4 x float>, ptr %i.acq, align 16, !tbaa !24 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acg, i64 20
  %i.act = load <4 x float>, ptr %i.acs, align 4, !tbaa !24, !alias.scope !654
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acl, i64 16
  %i.acv = load <4 x float>, ptr %i.acu, align 16, !tbaa !24
  %i.acw = add i64 %.val68.i.us, %i.vq
  %i.acx = mul i64 %i.acw, %.val65.i.us
  %i.acy = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.acx ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.acy, i64 64) ]
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.acy, i64 %.val67.i.us
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.acz, i64 %i.vu ; 4 uses
  %i.adb = add i64 %i.zt, %i.vq
  %i.adc = mul i64 %i.adb, %.val65.i.us
  %i.add = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.adc ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.add, i64 64) ]
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.add, i64 %.val67.i.us
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %i.vu ; 2 uses
  %i.adg = load <4 x float>, ptr %i.ada, align 16, !tbaa !24 ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.ada, i64 4
  %i.adi = load <4 x float>, ptr %i.adh, align 4, !tbaa !24, !alias.scope !654
  %i.adj = load <4 x float>, ptr %i.adf, align 16, !tbaa !24
  %i.adk = getelementptr inbounds nuw i8, ptr %i.ada, i64 16
  %i.adl = load <4 x float>, ptr %i.adk, align 16, !tbaa !24 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.ada, i64 20
  %i.adn = load <4 x float>, ptr %i.adm, align 4, !tbaa !24, !alias.scope !654
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adf, i64 16
  %i.adp = load <4 x float>, ptr %i.ado, align 16, !tbaa !24
  %i.adq = add i64 %.val68.i.us, %i.vr
  %i.adr = mul i64 %i.adq, %.val65.i.us
  %i.ads = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.adr ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ads, i64 64) ]
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %i.ads, i64 %.val67.i.us
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.adt, i64 %i.vu ; 4 uses
  %i.adv = add i64 %i.zt, %i.vr
  %i.adw = mul i64 %i.adv, %.val65.i.us
  %i.adx = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.adw ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.adx, i64 64) ]
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %.val67.i.us
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.ady, i64 %i.vu ; 2 uses
  %i.aea = load <4 x float>, ptr %i.adu, align 16, !tbaa !24 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adu, i64 4
  %i.aec = load <4 x float>, ptr %i.aeb, align 4, !tbaa !24, !alias.scope !654
  %i.aed = load <4 x float>, ptr %i.adz, align 16, !tbaa !24
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adu, i64 16
  %i.aef = load <4 x float>, ptr %i.aee, align 16, !tbaa !24 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adu, i64 20
  %i.aeh = load <4 x float>, ptr %i.aeg, align 4, !tbaa !24, !alias.scope !654
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adz, i64 16
  %i.aej = load <4 x float>, ptr %i.aei, align 16, !tbaa !24
  %i.aek = add i64 %i.zt, %i.vs
  %i.ael = mul i64 %i.aek, %.val65.i.us
  %i.aem = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.ael ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aem, i64 64) ]
  %i.aen = add i64 %i.vt, %.val68.i.us
  %i.aeo = mul i64 %i.aen, %.val65.i.us
  %i.aep = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.aeo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aep, i64 64) ]
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %.val67.i.us
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %i.vu ; 4 uses
  %i.aes = add i64 %.val68.i.us, %i.vs
  %i.aet = mul i64 %i.aes, %.val65.i.us
  %i.aeu = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.aet ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aeu, i64 64) ]
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %.val67.i.us
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %i.vu ; 4 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 16
  %i.aey = load <4 x float>, ptr %i.aex, align 16, !tbaa !24 ; 2 uses
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %.val67.i.us
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %i.vu ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 16
  %i.afc = load <4 x float>, ptr %i.afb, align 16, !tbaa !24
  %i.afd = fsub <4 x float> %i.aey, %i.afc
  %i.afe = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.afd)
  %i.aff = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.afe)
  %i.afg = load <4 x float>, ptr %i.aew, align 16, !tbaa !24 ; 2 uses
  %i.afh = load <4 x float>, ptr %i.afa, align 16, !tbaa !24
  %i.afi = fsub <4 x float> %i.afg, %i.afh
  %i.afj = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.afi)
  %i.afk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.afj)
  %i.afl = fsub <4 x float> %i.aef, %i.aej
  %i.afm = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.afl)
  %i.afn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.afm)
  %i.afo = fsub <4 x float> %i.aea, %i.aed
  %i.afp = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.afo)
  %i.afq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.afp)
  %i.afr = fsub <4 x float> %i.adl, %i.adp
  %i.afs = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.afr)
  %i.aft = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.afs)
  %i.afu = fsub <4 x float> %i.adg, %i.adj
  %i.afv = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.afu)
  %i.afw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.afv)
  %i.afx = fsub <4 x float> %i.acr, %i.acv
  %i.afy = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.afx)
  %i.afz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.afy)
  %i.aga = fsub <4 x float> %i.acm, %i.acp
  %i.agb = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aga)
  %i.agc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.agb)
  %i.agd = fsub <4 x float> %i.abx, %i.acb
  %i.age = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.agd)
  %i.agf = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.age)
  %i.agg = fsub <4 x float> %i.abs, %i.abv
  %i.agh = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.agg)
  %i.agi = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.agh)
  %i.agj = fsub <4 x float> %i.abd, %i.abh
  %i.agk = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.agj)
  %i.agl = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.agk)
  %i.agm = fsub <4 x float> %i.aay, %i.abb
  %i.agn = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.agm)
  %i.ago = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.agn)
  %i.agp = fsub <4 x float> %i.aaj, %i.aan
  %i.agq = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.agp)
  %i.agr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.agq)
  %i.ags = fsub <4 x float> %i.aae, %i.aah
  %i.agt = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ags)
  %i.agu = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.agt)
  %i.agv = fsub <4 x float> %i.aae, %i.aag
  %i.agw = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.agv)
  %i.agx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.agw)
  %i.agy = fadd <4 x float> %i.agx, zeroinitializer
  %i.agz = fadd <4 x float> %i.agu, %i.agy
  %i.aha = fsub <4 x float> %i.aaj, %i.aal
  %i.ahb = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aha)
  %i.ahc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.ahb)
  %i.ahd = bitcast <4 x float> %i.ahc to <4 x i32>
  %i.ahe = and <4 x i32> %i.ahd, <i32 -1, i32 -1, i32 -1, i32 0>
  %i.ahf = bitcast <4 x i32> %i.ahe to <4 x float>
  %i.ahg = fadd <4 x float> %i.agz, %i.ahf
  %i.ahh = fadd <4 x float> %i.agr, %i.ahg
  %i.ahi = fsub <4 x float> %i.aay, %i.aba
  %i.ahj = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ahi)
  %i.ahk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.ahj)
  %i.ahl = fadd <4 x float> %i.ahk, %i.ahh
  %i.ahm = fadd <4 x float> %i.ago, %i.ahl
  %i.ahn = fsub <4 x float> %i.abd, %i.abf
  %i.aho = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ahn)
  %i.ahp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.aho)
  %i.ahq = bitcast <4 x float> %i.ahp to <4 x i32>
  %i.ahr = and <4 x i32> %i.ahq, <i32 -1, i32 -1, i32 -1, i32 0>
  %i.ahs = bitcast <4 x i32> %i.ahr to <4 x float>
  %i.aht = fadd <4 x float> %i.ahm, %i.ahs
  %i.ahu = fadd <4 x float> %i.agl, %i.aht
  %i.ahv = fsub <4 x float> %i.abs, %i.abu
  %i.ahw = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ahv)
  %i.ahx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.ahw)
  %i.ahy = fadd <4 x float> %i.ahx, %i.ahu
  %i.ahz = fadd <4 x float> %i.agi, %i.ahy
  %i.aia = fsub <4 x float> %i.abx, %i.abz
  %i.aib = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aia)
  %i.aic = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.aib)
  %i.aid = bitcast <4 x float> %i.aic to <4 x i32>
  %i.aie = and <4 x i32> %i.aid, <i32 -1, i32 -1, i32 -1, i32 0>
  %i.aif = bitcast <4 x i32> %i.aie to <4 x float>
  %i.aig = fadd <4 x float> %i.ahz, %i.aif
  %i.aih = fadd <4 x float> %i.agf, %i.aig
  %i.aii = fsub <4 x float> %i.acm, %i.aco
  %i.aij = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aii)
  %i.aik = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.aij)
  %i.ail = fadd <4 x float> %i.aik, %i.aih
  %i.aim = fadd <4 x float> %i.agc, %i.ail
  %i.ain = fsub <4 x float> %i.acr, %i.act
  %i.aio = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ain)
  %i.aip = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.aio)
  %i.aiq = bitcast <4 x float> %i.aip to <4 x i32>
  %i.air = and <4 x i32> %i.aiq, <i32 -1, i32 -1, i32 -1, i32 0>
  %i.ais = bitcast <4 x i32> %i.air to <4 x float>
  %i.ait = fadd <4 x float> %i.aim, %i.ais
  %i.aiu = fadd <4 x float> %i.afz, %i.ait
  %i.aiv = fsub <4 x float> %i.adg, %i.adi
  %i.aiw = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aiv)
  %i.aix = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.aiw)
  %i.aiy = fadd <4 x float> %i.aix, %i.aiu
  %i.aiz = fadd <4 x float> %i.afw, %i.aiy
  %i.aja = fsub <4 x float> %i.adl, %i.adn
  %i.ajb = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aja)
  %i.ajc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.ajb)
  %i.ajd = bitcast <4 x float> %i.ajc to <4 x i32>
  %i.aje = and <4 x i32> %i.ajd, <i32 -1, i32 -1, i32 -1, i32 0>
  %i.ajf = bitcast <4 x i32> %i.aje to <4 x float>
  %i.ajg = fadd <4 x float> %i.aiz, %i.ajf
  %i.ajh = fadd <4 x float> %i.aft, %i.ajg
  %i.aji = fsub <4 x float> %i.aea, %i.aec
  %i.ajj = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aji)
  %i.ajk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.ajj)
  %i.ajl = fadd <4 x float> %i.ajk, %i.ajh
  %i.ajm = fadd <4 x float> %i.afq, %i.ajl
  %i.ajn = fsub <4 x float> %i.aef, %i.aeh
  %i.ajo = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ajn)
  %i.ajp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.ajo)
  %i.ajq = bitcast <4 x float> %i.ajp to <4 x i32>
  %i.ajr = and <4 x i32> %i.ajq, <i32 -1, i32 -1, i32 -1, i32 0>
  %i.ajs = bitcast <4 x i32> %i.ajr to <4 x float>
  %i.ajt = fadd <4 x float> %i.ajm, %i.ajs
  %i.aju = fadd <4 x float> %i.afn, %i.ajt
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aew, i64 4
  %i.ajw = load <4 x float>, ptr %i.ajv, align 4, !tbaa !24, !alias.scope !654
  %i.ajx = fsub <4 x float> %i.afg, %i.ajw
  %i.ajy = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ajx)
  %i.ajz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.ajy)
  %i.aka = fadd <4 x float> %i.ajz, %i.aju
  %i.akb = fadd <4 x float> %i.afk, %i.aka
  %i.akc = getelementptr inbounds nuw i8, ptr %i.aew, i64 20
  %i.akd = load <4 x float>, ptr %i.akc, align 4, !tbaa !24, !alias.scope !654
  %i.ake = fsub <4 x float> %i.aey, %i.akd
  %i.akf = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ake)
  %i.akg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.akf)
  %i.akh = bitcast <4 x float> %i.akg to <4 x i32>
  %i.aki = and <4 x i32> %i.akh, <i32 -1, i32 -1, i32 -1, i32 0>
  %i.akj = bitcast <4 x i32> %i.aki to <4 x float>
  %i.akk = fadd <4 x float> %i.akb, %i.akj
  %i.akl = fadd <4 x float> %i.aff, %i.akk
  %i.akm = load <4 x float>, ptr %i.aer, align 16, !tbaa !24 ; 3 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.aer, i64 4
  %i.ako = load <4 x float>, ptr %i.akn, align 4, !tbaa !24, !alias.scope !654
  %i.akp = fsub <4 x float> %i.akm, %i.ako
  %i.akq = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.akp)
  %i.akr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.akq)
  %i.aks = fadd <4 x float> %i.akr, %i.akl
  %i.akt = fsub <4 x float> %i.akm, %i.akm
  %i.aku = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.akt)
  %i.akv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.aku)
  %i.akw = fadd <4 x float> %i.akv, %i.aks
  %i.akx = getelementptr inbounds nuw i8, ptr %i.aer, i64 16
  %i.aky = load <4 x float>, ptr %i.akx, align 16, !tbaa !24 ; 3 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aer, i64 20
  %i.ala = load <4 x float>, ptr %i.akz, align 4, !tbaa !24, !alias.scope !654
  %i.alb = fsub <4 x float> %i.aky, %i.ala
  %i.alc = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.alb)
  %i.ald = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.alc)
  %i.ale = bitcast <4 x float> %i.ald to <4 x i32>
  %i.alf = and <4 x i32> %i.ale, <i32 -1, i32 -1, i32 -1, i32 0>
  %i.alg = bitcast <4 x i32> %i.alf to <4 x float>
  %i.alh = fadd <4 x float> %i.akw, %i.alg
  %i.ali = fsub <4 x float> %i.aky, %i.aky
  %i.alj = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ali)
  %i.alk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.alj)
  %i.all = fadd <4 x float> %i.alk, %i.alh        ; 2 uses
  %i.alm = shufflevector <4 x float> %i.all, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.aln = fadd <4 x float> %i.all, %i.alm        ; 2 uses
  %i.alo = shufflevector <4 x float> %i.aln, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.alp = fadd <4 x float> %i.aln, %i.alo
  %i.alq = extractelement <4 x float> %i.alp, i64 0
  %i.alr = fmul float %i.alq, 3.800000e-01
  %i.als = fsub float 4.200000e-01, %i.alr
  %i.alt = insertelement <4 x float> poison, float %i.als, i64 0
  %i.alu = shufflevector <4 x float> %i.alt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alv = fadd <4 x float> %i.zs, %i.alu
  %.val69.i.us = load i64, ptr %i.vb, align 8     ; 8 uses
  %.val70.i.us = load ptr, ptr %i.vc, align 8     ; 8 uses
  %.val73.i.us = load i64, ptr %i.vf, align 8     ; 8 uses
  %.val74.i.us = load ptr, ptr %i.vg, align 8     ; 8 uses
  %i.alw = mul i64 %.val69.i.us, %i.zu
  %i.alx = getelementptr inbounds nuw i8, ptr %.val70.i.us, i64 %i.alw ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.alx, i64 64) ]
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %i.alx, i64 %.val67.i.us
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.aly, i64 %i.vu ; 2 uses
  %i.ama = mul i64 %.val73.i.us, %i.zu
  %i.amb = getelementptr inbounds nuw i8, ptr %.val74.i.us, i64 %i.ama ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.amb, i64 64) ]
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %i.amb, i64 %.val67.i.us
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.amc, i64 %i.vu ; 2 uses
  %i.ame = load <4 x i32>, ptr %i.alz, align 16, !tbaa !24
  %i.amf = load <4 x float>, ptr %i.amd, align 16, !tbaa !24 ; 2 uses
  %i.amg = fadd <4 x float> %i.aae, splat (float f0x3B51AE51)
end_hunk_1
begin_hunk_2_@"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE212_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallDataFuncEPvjm":bb.a
  %i.yg = fmul <4 x float> %i.yf, splat (float f0x42EFD02B)
  %i.yh = fadd <4 x float> %i.yg, splat (float f0x3C23D70A)
  %i.yi = fmul <4 x float> %i.ye, splat (float f0x431D2FBD)
  %i.yj = fmul <4 x float> %i.yi, %i.yf
  %i.yk = fadd <4 x float> %i.yj, splat (float f0x40ACF18E)
  %i.yl = fdiv <4 x float> %i.yh, %i.yk
  %i.ym = fadd <4 x float> %i.yl, %i.yb           ; 3 uses
  %i.yn = add nuw nsw i64 %.07.i.i.us.i, 1        ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %i.yn, 8
  br i1 %exitcond.not.i.i.us.i, label %_ZN3jxl6N_SSE212_GLOBAL__N_115GammaModulationIN3hwy6N_SSE24SimdIfLm4ELi0EEENS4_6Vec128IfLm4EEEEET0_T_mmRKNS_5PlaneIfEESE_RKNS_5RectTImEES9_.exit.i.us.i, label %bb.al, !llvm.loop !716

_ZN3jxl6N_SSE212_GLOBAL__N_115GammaModulationIN3hwy6N_SSE24SimdIfLm4ELi0EEENS4_6Vec128IfLm4EEEEET0_T_mmRKNS_5PlaneIfEESE_RKNS_5RectTImEES9_.exit.i.us.i: ; preds = %bb.al
  %.scalar.i.us.i = fmul float %i.wc, f0x3F4CF547
  %i.yo = insertelement <4 x float> poison, float %.scalar.i.us.i, i64 0
  %i.yp = shufflevector <4 x float> %i.yo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.yp, <4 x float> splat (float 1.000000e-03)) ; 3 uses
  %i.yr = fadd <4 x float> %i.yq, splat (float f0x43974C46)
  %i.ys = fdiv <4 x float> splat (float 1.000000e+00), %i.yr
  %i.yt = fmul <4 x float> %i.yq, %i.yq           ; 2 uses
  %i.yu = fadd <4 x float> %i.yt, splat (float f0x406DF31D)
  %i.yv = fdiv <4 x float> splat (float 1.000000e+00), %i.yu
  %i.yw = fadd <4 x float> %i.yt, splat (float f0x3F6DF31D)
  %i.yx = fdiv <4 x float> splat (float 1.000000e+00), %i.yw
  %i.yy = fmul <4 x float> %i.yv, splat (float f0x40D96B1C)
  %i.yz = fmul <4 x float> %i.ys, splat (float f0x418ACD8C)
  %i.za = fadd <4 x float> %i.yz, %i.yy
  %i.zb = fmul <4 x float> %i.yx, splat (float f0x411788B3)
  %i.zc = fadd <4 x float> %i.zb, %i.za
  %i.zd = fadd <4 x float> %i.zc, splat (float f0xBF43C361)
  %i.ze = shufflevector <4 x float> %i.ym, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.zf = fadd <4 x float> %i.ym, %i.ze           ; 2 uses
  %i.zg = shufflevector <4 x float> %i.zf, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.zh = fadd <4 x float> %i.zf, %i.zg
  %i.zi = fmul <4 x float> %i.zh, splat (float 7.812500e-03)
  %i.zj = bitcast <4 x float> %i.zi to <4 x i32>  ; 2 uses
  %i.zk = add <4 x i32> %i.zj, splat (i32 -1059760811) ; 2 uses
  %i.zl = ashr <4 x i32> %i.zk, splat (i32 23)
  %i.zm = and <4 x i32> %i.zk, splat (i32 -8388608)
  %i.zn = sub <4 x i32> %i.zj, %i.zm
  %i.zo = bitcast <4 x i32> %i.zn to <4 x float>
  %i.zp = sitofp <4 x i32> %i.zl to <4 x float>
  %i.zq = fadd <4 x float> %i.zo, splat (float -1.000000e+00) ; 4 uses
  fence acq_rel
  %i.zr = fmul <4 x float> %i.zq, splat (float f0x3F3E11C7)
  %i.zs = fadd <4 x float> %i.zr, splat (float f0x3FB6E02B)
  %i.zt = fmul <4 x float> %i.zq, splat (float f0x3E32458C)
  %i.zu = fadd <4 x float> %i.zt, splat (float f0x3F813CED)
  fence acq_rel
  %i.zv = fmul <4 x float> %i.zq, %i.zs
  %i.zw = fadd <4 x float> %i.zv, splat (float f0xB5F85AB0)
  %i.zx = fmul <4 x float> %i.zq, %i.zu
  %i.zy = fadd <4 x float> %i.zx, splat (float f0x3F7D8625)
  fence acq_rel
  %i.zz = fdiv <4 x float> %i.zw, %i.zy
  %i.aaa = fadd <4 x float> %i.zz, %i.zp
  %i.aab = fmul <4 x float> %i.aaa, splat (float f0x3DCDF31A)
  %i.aac = fadd <4 x float> %i.aab, %i.zd         ; 2 uses
  %.val65.i.us.i = load i64, ptr %i.vj, align 8   ; 22 uses
  %.val66.i.us.i = load ptr, ptr %i.vk, align 8   ; 22 uses
  %.val67.i.us.i = load i64, ptr %i.af, align 8   ; 38 uses
  %.val68.i.us.i = load i64, ptr %i.ap, align 8   ; 9 uses
  %i.aad = add i64 %.val68.i.us.i, 1              ; 7 uses
  %i.aae = add i64 %.val68.i.us.i, %i.vo          ; 10 uses
  %i.aaf = mul i64 %i.aae, %.val65.i.us.i
  %i.aag = getelementptr inbounds nuw i8, ptr %.val66.i.us.i, i64 %i.aaf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aag, i64 64) ]
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %.val67.i.us.i
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %i.wa ; 4 uses
  %i.aaj = add i64 %i.aad, %i.vo
  %i.aak = mul i64 %i.aaj, %.val65.i.us.i
  %i.aal = getelementptr inbounds nuw i8, ptr %.val66.i.us.i, i64 %i.aak ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aal, i64 64) ]
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %.val67.i.us.i
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.aam, i64 %i.wa ; 2 uses
  %i.aao = load <4 x float>, ptr %i.aai, align 16, !tbaa !24, !alias.scope !755 ; 3 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aai, i64 4
  %i.aaq = load <4 x float>, ptr %i.aap, align 4, !tbaa !24, !alias.scope !756
  %i.aar = load <4 x float>, ptr %i.aan, align 16, !tbaa !24, !alias.scope !757
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aai, i64 16
  %i.aat = load <4 x float>, ptr %i.aas, align 16, !tbaa !24, !alias.scope !755 ; 3 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aai, i64 20
  %i.aav = load <4 x float>, ptr %i.aau, align 4, !tbaa !24, !alias.scope !756
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  %i.aax = load <4 x float>, ptr %i.aaw, align 16, !tbaa !24, !alias.scope !757
  %i.aay = add i64 %.val68.i.us.i, %i.vt
  %i.aaz = mul i64 %i.aay, %.val65.i.us.i
  %i.aba = getelementptr inbounds nuw i8, ptr %.val66.i.us.i, i64 %i.aaz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aba, i64 64) ]
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %.val67.i.us.i
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %i.wa ; 4 uses
  %i.abd = add i64 %i.aad, %i.vt
  %i.abe = mul i64 %i.abd, %.val65.i.us.i
  %i.abf = getelementptr inbounds nuw i8, ptr %.val66.i.us.i, i64 %i.abe ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.abf, i64 64) ]
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.abf, i64 %.val67.i.us.i
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.abg, i64 %i.wa ; 2 uses
  %i.abi = load <4 x float>, ptr %i.abc, align 16, !tbaa !24, !alias.scope !755 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abc, i64 4
  %i.abk = load <4 x float>, ptr %i.abj, align 4, !tbaa !24, !alias.scope !756
  %i.abl = load <4 x float>, ptr %i.abh, align 16, !tbaa !24, !alias.scope !757
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abc, i64 16
  %i.abn = load <4 x float>, ptr %i.abm, align 16, !tbaa !24, !alias.scope !755 ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abc, i64 20
  %i.abp = load <4 x float>, ptr %i.abo, align 4, !tbaa !24, !alias.scope !756
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abh, i64 16
  %i.abr = load <4 x float>, ptr %i.abq, align 16, !tbaa !24, !alias.scope !757
  %i.abs = add i64 %.val68.i.us.i, %i.vu
  %i.abt = mul i64 %i.abs, %.val65.i.us.i
  %i.abu = getelementptr inbounds nuw i8, ptr %.val66.i.us.i, i64 %i.abt ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.abu, i64 64) ]
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %.val67.i.us.i
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.abv, i64 %i.wa ; 4 uses
  %i.abx = add i64 %i.aad, %i.vu
  %i.aby = mul i64 %i.abx, %.val65.i.us.i
  %i.abz = getelementptr inbounds nuw i8, ptr %.val66.i.us.i, i64 %i.aby ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.abz, i64 64) ]
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.abz, i64 %.val67.i.us.i
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.aca, i64 %i.wa ; 2 uses
  %i.acc = load <4 x float>, ptr %i.abw, align 16, !tbaa !24, !alias.scope !755 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abw, i64 4
  %i.ace = load <4 x float>, ptr %i.acd, align 4, !tbaa !24, !alias.scope !756
  %i.acf = load <4 x float>, ptr %i.acb, align 16, !tbaa !24, !alias.scope !757
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abw, i64 16
  %i.ach = load <4 x float>, ptr %i.acg, align 16, !tbaa !24, !alias.scope !755 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abw, i64 20
  %i.acj = load <4 x float>, ptr %i.aci, align 4, !tbaa !24, !alias.scope !756
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  %i.acl = load <4 x float>, ptr %i.ack, align 16, !tbaa !24, !alias.scope !757
  %i.acm = add i64 %.val68.i.us.i, %i.vv
  %i.acn = mul i64 %i.acm, %.val65.i.us.i
  %i.aco = getelementptr inbounds nuw i8, ptr %.val66.i.us.i, i64 %i.acn ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aco, i64 64) ]
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.aco, i64 %.val67.i.us.i
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.acp, i64 %i.wa ; 4 uses
  %i.acr = add i64 %i.aad, %i.vv
  %i.acs = mul i64 %i.acr, %.val65.i.us.i
  %i.act = getelementptr inbounds nuw i8, ptr %.val66.i.us.i, i64 %i.acs ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.act, i64 64) ]
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.act, i64 %.val67.i.us.i
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %i.wa ; 2 uses
  %i.acw = load <4 x float>, ptr %i.acq, align 16, !tbaa !24, !alias.scope !755 ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acq, i64 4
  %i.acy = load <4 x float>, ptr %i.acx, align 4, !tbaa !24, !alias.scope !756
  %i.acz = load <4 x float>, ptr %i.acv, align 16, !tbaa !24, !alias.scope !757
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acq, i64 16
  %i.adb = load <4 x float>, ptr %i.ada, align 16, !tbaa !24, !alias.scope !755 ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acq, i64 20
  %i.add = load <4 x float>, ptr %i.adc, align 4, !tbaa !24, !alias.scope !756
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acv, i64 16
  %i.adf = load <4 x float>, ptr %i.ade, align 16, !tbaa !24, !alias.scope !757
  %i.adg = add i64 %.val68.i.us.i, %i.vw
  %i.adh = mul i64 %i.adg, %.val65.i.us.i
  %i.adi = getelementptr inbounds nuw i8, ptr %.val66.i.us.i, i64 %i.adh ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.adi, i64 64) ]
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.adi, i64 %.val67.i.us.i
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.adj, i64 %i.wa ; 4 uses
  %i.adl = add i64 %i.aad, %i.vw
  %i.adm = mul i64 %i.adl, %.val65.i.us.i
  %i.adn = getelementptr inbounds nuw i8, ptr %.val66.i.us.i, i64 %i.adm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.adn, i64 64) ]
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.adn, i64 %.val67.i.us.i
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %i.wa ; 2 uses
  %i.adq = load <4 x float>, ptr %i.adk, align 16, !tbaa !24, !alias.scope !755 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adk, i64 4
  %i.ads = load <4 x float>, ptr %i.adr, align 4, !tbaa !24, !alias.scope !756
  %i.adt = load <4 x float>, ptr %i.adp, align 16, !tbaa !24, !alias.scope !757
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adk, i64 16
  %i.adv = load <4 x float>, ptr %i.adu, align 16, !tbaa !24, !alias.scope !755 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adk, i64 20
  %i.adx = load <4 x float>, ptr %i.adw, align 4, !tbaa !24, !alias.scope !756
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adp, i64 16
  %i.adz = load <4 x float>, ptr %i.ady, align 16, !tbaa !24, !alias.scope !757
  %i.aea = add i64 %.val68.i.us.i, %i.vx
  %i.aeb = mul i64 %i.aea, %.val65.i.us.i
  %i.aec = getelementptr inbounds nuw i8, ptr %.val66.i.us.i, i64 %i.aeb ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aec, i64 64) ]
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.aec, i64 %.val67.i.us.i
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.aed, i64 %i.wa ; 4 uses
  %i.aef = add i64 %i.aad, %i.vx
  %i.aeg = mul i64 %i.aef, %.val65.i.us.i
  %i.aeh = getelementptr inbounds nuw i8, ptr %.val66.i.us.i, i64 %i.aeg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aeh, i64 64) ]
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.aeh, i64 %.val67.i.us.i
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %i.wa ; 2 uses
  %i.aek = load <4 x float>, ptr %i.aee, align 16, !tbaa !24, !alias.scope !755 ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aee, i64 4
  %i.aem = load <4 x float>, ptr %i.ael, align 4, !tbaa !24, !alias.scope !756
  %i.aen = load <4 x float>, ptr %i.aej, align 16, !tbaa !24, !alias.scope !757
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aee, i64 16
  %i.aep = load <4 x float>, ptr %i.aeo, align 16, !tbaa !24, !alias.scope !755 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aee, i64 20
  %i.aer = load <4 x float>, ptr %i.aeq, align 4, !tbaa !24, !alias.scope !756
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aej, i64 16
  %i.aet = load <4 x float>, ptr %i.aes, align 16, !tbaa !24, !alias.scope !757
  %i.aeu = add i64 %i.aad, %i.vy
  %i.aev = mul i64 %i.aeu, %.val65.i.us.i
  %i.aew = getelementptr inbounds nuw i8, ptr %.val66.i.us.i, i64 %i.aev ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aew, i64 64) ]
  %i.aex = add i64 %i.vz, %.val68.i.us.i
  %i.aey = mul i64 %i.aex, %.val65.i.us.i
  %i.aez = getelementptr inbounds nuw i8, ptr %.val66.i.us.i, i64 %i.aey ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aez, i64 64) ]
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %.val67.i.us.i
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %i.wa ; 4 uses
  %i.afc = add i64 %.val68.i.us.i, %i.vy
  %i.afd = mul i64 %i.afc, %.val65.i.us.i
  %i.afe = getelementptr inbounds nuw i8, ptr %.val66.i.us.i, i64 %i.afd ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.afe, i64 64) ]
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.afe, i64 %.val67.i.us.i
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.aff, i64 %i.wa ; 4 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 16
  %i.afi = load <4 x float>, ptr %i.afh, align 16, !tbaa !24, !alias.scope !755 ; 2 uses
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.aew, i64 %.val67.i.us.i
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %i.wa ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 16
  %i.afm = load <4 x float>, ptr %i.afl, align 16, !tbaa !24, !alias.scope !757
  %i.afn = fsub <4 x float> %i.afi, %i.afm
  %i.afo = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.afn)
  %i.afp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.afo)
  %i.afq = load <4 x float>, ptr %i.afg, align 16, !tbaa !24, !alias.scope !755 ; 2 uses
  %i.afr = load <4 x float>, ptr %i.afk, align 16, !tbaa !24, !alias.scope !757
  %i.afs = fsub <4 x float> %i.afq, %i.afr
  %i.aft = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.afs)
  %i.afu = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.aft)
  %i.afv = fsub <4 x float> %i.aep, %i.aet
  %i.afw = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.afv)
  %i.afx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.afw)
  %i.afy = fsub <4 x float> %i.aek, %i.aen
  %i.afz = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.afy)
  %i.aga = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.afz)
  %i.agb = fsub <4 x float> %i.adv, %i.adz
  %i.agc = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.agb)
  %i.agd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.agc)
  %i.age = fsub <4 x float> %i.adq, %i.adt
  %i.agf = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.age)
  %i.agg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.agf)
  %i.agh = fsub <4 x float> %i.adb, %i.adf
  %i.agi = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.agh)
  %i.agj = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.agi)
  %i.agk = fsub <4 x float> %i.acw, %i.acz
  %i.agl = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.agk)
  %i.agm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.agl)
  %i.agn = fsub <4 x float> %i.ach, %i.acl
  %i.ago = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.agn)
  %i.agp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.ago)
  %i.agq = fsub <4 x float> %i.acc, %i.acf
  %i.agr = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.agq)
  %i.ags = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.agr)
  %i.agt = fsub <4 x float> %i.abn, %i.abr
  %i.agu = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.agt)
  %i.agv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.agu)
  %i.agw = fsub <4 x float> %i.abi, %i.abl
  %i.agx = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.agw)
  %i.agy = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.agx)
  %i.agz = fsub <4 x float> %i.aat, %i.aax
  %i.aha = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.agz)
  %i.ahb = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.aha)
  %i.ahc = fsub <4 x float> %i.aao, %i.aar
  %i.ahd = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ahc)
  %i.ahe = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.ahd)
  %i.ahf = fsub <4 x float> %i.aao, %i.aaq
  %i.ahg = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ahf)
  %i.ahh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.ahg)
  %i.ahi = fadd <4 x float> %i.ahh, zeroinitializer
  %i.ahj = fadd <4 x float> %i.ahe, %i.ahi
  %i.ahk = fsub <4 x float> %i.aat, %i.aav
  %i.ahl = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ahk)
  %i.ahm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.ahl)
  %i.ahn = bitcast <4 x float> %i.ahm to <4 x i32>
  %i.aho = and <4 x i32> %i.ahn, <i32 -1, i32 -1, i32 -1, i32 0>
  %i.ahp = bitcast <4 x i32> %i.aho to <4 x float>
  %i.ahq = fadd <4 x float> %i.ahj, %i.ahp
  %i.ahr = fadd <4 x float> %i.ahb, %i.ahq
  %i.ahs = fsub <4 x float> %i.abi, %i.abk
  %i.aht = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ahs)
  %i.ahu = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.aht)
  %i.ahv = fadd <4 x float> %i.ahu, %i.ahr
  %i.ahw = fadd <4 x float> %i.agy, %i.ahv
  %i.ahx = fsub <4 x float> %i.abn, %i.abp
  %i.ahy = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ahx)
  %i.ahz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.ahy)
  %i.aia = bitcast <4 x float> %i.ahz to <4 x i32>
  %i.aib = and <4 x i32> %i.aia, <i32 -1, i32 -1, i32 -1, i32 0>
  %i.aic = bitcast <4 x i32> %i.aib to <4 x float>
  %i.aid = fadd <4 x float> %i.ahw, %i.aic
  %i.aie = fadd <4 x float> %i.agv, %i.aid
  %i.aif = fsub <4 x float> %i.acc, %i.ace
  %i.aig = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aif)
  %i.aih = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.aig)
  %i.aii = fadd <4 x float> %i.aih, %i.aie
  %i.aij = fadd <4 x float> %i.ags, %i.aii
  %i.aik = fsub <4 x float> %i.ach, %i.acj
  %i.ail = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aik)
  %i.aim = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.ail)
  %i.ain = bitcast <4 x float> %i.aim to <4 x i32>
  %i.aio = and <4 x i32> %i.ain, <i32 -1, i32 -1, i32 -1, i32 0>
  %i.aip = bitcast <4 x i32> %i.aio to <4 x float>
  %i.aiq = fadd <4 x float> %i.aij, %i.aip
  %i.air = fadd <4 x float> %i.agp, %i.aiq
  %i.ais = fsub <4 x float> %i.acw, %i.acy
  %i.ait = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ais)
  %i.aiu = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.ait)
  %i.aiv = fadd <4 x float> %i.aiu, %i.air
  %i.aiw = fadd <4 x float> %i.agm, %i.aiv
  %i.aix = fsub <4 x float> %i.adb, %i.add
  %i.aiy = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aix)
  %i.aiz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.aiy)
  %i.aja = bitcast <4 x float> %i.aiz to <4 x i32>
  %i.ajb = and <4 x i32> %i.aja, <i32 -1, i32 -1, i32 -1, i32 0>
  %i.ajc = bitcast <4 x i32> %i.ajb to <4 x float>
  %i.ajd = fadd <4 x float> %i.aiw, %i.ajc
  %i.aje = fadd <4 x float> %i.agj, %i.ajd
  %i.ajf = fsub <4 x float> %i.adq, %i.ads
  %i.ajg = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ajf)
  %i.ajh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.ajg)
  %i.aji = fadd <4 x float> %i.ajh, %i.aje
  %i.ajj = fadd <4 x float> %i.agg, %i.aji
  %i.ajk = fsub <4 x float> %i.adv, %i.adx
  %i.ajl = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ajk)
  %i.ajm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.ajl)
  %i.ajn = bitcast <4 x float> %i.ajm to <4 x i32>
  %i.ajo = and <4 x i32> %i.ajn, <i32 -1, i32 -1, i32 -1, i32 0>
  %i.ajp = bitcast <4 x i32> %i.ajo to <4 x float>
  %i.ajq = fadd <4 x float> %i.ajj, %i.ajp
  %i.ajr = fadd <4 x float> %i.agd, %i.ajq
  %i.ajs = fsub <4 x float> %i.aek, %i.aem
  %i.ajt = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ajs)
  %i.aju = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.ajt)
  %i.ajv = fadd <4 x float> %i.aju, %i.ajr
  %i.ajw = fadd <4 x float> %i.aga, %i.ajv
  %i.ajx = fsub <4 x float> %i.aep, %i.aer
  %i.ajy = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ajx)
  %i.ajz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.ajy)
  %i.aka = bitcast <4 x float> %i.ajz to <4 x i32>
  %i.akb = and <4 x i32> %i.aka, <i32 -1, i32 -1, i32 -1, i32 0>
  %i.akc = bitcast <4 x i32> %i.akb to <4 x float>
  %i.akd = fadd <4 x float> %i.ajw, %i.akc
  %i.ake = fadd <4 x float> %i.afx, %i.akd
  %i.akf = getelementptr inbounds nuw i8, ptr %i.afg, i64 4
  %i.akg = load <4 x float>, ptr %i.akf, align 4, !tbaa !24, !alias.scope !756
  %i.akh = fsub <4 x float> %i.afq, %i.akg
  %i.aki = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.akh)
  %i.akj = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.aki)
  %i.akk = fadd <4 x float> %i.akj, %i.ake
  %i.akl = fadd <4 x float> %i.afu, %i.akk
  %i.akm = getelementptr inbounds nuw i8, ptr %i.afg, i64 20
  %i.akn = load <4 x float>, ptr %i.akm, align 4, !tbaa !24, !alias.scope !756
  %i.ako = fsub <4 x float> %i.afi, %i.akn
  %i.akp = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ako)
  %i.akq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.akp)
  %i.akr = bitcast <4 x float> %i.akq to <4 x i32>
  %i.aks = and <4 x i32> %i.akr, <i32 -1, i32 -1, i32 -1, i32 0>
  %i.akt = bitcast <4 x i32> %i.aks to <4 x float>
  %i.aku = fadd <4 x float> %i.akl, %i.akt
  %i.akv = fadd <4 x float> %i.afp, %i.aku
  %i.akw = load <4 x float>, ptr %i.afb, align 16, !tbaa !24, !alias.scope !755 ; 3 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.afb, i64 4
  %i.aky = load <4 x float>, ptr %i.akx, align 4, !tbaa !24, !alias.scope !756
  %i.akz = fsub <4 x float> %i.akw, %i.aky
  %i.ala = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.akz)
  %i.alb = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.ala)
  %i.alc = fadd <4 x float> %i.alb, %i.akv
  %i.ald = fsub <4 x float> %i.akw, %i.akw
  %i.ale = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ald)
  %i.alf = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.ale)
  %i.alg = fadd <4 x float> %i.alf, %i.alc
  %i.alh = getelementptr inbounds nuw i8, ptr %i.afb, i64 16
  %i.ali = load <4 x float>, ptr %i.alh, align 16, !tbaa !24, !alias.scope !755 ; 3 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.afb, i64 20
  %i.alk = load <4 x float>, ptr %i.alj, align 4, !tbaa !24, !alias.scope !756
  %i.all = fsub <4 x float> %i.ali, %i.alk
  %i.alm = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.all)
  %i.aln = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.alm)
  %i.alo = bitcast <4 x float> %i.aln to <4 x i32>
  %i.alp = and <4 x i32> %i.alo, <i32 -1, i32 -1, i32 -1, i32 0>
  %i.alq = bitcast <4 x i32> %i.alp to <4 x float>
  %i.alr = fadd <4 x float> %i.alg, %i.alq
  %i.als = fsub <4 x float> %i.ali, %i.ali
  %i.alt = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.als)
  %i.alu = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.060000e-02), <4 x float> %i.alt)
  %i.alv = fadd <4 x float> %i.alu, %i.alr        ; 2 uses
  %i.alw = shufflevector <4 x float> %i.alv, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.alx = fadd <4 x float> %i.alv, %i.alw        ; 2 uses
  %i.aly = shufflevector <4 x float> %i.alx, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.alz = fadd <4 x float> %i.alx, %i.aly
  %i.ama = extractelement <4 x float> %i.alz, i64 0
  %i.amb = fmul float %i.ama, 3.800000e-01
  %i.amc = fsub float 4.200000e-01, %i.amb
  %i.amd = insertelement <4 x float> poison, float %i.amc, i64 0
  %i.ame = shufflevector <4 x float> %i.amd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amf = fadd <4 x float> %i.aac, %i.ame
  %.val69.i.us.i = load i64, ptr %i.vh, align 8   ; 8 uses
  %.val70.i.us.i = load ptr, ptr %i.vi, align 8   ; 8 uses
  %.val73.i.us.i = load i64, ptr %i.vl, align 8   ; 8 uses
  %.val74.i.us.i = load ptr, ptr %i.vm, align 8   ; 8 uses
  %i.amg = mul i64 %.val69.i.us.i, %i.aae
  %i.amh = getelementptr inbounds nuw i8, ptr %.val70.i.us.i, i64 %i.amg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.amh, i64 64) ]
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %.val67.i.us.i
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.ami, i64 %i.wa ; 2 uses
  %i.amk = mul i64 %.val73.i.us.i, %i.aae
  %i.aml = getelementptr inbounds nuw i8, ptr %.val74.i.us.i, i64 %i.amk ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aml, i64 64) ]
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr %i.aml, i64 %.val67.i.us.i
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.amm, i64 %i.wa ; 2 uses
  %i.amo = load <4 x i32>, ptr %i.amj, align 16, !tbaa !24, !alias.scope !758
  %i.amp = load <4 x float>, ptr %i.amn, align 16, !tbaa !24, !alias.scope !759 ; 2 uses
  %i.amq = fadd <4 x float> %i.aao, splat (float f0x3B51AE51)
end_hunk_2
begin_hunk_3_@_ZN3jxl17PassesSharedStateC2EP22JxlMemoryManagerStruct:.lr.ph.i.i.i.i
  store ptr %1, ptr %i.al, align 8, !tbaa !286, !noalias !843
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !287, !noalias !843
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i32 1, ptr %i.an, align 8, !tbaa !288, !noalias !843
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  tail call void @_ZN3jxl22YCbCrChromaSubsamplingC1Ev(ptr noundef nonnull align 8 dereferenceable(22) %i.ao) #27, !noalias !843
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.ap, i8 0, i64 18, i1 false), !noalias !843
  store i32 2, ptr %i.aq, align 4, !tbaa !289, !noalias !843
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ar, i8 0, i64 200, i1 false), !noalias !843
  tail call void @_ZN3jxl13ColorEncodingC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.as) #27, !noalias !843
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, i8 0, i64 32, i1 false), !noalias !843
  %i.au = load ptr, ptr %.ptr.1.i, align 8, !tbaa !315 ; 3 uses
  store ptr %i.al, ptr %.ptr.1.i, align 8, !tbaa !315
  %.not.i.i.1 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.1, label %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.1, label %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.1

_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.1: ; preds = %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit
  tail call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.au) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 504) #30
  br label %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.1

_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.1: ; preds = %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.1, %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit
  %i.av = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #32, !noalias !843 ; 10 uses
  store ptr %1, ptr %i.av, align 8, !tbaa !286, !noalias !843
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr null, ptr %i.aw, align 8, !tbaa !287, !noalias !843
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i32 1, ptr %i.ax, align 8, !tbaa !288, !noalias !843
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  tail call void @_ZN3jxl22YCbCrChromaSubsamplingC1Ev(ptr noundef nonnull align 8 dereferenceable(22) %i.ay) #27, !noalias !843
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.az, i8 0, i64 18, i1 false), !noalias !843
  store i32 2, ptr %i.ba, align 4, !tbaa !289, !noalias !843
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.bb, i8 0, i64 200, i1 false), !noalias !843
  tail call void @_ZN3jxl13ColorEncodingC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.bc) #27, !noalias !843
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i8 0, i64 32, i1 false), !noalias !843
  %i.be = load ptr, ptr %.ptr.2.i, align 8, !tbaa !315 ; 3 uses
  store ptr %i.av, ptr %.ptr.2.i, align 8, !tbaa !315
  %.not.i.i.2 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.2, label %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.2, label %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.2

_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.2: ; preds = %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.1
  tail call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.be) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 504) #30
  br label %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.2

_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.2: ; preds = %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.2, %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.1
  %i.bf = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #32, !noalias !843 ; 10 uses
  store ptr %1, ptr %i.bf, align 8, !tbaa !286, !noalias !843
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr null, ptr %i.bg, align 8, !tbaa !287, !noalias !843
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i32 1, ptr %i.bh, align 8, !tbaa !288, !noalias !843
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  tail call void @_ZN3jxl22YCbCrChromaSubsamplingC1Ev(ptr noundef nonnull align 8 dereferenceable(22) %i.bi) #27, !noalias !843
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.bj, i8 0, i64 18, i1 false), !noalias !843
  store i32 2, ptr %i.bk, align 4, !tbaa !289, !noalias !843
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.bl, i8 0, i64 200, i1 false), !noalias !843
  tail call void @_ZN3jxl13ColorEncodingC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.bm) #27, !noalias !843
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i8 0, i64 32, i1 false), !noalias !843
  %i.bo = load ptr, ptr %.ptr.3.i, align 8, !tbaa !315 ; 3 uses
  store ptr %i.bf, ptr %.ptr.3.i, align 8, !tbaa !315
  %.not.i.i.3 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.3, label %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.3, label %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.3

_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.3: ; preds = %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.2
  tail call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.bo) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 504) #30
  br label %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.3

_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.3: ; preds = %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.3, %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.2
  ret void
}

declare void @_ZN3jxl15DequantMatricesC1Ev(ptr noundef nonnull align 8 dereferenceable(744)) unnamed_addr #5

declare void @_ZN3jxl9QuantizerC1ERKNS_15DequantMatricesE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(744)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl8ACImageTIiED2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl8ACImageTIiED0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK3jxl8ACImageTIiE4TypeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3jxl8ACImageTIiE8PlaneRowEmmm(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %1
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.f, i64 64) ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.g, i64 64) ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK3jxl8ACImageTIiE8PlaneRowEmmm(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %1
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.f, i64 64) ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.g, i64 64) ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK3jxl8ACImageTIiE12PixelsPerRowEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17
  %i.c = lshr i64 %i.b, 2
  ret i64 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl8ACImageTIiE8ZeroFillEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !26   ; 2 uses
  %.not13.i = icmp eq i32 %i.d, 0
  br i1 %.not13.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.g
  %.not13.1.i = icmp eq i32 %i.at, 0
  br i1 %.not13.1.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %._crit_edge.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = icmp eq i32 %.pr.i, 0
  br i1 %i.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.split.1.i

.lr.ph.split.1.i:                                 ; preds = %.lr.ph.1.i, %bb.c
  %.pr41.i5 = phi i32 [ %.pr41.i, %bb.c ], [ %.pr.i, %.lr.ph.1.i ]
  %i.j = phi i32 [ %i.r, %bb.c ], [ %i.at, %.lr.ph.1.i ]
  %i.k = phi i32 [ %i.s, %bb.c ], [ %.pr.i, %.lr.ph.1.i ] ; 2 uses
  %.011.1.i = phi i64 [ %i.t, %bb.c ], [ 0, %.lr.ph.1.i ] ; 2 uses
  %.not.1.i = icmp eq i32 %i.k, 0
  br i1 %.not.1.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.1.i
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 64) ]
  %i.n = load i64, ptr %i.c, align 8, !tbaa !17
  %i.o = mul i64 %i.n, %.011.1.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.p, i64 64) ]
  %i.q = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.p, i8 0, i64 %i.q, i1 false)
  %.pre17.i = load i32, ptr %i.a, align 8, !tbaa !25 ; 2 uses
  %.pre19.i = load i32, ptr %i.b, align 4, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.1.i
  %.pr41.i = phi i32 [ %.pre17.i, %bb.b ], [ %.pr41.i5, %.lr.ph.split.1.i ] ; 3 uses
  %i.r = phi i32 [ %.pre19.i, %bb.b ], [ %i.j, %.lr.ph.split.1.i ] ; 4 uses
  %i.s = phi i32 [ %.pre17.i, %bb.b ], [ 0, %.lr.ph.split.1.i ]
  %i.t = add nuw nsw i64 %.011.1.i, 1             ; 2 uses
  %i.u = zext i32 %i.r to i64
  %i.v = icmp samesign ult i64 %i.t, %i.u
  br i1 %i.v, label %.lr.ph.split.1.i, label %._crit_edge.1.i, !llvm.loop !844

._crit_edge.1.i:                                  ; preds = %bb.c
  %.not13.2.i = icmp eq i32 %i.r, 0
  br i1 %.not13.2.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %._crit_edge.1.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.x = icmp eq i32 %.pr41.i, 0
  br i1 %i.x, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.split.2.i

.lr.ph.split.2.i:                                 ; preds = %.lr.ph.2.i, %bb.e
  %i.y = phi i32 [ %i.ag, %bb.e ], [ %i.r, %.lr.ph.2.i ]
  %i.z = phi i32 [ %i.ah, %bb.e ], [ %.pr41.i, %.lr.ph.2.i ] ; 2 uses
  %.011.2.i = phi i64 [ %i.ai, %bb.e ], [ 0, %.lr.ph.2.i ] ; 2 uses
  %.not.2.i = icmp eq i32 %i.z, 0
  br i1 %.not.2.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.2.i
  %i.aa = zext i32 %i.z to i64
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !22  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ab, i64 64) ]
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !17
  %i.ad = mul i64 %i.ac, %.011.2.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ae, i64 64) ]
  %i.af = shl nuw nsw i64 %i.aa, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.ae, i8 0, i64 %i.af, i1 false)
  %.pre20.i = load i32, ptr %i.a, align 8, !tbaa !25
  %.pre22.i = load i32, ptr %i.b, align 4, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.2.i
  %i.ag = phi i32 [ %.pre22.i, %bb.d ], [ %i.y, %.lr.ph.split.2.i ] ; 2 uses
  %i.ah = phi i32 [ %.pre20.i, %bb.d ], [ 0, %.lr.ph.split.2.i ]
  %i.ai = add nuw nsw i64 %.011.2.i, 1            ; 2 uses
  %i.aj = zext i32 %i.ag to i64
  %i.ak = icmp samesign ult i64 %i.ai, %i.aj
  br i1 %i.ak, label %.lr.ph.split.2.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, !llvm.loop !844

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.g
  %.pr.i3 = phi i32 [ %.pr.i, %bb.g ], [ %i.f, %.lr.ph.i ]
  %i.al = phi i32 [ %i.at, %bb.g ], [ %i.d, %.lr.ph.i ]
  %i.am = phi i32 [ %i.au, %bb.g ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %.011.i = phi i64 [ %i.av, %bb.g ], [ 0, %.lr.ph.i ] ; 2 uses
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.i
  %i.an = zext i32 %i.am to i64
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !22  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ao, i64 64) ]
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !17
  %i.aq = mul i64 %i.ap, %.011.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ar, i64 64) ]
  %i.as = shl nuw nsw i64 %i.an, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.ar, i8 0, i64 %i.as, i1 false)
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !25 ; 2 uses
  %.pre16.i = load i32, ptr %i.b, align 4, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.i
  %.pr.i = phi i32 [ %.pre.i, %bb.f ], [ %.pr.i3, %.lr.ph.split.i ] ; 4 uses
  %i.at = phi i32 [ %.pre16.i, %bb.f ], [ %i.al, %.lr.ph.split.i ] ; 4 uses
  %i.au = phi i32 [ %.pre.i, %bb.f ], [ 0, %.lr.ph.split.i ]
  %i.av = add nuw nsw i64 %.011.i, 1              ; 2 uses
  %i.aw = zext i32 %i.at to i64
  %i.ax = icmp samesign ult i64 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !844

_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit: ; preds = %bb.e, %bb.a, %.lr.ph.i, %._crit_edge.i, %.lr.ph.1.i, %._crit_edge.1.i, %.lr.ph.2.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl8ACImageTIiE13ZeroFillPlaneEm(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %i.a, i64 %1 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !25
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.07.i = phi i64 [ 0, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.j = load i64, ptr %i.h, align 8, !tbaa !17
  %i.k = mul i64 %i.j, %.07.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.l, i64 64) ]
  %i.m = load i32, ptr %i.b, align 8, !tbaa !25
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.l, i8 0, i64 %i.o, i1 false)
  %i.p = add nuw nsw i64 %.07.i, 1                ; 2 uses
  %i.q = load i32, ptr %i.e, align 4, !tbaa !26
  %i.r = zext i32 %i.q to i64
  %i.s = icmp samesign ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.b, label %_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit, !llvm.loop !846

_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit:  ; preds = %bb.b, %bb.a, %.preheader.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3jxl8ACImageTIiE7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 0
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  ret i1 %i.g
}

declare void @_ZN3jxl22YCbCrChromaSubsamplingC1Ev(ptr noundef nonnull align 8 dereferenceable(22)) unnamed_addr #5

declare void @_ZN3jxl13ColorEncodingC1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #5

declare void @_ZN3jxl18GetUpsamplingStageEP22JxlMemoryManagerStructRKNS_19CustomTransformDataEmm(ptr dead_on_unwind writable sret(%"class.std::__1::unique_ptr.234") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(1220), i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 -1, 1) i32 @"_ZN3jxl10ThreadPool12RunCallStateIZNS_12_GLOBAL__N_114RoundtripImageERKNS_11FrameHeaderERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePS0_E3$_0ZNS2_14RoundtripImageES5_S9_SB_SE_SF_E3$_1E12CallInitFuncEPvm"(ptr nofree noundef captures(none) %0, i64 noundef %1) #4 align 2 {
bb.a:
  %2 = alloca %"class.jxl::StatusOr.319", align 8 ; 11 uses
  %3 = alloca %"class.jxl::AlignedArray", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !849, !nonnull !78, !align !236 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !851, !nonnull !78, !align !236
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !300
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 3104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !317
  %i.f = tail call i32 @_ZN3jxl14RenderPipeline17PrepareForThreadsEmb(ptr noundef nonnull align 8 dereferenceable(256) %i.e, i64 noundef %1, i1 noundef zeroext false) #27
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %"_ZZN3jxl12_GLOBAL__N_114RoundtripImageERKNS_11FrameHeaderERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEENK3$_0clEm.exit.thread"

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !852, !nonnull !78, !align !236
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !203
  call void @_ZN3jxl12AlignedArrayINS_13GroupDecCacheEE6CreateEP22JxlMemoryManagerStructm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.319") align 8 %2, ptr noundef %i.j, i64 noundef %1) #29
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !319
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %"_ZZN3jxl12_GLOBAL__N_114RoundtripImageERKNS_11FrameHeaderERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEENK3$_0clEm.exit"

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false), !alias.scope !853
  %i.o = load i64, ptr %2, align 8, !tbaa !313, !noalias !853
  store i64 %i.o, ptr %3, align 8, !tbaa !313, !alias.scope !853
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.p) #27 ; 0 uses
  store i64 0, ptr %2, align 8, !tbaa !313, !noalias !853
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !854, !nonnull !78, !align !236 ; 3 uses
  %i.t = icmp eq ptr %i.s, %3
  %.pr.i = load i64, ptr %3, align 8, !tbaa !313  ; 2 uses
  br i1 %i.t, label %_ZN3jxl12AlignedArrayINS_13GroupDecCacheEEaSEOS2_.exit.i, label %_ZN3jxl12AlignedArrayINS_13GroupDecCacheEEaSEOS2_.exit.thread.i

_ZN3jxl12AlignedArrayINS_13GroupDecCacheEEaSEOS2_.exit.thread.i: ; preds = %bb.c
  store i64 %.pr.i, ptr %i.s, align 8, !tbaa !313
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.n) #27 ; 0 uses
  store i64 0, ptr %3, align 8, !tbaa !313
  br label %.loopexit.i

_ZN3jxl12AlignedArrayINS_13GroupDecCacheEEaSEOS2_.exit.i: ; preds = %bb.c
  %.not.i.i = icmp eq i64 %.pr.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN3jxl12AlignedArrayINS_13GroupDecCacheEEaSEOS2_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.04.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [2048 x i8], ptr %i.x, i64 %.04.i.i
  call void @_ZN3jxl13GroupDecCacheD2Ev(ptr noundef nonnull align 64 dead_on_return(2016) dereferenceable(2016) %i.y) #27
  %i.z = add nuw i64 %.04.i.i, 1                  ; 2 uses
  %i.aa = load i64, ptr %3, align 8, !tbaa !313
  %i.ab = icmp ult i64 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !2

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %_ZN3jxl12AlignedArrayINS_13GroupDecCacheEEaSEOS2_.exit.i, %_ZN3jxl12AlignedArrayINS_13GroupDecCacheEEaSEOS2_.exit.thread.i
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.n) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.pr12.i = load i32, ptr %i.k, align 8, !tbaa !319
  %i.ac = icmp eq i32 %.pr12.i, 0
  br i1 %i.ac, label %bb.d, label %"_ZZN3jxl12_GLOBAL__N_114RoundtripImageERKNS_11FrameHeaderERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEENK3$_0clEm.exit.thread5"

bb.d:                                             ; preds = %.loopexit.i
  %i.ad = load i64, ptr %2, align 8, !tbaa !313
  %.not.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i, label %_ZN3jxl12AlignedArrayINS_13GroupDecCacheEED2Ev.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.04.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [2048 x i8], ptr %i.af, i64 %.04.i.i.i
  call void @_ZN3jxl13GroupDecCacheD2Ev(ptr noundef nonnull align 64 dead_on_return(2016) dereferenceable(2016) %i.ag) #27
  %i.ah = add nuw i64 %.04.i.i.i, 1               ; 2 uses
  %i.ai = load i64, ptr %2, align 8, !tbaa !313
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i.i, label %_ZN3jxl12AlignedArrayINS_13GroupDecCacheEED2Ev.exit.i.i, !llvm.loop !2

_ZN3jxl12AlignedArrayINS_13GroupDecCacheEED2Ev.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #27
  br label %"_ZZN3jxl12_GLOBAL__N_114RoundtripImageERKNS_11FrameHeaderERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEENK3$_0clEm.exit.thread5"

"_ZZN3jxl12_GLOBAL__N_114RoundtripImageERKNS_11FrameHeaderERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEENK3$_0clEm.exit.thread5": ; preds = %.loopexit.i, %_ZN3jxl12AlignedArrayINS_13GroupDecCacheEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.e

"_ZZN3jxl12_GLOBAL__N_114RoundtripImageERKNS_11FrameHeaderERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEENK3$_0clEm.exit": ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %"_ZZN3jxl12_GLOBAL__N_114RoundtripImageERKNS_11FrameHeaderERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEENK3$_0clEm.exit.thread"

"_ZZN3jxl12_GLOBAL__N_114RoundtripImageERKNS_11FrameHeaderERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEENK3$_0clEm.exit.thread": ; preds = %bb.a, %"_ZZN3jxl12_GLOBAL__N_114RoundtripImageERKNS_11FrameHeaderERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEENK3$_0clEm.exit"
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i32 1, ptr %i.ak seq_cst, align 8
  br label %bb.e

bb.e:                                             ; preds = %"_ZZN3jxl12_GLOBAL__N_114RoundtripImageERKNS_11FrameHeaderERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEENK3$_0clEm.exit.thread5", %"_ZZN3jxl12_GLOBAL__N_114RoundtripImageERKNS_11FrameHeaderERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEENK3$_0clEm.exit.thread"
  %.0 = phi i32 [ -1, %"_ZZN3jxl12_GLOBAL__N_114RoundtripImageERKNS_11FrameHeaderERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEENK3$_0clEm.exit.thread" ], [ 0, %"_ZZN3jxl12_GLOBAL__N_114RoundtripImageERKNS_11FrameHeaderERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEENK3$_0clEm.exit.thread5" ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3jxl10ThreadPool12RunCallStateIZNS_12_GLOBAL__N_114RoundtripImageERKNS_11FrameHeaderERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePS0_E3$_0ZNS2_14RoundtripImageES5_S9_SB_SE_SF_E3$_1E12CallDataFuncEPvjm"(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef %2) #4 align 2 {
bb.a:
  %3 = alloca %"class.jxl::RectT", align 8        ; 7 uses
  %4 = alloca %"class.jxl::RenderPipelineInput", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load atomic i32, ptr %i.a seq_cst, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.h
end_hunk_3
