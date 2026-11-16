Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_fma?download=true
inline.NumInlined: 397
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 126
loop-unroll.NumRuntimeUnrolled: 142
loop-unroll.NumUnrolled: 268
begin_hunk_0_@_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  store float %i.ep, ptr %i.aab, align 4, !tbaa !56, !alias.scope !678, !noalias !677
  store float %i.eq, ptr %i.aac, align 4, !tbaa !56, !alias.scope !678, !noalias !677
  store float %i.er, ptr %i.aad, align 4, !tbaa !56, !alias.scope !678, !noalias !677
  %i.aav = getelementptr inbounds nuw i8, ptr %next.gep186, i64 228
  %i.aaw = getelementptr i8, ptr %i.db, i64 484
  %i.aax = getelementptr i8, ptr %i.dc, i64 740
  %i.aay = getelementptr i8, ptr %i.dd, i64 996
  %i.aaz = extractelement <4 x float> %i.aag, i64 0
  store float %i.aaz, ptr %i.aav, align 4, !tbaa !56, !alias.scope !678, !noalias !677
  %i.aba = getelementptr inbounds nuw i8, ptr %next.gep186, i64 232
  %i.abb = extractelement <4 x float> %i.aai, i64 0
  store float %i.abb, ptr %i.aba, align 4, !tbaa !56, !alias.scope !678, !noalias !677
  %i.abc = getelementptr inbounds nuw i8, ptr %next.gep186, i64 236
  %i.abd = extractelement <4 x float> %i.aam, i64 0
  store float %i.abd, ptr %i.abc, align 4, !tbaa !56, !alias.scope !678, !noalias !677
  %i.abe = getelementptr inbounds nuw i8, ptr %next.gep186, i64 240
  %i.abf = extractelement <4 x float> %i.aao, i64 0
  store float %i.abf, ptr %i.abe, align 4, !tbaa !56, !alias.scope !678, !noalias !677
  %i.abg = shufflevector <4 x float> %i.aag, <4 x float> %i.aai, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.abh = shufflevector <4 x float> %i.abg, <4 x float> %i.aam, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.abi = shufflevector <4 x float> %i.abh, <4 x float> %i.aao, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x float> %i.abi, ptr %i.aaw, align 4, !tbaa !56, !alias.scope !678, !noalias !677
  %i.abj = shufflevector <4 x float> %i.aag, <4 x float> %i.aai, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.abk = shufflevector <4 x float> %i.abj, <4 x float> %i.aam, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.abl = shufflevector <4 x float> %i.abk, <4 x float> %i.aao, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x float> %i.abl, ptr %i.aax, align 4, !tbaa !56, !alias.scope !678, !noalias !677
  %i.abm = shufflevector <4 x float> %i.aag, <4 x float> %i.aai, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.abn = shufflevector <4 x float> %i.abm, <4 x float> %i.aam, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.abo = shufflevector <4 x float> %i.abn, <4 x float> %i.aao, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.abo, ptr %i.aay, align 4, !tbaa !56, !alias.scope !678, !noalias !677
  %i.abp = getelementptr inbounds nuw i8, ptr %next.gep186, i64 244
  %i.abq = getelementptr i8, ptr %i.db, i64 500
  %i.abr = getelementptr i8, ptr %i.dc, i64 756
  %i.abs = getelementptr i8, ptr %i.dd, i64 1012
  %i.abt = extractelement <4 x float> %i.aas, i64 0
  store float %i.abt, ptr %i.abp, align 4, !tbaa !56, !alias.scope !678, !noalias !677
  %i.abu = getelementptr inbounds nuw i8, ptr %next.gep186, i64 248
  %i.abv = extractelement <4 x float> %i.aau, i64 0
  store float %i.abv, ptr %i.abu, align 4, !tbaa !56, !alias.scope !678, !noalias !677
  %i.abw = shufflevector <4 x float> %i.aas, <4 x float> %i.aau, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.abw, ptr %i.abq, align 4, !tbaa !56, !alias.scope !678, !noalias !677
  %i.abx = shufflevector <4 x float> %i.aas, <4 x float> %i.aau, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.abx, ptr %i.abr, align 4, !tbaa !56, !alias.scope !678, !noalias !677
  %i.aby = shufflevector <4 x float> %i.aas, <4 x float> %i.aau, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.aby, ptr %i.abs, align 4, !tbaa !56, !alias.scope !678, !noalias !677
  %i.abz = getelementptr inbounds nuw i8, ptr %next.gep186, i64 252
  %i.aca = getelementptr i8, ptr %i.db, i64 508
  %i.acb = getelementptr i8, ptr %i.dc, i64 764
  %i.acc = getelementptr i8, ptr %i.dd, i64 1020
  store float %i.iy, ptr %i.abz, align 4, !tbaa !56, !alias.scope !678, !noalias !677
  store float %i.iz, ptr %i.aca, align 4, !tbaa !56, !alias.scope !678, !noalias !677
  store float %i.ja, ptr %i.acb, align 4, !tbaa !56, !alias.scope !678, !noalias !677
  store float %i.jb, ptr %i.acc, align 4, !tbaa !56, !alias.scope !678, !noalias !677
  %index.next190 = add nuw i64 %index185, 4       ; 2 uses
  %i.acd = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.acd, label %middle.block191, label %vector.body184, !llvm.loop !664

middle.block191:                                  ; preds = %vector.body184
  br i1 %cmp.n192, label %._crit_edge.i, label %.preheader.preheader.i.preheader

.preheader.preheader.i.preheader:                 ; preds = %vector.memcheck178, %.preheader12.i, %middle.block191
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck178 ], [ 0, %.preheader12.i ], [ %n.vec183, %middle.block191 ]
  %.118.i.ph = phi ptr [ %.020.i, %vector.memcheck178 ], [ %.020.i, %.preheader12.i ], [ %i.cw, %middle.block191 ]
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i.preheader, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.preheader.i ], [ %indvars.iv.i.ph, %.preheader.preheader.i.preheader ] ; 2 uses
  %.118.i = phi ptr [ %i.amq, %.preheader.preheader.i ], [ %.118.i.ph, %.preheader.preheader.i.preheader ] ; 35 uses
  %i.ace = add nsw i64 %indvars.iv.i, %indvars.iv
  %.idx.i = mul nsw i64 %i.ace, 36
  %i.acf = getelementptr inbounds i8, ptr %i.cr, i64 %.idx.i ; 9 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 4
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acf, i64 8
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acf, i64 12
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acf, i64 20
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acf, i64 24
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acf, i64 28
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !56 ; 3 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acf, i64 32
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !56 ; 3 uses
  %i.acq = fmul fast float %i.acn, f0x3E638E39    ; 2 uses
  %i.acr = fmul fast float %i.acn, f0x3CB60B61    ; 2 uses
  %i.acs = fmul fast float %i.acn, f0x3C360B61    ; 2 uses
  %i.act = fmul fast float %i.acp, f0x3BB60B61    ; 4 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %.118.i, i64 4
  %i.acv = load float, ptr %i.acl, align 4, !tbaa !56 ; 4 uses
  %i.acw = insertelement <8 x float> <float poison, float 1.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison>, float %i.acv, i64 0
  %i.acx = fmul fast float %i.acv, f0x3C360B61    ; 2 uses
  %i.acy = fadd fast float %i.acr, %i.acx
  %i.acz = fsub fast float %i.acx, %i.acr
  %i.ada = fmul fast float %i.acv, f0x3CB60B61    ; 2 uses
  %i.adb = fadd fast float %i.acs, %i.ada
  %i.adc = fadd fast float %i.adb, %i.act         ; 3 uses
  %i.add = fsub fast float %i.ada, %i.acs
  %i.ade = getelementptr inbounds nuw i8, ptr %.118.i, i64 36
  %i.adf = getelementptr inbounds nuw i8, ptr %.118.i, i64 40
  %i.adg = getelementptr inbounds nuw i8, ptr %.118.i, i64 48
  %i.adh = getelementptr inbounds nuw i8, ptr %.118.i, i64 52
  %i.adi = getelementptr inbounds nuw i8, ptr %.118.i, i64 56
  %i.adj = getelementptr inbounds nuw i8, ptr %.118.i, i64 60
  %i.adk = getelementptr inbounds nuw i8, ptr %.118.i, i64 64
  %i.adl = getelementptr inbounds nuw i8, ptr %.118.i, i64 68
  %i.adm = getelementptr inbounds nuw i8, ptr %.118.i, i64 84
  %i.adn = getelementptr inbounds nuw i8, ptr %.118.i, i64 88
  %i.ado = getelementptr inbounds nuw i8, ptr %.118.i, i64 92
  %i.adp = getelementptr inbounds nuw i8, ptr %.118.i, i64 96
  %i.adq = getelementptr inbounds nuw i8, ptr %.118.i, i64 100
  %i.adr = getelementptr inbounds nuw i8, ptr %.118.i, i64 116
  %i.ads = getelementptr inbounds nuw i8, ptr %.118.i, i64 120
  %i.adt = getelementptr inbounds nuw i8, ptr %.118.i, i64 124
  %i.adu = getelementptr inbounds nuw i8, ptr %.118.i, i64 128
  %i.adv = getelementptr inbounds nuw i8, ptr %.118.i, i64 132
  %i.adw = getelementptr inbounds nuw i8, ptr %.118.i, i64 148
  %i.adx = getelementptr inbounds nuw i8, ptr %.118.i, i64 152
  %i.ady = getelementptr inbounds nuw i8, ptr %.118.i, i64 156
  %i.adz = getelementptr inbounds nuw i8, ptr %.118.i, i64 160
  %i.aea = fmul fast float %i.adc, f0x3BB60B61    ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %.118.i, i64 164
  %i.aec = getelementptr inbounds nuw i8, ptr %.118.i, i64 180
  %i.aed = getelementptr inbounds nuw i8, ptr %.118.i, i64 184
  %i.aee = getelementptr inbounds nuw i8, ptr %.118.i, i64 188
  %i.aef = getelementptr inbounds nuw i8, ptr %.118.i, i64 192
  %i.aeg = getelementptr inbounds nuw i8, ptr %.118.i, i64 196
  %i.aeh = fadd fast float %i.add, %i.act         ; 3 uses
  %i.aei = load <2 x float>, ptr %i.acj, align 4, !tbaa !56 ; 3 uses
  %i.aej = load float, ptr %i.ack, align 4, !tbaa !56 ; 4 uses
  %i.aek = load <4 x float>, ptr %i.acf, align 4, !tbaa !56 ; 6 uses
  %i.ael = shufflevector <4 x float> %i.aek, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.aem = fmul fast <2 x float> %i.ael, splat (float f0xBE638E39) ; 3 uses
  %i.aen = shufflevector <2 x float> %i.aei, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aeo = shufflevector <4 x float> %i.aek, <4 x float> %i.aen, <2 x i32> <i32 1, i32 4>
  %i.aep = fmul fast <2 x float> %i.aeo, splat (float f0x3E638E39) ; 2 uses
  %i.aeq = extractelement <2 x float> %i.aem, i64 0 ; 2 uses
  %i.aer = extractelement <4 x float> %i.aek, i64 0
  %i.aes = shufflevector <4 x float> %i.aek, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.aet = shufflevector <2 x float> %i.aes, <2 x float> %i.aei, <2 x i32> <i32 0, i32 3>
  %i.aeu = fmul fast <2 x float> %i.aet, splat (float f0xBE638E39) ; 4 uses
  %i.aev = fadd fast <2 x float> %i.aep, %i.aem
  %i.aew = fadd fast <2 x float> %i.aev, %i.aeu   ; 3 uses
  %i.aex = shufflevector <2 x float> %i.aew, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.aey = extractelement <2 x float> %i.aew, i64 1
  %i.aez = fmul fast float %i.aey, f0x3C360B61    ; 2 uses
  %i.afa = fmul fast float %i.aej, f0x3C360B61    ; 2 uses
  %i.afb = shufflevector <4 x float> %i.aek, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.afc = shufflevector <8 x float> %i.acw, <8 x float> %i.afb, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 10>
  %i.afd = fmul reassoc nnan ninf arcp contract afn <8 x float> %i.afc, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61, float f0x3BB60B61, float f0x3BB60B61, float -0.000000e+00, float f0xBE638E39> ; 2 uses
  %i.afe = extractelement <8 x float> %i.afd, i64 0 ; 2 uses
  %.neg9.2.i = fsub fast float %i.afe, %i.acq
  %i.aff = fadd fast float %i.acq, %i.afe
  %i.afg = fmul fast <4 x float> %i.aex, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.afh = shufflevector <4 x float> %i.afg, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.afi = fsub fast <4 x float> %i.afg, %i.afh
  %i.afj = fadd fast <4 x float> %i.afg, %i.afh
  %i.afk = shufflevector <4 x float> %i.afi, <4 x float> %i.afj, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.afl = extractelement <2 x float> %i.aew, i64 0 ; 2 uses
  %i.afm = fmul fast float %i.afl, f0x3CB60B61    ; 2 uses
  %i.afn = fadd fast float %i.aez, %i.afm
  %i.afo = fsub fast float %i.afm, %i.aez
  %i.afp = load <2 x float>, ptr %i.acg, align 4, !tbaa !56 ; 3 uses
  %i.afq = shufflevector <4 x float> %i.aek, <4 x float> %i.aen, <2 x i32> <i32 0, i32 4>
  %i.afr = fmul fast <2 x float> %i.afq, <float f0x3C360B61, float f0x3CB60B61> ; 5 uses
  %i.afs = shufflevector <2 x float> %i.afp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aft = insertelement <2 x float> %i.afs, float %i.aej, i64 1
  %i.afu = fmul fast <2 x float> %i.aft, splat (float f0x3D360B61) ; 2 uses
  %i.afv = insertelement <4 x float> poison, float %i.adc, i64 0
  %i.afw = shufflevector <4 x float> %i.afv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.afx = fmul fast <4 x float> %i.afw, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61>
  %i.afy = load <2 x float>, ptr %i.ach, align 4, !tbaa !56 ; 5 uses
  %i.afz = load float, ptr %i.aci, align 4, !tbaa !56
  %i.aga = shufflevector <2 x float> %i.ael, <2 x float> %i.afy, <2 x i32> <i32 0, i32 3>
  %i.agb = fmul fast <2 x float> %i.aga, splat (float f0x3CB60B61) ; 4 uses
  %i.agc = shufflevector <2 x float> %i.afp, <2 x float> %i.aei, <2 x i32> <i32 0, i32 2>
  %i.agd = fmul fast <2 x float> %i.agc, splat (float f0x3C360B61) ; 2 uses
  %i.age = fmul fast float %i.afz, f0x3E638E39    ; 2 uses
  %.neg4.i = fsub fast float %i.aeq, %i.age
  %i.agf = fadd fast float %i.age, %i.aeq
  %i.agg = insertelement <8 x float> poison, float %.neg4.i, i64 0
  %i.agh = insertelement <8 x float> %i.agg, float %i.agf, i64 1
  %i.agi = fadd fast <2 x float> %i.agd, %i.agb
  %i.agj = insertelement <2 x float> %i.afy, float %i.aej, i64 1
  %i.agk = fmul fast <2 x float> %i.agj, splat (float f0x3BB60B61) ; 2 uses
  %i.agl = fadd fast <2 x float> %i.agi, %i.agk   ; 3 uses
  %i.agm = shufflevector <2 x float> %i.agl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.agn = extractelement <2 x float> %i.agl, i64 1
  %i.ago = fmul fast float %i.agn, f0x3C360B61    ; 2 uses
  %i.agp = shufflevector <2 x float> %i.afp, <2 x float> %i.afy, <2 x i32> <i32 0, i32 3>
  %i.agq = fmul fast <2 x float> %i.agp, <float f0x3CB60B61, float f0x3C360B61> ; 5 uses
  %i.agr = shufflevector <2 x float> %i.agq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ags = shufflevector <2 x float> %i.agq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.agt = fadd fast <2 x float> %i.afr, %i.agq
  %i.agu = shufflevector <2 x float> %i.agb, <2 x float> %i.afr, <4 x i32> <i32 1, i32 2, i32 poison, i32 0>
  %i.agv = shufflevector <4 x float> %i.agu, <4 x float> %i.ags, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.agw = shufflevector <2 x float> %i.afr, <2 x float> %i.agb, <4 x i32> <i32 0, i32 3, i32 2, i32 poison>
  %i.agx = shufflevector <4 x float> %i.agw, <4 x float> %i.agr, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.agy = fadd fast <4 x float> %i.agv, %i.agx
  %i.agz = fsub fast <4 x float> %i.agv, %i.agx
  %i.aha = shufflevector <4 x float> %i.agy, <4 x float> %i.agz, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ahb = shufflevector <4 x float> %i.aha, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahc = shufflevector <8 x float> %i.agh, <8 x float> %i.ahb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %11 = insertelement <8 x float> %i.ahc, float %i.acv, i64 6
  %i.ahd = fadd fast <2 x float> %i.agt, %i.afu   ; 3 uses
  %i.ahe = shufflevector <2 x float> %i.ahd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.ahf = extractelement <2 x float> %i.ahd, i64 1
  %i.ahg = fmul fast float %i.ahf, f0x3C360B61    ; 2 uses
  store float %i.aer, ptr %.118.i, align 4, !tbaa !56
  store float %i.afl, ptr %i.adk, align 4, !tbaa !56
  %i.ahh = fmul fast <4 x float> %i.ahe, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.ahi = shufflevector <4 x float> %i.ahh, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ahj = fsub fast <4 x float> %i.ahh, %i.ahi
  %i.ahk = fadd fast <4 x float> %i.ahh, %i.ahi
  %i.ahl = shufflevector <4 x float> %i.ahj, <4 x float> %i.ahk, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ahm = extractelement <2 x float> %i.ahd, i64 0 ; 2 uses
  %i.ahn = fmul fast float %i.ahm, f0x3CB60B61    ; 2 uses
  %i.aho = fadd fast float %i.ahg, %i.ahn
  %i.ahp = fsub fast float %i.ahn, %i.ahg
  store float %i.ahm, ptr %i.adp, align 4, !tbaa !56
  %i.ahq = shufflevector <2 x float> %i.afr, <2 x float> %i.agq, <2 x i32> <i32 0, i32 3>
  %i.ahr = shufflevector <2 x float> %i.agq, <2 x float> %i.afr, <2 x i32> <i32 0, i32 3>
  %i.ahs = fsub fast <2 x float> %i.ahq, %i.ahr
  %i.aht = fadd fast <2 x float> %i.ahs, %i.afu   ; 3 uses
  %i.ahu = shufflevector <2 x float> %i.aht, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.ahv = extractelement <2 x float> %i.aht, i64 1
  %i.ahw = fmul fast float %i.ahv, f0x3C360B61    ; 2 uses
  %i.ahx = fmul fast <4 x float> %i.ahu, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.ahy = shufflevector <4 x float> %i.ahx, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ahz = fsub fast <4 x float> %i.ahx, %i.ahy
  %i.aia = fadd fast <4 x float> %i.ahx, %i.ahy
  %i.aib = shufflevector <4 x float> %i.ahz, <4 x float> %i.aia, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.aic = extractelement <2 x float> %i.aht, i64 0 ; 2 uses
  %i.aid = fmul fast float %i.aic, f0x3CB60B61    ; 2 uses
  %i.aie = fadd fast float %i.ahw, %i.aid
  %i.aif = fsub fast float %i.aid, %i.ahw
  store float %i.aic, ptr %i.adu, align 4, !tbaa !56
  %i.aig = fmul fast <4 x float> %i.agm, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.aih = shufflevector <4 x float> %i.aig, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.aii = fsub fast <4 x float> %i.aig, %i.aih
  %i.aij = fadd fast <4 x float> %i.aig, %i.aih
  %i.aik = shufflevector <4 x float> %i.aii, <4 x float> %i.aij, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ail = fadd fast <4 x float> %i.aik, %i.afx
  %i.aim = extractelement <2 x float> %i.agl, i64 0 ; 2 uses
  %i.ain = fmul fast float %i.aim, f0x3CB60B61    ; 2 uses
  %i.aio = fadd fast float %i.ago, %i.ain
  %i.aip = fadd fast float %i.aio, %i.aea
  %i.aiq = fsub fast float %i.ain, %i.ago
  %i.air = fadd fast float %i.aiq, %i.aea
  store float %i.aim, ptr %i.adz, align 4, !tbaa !56
  store <4 x float> %i.ail, ptr %i.aeb, align 4, !tbaa !56
  store float %i.aip, ptr %i.aec, align 4, !tbaa !56
  store float %i.air, ptr %i.aed, align 4, !tbaa !56
  store float %i.adc, ptr %i.aee, align 4, !tbaa !56
  %i.ais = insertelement <4 x float> poison, float %i.aeh, i64 0
  %i.ait = shufflevector <4 x float> %i.ais, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aiu = fmul fast <4 x float> %i.ait, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61>
  %i.aiv = fmul fast float %i.aeh, f0x3BB60B61
  %i.aiw = fsub fast <2 x float> %i.agb, %i.agd
  %i.aix = fadd fast <2 x float> %i.aiw, %i.agk   ; 3 uses
  %i.aiy = shufflevector <2 x float> %i.aix, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.aiz = fmul fast <4 x float> %i.aiy, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.aja = shufflevector <4 x float> %i.aiz, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ajb = fsub fast <4 x float> %i.aiz, %i.aja
  %i.ajc = fadd fast <4 x float> %i.aiz, %i.aja
  %i.ajd = shufflevector <4 x float> %i.ajb, <4 x float> %i.ajc, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.aje = fadd fast <4 x float> %i.ajd, %i.aiu
  %i.ajf = fmul fast <2 x float> %i.aix, <float f0x3CB60B61, float f0x3C360B61> ; 2 uses
  %i.ajg = shufflevector <2 x float> %i.ajf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ajh = shufflevector <2 x float> %i.ajf, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aji = fadd fast <2 x float> %i.ajg, %i.ajh
  %i.ajj = fsub fast <2 x float> %i.ajg, %i.ajh
  %i.ajk = insertelement <2 x float> poison, float %i.aiv, i64 0
  %i.ajl = extractelement <2 x float> %i.aix, i64 0
  store float %i.ajl, ptr %i.aef, align 4, !tbaa !56
  %i.ajm = extractelement <2 x float> %i.afy, i64 0
  %i.ajn = fmul fast float %i.ajm, f0x3CB60B61    ; 2 uses
  %i.ajo = fadd fast float %i.afa, %i.ajn
  %i.ajp = fadd fast float %i.ajo, %i.act
  %i.ajq = fsub fast float %i.ajn, %i.afa
  %i.ajr = fadd fast float %i.ajq, %i.act
  %i.ajs = insertelement <8 x float> poison, float %i.aeh, i64 6
  %i.ajt = shufflevector <8 x float> %i.ajs, <8 x float> %i.afb, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 10>
  %i.aju = shufflevector <4 x float> %i.aje, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajv = shufflevector <8 x float> %i.aju, <8 x float> %i.ajt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.ajw = shufflevector <2 x float> %i.aji, <2 x float> %i.ajj, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajx = shufflevector <2 x float> %i.ajk, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajy = fadd fast <8 x float> %i.ajw, %i.ajx
  %i.ajz = shufflevector <8 x float> %i.ajv, <8 x float> %i.ajy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  store <8 x float> %i.ajz, ptr %i.aeg, align 4, !tbaa !56
  %i.aka = getelementptr inbounds nuw i8, ptr %.118.i, i64 228
  %i.akb = insertelement <4 x float> poison, float %i.acp, i64 0
  %i.akc = shufflevector <4 x float> %i.akb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akd = fmul fast <4 x float> %i.akc, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61> ; 3 uses
  %i.ake = extractelement <4 x float> %i.akd, i64 2 ; 2 uses
  %i.akf = fadd fast float %i.acy, %i.ake         ; 3 uses
  %i.akg = fadd fast float %i.acz, %i.ake         ; 3 uses
  %i.akh = fmul fast float %i.akf, f0x3BB60B61    ; 2 uses
  %i.aki = fmul fast float %i.akg, f0x3BB60B61    ; 2 uses
  %i.akj = extractelement <4 x float> %i.akd, i64 0 ; 2 uses
  %i.akk = fadd fast float %.neg9.2.i, %i.akj     ; 3 uses
  %i.akl = fadd fast float %i.aff, %i.akj         ; 3 uses
  %i.akm = fmul fast float %i.akk, f0x3BB60B61    ; 2 uses
  %i.akn = insertelement <4 x float> poison, float %i.akl, i64 0
  %i.ako = shufflevector <4 x float> %i.akn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akp = fmul fast <4 x float> %i.ako, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61>
  %i.akq = fadd fast <4 x float> %i.afk, %i.akp
  %i.akr = fmul fast float %i.akl, f0x3BB60B61    ; 2 uses
  %i.aks = fadd fast float %i.afn, %i.akr
  %i.akt = fadd fast float %i.afo, %i.akr
  %i.aku = insertelement <4 x float> poison, float %i.akf, i64 0
  %i.akv = shufflevector <4 x float> %i.aku, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akw = fmul fast <4 x float> %i.akv, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61>
  %i.akx = insertelement <4 x float> poison, float %i.akg, i64 0
  %i.aky = shufflevector <4 x float> %i.akx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akz = fmul fast <4 x float> %i.aky, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61>
  %i.ala = fsub fast <2 x float> %i.aem, %i.aep   ; 2 uses
  %i.alb = fadd fast <2 x float> %i.ala, %i.aeu   ; 4 uses
  %i.alc = extractelement <2 x float> %i.alb, i64 1
  %i.ald = fmul fast float %i.alc, f0x3C360B61    ; 2 uses
  %i.ale = shufflevector <2 x float> %i.ala, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %12 = shufflevector <8 x float> %11, <8 x float> %i.ale, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  %i.alf = fadd reassoc arcp contract afn <8 x float> %12, %i.afd
  store <8 x float> %i.alf, ptr %i.acu, align 4, !tbaa !56
  %i.alg = fmul fast <2 x float> %i.alb, <float f0xBE638E39, float f0x3CB60B61> ; 3 uses
  %i.alh = fmul fast <2 x float> %i.alb, <float f0x3C360B61, float f0x3E638E39>
  %i.ali = shufflevector <2 x float> %i.alh, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %foldExtExtBinop = fsub fast <2 x float> %i.alg, %i.ali
  %i.alj = insertelement <2 x float> poison, float %i.akk, i64 0
  %i.alk = shufflevector <2 x float> %i.alj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.all = fmul fast <2 x float> %i.alk, <float f0xBE638E39, float f0x3D360B61> ; 3 uses
  %foldExtExtBinop196 = fadd fast <2 x float> %foldExtExtBinop, %i.all
  %i.alm = extractelement <2 x float> %foldExtExtBinop196, i64 0
  %i.aln = fadd fast <2 x float> %i.alg, %i.ali
  %i.alo = fadd fast <2 x float> %i.aln, %i.all
  %foldExtExtBinop198 = fsub fast <2 x float> %i.ali, %i.alg
  %foldExtExtBinop200 = fadd fast <2 x float> %foldExtExtBinop198, %i.all
  %i.alp = extractelement <2 x float> %foldExtExtBinop200, i64 1
  %i.alq = extractelement <2 x float> %i.alb, i64 0
  %i.alr = fmul fast float %i.alq, f0x3CB60B61    ; 2 uses
  %i.als = fadd fast float %i.ald, %i.alr
  %i.alt = fadd fast float %i.als, %i.akm
  %i.alu = fsub fast float %i.alr, %i.ald
  %i.alv = fadd fast float %i.alu, %i.akm
  store float %i.alm, ptr %i.ade, align 4, !tbaa !56
  store <2 x float> %i.alo, ptr %i.adf, align 4, !tbaa !56
  store float %i.alp, ptr %i.adg, align 4, !tbaa !56
  store float %i.alt, ptr %i.adh, align 4, !tbaa !56
  store float %i.alv, ptr %i.adi, align 4, !tbaa !56
  store float %i.akk, ptr %i.adj, align 4, !tbaa !56
  store <4 x float> %i.akq, ptr %i.adl, align 4, !tbaa !56
  store float %i.aks, ptr %i.adm, align 4, !tbaa !56
  store float %i.akt, ptr %i.adn, align 4, !tbaa !56
  store float %i.akl, ptr %i.ado, align 4, !tbaa !56
  %i.alw = fadd fast <4 x float> %i.ahl, %i.akw
  %i.alx = fadd fast float %i.aho, %i.akh
  %i.aly = fadd fast float %i.ahp, %i.akh
  store <4 x float> %i.alw, ptr %i.adq, align 4, !tbaa !56
  store float %i.alx, ptr %i.adr, align 4, !tbaa !56
  store float %i.aly, ptr %i.ads, align 4, !tbaa !56
  store float %i.akf, ptr %i.adt, align 4, !tbaa !56
  %i.alz = fadd fast <4 x float> %i.aib, %i.akz
  %i.ama = fadd fast float %i.aie, %i.aki
  %i.amb = fadd fast float %i.aif, %i.aki
  store <4 x float> %i.alz, ptr %i.adv, align 4, !tbaa !56
  store float %i.ama, ptr %i.adw, align 4, !tbaa !56
  store float %i.amb, ptr %i.adx, align 4, !tbaa !56
  store float %i.akg, ptr %i.ady, align 4, !tbaa !56
  %i.amc = shufflevector <2 x float> %i.aeu, <2 x float> %i.afy, <4 x i32> <i32 0, i32 poison, i32 poison, i32 2>
  %i.amd = insertelement <4 x float> poison, float %i.aej, i64 0
  %i.ame = shufflevector <4 x float> %i.amd, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %i.amf = shufflevector <4 x float> %i.amc, <4 x float> %i.ame, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.amg = fmul reassoc arcp contract afn <4 x float> %i.amf, <float 1.000000e+00, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.amh = shufflevector <2 x float> %i.aeu, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.ami = shufflevector <4 x float> %i.amh, <4 x float> %i.amg, <4 x i32> <i32 5, i32 1, i32 7, i32 6> ; 2 uses
  %i.amj = fsub fast <4 x float> %i.amg, %i.ami
  %i.amk = fadd fast <4 x float> %i.amg, %i.ami
  %i.aml = shufflevector <4 x float> %i.amj, <4 x float> %i.amk, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.amm = fadd fast <4 x float> %i.aml, %i.akd
  store <4 x float> %i.amm, ptr %i.aka, align 4, !tbaa !56
  %i.amn = getelementptr inbounds nuw i8, ptr %.118.i, i64 244
  store float %i.ajp, ptr %i.amn, align 4, !tbaa !56
  %i.amo = getelementptr inbounds nuw i8, ptr %.118.i, i64 248
  store float %i.ajr, ptr %i.amo, align 4, !tbaa !56
  %i.amp = getelementptr inbounds nuw i8, ptr %.118.i, i64 252
  store float %i.acp, ptr %i.amp, align 4, !tbaa !56
  %i.amq = getelementptr inbounds nuw i8, ptr %.118.i, i64 256 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader.preheader.i, !llvm.loop !665

._crit_edge.i:                                    ; preds = %.preheader.preheader.i, %middle.block191
  %.lcssa = phi ptr [ %i.cw, %middle.block191 ], [ %i.amq, %.preheader.preheader.i ]
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count28.i
  br i1 %exitcond29.not.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit, label %.preheader12.i, !llvm.loop !666

_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit: ; preds = %._crit_edge.i, %.preheader12.lr.ph.i, %bb.d
  %i.amr = trunc nsw i64 %indvars.iv to i32
  %i.ams = sdiv i32 %i.amr, %i.ag
  %i.amt = sext i32 %i.ams to i64
  %i.amu = mul i64 %i.av, %i.amt
  %i.amv = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.amu
  %i.amw = shl nsw i32 %.sroa.speculated, 6       ; 2 uses
  %i.amx = icmp sgt i32 %.sroa.speculated, 0      ; 4 uses
  %i.amy = sext i32 %i.amw to i64                 ; 12 uses
  %i.amz = shl nsw i32 %.sroa.speculated, 7
  %i.ana = sext i32 %i.amz to i64                 ; 4 uses
  %i.anb = mul nsw i32 %.sroa.speculated, 192
  %i.anc = sext i32 %i.anb to i64                 ; 4 uses
  %i.and = shl nsw i32 %.sroa.speculated, 8
  %i.ane = sext i32 %i.and to i64
  %i.anf = mul nsw i32 %.sroa.speculated, 320
  %i.ang = sext i32 %i.anf to i64
  %i.anh = mul nsw i32 %.sroa.speculated, 384
  %i.ani = sext i32 %i.anh to i64
  %i.anj = mul nsw i32 %.sroa.speculated, 448
  %i.ank = sext i32 %i.anj to i64
  %i.anl = zext i32 %i.amw to i64
  %i.anm = shl nsw i64 %i.ca, 2
  %i.ann = getelementptr i8, ptr %i.bj, i64 %i.cb
  %i.ano = getelementptr i8, ptr %i.ann, i64 %i.ce
  %xtraiter = and i32 %.sroa.speculated, 1
  %i.anp = icmp eq i32 %i.bp, 0
  %unroll_iter = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod209 = trunc i32 %.sroa.speculated to i1
  %xtraiter211 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.anq = icmp ult i32 %i.bp, 3
  %unroll_iter215 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod212.not = icmp eq i32 %xtraiter211, 0
  %lcmp.mod214 = icmp ne i32 %xtraiter211, 0
  %i.anr = zext nneg i32 %.sroa.speculated to i64 ; 2 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %stride.check = icmp slt i32 %i.bz, 0
  %n.vec = and i64 %i.anr, 2147483640             ; 5 uses
  %i.ans = trunc nuw nsw i64 %n.vec to i32
  %i.ant = shl nuw nsw i64 %n.vec, 8
  %i.anu = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.anr
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge49.split.i, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit
  %indvars.iv78.i = phi i64 [ 0, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ %indvars.iv.next79.i, %._crit_edge49.split.i ] ; 7 uses
  %i.anv = shl nuw nsw i64 %indvars.iv78.i, 2
  %scevgep = getelementptr i8, ptr %i.ano, i64 %i.anv
  %.reass.i = mul i64 %i.au, %indvars.iv78.i
  %i.anw = getelementptr inbounds nuw i8, ptr %i.amv, i64 %.reass.i ; 4 uses
  br i1 %i.aw, label %.lr.ph9.i, label %.preheader2.i

.lr.ph9.i:                                        ; preds = %bb.e
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.aa, i64 %indvars.iv78.i
  br i1 %i.amx, label %.lr.ph.us.i, label %.preheader2.thread.i

.lr.ph.us.i:                                      ; preds = %.lr.ph9.i, %._crit_edge.us.i
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i56, %._crit_edge.us.i ], [ 0, %.lr.ph9.i ] ; 2 uses
  %.01076.us.i = phi ptr [ %i.aov, %._crit_edge.us.i ], [ %i.anw, %.lr.ph9.i ]
  %i.anx = mul nuw nsw i64 %indvars.iv.i54, %i.anl
  %gep.us.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.anx
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.us.i
  %.01045.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %i.aow, %bb.f ]
  %.01054.us.i = phi ptr [ %gep.us.i, %.lr.ph.us.i ], [ %i.aou, %bb.f ] ; 9 uses
  %.11083.us.i = phi ptr [ %.01076.us.i, %.lr.ph.us.i ], [ %i.aov, %bb.f ] ; 9 uses
  %i.any = load float, ptr %.01054.us.i, align 4, !tbaa !56
  store float %i.any, ptr %.11083.us.i, align 4, !tbaa !56
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %.01054.us.i, i64 %i.amy
  %i.aoa = load float, ptr %i.anz, align 4, !tbaa !56
  %i.aob = getelementptr inbounds nuw i8, ptr %.11083.us.i, i64 4
  store float %i.aoa, ptr %i.aob, align 4, !tbaa !56
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %.01054.us.i, i64 %i.ana
  %i.aod = load float, ptr %i.aoc, align 4, !tbaa !56
  %i.aoe = getelementptr inbounds nuw i8, ptr %.11083.us.i, i64 8
  store float %i.aod, ptr %i.aoe, align 4, !tbaa !56
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %.01054.us.i, i64 %i.anc
  %i.aog = load float, ptr %i.aof, align 4, !tbaa !56
  %i.aoh = getelementptr inbounds nuw i8, ptr %.11083.us.i, i64 12
  store float %i.aog, ptr %i.aoh, align 4, !tbaa !56
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr %.01054.us.i, i64 %i.ane
  %i.aoj = load float, ptr %i.aoi, align 4, !tbaa !56
  %i.aok = getelementptr inbounds nuw i8, ptr %.11083.us.i, i64 16
  store float %i.aoj, ptr %i.aok, align 4, !tbaa !56
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %.01054.us.i, i64 %i.ang
  %i.aom = load float, ptr %i.aol, align 4, !tbaa !56
  %i.aon = getelementptr inbounds nuw i8, ptr %.11083.us.i, i64 20
  store float %i.aom, ptr %i.aon, align 4, !tbaa !56
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %.01054.us.i, i64 %i.ani
  %i.aop = load float, ptr %i.aoo, align 4, !tbaa !56
  %i.aoq = getelementptr inbounds nuw i8, ptr %.11083.us.i, i64 24
  store float %i.aop, ptr %i.aoq, align 4, !tbaa !56
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr %.01054.us.i, i64 %i.ank
  %i.aos = load float, ptr %i.aor, align 4, !tbaa !56
  %i.aot = getelementptr inbounds nuw i8, ptr %.11083.us.i, i64 28
  store float %i.aos, ptr %i.aot, align 4, !tbaa !56
  %i.aou = getelementptr inbounds nuw i8, ptr %.01054.us.i, i64 256
  %i.aov = getelementptr inbounds nuw i8, ptr %.11083.us.i, i64 32 ; 3 uses
  %i.aow = add nuw nsw i32 %.01045.us.i, 1        ; 2 uses
  %exitcond.not.i55 = icmp eq i32 %i.aow, %.sroa.speculated
  br i1 %exitcond.not.i55, label %._crit_edge.us.i, label %bb.f, !llvm.loop !2

._crit_edge.us.i:                                 ; preds = %bb.f
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i54, 8 ; 3 uses
  %i.aox = icmp slt i64 %indvars.iv.next.i56, %invariant.op.i
  br i1 %i.aox, label %.lr.ph.us.i, label %.preheader2.loopexit.i, !llvm.loop !3

.preheader2.loopexit.i:                           ; preds = %._crit_edge.us.i
  %i.aoy = trunc nuw nsw i64 %indvars.iv.next.i56 to i32
  br label %.preheader2.i

.preheader2.i:                                    ; preds = %.preheader2.loopexit.i, %bb.e
  %.0107.lcssa.i = phi ptr [ %i.anw, %bb.e ], [ %i.aov, %.preheader2.loopexit.i ] ; 3 uses
  %.0106.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.aoy, %.preheader2.loopexit.i ] ; 4 uses
  %i.aoz = or disjoint i32 %.0106.lcssa.i, 3
  %i.apa = icmp slt i32 %i.aoz, %.sroa.speculated82
  br i1 %i.apa, label %.lr.ph18.i, label %.preheader1.i

.preheader2.thread.i:                             ; preds = %.lr.ph9.i
  br i1 %i.bb, label %.lr.ph18.split.preheader.i, label %.preheader1.i

.lr.ph18.i:                                       ; preds = %.preheader2.i
  %invariant.gep21.i = getelementptr [4 x i8], ptr %i.aa, i64 %indvars.iv78.i
  br i1 %i.amx, label %.lr.ph.us23.preheader.i, label %.lr.ph18.split.preheader.i

end_hunk_0
