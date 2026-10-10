Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86?download=true
inline.NumInlined: 231
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 115
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib:bb.a
  %i.bgu = load float, ptr %i.bgq, align 4, !tbaa !67
  %i.bgv = load float, ptr %i.bgr, align 4, !tbaa !67
  %i.bgw = insertelement <4 x float> poison, float %i.bgs, i64 0
  %i.bgx = insertelement <4 x float> %i.bgw, float %i.bgt, i64 1
  %i.bgy = insertelement <4 x float> %i.bgx, float %i.bgu, i64 2
  %i.bgz = insertelement <4 x float> %i.bgy, float %i.bgv, i64 3 ; 2 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %next.gep2064, i64 8
  %i.bhb = getelementptr i8, ptr %i.bff, i64 40
  %i.bhc = getelementptr i8, ptr %i.bfg, i64 72
  %i.bhd = getelementptr i8, ptr %i.bfh, i64 104
  %i.bhe = load float, ptr %i.bha, align 4, !tbaa !67
  %i.bhf = load float, ptr %i.bhb, align 4, !tbaa !67
  %i.bhg = load float, ptr %i.bhc, align 4, !tbaa !67
  %i.bhh = load float, ptr %i.bhd, align 4, !tbaa !67
  %i.bhi = insertelement <4 x float> poison, float %i.bhe, i64 0
  %i.bhj = insertelement <4 x float> %i.bhi, float %i.bhf, i64 1
  %i.bhk = insertelement <4 x float> %i.bhj, float %i.bhg, i64 2
  %i.bhl = insertelement <4 x float> %i.bhk, float %i.bhh, i64 3
  %i.bhm = fmul fast <4 x float> %i.bhl, %i.bgz
  %i.bhn = fadd fast <4 x float> %i.bhm, %vec.phi2058 ; 2 uses
  %i.bho = getelementptr inbounds nuw i8, ptr %next.gep2064, i64 12
  %i.bhp = getelementptr i8, ptr %i.bff, i64 44
  %i.bhq = getelementptr i8, ptr %i.bfg, i64 76
  %i.bhr = getelementptr i8, ptr %i.bfh, i64 108
  %i.bhs = load float, ptr %i.bho, align 4, !tbaa !67
  %i.bht = load float, ptr %i.bhp, align 4, !tbaa !67
  %i.bhu = load float, ptr %i.bhq, align 4, !tbaa !67
  %i.bhv = load float, ptr %i.bhr, align 4, !tbaa !67
  %i.bhw = insertelement <4 x float> poison, float %i.bhs, i64 0
  %i.bhx = insertelement <4 x float> %i.bhw, float %i.bht, i64 1
  %i.bhy = insertelement <4 x float> %i.bhx, float %i.bhu, i64 2
  %i.bhz = insertelement <4 x float> %i.bhy, float %i.bhv, i64 3
  %i.bia = fmul fast <4 x float> %i.bhz, %i.bgz
  %i.bib = fadd fast <4 x float> %i.bia, %vec.phi2054 ; 2 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %next.gep2060, i64 8
  %i.bid = getelementptr i8, ptr %i.bfb, i64 24
  %i.bie = getelementptr i8, ptr %i.bfc, i64 40
  %i.bif = getelementptr i8, ptr %i.bfd, i64 56
  %i.big = load float, ptr %i.bic, align 4, !tbaa !67
  %i.bih = load float, ptr %i.bid, align 4, !tbaa !67
  %i.bii = load float, ptr %i.bie, align 4, !tbaa !67
  %i.bij = load float, ptr %i.bif, align 4, !tbaa !67
  %i.bik = insertelement <4 x float> poison, float %i.big, i64 0
  %i.bil = insertelement <4 x float> %i.bik, float %i.bih, i64 1
  %i.bim = insertelement <4 x float> %i.bil, float %i.bii, i64 2
  %i.bin = insertelement <4 x float> %i.bim, float %i.bij, i64 3 ; 2 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %next.gep2064, i64 16
  %i.bip = getelementptr i8, ptr %i.bff, i64 48
  %i.biq = getelementptr i8, ptr %i.bfg, i64 80
  %i.bir = getelementptr i8, ptr %i.bfh, i64 112
  %i.bis = load float, ptr %i.bio, align 4, !tbaa !67
  %i.bit = load float, ptr %i.bip, align 4, !tbaa !67
  %i.biu = load float, ptr %i.biq, align 4, !tbaa !67
  %i.biv = load float, ptr %i.bir, align 4, !tbaa !67
  %i.biw = insertelement <4 x float> poison, float %i.bis, i64 0
  %i.bix = insertelement <4 x float> %i.biw, float %i.bit, i64 1
  %i.biy = insertelement <4 x float> %i.bix, float %i.biu, i64 2
  %i.biz = insertelement <4 x float> %i.biy, float %i.biv, i64 3
  %i.bja = fmul fast <4 x float> %i.biz, %i.bin
  %i.bjb = fadd fast <4 x float> %i.bja, %vec.phi2057 ; 2 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %next.gep2064, i64 20
  %i.bjd = getelementptr i8, ptr %i.bff, i64 52
  %i.bje = getelementptr i8, ptr %i.bfg, i64 84
  %i.bjf = getelementptr i8, ptr %i.bfh, i64 116
  %i.bjg = load float, ptr %i.bjc, align 4, !tbaa !67
  %i.bjh = load float, ptr %i.bjd, align 4, !tbaa !67
  %i.bji = load float, ptr %i.bje, align 4, !tbaa !67
  %i.bjj = load float, ptr %i.bjf, align 4, !tbaa !67
  %i.bjk = insertelement <4 x float> poison, float %i.bjg, i64 0
  %i.bjl = insertelement <4 x float> %i.bjk, float %i.bjh, i64 1
  %i.bjm = insertelement <4 x float> %i.bjl, float %i.bji, i64 2
  %i.bjn = insertelement <4 x float> %i.bjm, float %i.bjj, i64 3
  %i.bjo = fmul fast <4 x float> %i.bjn, %i.bin
  %i.bjp = fadd fast <4 x float> %i.bjo, %vec.phi2053 ; 2 uses
  %i.bjq = getelementptr inbounds nuw i8, ptr %next.gep2060, i64 12
  %i.bjr = getelementptr i8, ptr %i.bfb, i64 28
  %i.bjs = getelementptr i8, ptr %i.bfc, i64 44
  %i.bjt = getelementptr i8, ptr %i.bfd, i64 60
  %i.bju = load float, ptr %i.bjq, align 4, !tbaa !67
  %i.bjv = load float, ptr %i.bjr, align 4, !tbaa !67
  %i.bjw = load float, ptr %i.bjs, align 4, !tbaa !67
  %i.bjx = load float, ptr %i.bjt, align 4, !tbaa !67
  %i.bjy = insertelement <4 x float> poison, float %i.bju, i64 0
  %i.bjz = insertelement <4 x float> %i.bjy, float %i.bjv, i64 1
  %i.bka = insertelement <4 x float> %i.bjz, float %i.bjw, i64 2
  %i.bkb = insertelement <4 x float> %i.bka, float %i.bjx, i64 3 ; 2 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr %next.gep2064, i64 24
  %i.bkd = getelementptr i8, ptr %i.bff, i64 56
  %i.bke = getelementptr i8, ptr %i.bfg, i64 88
  %i.bkf = getelementptr i8, ptr %i.bfh, i64 120
  %i.bkg = load float, ptr %i.bkc, align 4, !tbaa !67
  %i.bkh = load float, ptr %i.bkd, align 4, !tbaa !67
  %i.bki = load float, ptr %i.bke, align 4, !tbaa !67
  %i.bkj = load float, ptr %i.bkf, align 4, !tbaa !67
  %i.bkk = insertelement <4 x float> poison, float %i.bkg, i64 0
  %i.bkl = insertelement <4 x float> %i.bkk, float %i.bkh, i64 1
  %i.bkm = insertelement <4 x float> %i.bkl, float %i.bki, i64 2
  %i.bkn = insertelement <4 x float> %i.bkm, float %i.bkj, i64 3
  %i.bko = fmul fast <4 x float> %i.bkn, %i.bkb
  %i.bkp = fadd fast <4 x float> %i.bko, %vec.phi2056 ; 2 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %next.gep2064, i64 28
  %i.bkr = getelementptr i8, ptr %i.bff, i64 60
  %i.bks = getelementptr i8, ptr %i.bfg, i64 92
  %i.bkt = getelementptr i8, ptr %i.bfh, i64 124
  %i.bku = load float, ptr %i.bkq, align 4, !tbaa !67
  %i.bkv = load float, ptr %i.bkr, align 4, !tbaa !67
  %i.bkw = load float, ptr %i.bks, align 4, !tbaa !67
  %i.bkx = load float, ptr %i.bkt, align 4, !tbaa !67
  %i.bky = insertelement <4 x float> poison, float %i.bku, i64 0
  %i.bkz = insertelement <4 x float> %i.bky, float %i.bkv, i64 1
  %i.bla = insertelement <4 x float> %i.bkz, float %i.bkw, i64 2
  %i.blb = insertelement <4 x float> %i.bla, float %i.bkx, i64 3
  %i.blc = fmul fast <4 x float> %i.blb, %i.bkb
  %i.bld = fadd fast <4 x float> %i.blc, %vec.phi2052 ; 2 uses
  %index.next2068 = add nuw i64 %index2051, 4     ; 2 uses
  %i.ble = icmp eq i64 %index.next2068, %n.vec2049
  br i1 %i.ble, label %middle.block2069, label %vector.body2050, !llvm.loop !338

middle.block2069:                                 ; preds = %vector.body2050
  %i.blf = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bld)
  %i.blg = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bjp)
  %i.blh = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bib)
  %i.bli = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bgn)
  %i.blj = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bkp)
  %i.blk = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bjb)
  %i.bll = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bhn)
  %i.blm = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bfz)
  %i.bln = insertelement <2 x float> poison, float %i.blm, i64 0
  %i.blo = insertelement <2 x float> %i.bln, float %i.bli, i64 1 ; 2 uses
  %i.blp = insertelement <2 x float> poison, float %i.bll, i64 0
  %i.blq = insertelement <2 x float> %i.blp, float %i.blh, i64 1 ; 2 uses
  %i.blr = insertelement <2 x float> poison, float %i.blk, i64 0
  %i.bls = insertelement <2 x float> %i.blr, float %i.blg, i64 1 ; 2 uses
  %i.blt = insertelement <2 x float> poison, float %i.blj, i64 0
  %i.blu = insertelement <2 x float> %i.blt, float %i.blf, i64 1 ; 2 uses
  br i1 %cmp.n2070, label %._crit_edge1352.loopexit, label %.lr.ph1351.preheader2085

.lr.ph1351.preheader2085:                         ; preds = %.lr.ph1351.preheader, %middle.block2069
  %.012021341.ph = phi i32 [ 0, %.lr.ph1351.preheader ], [ %i.aax, %middle.block2069 ]
  %.012041340.ph = phi ptr [ %.212801424, %.lr.ph1351.preheader ], [ %i.baw, %middle.block2069 ]
  %.101339.ph = phi ptr [ %.91378, %.lr.ph1351.preheader ], [ %i.bez, %middle.block2069 ]
  %.ph2086 = phi <2 x float> [ zeroinitializer, %.lr.ph1351.preheader ], [ %i.blo, %middle.block2069 ]
  %.ph2087 = phi <2 x float> [ zeroinitializer, %.lr.ph1351.preheader ], [ %i.blq, %middle.block2069 ]
  %.ph2088 = phi <2 x float> [ zeroinitializer, %.lr.ph1351.preheader ], [ %i.bls, %middle.block2069 ]
  %.ph2089 = phi <2 x float> [ zeroinitializer, %.lr.ph1351.preheader ], [ %i.blu, %middle.block2069 ]
  br label %.lr.ph1351

.lr.ph1351:                                       ; preds = %.lr.ph1351.preheader2085, %.lr.ph1351
  %.012021341 = phi i32 [ %i.bmv, %.lr.ph1351 ], [ %.012021341.ph, %.lr.ph1351.preheader2085 ]
  %.012041340 = phi ptr [ %i.bmt, %.lr.ph1351 ], [ %.012041340.ph, %.lr.ph1351.preheader2085 ] ; 2 uses
  %.101339 = phi ptr [ %i.bmu, %.lr.ph1351 ], [ %.101339.ph, %.lr.ph1351.preheader2085 ] ; 5 uses
  %i.blv = phi <2 x float> [ %i.bmg, %.lr.ph1351 ], [ %.ph2086, %.lr.ph1351.preheader2085 ]
  %i.blw = phi <2 x float> [ %i.bmk, %.lr.ph1351 ], [ %.ph2087, %.lr.ph1351.preheader2085 ]
  %i.blx = phi <2 x float> [ %i.bmo, %.lr.ph1351 ], [ %.ph2088, %.lr.ph1351.preheader2085 ]
  %i.bly = phi <2 x float> [ %i.bms, %.lr.ph1351 ], [ %.ph2089, %.lr.ph1351.preheader2085 ]
  %i.blz = getelementptr inbounds nuw i8, ptr %.101339, i64 8
  %i.bma = getelementptr inbounds nuw i8, ptr %.101339, i64 16
  %i.bmb = getelementptr inbounds nuw i8, ptr %.101339, i64 24
  %i.bmc = load <2 x float>, ptr %.101339, align 4, !tbaa !67
  %i.bmd = load <4 x float>, ptr %.012041340, align 4, !tbaa !67 ; 4 uses
  %i.bme = shufflevector <4 x float> %i.bmd, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bmf = fmul fast <2 x float> %i.bmc, %i.bme
  %i.bmg = fadd fast <2 x float> %i.bmf, %i.blv   ; 2 uses
  %i.bmh = load <2 x float>, ptr %i.blz, align 4, !tbaa !67
  %i.bmi = shufflevector <4 x float> %i.bmd, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bmj = fmul fast <2 x float> %i.bmh, %i.bmi
  %i.bmk = fadd fast <2 x float> %i.bmj, %i.blw   ; 2 uses
  %i.bml = load <2 x float>, ptr %i.bma, align 4, !tbaa !67
  %i.bmm = shufflevector <4 x float> %i.bmd, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bmn = fmul fast <2 x float> %i.bml, %i.bmm
  %i.bmo = fadd fast <2 x float> %i.bmn, %i.blx   ; 2 uses
  %i.bmp = load <2 x float>, ptr %i.bmb, align 4, !tbaa !67
  %i.bmq = shufflevector <4 x float> %i.bmd, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.bmr = fmul fast <2 x float> %i.bmp, %i.bmq
  %i.bms = fadd fast <2 x float> %i.bmr, %i.bly   ; 2 uses
  %i.bmt = getelementptr inbounds nuw i8, ptr %.012041340, i64 16 ; 2 uses
  %i.bmu = getelementptr inbounds nuw i8, ptr %.101339, i64 32
  %i.bmv = add nuw nsw i32 %.012021341, 4         ; 2 uses
  %i.bmw = or disjoint i32 %i.bmv, 3
  %i.bmx = icmp slt i32 %i.bmw, %8
  br i1 %i.bmx, label %.lr.ph1351, label %._crit_edge1352.loopexit, !llvm.loop !339

._crit_edge1352.loopexit:                         ; preds = %.lr.ph1351, %middle.block2069
  %.lcssa1818 = phi ptr [ %i.baw, %middle.block2069 ], [ %i.bmt, %.lr.ph1351 ]
  %i.bmy = phi <2 x float> [ %i.blo, %middle.block2069 ], [ %i.bmg, %.lr.ph1351 ]
  %i.bmz = phi <2 x float> [ %i.blq, %middle.block2069 ], [ %i.bmk, %.lr.ph1351 ]
  %i.bna = phi <2 x float> [ %i.bls, %middle.block2069 ], [ %i.bmo, %.lr.ph1351 ]
  %i.bnb = phi <2 x float> [ %i.blu, %middle.block2069 ], [ %i.bms, %.lr.ph1351 ]
  %i.bnc = getelementptr i8, ptr %.91378, i64 %i.aas
  %scevgep1604 = getelementptr i8, ptr %i.bnc, i64 32
  %i.bnd = fadd fast <2 x float> %i.bmy, %i.bey
  %i.bne = fadd fast <2 x float> %i.bnd, %i.bmz
  %i.bnf = fadd fast <2 x float> %i.bne, %i.bna
  %i.bng = fadd fast <2 x float> %i.bnf, %i.bnb
  br label %._crit_edge1352

._crit_edge1352:                                  ; preds = %._crit_edge1352.loopexit, %bb.fh
  %.10.lcssa = phi ptr [ %.91378, %bb.fh ], [ %scevgep1604, %._crit_edge1352.loopexit ] ; 5 uses
  %.01204.lcssa = phi ptr [ %.212801424, %bb.fh ], [ %.lcssa1818, %._crit_edge1352.loopexit ] ; 3 uses
  %.01202.lcssa = phi i32 [ 0, %bb.fh ], [ %i.aan, %._crit_edge1352.loopexit ] ; 4 uses
  %i.bnh = phi <2 x float> [ %i.bey, %bb.fh ], [ %i.bng, %._crit_edge1352.loopexit ] ; 4 uses
  %i.bni = icmp slt i32 %.01202.lcssa, %8
  %i.bnj = extractelement <2 x float> %i.bnh, i64 0
  %i.bnk = extractelement <2 x float> %i.bnh, i64 1
  br i1 %i.bni, label %.lr.ph1370.preheader, label %._crit_edge1371

.lr.ph1370.preheader:                             ; preds = %._crit_edge1352
  %i.bnl = xor i32 %.01202.lcssa, -1
  %i.bnm = add i32 %8, %i.bnl                     ; 2 uses
  %i.bnn = zext i32 %i.bnm to i64
  %i.bno = add nuw nsw i64 %i.bnn, 1              ; 2 uses
  %min.iters.check2016 = icmp ult i32 %i.bnm, 7
  br i1 %min.iters.check2016, label %.lr.ph1370.preheader2084, label %vector.ph2017

vector.ph2017:                                    ; preds = %.lr.ph1370.preheader
  %n.vec2018 = and i64 %i.bno, 8589934584         ; 5 uses
  %i.bnp = trunc i64 %n.vec2018 to i32
  %i.bnq = add i32 %.01202.lcssa, %i.bnp
  %i.bnr = shl nuw nsw i64 %n.vec2018, 2
  %i.bns = getelementptr i8, ptr %.01204.lcssa, i64 %i.bnr
  %i.bnt = shl nuw nsw i64 %n.vec2018, 3
  %i.bnu = getelementptr i8, ptr %.10.lcssa, i64 %i.bnt ; 2 uses
  %i.bnv = shufflevector <2 x float> %i.bnh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bnw = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.bnv, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.bnx = shufflevector <4 x float> %i.bnv, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body2019

vector.body2019:                                  ; preds = %vector.body2019, %vector.ph2017
  %index2020 = phi i64 [ 0, %vector.ph2017 ], [ %index.next2036, %vector.body2019 ] ; 3 uses
  %vec.phi2021 = phi <4 x float> [ %i.bnw, %vector.ph2017 ], [ %i.boi, %vector.body2019 ]
  %vec.phi2022 = phi <4 x float> [ zeroinitializer, %vector.ph2017 ], [ %i.boj, %vector.body2019 ]
  %vec.phi2023 = phi <4 x float> [ %i.bnx, %vector.ph2017 ], [ %i.boe, %vector.body2019 ]
  %vec.phi2024 = phi <4 x float> [ zeroinitializer, %vector.ph2017 ], [ %i.bof, %vector.body2019 ]
  %i.bny = shl i64 %index2020, 2
  %next.gep2025 = getelementptr i8, ptr %.01204.lcssa, i64 %i.bny ; 2 uses
  %i.bnz = shl i64 %index2020, 3                  ; 2 uses
  %next.gep2026 = getelementptr i8, ptr %.10.lcssa, i64 %i.bnz
  %i.boa = getelementptr i8, ptr %.10.lcssa, i64 %i.bnz
  %next.gep2027 = getelementptr i8, ptr %i.boa, i64 32
  %i.bob = getelementptr i8, ptr %next.gep2025, i64 16
  %wide.load2028 = load <4 x float>, ptr %next.gep2025, align 4, !tbaa !67 ; 2 uses
  %wide.load2029 = load <4 x float>, ptr %i.bob, align 4, !tbaa !67 ; 2 uses
  %wide.vec2030 = load <8 x float>, ptr %next.gep2026, align 4, !tbaa !67 ; 2 uses
  %strided.vec2031 = shufflevector <8 x float> %wide.vec2030, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec2032 = shufflevector <8 x float> %wide.vec2030, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec2033 = load <8 x float>, ptr %next.gep2027, align 4, !tbaa !67 ; 2 uses
  %strided.vec2034 = shufflevector <8 x float> %wide.vec2033, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec2035 = shufflevector <8 x float> %wide.vec2033, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.boc = fmul fast <4 x float> %strided.vec2031, %wide.load2028
  %i.bod = fmul fast <4 x float> %strided.vec2034, %wide.load2029
  %i.boe = fadd fast <4 x float> %i.boc, %vec.phi2023 ; 2 uses
  %i.bof = fadd fast <4 x float> %i.bod, %vec.phi2024 ; 2 uses
  %i.bog = fmul fast <4 x float> %strided.vec2032, %wide.load2028
  %i.boh = fmul fast <4 x float> %strided.vec2035, %wide.load2029
  %i.boi = fadd fast <4 x float> %i.bog, %vec.phi2021 ; 2 uses
  %i.boj = fadd fast <4 x float> %i.boh, %vec.phi2022 ; 2 uses
  %index.next2036 = add nuw i64 %index2020, 8     ; 2 uses
  %i.bok = icmp eq i64 %index.next2036, %n.vec2018
  br i1 %i.bok, label %middle.block2037, label %vector.body2019, !llvm.loop !340

middle.block2037:                                 ; preds = %vector.body2019
  %bin.rdx2038 = fadd fast <4 x float> %i.boj, %i.boi
  %i.bol = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx2038) ; 2 uses
  %bin.rdx2039 = fadd fast <4 x float> %i.bof, %i.boe
  %i.bom = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx2039) ; 2 uses
  %cmp.n2040 = icmp eq i64 %i.bno, %n.vec2018
  %10 = insertelement <2 x float> poison, float %i.bom, i64 0
  %11 = insertelement <2 x float> %10, float %i.bol, i64 1
  br i1 %cmp.n2040, label %._crit_edge1371, label %.lr.ph1370.preheader2084

.lr.ph1370.preheader2084:                         ; preds = %.lr.ph1370.preheader, %middle.block2037
  %.112031368.ph = phi i32 [ %.01202.lcssa, %.lr.ph1370.preheader ], [ %i.bnq, %middle.block2037 ]
  %.112051367.ph = phi ptr [ %.01204.lcssa, %.lr.ph1370.preheader ], [ %i.bns, %middle.block2037 ]
  %.111364.ph = phi ptr [ %.10.lcssa, %.lr.ph1370.preheader ], [ %i.bnu, %middle.block2037 ]
  %.ph2085 = phi <2 x float> [ %i.bnh, %.lr.ph1370.preheader ], [ %11, %middle.block2037 ]
  br label %.lr.ph1370

.lr.ph1370:                                       ; preds = %.lr.ph1370.preheader2084, %.lr.ph1370
  %.112031368 = phi i32 [ %i.boq, %.lr.ph1370 ], [ %.112031368.ph, %.lr.ph1370.preheader2084 ]
  %.112051367 = phi ptr [ %i.boo, %.lr.ph1370 ], [ %.112051367.ph, %.lr.ph1370.preheader2084 ] ; 2 uses
  %.111364 = phi ptr [ %i.bop, %.lr.ph1370 ], [ %.111364.ph, %.lr.ph1370.preheader2084 ] ; 2 uses
  %12 = phi <2 x float> [ %17, %.lr.ph1370 ], [ %.ph2085, %.lr.ph1370.preheader2084 ]
  %i.bon = load float, ptr %.112051367, align 4, !tbaa !67
  %13 = load <2 x float>, ptr %.111364, align 4, !tbaa !67
  %14 = insertelement <2 x float> poison, float %i.bon, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = fmul fast <2 x float> %13, %15
  %17 = fadd fast <2 x float> %16, %12            ; 3 uses
  %i.boo = getelementptr inbounds nuw i8, ptr %.112051367, i64 4
  %i.bop = getelementptr inbounds nuw i8, ptr %.111364, i64 8 ; 2 uses
  %i.boq = add nuw nsw i32 %.112031368, 1         ; 2 uses
  %exitcond1605.not = icmp eq i32 %i.boq, %8
  br i1 %exitcond1605.not, label %._crit_edge1371.loopexit, label %.lr.ph1370, !llvm.loop !341

._crit_edge1371.loopexit:                         ; preds = %.lr.ph1370
  %18 = extractelement <2 x float> %17, i64 1
  %19 = extractelement <2 x float> %17, i64 0
  br label %._crit_edge1371

._crit_edge1371:                                  ; preds = %._crit_edge1371.loopexit, %middle.block2037, %._crit_edge1352
  %.11.lcssa = phi ptr [ %.10.lcssa, %._crit_edge1352 ], [ %i.bnu, %middle.block2037 ], [ %i.bop, %._crit_edge1371.loopexit ] ; 2 uses
  %.21211.lcssa = phi float [ %i.bnj, %._crit_edge1352 ], [ %i.bom, %middle.block2037 ], [ %19, %._crit_edge1371.loopexit ] ; 2 uses
  %.21208.lcssa = phi float [ %i.bnk, %._crit_edge1352 ], [ %i.bol, %middle.block2037 ], [ %18, %._crit_edge1371.loopexit ] ; 2 uses
  br i1 %9, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %._crit_edge1371
  store float %.21211.lcssa, ptr %.612381377, align 4, !tbaa !67
  %i.bor = getelementptr inbounds nuw i8, ptr %.612381377, i64 4
  store float %.21208.lcssa, ptr %i.bor, align 4, !tbaa !67
  %i.bos = getelementptr inbounds nuw i8, ptr %.612381377, i64 8
  br label %bb.fk

bb.fj:                                            ; preds = %._crit_edge1371
  store float %.21211.lcssa, ptr %.1613121375, align 4, !tbaa !67
  %i.bot = getelementptr inbounds nuw i8, ptr %.1613121375, i64 4
  store float %.21208.lcssa, ptr %i.bot, align 4, !tbaa !67
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.71239 = phi ptr [ %i.bos, %bb.fi ], [ %.612381377, %bb.fj ] ; 2 uses
  %i.bou = getelementptr inbounds nuw i8, ptr %.1613121375, i64 8 ; 2 uses
  %i.bov = add nuw nsw i32 %.31379, 2             ; 3 uses
  %i.bow = or disjoint i32 %i.bov, 1
  %i.box = icmp slt i32 %i.bow, %6
  br i1 %i.box, label %.lr.ph1380, label %.preheader, !llvm.loop !342

.lr.ph1417:                                       ; preds = %.lr.ph1417.preheader, %bb.ft
  %.41416 = phi i32 [ %i.byt, %bb.ft ], [ %.3.lcssa, %.lr.ph1417.preheader ]
  %.121415 = phi ptr [ %.14.lcssa, %bb.ft ], [ %.9.lcssa, %.lr.ph1417.preheader ] ; 12 uses
  %.812401414 = phi ptr [ %.91241, %bb.ft ], [ %.61238.lcssa, %.lr.ph1417.preheader ] ; 3 uses
  %.471413 = phi ptr [ %.48, %bb.ft ], [ %.45.lcssa, %.lr.ph1417.preheader ] ; 7 uses
  %.1713131412 = phi ptr [ %i.bys, %bb.ft ], [ %.161312.lcssa, %.lr.ph1417.preheader ] ; 3 uses
  br i1 %i.aah, label %bb.fl, label %bb.fp

bb.fl:                                            ; preds = %.lr.ph1417
  %.not1391 = icmp eq ptr %.471413, null
  br i1 %.not1391, label %bb.fq, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  br i1 %or.cond29, label %.thread905, label %bb.fn

.thread905:                                       ; preds = %bb.fm
  %i.boy = load float, ptr %.471413, align 4, !tbaa !67
  br label %bb.fq

bb.fn:                                            ; preds = %bb.fm
  br i1 %or.cond31, label %bb.fo, label %bb.fq

bb.fo:                                            ; preds = %bb.fn
  %i.boz = load float, ptr %.471413, align 4, !tbaa !67
  %i.bpa = getelementptr inbounds nuw i8, ptr %.471413, i64 4
  br label %bb.fq

bb.fp:                                            ; preds = %.lr.ph1417
  %i.bpb = load float, ptr %.1713131412, align 4, !tbaa !67
  br label %bb.fq

bb.fq:                                            ; preds = %.thread905, %bb.fl, %bb.fn, %bb.fo, %bb.fp
  %.48 = phi ptr [ %i.bpa, %bb.fo ], [ %.471413, %bb.fn ], [ null, %bb.fl ], [ %.471413, %bb.fp ], [ %.471413, %.thread905 ] ; 2 uses
  %.11193 = phi nsz float [ %i.boz, %bb.fo ], [ 0.000000e+00, %bb.fn ], [ 0.000000e+00, %bb.fl ], [ %i.bpb, %bb.fp ], [ %i.boy, %.thread905 ] ; 2 uses
  br i1 %i.aaj, label %.lr.ph1394.preheader, label %._crit_edge1395

.lr.ph1394.preheader:                             ; preds = %bb.fq
  br i1 %min.iters.check1972, label %.lr.ph1394.preheader2083, label %vector.ph1973

vector.ph1973:                                    ; preds = %.lr.ph1394.preheader
  %i.bpc = getelementptr i8, ptr %.121415, i64 %i.abd
  br label %vector.body1975

vector.body1975:                                  ; preds = %vector.body1975, %vector.ph1973
  %index1976 = phi i64 [ 0, %vector.ph1973 ], [ %index.next2001, %vector.body1975 ] ; 2 uses
  %vec.phi1977 = phi <4 x float> [ zeroinitializer, %vector.ph1973 ], [ %i.bwt, %vector.body1975 ]
  %vec.phi1978 = phi <4 x float> [ zeroinitializer, %vector.ph1973 ], [ %i.bwu, %vector.body1975 ]
  %vec.phi1979 = phi <4 x float> [ zeroinitializer, %vector.ph1973 ], [ %i.but, %vector.body1975 ]
  %vec.phi1980 = phi <4 x float> [ zeroinitializer, %vector.ph1973 ], [ %i.buu, %vector.body1975 ]
  %vec.phi1981 = phi <4 x float> [ zeroinitializer, %vector.ph1973 ], [ %i.bst, %vector.body1975 ]
  %vec.phi1982 = phi <4 x float> [ zeroinitializer, %vector.ph1973 ], [ %i.bsu, %vector.body1975 ]
  %vec.phi1983 = phi <4 x float> [ zeroinitializer, %vector.ph1973 ], [ %i.bqt, %vector.body1975 ]
  %vec.phi1984 = phi <4 x float> [ zeroinitializer, %vector.ph1973 ], [ %i.bqu, %vector.body1975 ]
  %i.bpd = shl i64 %index1976, 4                  ; 9 uses
  %i.bpe = or disjoint i64 %i.bpd, 16             ; 2 uses
  %i.bpf = or disjoint i64 %i.bpd, 32             ; 2 uses
  %i.bpg = or disjoint i64 %i.bpd, 48             ; 2 uses
  %i.bph = or disjoint i64 %i.bpd, 64             ; 2 uses
  %i.bpi = or disjoint i64 %i.bpd, 80             ; 2 uses
  %i.bpj = or disjoint i64 %i.bpd, 96             ; 2 uses
  %i.bpk = or disjoint i64 %i.bpd, 112            ; 2 uses
  %next.gep1985 = getelementptr i8, ptr %.212801424, i64 %i.bpd ; 4 uses
  %next.gep1986 = getelementptr i8, ptr %.212801424, i64 %i.bpe ; 4 uses
  %next.gep1987 = getelementptr i8, ptr %.212801424, i64 %i.bpf ; 4 uses
  %next.gep1988 = getelementptr i8, ptr %.212801424, i64 %i.bpg ; 4 uses
  %next.gep1989 = getelementptr i8, ptr %.212801424, i64 %i.bph ; 4 uses
  %next.gep1990 = getelementptr i8, ptr %.212801424, i64 %i.bpi ; 4 uses
  %next.gep1991 = getelementptr i8, ptr %.212801424, i64 %i.bpj ; 4 uses
  %next.gep1992 = getelementptr i8, ptr %.212801424, i64 %i.bpk ; 4 uses
  %next.gep1993 = getelementptr i8, ptr %.121415, i64 %i.bpd ; 4 uses
  %next.gep1994 = getelementptr i8, ptr %.121415, i64 %i.bpe ; 4 uses
  %next.gep1995 = getelementptr i8, ptr %.121415, i64 %i.bpf ; 4 uses
  %next.gep1996 = getelementptr i8, ptr %.121415, i64 %i.bpg ; 4 uses
  %next.gep1997 = getelementptr i8, ptr %.121415, i64 %i.bph ; 4 uses
  %next.gep1998 = getelementptr i8, ptr %.121415, i64 %i.bpi ; 4 uses
  %next.gep1999 = getelementptr i8, ptr %.121415, i64 %i.bpj ; 4 uses
  %next.gep2000 = getelementptr i8, ptr %.121415, i64 %i.bpk ; 4 uses
  %i.bpl = load float, ptr %next.gep1985, align 4, !tbaa !67
  %i.bpm = load float, ptr %next.gep1986, align 4, !tbaa !67
  %i.bpn = load float, ptr %next.gep1987, align 4, !tbaa !67
  %i.bpo = load float, ptr %next.gep1988, align 4, !tbaa !67
  %i.bpp = insertelement <4 x float> poison, float %i.bpl, i64 0
  %i.bpq = insertelement <4 x float> %i.bpp, float %i.bpm, i64 1
  %i.bpr = insertelement <4 x float> %i.bpq, float %i.bpn, i64 2
  %i.bps = insertelement <4 x float> %i.bpr, float %i.bpo, i64 3
  %i.bpt = load float, ptr %next.gep1989, align 4, !tbaa !67
  %i.bpu = load float, ptr %next.gep1990, align 4, !tbaa !67
  %i.bpv = load float, ptr %next.gep1991, align 4, !tbaa !67
  %i.bpw = load float, ptr %next.gep1992, align 4, !tbaa !67
  %i.bpx = insertelement <4 x float> poison, float %i.bpt, i64 0
  %i.bpy = insertelement <4 x float> %i.bpx, float %i.bpu, i64 1
  %i.bpz = insertelement <4 x float> %i.bpy, float %i.bpv, i64 2
  %i.bqa = insertelement <4 x float> %i.bpz, float %i.bpw, i64 3
  %i.bqb = load float, ptr %next.gep1993, align 4, !tbaa !67
  %i.bqc = load float, ptr %next.gep1994, align 4, !tbaa !67
  %i.bqd = load float, ptr %next.gep1995, align 4, !tbaa !67
  %i.bqe = load float, ptr %next.gep1996, align 4, !tbaa !67
  %i.bqf = insertelement <4 x float> poison, float %i.bqb, i64 0
  %i.bqg = insertelement <4 x float> %i.bqf, float %i.bqc, i64 1
  %i.bqh = insertelement <4 x float> %i.bqg, float %i.bqd, i64 2
  %i.bqi = insertelement <4 x float> %i.bqh, float %i.bqe, i64 3
  %i.bqj = load float, ptr %next.gep1997, align 4, !tbaa !67
  %i.bqk = load float, ptr %next.gep1998, align 4, !tbaa !67
  %i.bql = load float, ptr %next.gep1999, align 4, !tbaa !67
  %i.bqm = load float, ptr %next.gep2000, align 4, !tbaa !67
  %i.bqn = insertelement <4 x float> poison, float %i.bqj, i64 0
  %i.bqo = insertelement <4 x float> %i.bqn, float %i.bqk, i64 1
  %i.bqp = insertelement <4 x float> %i.bqo, float %i.bql, i64 2
  %i.bqq = insertelement <4 x float> %i.bqp, float %i.bqm, i64 3
  %i.bqr = fmul fast <4 x float> %i.bqi, %i.bps
  %i.bqs = fmul fast <4 x float> %i.bqq, %i.bqa
  %i.bqt = fadd fast <4 x float> %i.bqr, %vec.phi1983 ; 2 uses
  %i.bqu = fadd fast <4 x float> %i.bqs, %vec.phi1984 ; 2 uses
  %i.bqv = getelementptr inbounds nuw i8, ptr %next.gep1985, i64 4
  %i.bqw = getelementptr inbounds nuw i8, ptr %next.gep1986, i64 4
  %i.bqx = getelementptr inbounds nuw i8, ptr %next.gep1987, i64 4
  %i.bqy = getelementptr inbounds nuw i8, ptr %next.gep1988, i64 4
  %i.bqz = getelementptr inbounds nuw i8, ptr %next.gep1989, i64 4
  %i.bra = getelementptr inbounds nuw i8, ptr %next.gep1990, i64 4
  %i.brb = getelementptr inbounds nuw i8, ptr %next.gep1991, i64 4
  %i.brc = getelementptr inbounds nuw i8, ptr %next.gep1992, i64 4
  %i.brd = load float, ptr %i.bqv, align 4, !tbaa !67
  %i.bre = load float, ptr %i.bqw, align 4, !tbaa !67
  %i.brf = load float, ptr %i.bqx, align 4, !tbaa !67
  %i.brg = load float, ptr %i.bqy, align 4, !tbaa !67
  %i.brh = insertelement <4 x float> poison, float %i.brd, i64 0
  %i.bri = insertelement <4 x float> %i.brh, float %i.bre, i64 1
  %i.brj = insertelement <4 x float> %i.bri, float %i.brf, i64 2
  %i.brk = insertelement <4 x float> %i.brj, float %i.brg, i64 3
  %i.brl = load float, ptr %i.bqz, align 4, !tbaa !67
  %i.brm = load float, ptr %i.bra, align 4, !tbaa !67
  %i.brn = load float, ptr %i.brb, align 4, !tbaa !67
  %i.bro = load float, ptr %i.brc, align 4, !tbaa !67
  %i.brp = insertelement <4 x float> poison, float %i.brl, i64 0
  %i.brq = insertelement <4 x float> %i.brp, float %i.brm, i64 1
  %i.brr = insertelement <4 x float> %i.brq, float %i.brn, i64 2
  %i.brs = insertelement <4 x float> %i.brr, float %i.bro, i64 3
  %i.brt = getelementptr inbounds nuw i8, ptr %next.gep1993, i64 4
  %i.bru = getelementptr inbounds nuw i8, ptr %next.gep1994, i64 4
  %i.brv = getelementptr inbounds nuw i8, ptr %next.gep1995, i64 4
  %i.brw = getelementptr inbounds nuw i8, ptr %next.gep1996, i64 4
  %i.brx = getelementptr inbounds nuw i8, ptr %next.gep1997, i64 4
  %i.bry = getelementptr inbounds nuw i8, ptr %next.gep1998, i64 4
  %i.brz = getelementptr inbounds nuw i8, ptr %next.gep1999, i64 4
  %i.bsa = getelementptr inbounds nuw i8, ptr %next.gep2000, i64 4
  %i.bsb = load float, ptr %i.brt, align 4, !tbaa !67
  %i.bsc = load float, ptr %i.bru, align 4, !tbaa !67
  %i.bsd = load float, ptr %i.brv, align 4, !tbaa !67
  %i.bse = load float, ptr %i.brw, align 4, !tbaa !67
  %i.bsf = insertelement <4 x float> poison, float %i.bsb, i64 0
  %i.bsg = insertelement <4 x float> %i.bsf, float %i.bsc, i64 1
  %i.bsh = insertelement <4 x float> %i.bsg, float %i.bsd, i64 2
  %i.bsi = insertelement <4 x float> %i.bsh, float %i.bse, i64 3
  %i.bsj = load float, ptr %i.brx, align 4, !tbaa !67
  %i.bsk = load float, ptr %i.bry, align 4, !tbaa !67
  %i.bsl = load float, ptr %i.brz, align 4, !tbaa !67
  %i.bsm = load float, ptr %i.bsa, align 4, !tbaa !67
  %i.bsn = insertelement <4 x float> poison, float %i.bsj, i64 0
  %i.bso = insertelement <4 x float> %i.bsn, float %i.bsk, i64 1
  %i.bsp = insertelement <4 x float> %i.bso, float %i.bsl, i64 2
  %i.bsq = insertelement <4 x float> %i.bsp, float %i.bsm, i64 3
  %i.bsr = fmul fast <4 x float> %i.bsi, %i.brk
  %i.bss = fmul fast <4 x float> %i.bsq, %i.brs
  %i.bst = fadd fast <4 x float> %i.bsr, %vec.phi1981 ; 2 uses
  %i.bsu = fadd fast <4 x float> %i.bss, %vec.phi1982 ; 2 uses
  %i.bsv = getelementptr inbounds nuw i8, ptr %next.gep1985, i64 8
  %i.bsw = getelementptr inbounds nuw i8, ptr %next.gep1986, i64 8
  %i.bsx = getelementptr inbounds nuw i8, ptr %next.gep1987, i64 8
  %i.bsy = getelementptr inbounds nuw i8, ptr %next.gep1988, i64 8
  %i.bsz = getelementptr inbounds nuw i8, ptr %next.gep1989, i64 8
  %i.bta = getelementptr inbounds nuw i8, ptr %next.gep1990, i64 8
  %i.btb = getelementptr inbounds nuw i8, ptr %next.gep1991, i64 8
  %i.btc = getelementptr inbounds nuw i8, ptr %next.gep1992, i64 8
  %i.btd = load float, ptr %i.bsv, align 4, !tbaa !67
  %i.bte = load float, ptr %i.bsw, align 4, !tbaa !67
  %i.btf = load float, ptr %i.bsx, align 4, !tbaa !67
  %i.btg = load float, ptr %i.bsy, align 4, !tbaa !67
end_hunk_0
