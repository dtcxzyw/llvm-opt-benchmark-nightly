Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/contact_solver?download=true
inline.NumInlined: 529
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@b3PrepareContacts_Convex:bb.a
  %i.zm = fadd float %i.zk, %i.zl
  %i.zn = fmul float %i.lu, %i.zd
  %i.zo = fmul float %i.ly, %i.zg
  %i.zp = fadd float %i.zn, %i.zo
  %i.zq = fsub <2 x float> %i.yt, %i.yv           ; 5 uses
  %i.zr = insertelement <2 x float> %i.yt, float %i.yg, i64 0
  %i.zs = fsub <2 x float> %i.zr, %i.yi           ; 4 uses
  %i.zt = fsub <2 x float> %i.yx, %i.yy           ; 5 uses
  %i.zu = fsub <2 x float> %i.yk, %i.yp           ; 4 uses
  %i.zv = fsub <2 x float> %i.yq, %i.yr           ; 5 uses
  %i.zw = fsub <2 x float> %i.yz, %i.za           ; 4 uses
  %i.zx = fmul float %i.nh, %i.wc
  %i.zy = fmul float %i.ne, %i.wp
  %i.zz = fsub float %i.zx, %i.zy                 ; 4 uses
  %i.aaa = fadd float %.0628.us, %.0629.us        ; 2 uses
  %i.aab = shufflevector <4 x float> %i.jm, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.aac = shufflevector <2 x float> %i.zs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aad = fmul <2 x float> %i.aab, %i.aac
  %i.aae = shufflevector <4 x float> %i.jl, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.aaf = shufflevector <2 x float> %i.zu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aag = fmul <2 x float> %i.aae, %i.aaf
  %i.aah = fadd <2 x float> %i.aad, %i.aag
  %i.aai = shufflevector <4 x float> %i.jn, <4 x float> %i.jl, <2 x i32> <i32 3, i32 7>
  %i.aaj = shufflevector <2 x float> %i.zv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aak = fmul <2 x float> %i.aai, %i.aaj
  %i.aal = fadd <2 x float> %i.aak, %i.aah
  %i.aam = shufflevector <2 x float> %i.zs, <2 x float> %i.zv, <2 x i32> <i32 0, i32 2>
  %i.aan = fmul <2 x float> %i.aam, %i.aal        ; 2 uses
  %i.aao = shufflevector <4 x float> %i.jm, <4 x float> %i.lb, <2 x i32> <i32 0, i32 4>
  %i.aap = fmul <2 x float> %i.aao, %i.zq
  %i.aaq = shufflevector <4 x float> %i.jl, <4 x float> %i.la, <2 x i32> <i32 2, i32 6>
  %i.aar = fmul <2 x float> %i.aaq, %i.zt
  %i.aas = fadd <2 x float> %i.aap, %i.aar
  %i.aat = shufflevector <4 x float> %i.jm, <4 x float> %i.lb, <2 x i32> <i32 3, i32 7>
  %i.aau = fmul <2 x float> %i.aat, %i.zq
  %i.aav = shufflevector <4 x float> %i.jl, <4 x float> %i.la, <2 x i32> <i32 1, i32 5>
  %i.aaw = fmul <2 x float> %i.aav, %i.zt
  %i.aax = fadd <2 x float> %i.aau, %i.aaw
  %i.aay = shufflevector <4 x float> %i.jn, <4 x float> %i.lc, <2 x i32> <i32 3, i32 7>
  %i.aaz = fmul <2 x float> %i.aay, %i.zw
  %i.aba = fadd <2 x float> %i.aaz, %i.aax        ; 2 uses
  %i.abb = shufflevector <4 x float> %i.jm, <4 x float> %i.lb, <2 x i32> <i32 2, i32 6>
  %i.abc = fmul <2 x float> %i.abb, %i.zq
  %i.abd = shufflevector <4 x float> %i.jn, <4 x float> %i.lc, <2 x i32> <i32 2, i32 6>
  %i.abe = fmul <2 x float> %i.abd, %i.zt
  %i.abf = fadd <2 x float> %i.abc, %i.abe
  %i.abg = shufflevector <4 x float> %i.jl, <4 x float> %i.la, <2 x i32> <i32 0, i32 4>
  %i.abh = fmul <2 x float> %i.abg, %i.zw
  %i.abi = fadd <2 x float> %i.abh, %i.abf        ; 2 uses
  %i.abj = shufflevector <4 x float> %i.jl, <4 x float> %i.la, <2 x i32> <i32 3, i32 7>
  %i.abk = fmul <2 x float> %i.abj, %i.zw
  %i.abl = fadd <2 x float> %i.abk, %i.aas        ; 2 uses
  %foldExtExtBinop36797 = fmul <2 x float> %i.zq, %i.aba
  %foldExtExtBinop36799 = fmul <2 x float> %i.zt, %i.abi
  %foldExtExtBinop36801 = fadd <2 x float> %foldExtExtBinop36797, %foldExtExtBinop36799
  %foldExtExtBinop36803 = fmul <2 x float> %i.zw, %i.abl
  %foldExtExtBinop36805 = fadd <2 x float> %foldExtExtBinop36803, %foldExtExtBinop36801
  %i.abm = extractelement <2 x float> %foldExtExtBinop36805, i64 0
  %i.abn = fadd float %i.aaa, %i.abm
  %i.abo = fmul float %i.zi, %i.zz
  %i.abp = fadd float %i.abo, %i.zm               ; 2 uses
  %i.abq = fmul float %i.zj, %i.zz
  %i.abr = fadd float %i.abq, %i.zp               ; 2 uses
  %i.abs = fmul float %i.zd, %i.abp
  %i.abt = fmul float %i.zg, %i.abr
  %i.abu = fadd float %i.abs, %i.abt
  %i.abv = fmul <2 x float> %i.zs, %i.aba
  %i.abw = fmul <2 x float> %i.zu, %i.abi
  %i.abx = fadd <2 x float> %i.abv, %i.abw
  %i.aby = fmul <2 x float> %i.zv, %i.abl
  %i.abz = fadd <2 x float> %i.aby, %i.abx
  %i.aca = extractelement <2 x float> %i.zq, i64 1
  %i.acb = fmul float %i.aca, %i.abp
  %i.acc = extractelement <2 x float> %i.zt, i64 1
  %i.acd = fmul float %i.acc, %i.abr
  %i.ace = fadd float %i.acb, %i.acd
  %i.acf = shufflevector <4 x float> %i.jm, <4 x float> %i.lb, <2 x i32> <i32 2, i32 4>
  %i.acg = insertelement <2 x float> %i.zs, float %i.zd, i64 1
  %i.ach = fmul <2 x float> %i.acf, %i.acg
  %i.aci = shufflevector <4 x float> %i.jn, <4 x float> %i.la, <2 x i32> <i32 2, i32 6>
  %i.acj = insertelement <2 x float> %i.zu, float %i.zg, i64 1
  %i.ack = fmul <2 x float> %i.aci, %i.acj
  %i.acl = fadd <2 x float> %i.ach, %i.ack
  %i.acm = shufflevector <4 x float> %i.jl, <4 x float> %i.la, <2 x i32> <i32 0, i32 7>
  %i.acn = insertelement <2 x float> %i.zv, float %i.zz, i64 1
  %i.aco = fmul <2 x float> %i.acm, %i.acn
  %i.acp = fadd <2 x float> %i.aco, %i.acl        ; 2 uses
  %i.acq = shufflevector <2 x float> %i.zu, <2 x float> %i.zv, <2 x i32> <i32 0, i32 3>
  %i.acr = fmul <2 x float> %i.acq, %i.acp        ; 2 uses
  %foldExtExtBinop36807 = fadd <2 x float> %i.aan, %i.acr
  %shift36809 = shufflevector <2 x float> %i.aan, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36810 = fadd <2 x float> %shift36809, %foldExtExtBinop36807
  %i.acs = extractelement <2 x float> %i.acp, i64 1
  %i.act = fmul float %i.zz, %i.acs
  %i.acu = fadd float %i.act, %i.abu
  %i.acv = fadd float %i.acu, %i.abn              ; 2 uses
  %i.acw = shufflevector <2 x float> %i.acr, <2 x float> %foldExtExtBinop36810, <2 x i32> <i32 1, i32 2>
  %i.acx = insertelement <2 x float> poison, float %i.ace, i64 0
  %i.acy = insertelement <2 x float> %i.acx, float %i.aaa, i64 1
  %i.acz = fadd <2 x float> %i.acw, %i.acy
  %i.ada = fadd <2 x float> %i.abz, %i.acz        ; 4 uses
  %i.adb = extractelement <2 x float> %i.ada, i64 1
  %i.adc = fmul float %i.adb, %i.acv
  %foldExtExtBinop36812 = fmul <2 x float> %i.ada, %i.ada
  %i.add = extractelement <2 x float> %foldExtExtBinop36812, i64 0
  %i.ade = fsub float %i.adc, %i.add              ; 2 uses
  %i.adf = tail call float @llvm.fabs.f32(float %i.ade)
  %i.adg = fcmp ogt float %i.adf, f0x057A0000
  br i1 %i.adg, label %bb.bv, label %b3Invert2.exit.us

bb.bv:                                            ; preds = %._crit_edge11259.us
  %i.adh = fdiv float 1.000000e+00, %i.ade        ; 3 uses
  %i.adi = fmul float %i.acv, %i.adh
  %.sroa.0.0.vec.insert.i.us = insertelement <2 x float> poison, float %i.adi, i64 0
  %i.adj = fneg float %i.adh
  %i.adk = insertelement <2 x float> poison, float %i.adj, i64 0
  %i.adl = insertelement <2 x float> %i.adk, float %i.adh, i64 1
  %i.adm = fmul <2 x float> %i.ada, %i.adl        ; 2 uses
  %i.adn = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.us, <2 x float> %i.adm, <2 x i32> <i32 0, i32 2>
  br label %b3Invert2.exit.us

b3Invert2.exit.us:                                ; preds = %bb.bv, %._crit_edge11259.us
  %.sroa.5.0.i880.us = phi <2 x float> [ %i.adm, %bb.bv ], [ zeroinitializer, %._crit_edge11259.us ]
  %.sroa.0.0.i.us = phi <2 x float> [ %i.adn, %bb.bv ], [ zeroinitializer, %._crit_edge11259.us ] ; 2 uses
  %.sroa.0918.0.vec.extract.us = extractelement <2 x float> %.sroa.0.0.i.us, i64 0
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv24343
  store float %.sroa.0918.0.vec.extract.us, ptr %i.ado, align 4, !tbaa !178
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv24343
  %.sroa.0918.4.vec.extract.us = extractelement <2 x float> %.sroa.0.0.i.us, i64 1
  store float %.sroa.0918.4.vec.extract.us, ptr %i.adp, align 4, !tbaa !178
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv24343
  %.sroa.5919.12.vec.extract.us = extractelement <2 x float> %.sroa.5.0.i880.us, i64 1
  store float %.sroa.5919.12.vec.extract.us, ptr %i.adq, align 4, !tbaa !178
  %i.adr = getelementptr inbounds nuw i8, ptr %i.hj, i64 240 ; 2 uses
  %.sroa.031.0.copyload.us = load <2 x float>, ptr %i.adr, align 4 ; 2 uses
  %.sroa.232.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.hj, i64 248 ; 2 uses
  %.sroa.232.0.copyload.us = load float, ptr %.sroa.232.0..sroa_idx.us, align 4
  %foldExtExtBinop36814 = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.031.0.copyload.us
  %foldExtExtBinop36816 = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.031.0.copyload.us
  %shift36818 = shufflevector <2 x float> %foldExtExtBinop36816, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36819 = fadd <2 x float> %foldExtExtBinop36814, %shift36818
  %i.ads = extractelement <2 x float> %foldExtExtBinop36819, i64 0
  %i.adt = fmul float %.sroa.5.0.i.i.us, %.sroa.232.0.copyload.us
  %i.adu = fadd float %i.adt, %i.ads
  %i.adv = fmul float %i.ab, %i.adu
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv24343
  store float %i.adv, ptr %i.adw, align 4, !tbaa !178
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv24343
  %.sroa.228.0.copyload.us = load float, ptr %.sroa.232.0..sroa_idx.us, align 4
  %i.ady = fmul float %i.nk, %.sroa.228.0.copyload.us
  %.sroa.027.0.copyload.us = load <2 x float>, ptr %i.adr, align 4 ; 2 uses
  %.sroa.03.0.vec.extract.i891.us = extractelement <2 x float> %.sroa.027.0.copyload.us, i64 0
  %i.adz = fmul float %i.ne, %.sroa.03.0.vec.extract.i891.us
  %.sroa.03.4.vec.extract.i893.us = extractelement <2 x float> %.sroa.027.0.copyload.us, i64 1
  %i.aea = fmul float %i.nh, %.sroa.03.4.vec.extract.i893.us
  %i.aeb = fadd float %i.adz, %i.aea
  %i.aec = fadd float %i.ady, %i.aeb
  %i.aed = fmul float %i.ab, %i.aec
  store float %i.aed, ptr %i.adx, align 4, !tbaa !178
  %i.aee = fadd <4 x float> %i.jm, %i.lb          ; 7 uses
  %i.aef = fadd <4 x float> %i.jl, %i.la          ; 10 uses
  %i.aeg = fadd <4 x float> %i.jn, %i.lc          ; 6 uses
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv24343
  %i.aei = extractelement <4 x float> %i.aee, i64 0
  %i.aej = fmul float %i.aei, %.sroa.0961.0.vec.extract.us
  %i.aek = extractelement <4 x float> %i.aef, i64 2
  %i.ael = fmul float %i.aek, %.sroa.0961.4.vec.extract.us
  %i.aem = fadd float %i.aej, %i.ael
  %i.aen = extractelement <4 x float> %i.aef, i64 3
  %i.aeo = fmul float %i.aen, %.sroa.12969.0.copyload.us
  %i.aep = fadd float %i.aeo, %i.aem
  %i.aeq = fmul float %.sroa.12969.0.copyload.us, %i.aep
  %i.aer = shufflevector <4 x float> %i.aee, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.aes = shufflevector <2 x float> %.sroa.0961.0.copyload.us, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aet = fmul <2 x float> %i.aer, %i.aes
  %i.aeu = shufflevector <4 x float> %i.aef, <4 x float> %i.aeg, <2 x i32> <i32 1, i32 6> ; 2 uses
  %i.aev = shufflevector <2 x float> %.sroa.0961.0.copyload.us, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aew = fmul <2 x float> %i.aeu, %i.aev
  %i.aex = fadd <2 x float> %i.aet, %i.aew
  %i.aey = shufflevector <4 x float> %i.aeg, <4 x float> %i.aef, <2 x i32> <i32 3, i32 4>
  %i.aez = insertelement <2 x float> poison, float %.sroa.12969.0.copyload.us, i64 0
  %i.afa = shufflevector <2 x float> %i.aez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afb = fmul <2 x float> %i.aey, %i.afa
  %i.afc = fadd <2 x float> %i.afb, %i.aex
  %i.afd = fmul <2 x float> %.sroa.0961.0.copyload.us, %i.afc ; 2 uses
  %shift36821 = shufflevector <2 x float> %i.afd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36822 = fadd <2 x float> %i.afd, %shift36821
  %i.afe = extractelement <2 x float> %foldExtExtBinop36822, i64 0
  %i.aff = fadd float %i.aeq, %i.afe              ; 2 uses
  %i.afg = fcmp ogt float %i.aff, 0.000000e+00
  %i.afh = fdiv float 1.000000e+00, %i.aff
  %i.afi = select i1 %i.afg, float %i.afh, float 0.000000e+00
  store float %i.afi, ptr %i.aeh, align 4, !tbaa !178
  %i.afj = getelementptr inbounds nuw i8, ptr %i.hj, i64 236
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv24343
  %i.afl = load float, ptr %i.afj, align 4, !tbaa !142
  %i.afm = fmul float %i.ab, %i.afl
  store float %i.afm, ptr %i.afk, align 4, !tbaa !178
  %shift36824 = shufflevector <4 x float> %i.aef, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop36825 = fmul <4 x float> %i.aef, %shift36824
  %2 = shufflevector <4 x float> %i.aeg, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %3 = shufflevector <4 x float> %i.aeg, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %shift36830 = fmul <4 x float> %2, %3
  %foldExtExtBinop36831 = fsub <4 x float> %foldExtExtBinop36825, %shift36830
  %i.afn = shufflevector <4 x float> %i.aef, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.afo = shufflevector <4 x float> %i.aeg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.afp = fmul <2 x float> %i.afn, %i.afo
  %i.afq = shufflevector <4 x float> %i.aef, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.afr = shufflevector <4 x float> %i.aef, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.afs = fmul <2 x float> %i.afq, %i.afr
  %i.aft = fsub <2 x float> %i.afp, %i.afs        ; 2 uses
  %i.afu = shufflevector <4 x float> %i.aee, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.afv = fmul <2 x float> %i.afu, %i.aft        ; 2 uses
  %shift36833 = shufflevector <2 x float> %i.afv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36834 = fadd <2 x float> %shift36833, %i.afv
  %i.afw = extractelement <2 x float> %foldExtExtBinop36834, i64 0
  %foldExtExtBinop36836 = fmul <4 x float> %i.aee, %foldExtExtBinop36831
  %i.afx = extractelement <4 x float> %foldExtExtBinop36836, i64 0
  %i.afy = fadd float %i.afx, %i.afw              ; 2 uses
  %i.afz = tail call float @llvm.fabs.f32(float %i.afy)
  %i.aga = fcmp ogt float %i.afz, f0x057A0000
  br i1 %i.aga, label %bb.bw, label %b3InvertMatrix.exit.us

bb.bw:                                            ; preds = %b3Invert2.exit.us
  %i.agb = shufflevector <4 x float> %i.aee, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.agc = fdiv float 1.000000e+00, %i.afy        ; 3 uses
  %i.agd = extractelement <2 x float> %i.aft, i64 0
  %i.age = fmul float %i.agd, %i.agc
  %i.agf = fmul <4 x float> %i.aef, %i.aee
  %i.agg = shufflevector <4 x float> %i.aee, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>
  %i.agh = fmul <4 x float> %i.aeg, %i.agg
  %i.agi = fsub <4 x float> %i.agf, %i.agh
  %i.agj = fmul <2 x float> %i.aeu, %i.agb        ; 2 uses
  %shift36838 = shufflevector <2 x float> %i.agj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36839 = fsub <2 x float> %shift36838, %i.agj
  %i.agk = extractelement <2 x float> %foldExtExtBinop36839, i64 0
  %i.agl = insertelement <4 x float> poison, float %i.agc, i64 0
  %i.agm = shufflevector <4 x float> %i.agl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agn = fmul <4 x float> %i.agi, %i.agm
  %i.ago = fmul float %i.agk, %i.agc
  br label %b3InvertMatrix.exit.us

b3InvertMatrix.exit.us:                           ; preds = %bb.bw, %b3Invert2.exit.us
  %.sroa.0905.0.us = phi float [ %i.age, %bb.bw ], [ 0.000000e+00, %b3Invert2.exit.us ]
  %.sroa.16.0.us = phi float [ %i.ago, %bb.bw ], [ 0.000000e+00, %b3Invert2.exit.us ]
  %i.agp = phi <4 x float> [ %i.agn, %bb.bw ], [ zeroinitializer, %b3Invert2.exit.us ] ; 4 uses
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv24343
  store float %.sroa.0905.0.us, ptr %i.agq, align 4, !tbaa !178
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv24343
  %i.ags = extractelement <4 x float> %i.agp, i64 0
  store float %i.ags, ptr %i.agr, align 4, !tbaa !178
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv24343
  %i.agu = extractelement <4 x float> %i.agp, i64 2
  store float %i.agu, ptr %i.agt, align 4, !tbaa !178
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv24343
  %i.agw = extractelement <4 x float> %i.agp, i64 3
  store float %i.agw, ptr %i.agv, align 4, !tbaa !178
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv24343
  %i.agy = extractelement <4 x float> %i.agp, i64 1
  store float %i.agy, ptr %i.agx, align 4, !tbaa !178
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv24343
  store float %.sroa.16.0.us, ptr %i.agz, align 4, !tbaa !178
  %i.aha = getelementptr inbounds nuw i8, ptr %i.hj, i64 252
  %i.ahb = load float, ptr %i.aha, align 4, !tbaa !227
  %i.ahc = fmul float %i.ab, %i.ahb
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv24343
  store float %i.ahc, ptr %i.ahd, align 4, !tbaa !178
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.hj, i64 256
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv24343
  %i.ahg = load float, ptr %i.ahe, align 4, !tbaa !228
  %i.ahh = fmul float %i.ab, %i.ahg
  store float %i.ahh, ptr %i.ahf, align 4, !tbaa !178
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.hj, i64 260
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv24343
  %i.ahk = load float, ptr %i.ahi, align 4, !tbaa !229
  %i.ahl = fmul float %i.ab, %i.ahk
  store float %i.ahl, ptr %i.ahj, align 4, !tbaa !178
  %i.ahm = icmp slt i32 %i.om, 4
  br i1 %i.ahm, label %.lr.ph11262.us.preheader, label %._crit_edge11263.us

.lr.ph11262.us.preheader:                         ; preds = %b3InvertMatrix.exit.us
  %i.ahn = sext i32 %i.om to i64
  br label %.lr.ph11262.us

.lr.ph11262.us:                                   ; preds = %.lr.ph11262.us.preheader, %bb.ci
  %indvars.iv24339 = phi i64 [ %i.ahn, %.lr.ph11262.us.preheader ], [ %indvars.iv.next24340, %bb.ci ] ; 4 uses
  %i.aho = getelementptr inbounds [192 x i8], ptr %i.ew, i64 %indvars.iv24339 ; 12 uses
  %i.ahp = mul nsw i64 %indvars.iv24339, 192
  %i.ahq = add i64 %i.ahp, %i.ex, !nosanitize !10 ; 3 uses
  %i.ahr = icmp ne i64 %i.ahq, 0, !nosanitize !10
  %i.ahs = icmp uge i64 %i.ahq, %i.ex, !nosanitize !10
  %i.aht = icmp slt i64 %indvars.iv24339, 0
  %i.ahu = xor i1 %i.aht, %i.ahs
  %i.ahv = and i1 %i.ahr, %i.ahu, !nosanitize !10
  br i1 %i.ahv, label %bb.bx, label %.split12120.us, !prof !11, !nosanitize !10

bb.bx:                                            ; preds = %.lr.ph11262.us
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv24343
  store float 0.000000e+00, ptr %i.ahw, align 4, !tbaa !178
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.aho, i64 16
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.ahx, i64 %indvars.iv24343 ; 2 uses
  %i.ahz = ptrtoint ptr %i.ahy to i64, !nosanitize !10 ; 2 uses
  %i.aia = and i64 %i.ahz, 3, !nosanitize !10
  %i.aib = icmp eq i64 %i.aia, 0, !nosanitize !10
  br i1 %i.aib, label %bb.by, label %.split12130.us, !prof !11, !nosanitize !10

bb.by:                                            ; preds = %bb.bx
  store float 0.000000e+00, ptr %i.ahy, align 4, !tbaa !178
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aho, i64 32
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.aic, i64 %indvars.iv24343 ; 2 uses
  %i.aie = ptrtoint ptr %i.aid to i64, !nosanitize !10 ; 2 uses
  %i.aif = and i64 %i.aie, 3, !nosanitize !10
  %i.aig = icmp eq i64 %i.aif, 0, !nosanitize !10
  br i1 %i.aig, label %bb.bz, label %.split12133.us, !prof !11, !nosanitize !10

bb.bz:                                            ; preds = %bb.by
  store float 0.000000e+00, ptr %i.aid, align 4, !tbaa !178
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aho, i64 48
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.aih, i64 %indvars.iv24343 ; 2 uses
  %i.aij = ptrtoint ptr %i.aii to i64, !nosanitize !10 ; 2 uses
  %i.aik = and i64 %i.aij, 3, !nosanitize !10
  %i.ail = icmp eq i64 %i.aik, 0, !nosanitize !10
  br i1 %i.ail, label %bb.ca, label %.split12139.us, !prof !11, !nosanitize !10

bb.ca:                                            ; preds = %bb.bz
  store float 0.000000e+00, ptr %i.aii, align 4, !tbaa !178
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aho, i64 64
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.aim, i64 %indvars.iv24343 ; 2 uses
  %i.aio = ptrtoint ptr %i.ain to i64, !nosanitize !10 ; 2 uses
  %i.aip = and i64 %i.aio, 3, !nosanitize !10
  %i.aiq = icmp eq i64 %i.aip, 0, !nosanitize !10
  br i1 %i.aiq, label %bb.cb, label %.split12142.us, !prof !11, !nosanitize !10

bb.cb:                                            ; preds = %bb.ca
  store float 0.000000e+00, ptr %i.ain, align 4, !tbaa !178
  %i.air = getelementptr inbounds nuw i8, ptr %i.aho, i64 80
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.air, i64 %indvars.iv24343 ; 2 uses
  %i.ait = ptrtoint ptr %i.ais to i64, !nosanitize !10 ; 2 uses
  %i.aiu = and i64 %i.ait, 3, !nosanitize !10
  %i.aiv = icmp eq i64 %i.aiu, 0, !nosanitize !10
  br i1 %i.aiv, label %bb.cc, label %.split12145.us, !prof !11, !nosanitize !10

bb.cc:                                            ; preds = %bb.cb
  store float 0.000000e+00, ptr %i.ais, align 4, !tbaa !178
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aho, i64 96
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.aiw, i64 %indvars.iv24343 ; 2 uses
  %i.aiy = ptrtoint ptr %i.aix to i64, !nosanitize !10 ; 2 uses
  %i.aiz = and i64 %i.aiy, 3, !nosanitize !10
  %i.aja = icmp eq i64 %i.aiz, 0, !nosanitize !10
  br i1 %i.aja, label %bb.cd, label %.split12148.us, !prof !11, !nosanitize !10

bb.cd:                                            ; preds = %bb.cc
  store float 0.000000e+00, ptr %i.aix, align 4, !tbaa !178
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aho, i64 112
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.ajb, i64 %indvars.iv24343 ; 2 uses
  %i.ajd = ptrtoint ptr %i.ajc to i64, !nosanitize !10 ; 2 uses
  %i.aje = and i64 %i.ajd, 3, !nosanitize !10
  %i.ajf = icmp eq i64 %i.aje, 0, !nosanitize !10
  br i1 %i.ajf, label %bb.ce, label %.split12151.us, !prof !11, !nosanitize !10

bb.ce:                                            ; preds = %bb.cd
  store float 0.000000e+00, ptr %i.ajc, align 4, !tbaa !178
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aho, i64 128
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %indvars.iv24343 ; 2 uses
  %i.aji = ptrtoint ptr %i.ajh to i64, !nosanitize !10 ; 2 uses
  %i.ajj = and i64 %i.aji, 3, !nosanitize !10
  %i.ajk = icmp eq i64 %i.ajj, 0, !nosanitize !10
  br i1 %i.ajk, label %bb.cf, label %.split12154.us, !prof !11, !nosanitize !10

bb.cf:                                            ; preds = %bb.ce
  store float 0.000000e+00, ptr %i.ajh, align 4, !tbaa !178
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.aho, i64 144
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.ajl, i64 %indvars.iv24343 ; 2 uses
  %i.ajn = ptrtoint ptr %i.ajm to i64, !nosanitize !10 ; 2 uses
  %i.ajo = and i64 %i.ajn, 3, !nosanitize !10
  %i.ajp = icmp eq i64 %i.ajo, 0, !nosanitize !10
  br i1 %i.ajp, label %bb.cg, label %.split12157.us, !prof !11, !nosanitize !10

bb.cg:                                            ; preds = %bb.cf
  store float 0.000000e+00, ptr %i.ajm, align 4, !tbaa !178
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.aho, i64 176
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.ajq, i64 %indvars.iv24343 ; 2 uses
  %i.ajs = ptrtoint ptr %i.ajr to i64, !nosanitize !10 ; 2 uses
  %i.ajt = and i64 %i.ajs, 3, !nosanitize !10
  %i.aju = icmp eq i64 %i.ajt, 0, !nosanitize !10
  br i1 %i.aju, label %bb.ch, label %.split12160.us, !prof !11, !nosanitize !10

bb.ch:                                            ; preds = %bb.cg
  store float 0.000000e+00, ptr %i.ajr, align 4, !tbaa !178
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aho, i64 160
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %indvars.iv24343 ; 2 uses
  %i.ajx = ptrtoint ptr %i.ajw to i64, !nosanitize !10 ; 2 uses
  %i.ajy = and i64 %i.ajx, 3, !nosanitize !10
  %i.ajz = icmp eq i64 %i.ajy, 0, !nosanitize !10
  br i1 %i.ajz, label %bb.ci, label %.split12163.us, !prof !11, !nosanitize !10

bb.ci:                                            ; preds = %bb.ch
  store float 0.000000e+00, ptr %i.ajw, align 4, !tbaa !178
  %indvars.iv.next24340 = add nsw i64 %indvars.iv24339, 1 ; 2 uses
  %exitcond24342.not = icmp eq i64 %indvars.iv.next24340, 4
  br i1 %exitcond24342.not, label %._crit_edge11263.us, label %.lr.ph11262.us, !llvm.loop !222

._crit_edge11263.us:                              ; preds = %bb.ci, %b3InvertMatrix.exit.us
end_hunk_0
