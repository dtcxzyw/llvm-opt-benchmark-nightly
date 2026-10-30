Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/instance_array_intersector?download=true
inline.NumInlined: 17
inline.NumDeleted: 2
begin_hunk_0_@_ZN6embree4sse225InstanceArrayIntersector110pointQueryEPNS_11PointQueryKILi1EEEPNS_17PointQueryContextERKNS_22InstanceArrayPrimitiveE:bb.a
  %i.zb = fmul float %i.za, 2.000000e+00
  %i.zc = fneg float %.sroa.077.12.vec.extract    ; 2 uses
  %i.zd = fmul float %.sroa.077.12.vec.extract, %i.zc
  %i.ze = tail call float @llvm.fmuladd.f32(float %.sroa.29.60.vec.extract, float %.sroa.29.60.vec.extract, float %i.zd) ; 2 uses
  %i.zf = insertelement <4 x float> poison, float %i.zb, i64 0
  %i.zg = tail call float @llvm.fmuladd.f32(float %.sroa.1180.28.vec.extract, float %.sroa.1180.28.vec.extract, float %i.ze)
  %i.zh = shufflevector <4 x float> %.sroa.29.0, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 3, i32 3, i32 3>
  %i.zi = shufflevector <4 x float> %.sroa.077.0, <4 x float> %.sroa.1180.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 poison>
  %i.zj = insertelement <4 x float> %i.zi, float %i.zg, i64 0
  %i.zk = insertelement <4 x float> %i.zj, float %i.zc, i64 3
  %i.zl = fmul <4 x float> %i.zh, %i.zk
  %i.zm = shufflevector <4 x float> %.sroa.1180.0, <4 x float> %.sroa.077.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 3>
  %i.zn = insertelement <4 x float> %i.zm, float %i.yq, i64 0
  %i.zo = shufflevector <4 x float> %.sroa.20.0, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.zp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zn, <4 x float> %i.zo, <4 x float> %i.zl) ; 3 uses
  %i.zq = extractelement <4 x float> %i.zp, i64 1
  %i.zr = fmul float %i.zq, 2.000000e+00
  %i.zs = shufflevector <4 x float> %i.zp, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.zt = fmul <2 x float> %i.zs, splat (float 2.000000e+00) ; 2 uses
  %i.zu = tail call float @llvm.fmuladd.f32(float %i.yo, float %.sroa.1180.28.vec.extract, float %i.ze)
  %i.zv = tail call float @llvm.fmuladd.f32(float %.sroa.20.44.vec.extract, float %.sroa.20.44.vec.extract, float %i.zu)
  %i.zw = shufflevector <4 x float> %i.yy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zx = insertelement <4 x float> poison, float %i.yu, i64 0
  %i.zy = shufflevector <4 x float> %i.zx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zz = insertelement <4 x float> poison, float %i.yx, i64 0
  %i.aaa = shufflevector <4 x float> %i.zz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aab = fmul <4 x float> %i.aaa, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.aac = fmul <4 x float> %i.zy, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.aad = fadd <4 x float> %i.aac, %i.aab
  %i.aae = fmul <4 x float> %i.zw, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.aaf = fadd <4 x float> %i.aae, %i.aad        ; 4 uses
  %i.aag = shufflevector <4 x float> %i.zf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aah = shufflevector <4 x float> %i.zp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aai = insertelement <4 x float> poison, float %i.zr, i64 0
  %i.aaj = shufflevector <4 x float> %i.aai, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aak = fmul <4 x float> %i.aaj, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.aal = fmul <4 x float> %i.aah, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.aam = fadd <4 x float> %i.aal, %i.aak
  %i.aan = fmul <4 x float> %i.aag, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.aao = fadd <4 x float> %i.aan, %i.aam        ; 4 uses
  %i.aap = shufflevector <2 x float> %i.zt, <2 x float> poison, <4 x i32> zeroinitializer
  %i.aaq = shufflevector <2 x float> %i.zt, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aar = insertelement <4 x float> poison, float %i.zv, i64 0
  %i.aas = shufflevector <4 x float> %i.aar, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aat = fmul <4 x float> %i.aas, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.aau = fmul <4 x float> %i.aaq, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.aav = fadd <4 x float> %i.aau, %i.aat
  %i.aaw = fmul <4 x float> %i.aap, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.aax = fadd <4 x float> %i.aaw, %i.aav        ; 3 uses
  %i.aay = fadd <4 x float> %.sroa.17345.56.vec.insert, zeroinitializer
  %i.aaz = shufflevector <4 x float> %.sroa.077.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aba = fmul <4 x float> %i.aax, zeroinitializer ; 2 uses
  %i.abb = fmul <4 x float> %i.aao, zeroinitializer
  %i.abc = fadd <4 x float> %i.abb, %i.aba
  %i.abd = fmul <4 x float> %i.aaz, %i.aaf
  %i.abe = fadd <4 x float> %i.abd, %i.abc
  %i.abf = shufflevector <4 x float> %.sroa.1180.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abg = shufflevector <4 x float> %.sroa.1180.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.abh = fmul <4 x float> %i.abg, %i.aao
  %i.abi = fadd <4 x float> %i.abh, %i.aba
  %i.abj = fmul <4 x float> %i.abf, %i.aaf
  %i.abk = fadd <4 x float> %i.abj, %i.abi
  %i.abl = shufflevector <4 x float> %.sroa.20.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abm = shufflevector <4 x float> %.sroa.20.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.abn = shufflevector <4 x float> %.sroa.20.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.abo = fmul <4 x float> %i.abn, %i.aax
  %i.abp = fmul <4 x float> %i.abm, %i.aao
  %i.abq = fadd <4 x float> %i.abp, %i.abo
  %i.abr = fmul <4 x float> %i.abl, %i.aaf
  %i.abs = fadd <4 x float> %i.abr, %i.abq
  %i.abt = shufflevector <4 x float> %.sroa.29.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abu = shufflevector <4 x float> %.sroa.29.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.abv = shufflevector <4 x float> %.sroa.29.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.abw = fmul <4 x float> %i.abv, %i.aax
  %i.abx = fmul <4 x float> %i.abu, %i.aao
  %i.aby = fadd <4 x float> %i.abx, %i.abw
  %i.abz = fmul <4 x float> %i.abt, %i.aaf
  %i.aca = fadd <4 x float> %i.abz, %i.aby
  %i.acb = fadd <4 x float> %i.aay, %i.aca
  br label %_ZNK6embree13InstanceArray14getLocal2WorldEm.exit

_ZNK6embree13InstanceArray14getLocal2WorldEm.exit: ; preds = %bb.h, %.thread914, %.thread905, %.thread896, %.thread, %_ZNK6embree13InstanceArray3l2wEmm.exit28
  %.sroa.050.0875 = phi <4 x float> [ %i.si, %_ZNK6embree13InstanceArray3l2wEmm.exit28 ], [ %i.ns, %.thread914 ], [ %i.fp, %.thread ], [ %.sroa.087.12.vec.insert, %.thread896 ], [ %i.km, %.thread905 ], [ undef, %bb.h ]
  %.sroa.5.0873 = phi <4 x float> [ %i.so, %_ZNK6embree13InstanceArray3l2wEmm.exit28 ], [ %i.nv, %.thread914 ], [ %i.fr, %.thread ], [ %.sroa.1089.28.vec.insert, %.thread896 ], [ %i.kt, %.thread905 ], [ undef, %bb.h ]
  %.sroa.8.0871 = phi <4 x float> [ %i.sw, %_ZNK6embree13InstanceArray3l2wEmm.exit28 ], [ %i.ny, %.thread914 ], [ %i.ft, %.thread ], [ %.sroa.1891.44.vec.insert, %.thread896 ], [ %i.la, %.thread905 ], [ undef, %bb.h ]
  %.sroa.11.0869 = phi <4 x float> [ %i.tf, %_ZNK6embree13InstanceArray3l2wEmm.exit28 ], [ %i.ob, %.thread914 ], [ %i.fv, %.thread ], [ %i.ib, %.thread896 ], [ %i.lh, %.thread905 ], [ undef, %bb.h ]
  %.sroa.25.0 = phi <4 x float> [ %i.acb, %_ZNK6embree13InstanceArray3l2wEmm.exit28 ], [ %i.pp, %.thread914 ], [ %i.gh, %.thread ], [ %i.jy, %.thread896 ], [ %i.mn, %.thread905 ], [ undef, %bb.h ] ; 3 uses
  %.sroa.17.0 = phi <4 x float> [ %i.abs, %_ZNK6embree13InstanceArray3l2wEmm.exit28 ], [ %i.pm, %.thread914 ], [ %i.gf, %.thread ], [ %.sroa.18.44.vec.insert, %.thread896 ], [ %i.mg, %.thread905 ], [ undef, %bb.h ] ; 3 uses
  %.sroa.956.0 = phi <4 x float> [ %i.abk, %_ZNK6embree13InstanceArray3l2wEmm.exit28 ], [ %i.pj, %.thread914 ], [ %i.gd, %.thread ], [ %.sroa.10.28.vec.insert, %.thread896 ], [ %i.lz, %.thread905 ], [ undef, %bb.h ] ; 3 uses
  %.sroa.051.0 = phi <4 x float> [ %i.abe, %_ZNK6embree13InstanceArray3l2wEmm.exit28 ], [ %i.pg, %.thread914 ], [ %i.gb, %.thread ], [ %.sroa.072.12.vec.insert, %.thread896 ], [ %i.ls, %.thread905 ], [ undef, %bb.h ] ; 4 uses
  %i.acc = shufflevector <4 x float> %.sroa.17.0, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 2 uses
  %i.acd = shufflevector <4 x float> %.sroa.956.0, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 2 uses
  %i.ace = fmul <4 x float> %.sroa.17.0, %i.acd
  %i.acf = fmul <4 x float> %.sroa.956.0, %i.acc
  %i.acg = fsub <4 x float> %i.acf, %i.ace        ; 3 uses
  %i.ach = shufflevector <4 x float> %i.acg, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.aci = shufflevector <4 x float> %.sroa.051.0, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 2 uses
  %i.acj = fmul <4 x float> %i.acc, %.sroa.051.0
  %i.ack = fmul <4 x float> %.sroa.17.0, %i.aci
  %i.acl = fsub <4 x float> %i.ack, %i.acj        ; 2 uses
  %i.acm = fmul <4 x float> %.sroa.956.0, %i.aci
  %i.acn = fmul <4 x float> %.sroa.051.0, %i.acd
  %i.aco = fsub <4 x float> %i.acn, %i.acm        ; 2 uses
  %i.acp = shufflevector <4 x float> %i.acg, <4 x float> %i.aco, <4 x i32> <i32 1, i32 5, i32 2, i32 6> ; 2 uses
  %i.acq = shufflevector <4 x float> %i.acg, <4 x float> %i.aco, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.acr = shufflevector <4 x float> %i.acl, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 4, i32 2, i32 5> ; 2 uses
  %i.acs = insertelement <4 x float> %i.acl, float 0.000000e+00, i64 1
  %i.act = shufflevector <4 x float> %i.acp, <4 x float> %i.acr, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.acu = shufflevector <4 x float> %i.acp, <4 x float> %i.acr, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.acv = shufflevector <4 x float> %i.acq, <4 x float> %i.acs, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.acw = fmul <4 x float> %.sroa.051.0, %i.ach  ; 3 uses
  %i.acx = shufflevector <4 x float> %i.acw, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.acy = shufflevector <4 x float> %i.acw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acz = shufflevector <4 x float> %i.acw, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ada = fadd <4 x float> %i.acy, %i.acz
  %i.adb = fadd <4 x float> %i.acx, %i.ada        ; 3 uses
  %i.adc = fdiv <4 x float> %i.act, %i.adb        ; 7 uses
  %i.add = fdiv <4 x float> %i.acu, %i.adb        ; 7 uses
  %i.ade = fdiv <4 x float> %i.acv, %i.adb        ; 7 uses
  %i.adf = shufflevector <4 x float> %.sroa.25.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.adg = shufflevector <4 x float> %.sroa.25.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.adh = shufflevector <4 x float> %.sroa.25.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.adi = fmul <4 x float> %i.adh, %i.ade
  %i.adj = fmul <4 x float> %i.adg, %i.add
  %i.adk = fadd <4 x float> %i.adj, %i.adi
  %i.adl = fmul <4 x float> %i.adf, %i.adc
  %i.adm = fadd <4 x float> %i.adl, %i.adk        ; 2 uses
  %i.adn = fneg <4 x float> %i.adm
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.adp = load i32, ptr %i.ado, align 8
  %i.adq = icmp eq i32 %i.adp, 1
  br i1 %i.adq, label %bb.n, label %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread

bb.n:                                             ; preds = %_ZNK6embree13InstanceArray14getLocal2WorldEm.exit
  %i.adr = fmul <4 x float> %i.adc, %i.add        ; 3 uses
  %i.ads = shufflevector <4 x float> %i.adr, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.adt = shufflevector <4 x float> %i.adr, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.adu = fadd <4 x float> %i.adr, %i.ads
  %i.adv = fadd <4 x float> %i.adt, %i.adu
  %i.adw = extractelement <4 x float> %i.adv, i64 0
  %i.adx = tail call noundef float @llvm.fabs.f32(float %i.adw)
  %i.ady = fcmp ogt float %i.adx, f0x3727C5AC
  br i1 %i.ady, label %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.adz = fmul <4 x float> %i.adc, %i.ade        ; 3 uses
  %i.aea = shufflevector <4 x float> %i.adz, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.aeb = shufflevector <4 x float> %i.adz, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.aec = fadd <4 x float> %i.adz, %i.aea
  %i.aed = fadd <4 x float> %i.aeb, %i.aec
  %i.aee = extractelement <4 x float> %i.aed, i64 0
  %i.aef = tail call noundef float @llvm.fabs.f32(float %i.aee)
  %i.aeg = fcmp ogt float %i.aef, f0x3727C5AC
  br i1 %i.aeg, label %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aeh = fmul <4 x float> %i.add, %i.ade        ; 3 uses
  %i.aei = shufflevector <4 x float> %i.aeh, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.aej = shufflevector <4 x float> %i.aeh, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.aek = fadd <4 x float> %i.aeh, %i.aei
  %i.ael = fadd <4 x float> %i.aej, %i.aek
  %i.aem = extractelement <4 x float> %i.ael, i64 0
  %i.aen = tail call noundef float @llvm.fabs.f32(float %i.aem)
  %i.aeo = fcmp ogt float %i.aen, f0x3727C5AC
  br i1 %i.aeo, label %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aep = fmul <4 x float> %i.adc, %i.adc        ; 3 uses
  %i.aeq = shufflevector <4 x float> %i.aep, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.aer = shufflevector <4 x float> %i.aep, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.aes = fadd <4 x float> %i.aep, %i.aeq
  %i.aet = fadd <4 x float> %i.aer, %i.aes        ; 3 uses
  %i.aeu = extractelement <4 x float> %i.aet, i64 0
  %i.aev = fmul <4 x float> %i.add, %i.add        ; 3 uses
  %i.aew = shufflevector <4 x float> %i.aev, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.aex = shufflevector <4 x float> %i.aev, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.aey = fadd <4 x float> %i.aev, %i.aew
  %i.aez = fadd <4 x float> %i.aex, %i.aey        ; 2 uses
  %i.afa = fmul <4 x float> %i.ade, %i.ade        ; 3 uses
  %i.afb = shufflevector <4 x float> %i.afa, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.afc = shufflevector <4 x float> %i.afa, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.afd = fadd <4 x float> %i.afa, %i.afb
  %i.afe = fadd <4 x float> %i.afc, %i.afd        ; 2 uses
  %foldExtExtBinop934 = fsub <4 x float> %i.aet, %i.aez
  %i.aff = extractelement <4 x float> %foldExtExtBinop934, i64 0
  %i.afg = tail call noundef float @llvm.fabs.f32(float %i.aff)
  %i.afh = fcmp ogt float %i.afg, f0x3727C5AC
  %foldExtExtBinop936 = fsub <4 x float> %i.aet, %i.afe
  %i.afi = extractelement <4 x float> %foldExtExtBinop936, i64 0
  %i.afj = tail call float @llvm.fabs.f32(float %i.afi)
  %i.afk = fcmp ogt float %i.afj, f0x3727C5AC
  %or.cond = select i1 %i.afh, i1 true, i1 %i.afk
  %foldExtExtBinop938 = fsub <4 x float> %i.aez, %i.afe
  %i.afl = extractelement <4 x float> %foldExtExtBinop938, i64 0
  %i.afm = tail call float @llvm.fabs.f32(float %i.afl)
  %i.afn = fcmp ogt float %i.afm, f0x3727C5AC
  %or.cond944 = select i1 %or.cond, i1 true, i1 %i.afn
  br i1 %or.cond944, label %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread, label %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread880

_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread880: ; preds = %bb.q
  %i.afo = tail call float @llvm.sqrt.f32(float %i.aeu)
  br label %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread

_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread: ; preds = %bb.q, %bb.o, %bb.n, %bb.p, %_ZNK6embree13InstanceArray14getLocal2WorldEm.exit, %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread880
  %.0857 = phi float [ 0.000000e+00, %_ZNK6embree13InstanceArray14getLocal2WorldEm.exit ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %bb.q ], [ %i.afo, %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread880 ], [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.n ] ; 3 uses
  %i.afp = phi i1 [ true, %_ZNK6embree13InstanceArray14getLocal2WorldEm.exit ], [ true, %bb.o ], [ true, %bb.q ], [ false, %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread880 ], [ true, %bb.p ], [ true, %bb.n ]
  %i.afq = phi i32 [ 2, %_ZNK6embree13InstanceArray14getLocal2WorldEm.exit ], [ 2, %bb.o ], [ 2, %bb.q ], [ 1, %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread880 ], [ 2, %bb.p ], [ 2, %bb.n ]
  %i.afr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.afs = load ptr, ptr %i.afr, align 8          ; 4 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 136 ; 3 uses
  %i.afu = load i32, ptr %i.aft, align 8
  %i.afv = zext i32 %i.afu to i64                 ; 3 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afs, i64 128
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.afw, i64 %i.afv
  %i.afy = load <2 x i32>, ptr %2, align 4
  %i.afz = shufflevector <2 x i32> %i.afy, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.afz, ptr %i.afx, align 4
  %i.aga = getelementptr inbounds nuw [64 x i8], ptr %i.afs, i64 %i.afv ; 4 uses
  store <4 x float> %i.adc, ptr %i.aga, align 1
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  store <4 x float> %i.add, ptr %i.agb, align 1
  %i.agc = getelementptr inbounds nuw i8, ptr %i.aga, i64 32
  store <4 x float> %i.ade, ptr %i.agc, align 1
  %i.agd = getelementptr inbounds nuw i8, ptr %i.aga, i64 48
  store <4 x float> %i.adn, ptr %i.agd, align 1
  %i.age = getelementptr inbounds nuw i8, ptr %i.afs, i64 64
  %i.agf = getelementptr inbounds nuw [64 x i8], ptr %i.age, i64 %i.afv ; 4 uses
  store <4 x float> %.sroa.050.0875, ptr %i.agf, align 1
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 16
  store <4 x float> %.sroa.5.0873, ptr %i.agg, align 1
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agf, i64 32
  store <4 x float> %.sroa.8.0871, ptr %i.agh, align 1
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agf, i64 48
  store <4 x float> %.sroa.11.0869, ptr %i.agi, align 1
  %i.agj = load i32, ptr %i.aft, align 8
  %i.agk = add i32 %i.agj, 1
  store i32 %i.agk, ptr %i.aft, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.agl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.agm = load float, ptr %i.agl, align 4
  %i.agn = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.agm, ptr %i.agn, align 4
  %i.ago = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.agp = load float, ptr %i.ago, align 4
  %i.agq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.agr = load float, ptr %i.agq, align 4
  %i.ags = load float, ptr %0, align 4
  %i.agt = insertelement <4 x float> poison, float %i.ags, i64 0
  %i.agu = shufflevector <4 x float> %i.agt, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.agv = insertelement <4 x float> poison, float %i.agr, i64 0
  %i.agw = shufflevector <4 x float> %i.agv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.agx = insertelement <4 x float> poison, float %i.agp, i64 0
  %i.agy = shufflevector <4 x float> %i.agx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.agz = fmul <4 x float> %i.ade, %i.agy
  %i.aha = fsub <4 x float> %i.agz, %i.adm
  %i.ahb = fmul <4 x float> %i.add, %i.agw
  %i.ahc = fadd <4 x float> %i.ahb, %i.aha
  %i.ahd = fmul <4 x float> %i.adc, %i.agu
  %i.ahe = fadd <4 x float> %i.ahd, %i.ahc        ; 2 uses
  %.sroa.030.8.vec.extract = extractelement <4 x float> %i.ahe, i64 2
  %i.ahf = shufflevector <4 x float> %i.ahe, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ahf, ptr %3, align 16
  %i.ahg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %.sroa.030.8.vec.extract, ptr %i.ahg, align 8
  %i.ahh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ahi = load float, ptr %i.ahh, align 16
  %i.ahj = fmul float %.0857, %i.ahi
  %i.ahk = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.ahj, ptr %i.ahk, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.ahl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ahm = load ptr, ptr %i.ahl, align 16         ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aho = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ahp = load ptr, ptr %i.aho, align 8
  store ptr %.0.i864, ptr %4, align 16
  %i.ahq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.ahq, align 8
  %i.ahr = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ahm, ptr %i.ahr, align 16
  %i.ahs = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.afq, ptr %i.ahs, align 8
  %i.aht = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ahu = load ptr, ptr %i.afr, align 8          ; 2 uses
  %i.ahv = load <2 x ptr>, ptr %i.ahn, align 16
  store <2 x ptr> %i.ahv, ptr %i.aht, align 16
  %i.ahw = getelementptr inbounds nuw i8, ptr %4, i64 48
  store float %.0857, ptr %i.ahw, align 16
  %i.ahx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.ahp, ptr %i.ahx, align 8
  %i.ahy = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 -1, ptr %i.ahy, align 16
  %i.ahz = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i32 -1, ptr %i.ahz, align 4
  %i.aia = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahm, i64 16
  %i.aic = load float, ptr %i.aib, align 16       ; 4 uses
  %i.aid = insertelement <4 x float> poison, float %i.aic, i64 0
  %i.aie = shufflevector <4 x float> %i.aid, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %i.afp, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread
  %i.aif = fcmp oeq float %i.aic, +inf
  br i1 %i.aif, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahu, i64 136
  %i.aih = load i32, ptr %i.aig, align 8          ; 2 uses
  %i.aii = icmp eq i32 %i.aih, 0
  br i1 %i.aii, label %.critedge.i, label %bb.t, !prof !10

bb.t:                                             ; preds = %bb.s
  %i.aij = add i32 %i.aih, -1
  %i.aik = zext i32 %i.aij to i64
  %i.ail = getelementptr inbounds nuw [64 x i8], ptr %i.ahu, i64 %i.aik ; 4 uses
  %i.aim = load <4 x float>, ptr %i.ail, align 1, !noalias !202 ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ail, i64 16
  %i.aio = load <4 x float>, ptr %i.ain, align 1, !noalias !203 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ail, i64 32
  %i.aiq = load <4 x float>, ptr %i.aip, align 1, !noalias !204 ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.ail, i64 48
  %i.ais = load <4 x float>, ptr %i.air, align 1, !noalias !205 ; 2 uses
  %i.ait = fneg float %i.aic
  %i.aiu = insertelement <4 x float> poison, float %i.ait, i64 0
  %i.aiv = shufflevector <4 x float> %i.aiu, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aiw = fmul <4 x float> %i.aiv, %i.aiq
  %i.aix = fadd <4 x float> %i.aiw, %i.ais        ; 2 uses
  %i.aiy = fmul <4 x float> %i.aiv, %i.aio        ; 2 uses
  %i.aiz = fadd <4 x float> %i.aiy, %i.aix        ; 2 uses
  %i.aja = fmul <4 x float> %i.aiv, %i.aim        ; 4 uses
  %i.ajb = fadd <4 x float> %i.aja, %i.aiz        ; 2 uses
  %i.ajc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.ajb)
  %i.ajd = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.ajb)
  %i.aje = fmul <4 x float> %i.aie, %i.aiq
  %i.ajf = fadd <4 x float> %i.aje, %i.ais        ; 2 uses
  %i.ajg = fadd <4 x float> %i.aiy, %i.ajf        ; 2 uses
  %i.ajh = fadd <4 x float> %i.aja, %i.ajg        ; 2 uses
  %i.aji = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ajc, <4 x float> %i.ajh)
  %i.ajj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ajd, <4 x float> %i.ajh)
  %i.ajk = fmul <4 x float> %i.aie, %i.aio        ; 2 uses
  %i.ajl = fadd <4 x float> %i.ajk, %i.aix        ; 2 uses
  %i.ajm = fadd <4 x float> %i.aja, %i.ajl        ; 2 uses
  %i.ajn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aji, <4 x float> %i.ajm)
  %i.ajo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ajj, <4 x float> %i.ajm)
  %i.ajp = fadd <4 x float> %i.ajk, %i.ajf        ; 2 uses
  %i.ajq = fadd <4 x float> %i.aja, %i.ajp        ; 2 uses
  %i.ajr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ajn, <4 x float> %i.ajq)
  %i.ajs = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ajo, <4 x float> %i.ajq)
  %i.ajt = fmul <4 x float> %i.aie, %i.aim        ; 4 uses
  %i.aju = fadd <4 x float> %i.ajt, %i.aiz        ; 2 uses
  %i.ajv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ajr, <4 x float> %i.aju)
  %i.ajw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ajs, <4 x float> %i.aju)
  %i.ajx = fadd <4 x float> %i.ajt, %i.ajg        ; 2 uses
  %i.ajy = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ajv, <4 x float> %i.ajx)
  %i.ajz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ajw, <4 x float> %i.ajx)
  %i.aka = fadd <4 x float> %i.ajt, %i.ajl        ; 2 uses
  %i.akb = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ajy, <4 x float> %i.aka)
  %i.akc = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ajz, <4 x float> %i.aka)
  %i.akd = fadd <4 x float> %i.ajt, %i.ajp        ; 2 uses
  %i.ake = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.akb, <4 x float> %i.akd)
  %i.akf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.akc, <4 x float> %i.akd)
  %i.akg = fsub <4 x float> %i.akf, %i.ake
  %i.akh = fmul <4 x float> %i.akg, splat (float 5.000000e-01)
  br label %.critedge.i

bb.u:                                             ; preds = %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread
  %i.aki = fmul float %.0857, %i.aic
  %i.akj = insertelement <4 x float> poison, float %i.aki, i64 0
  %i.akk = shufflevector <4 x float> %i.akj, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.r, %bb.s, %bb.u, %bb.t
  %.sink = phi <4 x float> [ %i.akk, %bb.u ], [ %i.akh, %bb.t ], [ %i.aie, %bb.s ], [ %i.aie, %bb.r ]
  store <4 x float> %.sink, ptr %i.aia, align 16
  %i.akl = getelementptr inbounds nuw i8, ptr %.0.i864, i64 88
  %i.akm = getelementptr inbounds nuw i8, ptr %.0.i864, i64 136
  %i.akn = load ptr, ptr %i.akm, align 8
  %i.ako = call noundef zeroext i1 %i.akn(ptr noundef nonnull align 8 dereferenceable(280) %i.akl, ptr noundef nonnull %3, ptr noundef nonnull %4), !inline_history !6
  %i.akp = load ptr, ptr %i.afr, align 8          ; 3 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 136 ; 3 uses
  %i.akr = load i32, ptr %i.akq, align 8
  %i.aks = add i32 %i.akr, -1                     ; 2 uses
  store i32 %i.aks, ptr %i.akq, align 8
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akp, i64 128
  %i.aku = zext i32 %i.aks to i64
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %i.akt, i64 %i.aku
  store i32 -1, ptr %i.akv, align 4
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akp, i64 132
  %i.akx = load i32, ptr %i.akq, align 8
  %i.aky = zext i32 %i.akx to i64
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %i.akw, i64 %i.aky
  store i32 -1, ptr %i.akz, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %_ZNK6embree13InstanceArray9getObjectEm.exit.thread

_ZNK6embree13InstanceArray9getObjectEm.exit.thread: ; preds = %bb.b, %_ZNK6embree13InstanceArray9getObjectEm.exit, %.critedge.i
  %.1 = phi i1 [ %i.ako, %.critedge.i ], [ false, %_ZNK6embree13InstanceArray9getObjectEm.exit ], [ false, %bb.b ]
  ret i1 %.1
}

end_hunk_0
begin_hunk_1_@_ZN6embree4sse227InstanceArrayIntersector1MB10pointQueryEPNS_11PointQueryKILi1EEEPNS_17PointQueryContextERKNS_22InstanceArrayPrimitiveE:bb.a
  %i.cmx = fmul float %i.cmg, %i.cmt
  %i.cmy = fmul float %i.cmc, %i.cmt
  %.sroa.0131.12.vec.insert = insertelement <4 x float> %.sroa.0131.8.vec.insert1906, float %i.cmw, i64 3
  %.sroa.10133.28.vec.insert = insertelement <4 x float> %.sroa.10133.24.vec.insert, float %i.cmx, i64 3
  %.sroa.18135.44.vec.insert = insertelement <4 x float> %.sroa.18135.36.vec.insert, float %i.cmy, i64 3
  br label %_ZNK6embree13InstanceArray14getLocal2WorldEmf.exit

bb.bi:                                            ; preds = %bb.bf
  %i.cmz = load ptr, ptr %i.cbu, align 8, !noalias !335
  %i.cna = getelementptr inbounds nuw i8, ptr %i.cbu, i64 16
  %i.cnb = load i64, ptr %i.cna, align 8, !noalias !335
  %i.cnc = mul i64 %i.cnb, %i.aux
  %i.cnd = getelementptr inbounds nuw i8, ptr %i.cmz, i64 %i.cnc ; 8 uses
  %i.cne = getelementptr inbounds nuw i8, ptr %i.cnd, i64 4
  %i.cnf = load <2 x float>, ptr %i.cne, align 4, !noalias !333
  %i.cng = load float, ptr %i.cnd, align 4, !noalias !333
  %i.cnh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cng, i64 0
  %i.cni = shufflevector <2 x float> %i.cnf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cnj = shufflevector <4 x float> %i.cnh, <4 x float> %i.cni, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.cnk = getelementptr inbounds nuw i8, ptr %i.cnd, i64 12
  %i.cnl = getelementptr inbounds nuw i8, ptr %i.cnd, i64 16
  %i.cnm = load <2 x float>, ptr %i.cnl, align 4, !noalias !333
  %i.cnn = load float, ptr %i.cnk, align 4, !noalias !333
  %i.cno = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cnn, i64 0
  %i.cnp = shufflevector <2 x float> %i.cnm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cnq = shufflevector <4 x float> %i.cno, <4 x float> %i.cnp, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.cnr = getelementptr inbounds nuw i8, ptr %i.cnd, i64 24
  %i.cns = getelementptr inbounds nuw i8, ptr %i.cnd, i64 28
  %i.cnt = load <2 x float>, ptr %i.cns, align 4, !noalias !333
  %i.cnu = load float, ptr %i.cnr, align 4, !noalias !333
  %i.cnv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cnu, i64 0
  %i.cnw = shufflevector <2 x float> %i.cnt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cnx = shufflevector <4 x float> %i.cnv, <4 x float> %i.cnw, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.cny = getelementptr inbounds nuw i8, ptr %i.cnd, i64 36
  %i.cnz = getelementptr inbounds nuw i8, ptr %i.cnd, i64 40
  %i.coa = load <2 x float>, ptr %i.cnz, align 4, !noalias !333
  %i.cob = load float, ptr %i.cny, align 4, !noalias !333
  %i.coc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cob, i64 0
  %i.cod = shufflevector <2 x float> %i.coa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.coe = shufflevector <4 x float> %i.coc, <4 x float> %i.cod, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %_ZNK6embree13InstanceArray14getLocal2WorldEmf.exit

bb.bj:                                            ; preds = %bb.bf
  %i.cof = load ptr, ptr %i.cbu, align 8, !noalias !335
  %i.cog = getelementptr inbounds nuw i8, ptr %i.cbu, i64 16
  %i.coh = load i64, ptr %i.cog, align 8, !noalias !335
  %i.coi = mul i64 %i.coh, %i.aux
  %i.coj = getelementptr inbounds nuw i8, ptr %i.cof, i64 %i.coi ; 12 uses
  %i.cok = load float, ptr %i.coj, align 4, !noalias !335
  %i.col = getelementptr inbounds nuw i8, ptr %i.coj, i64 4
  %i.com = load float, ptr %i.col, align 4, !noalias !335
  %i.con = getelementptr inbounds nuw i8, ptr %i.coj, i64 8
  %i.coo = load float, ptr %i.con, align 4, !noalias !335
  %i.cop = getelementptr inbounds nuw i8, ptr %i.coj, i64 12
  %i.coq = load float, ptr %i.cop, align 4, !noalias !335
  %i.cor = getelementptr inbounds nuw i8, ptr %i.coj, i64 16
  %i.cos = load float, ptr %i.cor, align 4, !noalias !335
  %i.cot = getelementptr inbounds nuw i8, ptr %i.coj, i64 20
  %i.cou = load float, ptr %i.cot, align 4, !noalias !335
  %i.cov = getelementptr inbounds nuw i8, ptr %i.coj, i64 24
  %i.cow = load float, ptr %i.cov, align 4, !noalias !335
  %i.cox = getelementptr inbounds nuw i8, ptr %i.coj, i64 28
  %i.coy = load float, ptr %i.cox, align 4, !noalias !335
  %i.coz = getelementptr inbounds nuw i8, ptr %i.coj, i64 32
  %i.cpa = load float, ptr %i.coz, align 4, !noalias !335
  %i.cpb = getelementptr inbounds nuw i8, ptr %i.coj, i64 36
  %i.cpc = load float, ptr %i.cpb, align 4, !noalias !335
  %i.cpd = getelementptr inbounds nuw i8, ptr %i.coj, i64 40
  %i.cpe = load float, ptr %i.cpd, align 4, !noalias !335
  %i.cpf = getelementptr inbounds nuw i8, ptr %i.coj, i64 44
  %i.cpg = load float, ptr %i.cpf, align 4, !noalias !335
  %i.cph = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cok, i64 0
  %i.cpi = insertelement <4 x float> %i.cph, float %i.cos, i64 1
  %i.cpj = insertelement <4 x float> %i.cpi, float %i.cpa, i64 2
  %i.cpk = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.com, i64 0
  %i.cpl = insertelement <4 x float> %i.cpk, float %i.cou, i64 1
  %i.cpm = insertelement <4 x float> %i.cpl, float %i.cpc, i64 2
  %i.cpn = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.coo, i64 0
  %i.cpo = insertelement <4 x float> %i.cpn, float %i.cow, i64 1
  %i.cpp = insertelement <4 x float> %i.cpo, float %i.cpe, i64 2
  %i.cpq = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.coq, i64 0
  %i.cpr = insertelement <4 x float> %i.cpq, float %i.coy, i64 1
  %i.cps = insertelement <4 x float> %i.cpr, float %i.cpg, i64 2
  br label %_ZNK6embree13InstanceArray14getLocal2WorldEmf.exit

_ZNK6embree13InstanceArray14getLocal2WorldEmf.exit: ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %_ZNK6embree13InstanceArray3l2wEmm.exit36, %_ZNK6embree13InstanceArray3l2wEmm.exit38, %_ZNK6embree13InstanceArray3l2wEmm.exit40
  %.sroa.31.2 = phi <4 x float> [ %i.cbo, %_ZNK6embree13InstanceArray3l2wEmm.exit40 ], [ %i.bqm, %_ZNK6embree13InstanceArray3l2wEmm.exit38 ], [ %i.ckp, %_ZNK6embree13InstanceArray3l2wEmm.exit36 ], [ %i.clb, %bb.bg ], [ %i.cmv, %bb.bh ], [ %i.coe, %bb.bi ], [ %i.cps, %bb.bj ], [ undef, %bb.bf ] ; 3 uses
  %.sroa.21.2 = phi <4 x float> [ %i.cbl, %_ZNK6embree13InstanceArray3l2wEmm.exit40 ], [ %i.bqd, %_ZNK6embree13InstanceArray3l2wEmm.exit38 ], [ %i.ckg, %_ZNK6embree13InstanceArray3l2wEmm.exit36 ], [ %i.ckz, %bb.bg ], [ %.sroa.18135.44.vec.insert, %bb.bh ], [ %i.cnx, %bb.bi ], [ %i.cpp, %bb.bj ], [ undef, %bb.bf ] ; 3 uses
  %.sroa.11.2 = phi <4 x float> [ %i.cbi, %_ZNK6embree13InstanceArray3l2wEmm.exit40 ], [ %i.bpv, %_ZNK6embree13InstanceArray3l2wEmm.exit38 ], [ %i.cjy, %_ZNK6embree13InstanceArray3l2wEmm.exit36 ], [ %i.ckx, %bb.bg ], [ %.sroa.10133.28.vec.insert, %bb.bh ], [ %i.cnq, %bb.bi ], [ %i.cpm, %bb.bj ], [ undef, %bb.bf ] ; 3 uses
  %.sroa.069.2 = phi <4 x float> [ %i.cbf, %_ZNK6embree13InstanceArray3l2wEmm.exit40 ], [ %i.bpp, %_ZNK6embree13InstanceArray3l2wEmm.exit38 ], [ %i.cjs, %_ZNK6embree13InstanceArray3l2wEmm.exit36 ], [ %i.ckv, %bb.bg ], [ %.sroa.0131.12.vec.insert, %bb.bh ], [ %i.cnj, %bb.bi ], [ %i.cpj, %bb.bj ], [ undef, %bb.bf ] ; 4 uses
  %i.cpt = shufflevector <4 x float> %.sroa.21.2, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 2 uses
  %i.cpu = shufflevector <4 x float> %.sroa.11.2, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 2 uses
  %i.cpv = fmul <4 x float> %.sroa.21.2, %i.cpu
  %i.cpw = fmul <4 x float> %.sroa.11.2, %i.cpt
  %i.cpx = fsub <4 x float> %i.cpw, %i.cpv        ; 3 uses
  %i.cpy = shufflevector <4 x float> %i.cpx, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.cpz = shufflevector <4 x float> %.sroa.069.2, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 2 uses
  %i.cqa = fmul <4 x float> %i.cpt, %.sroa.069.2
  %i.cqb = fmul <4 x float> %.sroa.21.2, %i.cpz
  %i.cqc = fsub <4 x float> %i.cqb, %i.cqa        ; 2 uses
  %i.cqd = fmul <4 x float> %.sroa.11.2, %i.cpz
  %i.cqe = fmul <4 x float> %.sroa.069.2, %i.cpu
  %i.cqf = fsub <4 x float> %i.cqe, %i.cqd        ; 2 uses
  %i.cqg = shufflevector <4 x float> %i.cpx, <4 x float> %i.cqf, <4 x i32> <i32 1, i32 5, i32 2, i32 6> ; 2 uses
  %i.cqh = shufflevector <4 x float> %i.cpx, <4 x float> %i.cqf, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.cqi = shufflevector <4 x float> %i.cqc, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 4, i32 2, i32 5> ; 2 uses
  %i.cqj = insertelement <4 x float> %i.cqc, float 0.000000e+00, i64 1
  %i.cqk = shufflevector <4 x float> %i.cqg, <4 x float> %i.cqi, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.cql = shufflevector <4 x float> %i.cqg, <4 x float> %i.cqi, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.cqm = shufflevector <4 x float> %i.cqh, <4 x float> %i.cqj, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.cqn = fmul <4 x float> %.sroa.069.2, %i.cpy  ; 3 uses
  %i.cqo = shufflevector <4 x float> %i.cqn, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cqp = shufflevector <4 x float> %i.cqn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cqq = shufflevector <4 x float> %i.cqn, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cqr = fadd <4 x float> %i.cqp, %i.cqq
  %i.cqs = fadd <4 x float> %i.cqo, %i.cqr        ; 3 uses
  %i.cqt = fdiv <4 x float> %i.cqk, %i.cqs        ; 7 uses
  %i.cqu = fdiv <4 x float> %i.cql, %i.cqs        ; 7 uses
  %i.cqv = fdiv <4 x float> %i.cqm, %i.cqs        ; 7 uses
  %i.cqw = shufflevector <4 x float> %.sroa.31.2, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cqx = shufflevector <4 x float> %.sroa.31.2, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cqy = shufflevector <4 x float> %.sroa.31.2, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cqz = fmul <4 x float> %i.cqy, %i.cqv
  %i.cra = fmul <4 x float> %i.cqx, %i.cqu
  %i.crb = fadd <4 x float> %i.cra, %i.cqz
  %i.crc = fmul <4 x float> %i.cqw, %i.cqt
  %i.crd = fadd <4 x float> %i.crc, %i.crb        ; 2 uses
  %i.cre = fneg <4 x float> %i.crd
  %i.crf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.crg = load i32, ptr %i.crf, align 8
  %i.crh = icmp eq i32 %i.crg, 1
  br i1 %i.crh, label %bb.bk, label %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread

bb.bk:                                            ; preds = %_ZNK6embree13InstanceArray14getLocal2WorldEmf.exit
  %i.cri = fmul <4 x float> %i.cqt, %i.cqu        ; 3 uses
  %i.crj = shufflevector <4 x float> %i.cri, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.crk = shufflevector <4 x float> %i.cri, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.crl = fadd <4 x float> %i.cri, %i.crj
  %i.crm = fadd <4 x float> %i.crk, %i.crl
  %i.crn = extractelement <4 x float> %i.crm, i64 0
  %i.cro = tail call noundef float @llvm.fabs.f32(float %i.crn)
  %i.crp = fcmp ogt float %i.cro, f0x3727C5AC
  br i1 %i.crp, label %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.crq = fmul <4 x float> %i.cqt, %i.cqv        ; 3 uses
  %i.crr = shufflevector <4 x float> %i.crq, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.crs = shufflevector <4 x float> %i.crq, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.crt = fadd <4 x float> %i.crq, %i.crr
  %i.cru = fadd <4 x float> %i.crs, %i.crt
  %i.crv = extractelement <4 x float> %i.cru, i64 0
  %i.crw = tail call noundef float @llvm.fabs.f32(float %i.crv)
  %i.crx = fcmp ogt float %i.crw, f0x3727C5AC
  br i1 %i.crx, label %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cry = fmul <4 x float> %i.cqu, %i.cqv        ; 3 uses
  %i.crz = shufflevector <4 x float> %i.cry, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.csa = shufflevector <4 x float> %i.cry, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.csb = fadd <4 x float> %i.cry, %i.crz
  %i.csc = fadd <4 x float> %i.csa, %i.csb
  %i.csd = extractelement <4 x float> %i.csc, i64 0
  %i.cse = tail call noundef float @llvm.fabs.f32(float %i.csd)
  %i.csf = fcmp ogt float %i.cse, f0x3727C5AC
  br i1 %i.csf, label %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.csg = fmul <4 x float> %i.cqt, %i.cqt        ; 3 uses
  %i.csh = shufflevector <4 x float> %i.csg, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.csi = shufflevector <4 x float> %i.csg, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.csj = fadd <4 x float> %i.csg, %i.csh
  %i.csk = fadd <4 x float> %i.csi, %i.csj        ; 3 uses
  %i.csl = extractelement <4 x float> %i.csk, i64 0
  %i.csm = fmul <4 x float> %i.cqu, %i.cqu        ; 3 uses
  %i.csn = shufflevector <4 x float> %i.csm, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cso = shufflevector <4 x float> %i.csm, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.csp = fadd <4 x float> %i.csm, %i.csn
  %i.csq = fadd <4 x float> %i.cso, %i.csp        ; 2 uses
  %i.csr = fmul <4 x float> %i.cqv, %i.cqv        ; 3 uses
  %i.css = shufflevector <4 x float> %i.csr, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cst = shufflevector <4 x float> %i.csr, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.csu = fadd <4 x float> %i.csr, %i.css
  %i.csv = fadd <4 x float> %i.cst, %i.csu        ; 2 uses
  %foldExtExtBinop1960 = fsub <4 x float> %i.csk, %i.csq
  %i.csw = extractelement <4 x float> %foldExtExtBinop1960, i64 0
  %i.csx = tail call noundef float @llvm.fabs.f32(float %i.csw)
  %i.csy = fcmp ogt float %i.csx, f0x3727C5AC
  %foldExtExtBinop1962 = fsub <4 x float> %i.csk, %i.csv
  %i.csz = extractelement <4 x float> %foldExtExtBinop1962, i64 0
  %i.cta = tail call float @llvm.fabs.f32(float %i.csz)
  %i.ctb = fcmp ogt float %i.cta, f0x3727C5AC
  %or.cond = select i1 %i.csy, i1 true, i1 %i.ctb
  %foldExtExtBinop1964 = fsub <4 x float> %i.csq, %i.csv
  %i.ctc = extractelement <4 x float> %foldExtExtBinop1964, i64 0
  %i.ctd = tail call float @llvm.fabs.f32(float %i.ctc)
  %i.cte = fcmp ogt float %i.ctd, f0x3727C5AC
  %or.cond1970 = select i1 %or.cond, i1 true, i1 %i.cte
  br i1 %or.cond1970, label %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread, label %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread1897

_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread1897: ; preds = %bb.bn
  %i.ctf = tail call float @llvm.sqrt.f32(float %i.csl)
  br label %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread

_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread: ; preds = %bb.bn, %bb.bl, %bb.bk, %bb.bm, %_ZNK6embree13InstanceArray14getLocal2WorldEmf.exit, %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread1897
  %.01886 = phi float [ 0.000000e+00, %_ZNK6embree13InstanceArray14getLocal2WorldEmf.exit ], [ 0.000000e+00, %bb.bl ], [ 0.000000e+00, %bb.bn ], [ %i.ctf, %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread1897 ], [ 0.000000e+00, %bb.bm ], [ 0.000000e+00, %bb.bk ] ; 3 uses
  %i.ctg = phi i1 [ true, %_ZNK6embree13InstanceArray14getLocal2WorldEmf.exit ], [ true, %bb.bl ], [ true, %bb.bn ], [ false, %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread1897 ], [ true, %bb.bm ], [ true, %bb.bk ]
  %i.cth = phi i32 [ 2, %_ZNK6embree13InstanceArray14getLocal2WorldEmf.exit ], [ 2, %bb.bl ], [ 2, %bb.bn ], [ 1, %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread1897 ], [ 2, %bb.bm ], [ 2, %bb.bk ]
  %i.cti = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ctj = load ptr, ptr %i.cti, align 8          ; 4 uses
  %i.ctk = getelementptr inbounds nuw i8, ptr %i.ctj, i64 136 ; 3 uses
  %i.ctl = load i32, ptr %i.ctk, align 8
  %i.ctm = zext i32 %i.ctl to i64                 ; 3 uses
  %i.ctn = getelementptr inbounds nuw i8, ptr %i.ctj, i64 128
  %i.cto = getelementptr inbounds nuw [4 x i8], ptr %i.ctn, i64 %i.ctm
  %i.ctp = load <2 x i32>, ptr %2, align 4
  %i.ctq = shufflevector <2 x i32> %i.ctp, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ctq, ptr %i.cto, align 4
  %i.ctr = getelementptr inbounds nuw [64 x i8], ptr %i.ctj, i64 %i.ctm ; 4 uses
  store <4 x float> %i.cqt, ptr %i.ctr, align 1
  %i.cts = getelementptr inbounds nuw i8, ptr %i.ctr, i64 16
  store <4 x float> %i.cqu, ptr %i.cts, align 1
  %i.ctt = getelementptr inbounds nuw i8, ptr %i.ctr, i64 32
  store <4 x float> %i.cqv, ptr %i.ctt, align 1
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.ctr, i64 48
  store <4 x float> %i.cre, ptr %i.ctu, align 1
  %i.ctv = getelementptr inbounds nuw i8, ptr %i.ctj, i64 64
  %i.ctw = getelementptr inbounds nuw [64 x i8], ptr %i.ctv, i64 %i.ctm ; 4 uses
  store <4 x float> %.sroa.063.2, ptr %i.ctw, align 1
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.ctw, i64 16
  store <4 x float> %.sroa.7.2, ptr %i.ctx, align 1
  %i.cty = getelementptr inbounds nuw i8, ptr %i.ctw, i64 32
  store <4 x float> %.sroa.12.2, ptr %i.cty, align 1
  %i.ctz = getelementptr inbounds nuw i8, ptr %i.ctw, i64 48
  store <4 x float> %.sroa.17.2, ptr %i.ctz, align 1
  %i.cua = load i32, ptr %i.ctk, align 8
  %i.cub = add i32 %i.cua, 1
  store i32 %i.cub, ptr %i.ctk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.cuc = load float, ptr %i.z, align 4
  %i.cud = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.cuc, ptr %i.cud, align 4
  %i.cue = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cuf = load float, ptr %i.cue, align 4
  %i.cug = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cuh = load float, ptr %i.cug, align 4
  %i.cui = load float, ptr %0, align 4
  %i.cuj = insertelement <4 x float> poison, float %i.cui, i64 0
  %i.cuk = shufflevector <4 x float> %i.cuj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.cul = insertelement <4 x float> poison, float %i.cuh, i64 0
  %i.cum = shufflevector <4 x float> %i.cul, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.cun = insertelement <4 x float> poison, float %i.cuf, i64 0
  %i.cuo = shufflevector <4 x float> %i.cun, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.cup = fmul <4 x float> %i.cqv, %i.cuo
  %i.cuq = fsub <4 x float> %i.cup, %i.crd
  %i.cur = fmul <4 x float> %i.cqu, %i.cum
  %i.cus = fadd <4 x float> %i.cur, %i.cuq
  %i.cut = fmul <4 x float> %i.cqt, %i.cuk
  %i.cuu = fadd <4 x float> %i.cut, %i.cus        ; 2 uses
  %.sroa.043.8.vec.extract = extractelement <4 x float> %i.cuu, i64 2
  %i.cuv = shufflevector <4 x float> %i.cuu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.cuv, ptr %3, align 16
  %i.cuw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %.sroa.043.8.vec.extract, ptr %i.cuw, align 8
  %i.cux = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cuy = load float, ptr %i.cux, align 16
  %i.cuz = fmul float %.01886, %i.cuy
  %i.cva = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.cuz, ptr %i.cva, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.cvb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cvc = load ptr, ptr %i.cvb, align 16         ; 2 uses
  %i.cvd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cve = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cvf = load ptr, ptr %i.cve, align 8
  store ptr %.0.i1893, ptr %4, align 16
  %i.cvg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.cvg, align 8
  %i.cvh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.cvc, ptr %i.cvh, align 16
  %i.cvi = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.cth, ptr %i.cvi, align 8
  %i.cvj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cvk = load ptr, ptr %i.cti, align 8          ; 2 uses
  %i.cvl = load <2 x ptr>, ptr %i.cvd, align 16
  store <2 x ptr> %i.cvl, ptr %i.cvj, align 16
  %i.cvm = getelementptr inbounds nuw i8, ptr %4, i64 48
  store float %.01886, ptr %i.cvm, align 16
  %i.cvn = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.cvf, ptr %i.cvn, align 8
  %i.cvo = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 -1, ptr %i.cvo, align 16
  %i.cvp = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i32 -1, ptr %i.cvp, align 4
  %i.cvq = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.cvc, i64 16
  %i.cvs = load float, ptr %i.cvr, align 16       ; 4 uses
  %i.cvt = insertelement <4 x float> poison, float %i.cvs, i64 0
  %i.cvu = shufflevector <4 x float> %i.cvt, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %i.ctg, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread
  %i.cvv = fcmp oeq float %i.cvs, +inf
  br i1 %i.cvv, label %.critedge.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.cvw = getelementptr inbounds nuw i8, ptr %i.cvk, i64 136
  %i.cvx = load i32, ptr %i.cvw, align 8          ; 2 uses
  %i.cvy = icmp eq i32 %i.cvx, 0
  br i1 %i.cvy, label %.critedge.i, label %bb.bq, !prof !10

bb.bq:                                            ; preds = %bb.bp
  %i.cvz = add i32 %i.cvx, -1
  %i.cwa = zext i32 %i.cvz to i64
  %i.cwb = getelementptr inbounds nuw [64 x i8], ptr %i.cvk, i64 %i.cwa ; 4 uses
  %i.cwc = load <4 x float>, ptr %i.cwb, align 1, !noalias !336 ; 2 uses
  %i.cwd = getelementptr inbounds nuw i8, ptr %i.cwb, i64 16
  %i.cwe = load <4 x float>, ptr %i.cwd, align 1, !noalias !337 ; 2 uses
  %i.cwf = getelementptr inbounds nuw i8, ptr %i.cwb, i64 32
  %i.cwg = load <4 x float>, ptr %i.cwf, align 1, !noalias !338 ; 2 uses
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.cwb, i64 48
  %i.cwi = load <4 x float>, ptr %i.cwh, align 1, !noalias !339 ; 2 uses
  %i.cwj = fneg float %i.cvs
  %i.cwk = insertelement <4 x float> poison, float %i.cwj, i64 0
  %i.cwl = shufflevector <4 x float> %i.cwk, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cwm = fmul <4 x float> %i.cwl, %i.cwg
  %i.cwn = fadd <4 x float> %i.cwm, %i.cwi        ; 2 uses
  %i.cwo = fmul <4 x float> %i.cwl, %i.cwe        ; 2 uses
  %i.cwp = fadd <4 x float> %i.cwo, %i.cwn        ; 2 uses
  %i.cwq = fmul <4 x float> %i.cwl, %i.cwc        ; 4 uses
  %i.cwr = fadd <4 x float> %i.cwq, %i.cwp        ; 2 uses
  %i.cws = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.cwr)
  %i.cwt = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.cwr)
  %i.cwu = fmul <4 x float> %i.cvu, %i.cwg
  %i.cwv = fadd <4 x float> %i.cwu, %i.cwi        ; 2 uses
  %i.cww = fadd <4 x float> %i.cwo, %i.cwv        ; 2 uses
  %i.cwx = fadd <4 x float> %i.cwq, %i.cww        ; 2 uses
  %i.cwy = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cws, <4 x float> %i.cwx)
  %i.cwz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cwt, <4 x float> %i.cwx)
  %i.cxa = fmul <4 x float> %i.cvu, %i.cwe        ; 2 uses
  %i.cxb = fadd <4 x float> %i.cxa, %i.cwn        ; 2 uses
  %i.cxc = fadd <4 x float> %i.cwq, %i.cxb        ; 2 uses
  %i.cxd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cwy, <4 x float> %i.cxc)
  %i.cxe = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cwz, <4 x float> %i.cxc)
  %i.cxf = fadd <4 x float> %i.cxa, %i.cwv        ; 2 uses
  %i.cxg = fadd <4 x float> %i.cwq, %i.cxf        ; 2 uses
  %i.cxh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cxd, <4 x float> %i.cxg)
  %i.cxi = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cxe, <4 x float> %i.cxg)
  %i.cxj = fmul <4 x float> %i.cvu, %i.cwc        ; 4 uses
  %i.cxk = fadd <4 x float> %i.cxj, %i.cwp        ; 2 uses
  %i.cxl = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cxh, <4 x float> %i.cxk)
  %i.cxm = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cxi, <4 x float> %i.cxk)
  %i.cxn = fadd <4 x float> %i.cxj, %i.cww        ; 2 uses
  %i.cxo = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cxl, <4 x float> %i.cxn)
  %i.cxp = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cxm, <4 x float> %i.cxn)
  %i.cxq = fadd <4 x float> %i.cxj, %i.cxb        ; 2 uses
  %i.cxr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cxo, <4 x float> %i.cxq)
  %i.cxs = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cxp, <4 x float> %i.cxq)
  %i.cxt = fadd <4 x float> %i.cxj, %i.cxf        ; 2 uses
  %i.cxu = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cxr, <4 x float> %i.cxt)
  %i.cxv = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cxs, <4 x float> %i.cxt)
  %i.cxw = fsub <4 x float> %i.cxv, %i.cxu
  %i.cxx = fmul <4 x float> %i.cxw, splat (float 5.000000e-01)
  br label %.critedge.i

bb.br:                                            ; preds = %_ZN6embree19similarityTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEPf.exit.thread
  %i.cxy = fmul float %.01886, %i.cvs
  %i.cxz = insertelement <4 x float> poison, float %i.cxy, i64 0
  %i.cya = shufflevector <4 x float> %i.cxz, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.bo, %bb.bp, %bb.br, %bb.bq
  %.sink = phi <4 x float> [ %i.cya, %bb.br ], [ %i.cxx, %bb.bq ], [ %i.cvu, %bb.bp ], [ %i.cvu, %bb.bo ]
  store <4 x float> %.sink, ptr %i.cvq, align 16
  %i.cyb = getelementptr inbounds nuw i8, ptr %.0.i1893, i64 88
  %i.cyc = getelementptr inbounds nuw i8, ptr %.0.i1893, i64 136
  %i.cyd = load ptr, ptr %i.cyc, align 8
  %i.cye = call noundef zeroext i1 %i.cyd(ptr noundef nonnull align 8 dereferenceable(280) %i.cyb, ptr noundef nonnull %3, ptr noundef nonnull %4), !inline_history !6
  %i.cyf = load ptr, ptr %i.cti, align 8          ; 3 uses
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.cyf, i64 136 ; 3 uses
  %i.cyh = load i32, ptr %i.cyg, align 8
  %i.cyi = add i32 %i.cyh, -1                     ; 2 uses
  store i32 %i.cyi, ptr %i.cyg, align 8
  %i.cyj = getelementptr inbounds nuw i8, ptr %i.cyf, i64 128
  %i.cyk = zext i32 %i.cyi to i64
  %i.cyl = getelementptr inbounds nuw [4 x i8], ptr %i.cyj, i64 %i.cyk
  store i32 -1, ptr %i.cyl, align 4
  %i.cym = getelementptr inbounds nuw i8, ptr %i.cyf, i64 132
  %i.cyn = load i32, ptr %i.cyg, align 8
  %i.cyo = zext i32 %i.cyn to i64
  %i.cyp = getelementptr inbounds nuw [4 x i8], ptr %i.cym, i64 %i.cyo
  store i32 -1, ptr %i.cyp, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %_ZNK6embree13InstanceArray9getObjectEm.exit.thread

_ZNK6embree13InstanceArray9getObjectEm.exit.thread: ; preds = %bb.b, %_ZNK6embree13InstanceArray9getObjectEm.exit, %.critedge.i
  %.1 = phi i1 [ %i.cye, %.critedge.i ], [ false, %_ZNK6embree13InstanceArray9getObjectEm.exit ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float>) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

attributes #0 = { alwaysinline mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind memory(none) }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{!2, !13}
!3 = distinct !{!3, !13}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{i64 3473140}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, i1 true, !"_ZN6embreeanERKNS_9vint_implILi4EEES3_"}
!15 = distinct !{!15, !14, !"_ZN6embreeanERKNS_9vint_implILi4EEES3_: argument 0"}
!16 = distinct !{!16, i1 true, !"_ZNK6embree13InstanceArray14getWorld2LocalEm"}
!17 = distinct !{!17, !16, !"_ZNK6embree13InstanceArray14getWorld2LocalEm: argument 0"}
!18 = distinct !{!18, i1 true, !"_ZNK6embree13InstanceArray14getLocal2WorldEm"}
!19 = distinct !{!19, !18, !"_ZNK6embree13InstanceArray14getLocal2WorldEm: argument 0"}
!20 = distinct !{!20, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!21 = distinct !{!21, !20, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!22 = distinct !{!22, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!23 = distinct !{!23, !22, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!24 = !{!15}
!25 = !{!19, !17}
!26 = !{!21, !19, !17}
!27 = !{!23, !19, !17}
!28 = distinct !{!28, i1 true, !"_ZN6embreeanERKNS_9vint_implILi4EEES3_"}
!29 = distinct !{!29, !28, !"_ZN6embreeanERKNS_9vint_implILi4EEES3_: argument 0"}
!30 = distinct !{!30, i1 true, !"_ZNK6embree13InstanceArray14getWorld2LocalEm"}
!31 = distinct !{!31, !30, !"_ZNK6embree13InstanceArray14getWorld2LocalEm: argument 0"}
!32 = distinct !{!32, i1 true, !"_ZNK6embree13InstanceArray14getLocal2WorldEm"}
!33 = distinct !{!33, !32, !"_ZNK6embree13InstanceArray14getLocal2WorldEm: argument 0"}
!34 = distinct !{!34, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!35 = distinct !{!35, !34, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!36 = distinct !{!36, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!37 = distinct !{!37, !36, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!38 = distinct !{!38, i1 true, !"_ZN6embreeltERKNS_11vfloat_implILi4EEES3_"}
!39 = distinct !{!39, !38, !"_ZN6embreeltERKNS_11vfloat_implILi4EEES3_: argument 0"}
!40 = !{!29}
!41 = !{!33, !31}
!42 = !{!35, !33, !31}
!43 = !{!37, !33, !31}
!44 = !{!39}
!45 = distinct !{!45, i1 true, !"_ZN6embreeanERKNS_9vint_implILi4EEES3_"}
!46 = distinct !{!46, !45, !"_ZN6embreeanERKNS_9vint_implILi4EEES3_: argument 0"}
!47 = distinct !{!47, i1 true, !"_ZNK6embree13InstanceArray14getWorld2LocalILi4EEENS_12AffineSpaceTINS_12LinearSpace3INS_4Vec3INS_6vtypesIXT_EE6vfloatEEEEEEEmRKNS6_5vboolERKS7_"}
!48 = distinct !{!48, !47, !"_ZNK6embree13InstanceArray14getWorld2LocalILi4EEENS_12AffineSpaceTINS_12LinearSpace3INS_4Vec3INS_6vtypesIXT_EE6vfloatEEEEEEEmRKNS6_5vboolERKS7_: argument 0"}
!49 = distinct !{!49, i1 true, !"_ZNK6embree13InstanceArray19getWorld2LocalSlerpILi4EEENS_12AffineSpaceTINS_12LinearSpace3INS_4Vec3INS_6vtypesIXT_EE6vfloatEEEEEEEmRKNS6_5vboolERKS7_"}
!50 = distinct !{!50, !49, !"_ZNK6embree13InstanceArray19getWorld2LocalSlerpILi4EEENS_12AffineSpaceTINS_12LinearSpace3INS_4Vec3INS_6vtypesIXT_EE6vfloatEEEEEEEmRKNS6_5vboolERKS7_: argument 0"}
!51 = distinct !{!51, i1 true, !"_ZNK6embree8Geometry11timeSegmentILi4EEENS_6vtypesIXT_EE4vintERKNS3_6vfloatERS5_"}
!52 = distinct !{!52, !51, !"_ZNK6embree8Geometry11timeSegmentILi4EEENS_6vtypesIXT_EE4vintERKNS3_6vfloatERS5_: argument 0"}
!53 = distinct !{!53, i1 true, !"_ZN6embree14getTimeSegmentILi4EEENS_6vtypesIXT_EE4vintERKNS2_6vfloatES6_S6_S6_RS4_"}
!54 = distinct !{!54, !53, !"_ZN6embree14getTimeSegmentILi4EEENS_6vtypesIXT_EE4vintERKNS2_6vfloatES6_S6_S6_RS4_: argument 0"}
!55 = distinct !{!55, i1 true, !"_ZN6embreemiERKNS_11vfloat_implILi4EEES3_"}
!56 = distinct !{!56, !55, !"_ZN6embreemiERKNS_11vfloat_implILi4EEES3_: argument 0"}
!57 = distinct !{!57, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!58 = distinct !{!58, !57, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!59 = distinct !{!59, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!60 = distinct !{!60, !59, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!61 = distinct !{!61, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!62 = distinct !{!62, !61, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!63 = distinct !{!63, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!64 = distinct !{!64, !63, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!65 = distinct !{!65, i1 true, !"_ZNK6embree13InstanceArray18getWorld2LocalLerpILi4EEENS_12AffineSpaceTINS_12LinearSpace3INS_4Vec3INS_6vtypesIXT_EE6vfloatEEEEEEEmRKNS6_5vboolERKS7_"}
!66 = distinct !{!66, !65, !"_ZNK6embree13InstanceArray18getWorld2LocalLerpILi4EEENS_12AffineSpaceTINS_12LinearSpace3INS_4Vec3INS_6vtypesIXT_EE6vfloatEEEEEEEmRKNS6_5vboolERKS7_: argument 0"}
!67 = distinct !{!67, i1 true, !"_ZNK6embree8Geometry11timeSegmentILi4EEENS_6vtypesIXT_EE4vintERKNS3_6vfloatERS5_"}
!68 = distinct !{!68, !67, !"_ZNK6embree8Geometry11timeSegmentILi4EEENS_6vtypesIXT_EE4vintERKNS3_6vfloatERS5_: argument 0"}
!69 = distinct !{!69, i1 true, !"_ZN6embree14getTimeSegmentILi4EEENS_6vtypesIXT_EE4vintERKNS2_6vfloatES6_S6_S6_RS4_"}
!70 = distinct !{!70, !69, !"_ZN6embree14getTimeSegmentILi4EEENS_6vtypesIXT_EE4vintERKNS2_6vfloatES6_S6_S6_RS4_: argument 0"}
!71 = distinct !{!71, i1 true, !"_ZN6embreemiERKNS_11vfloat_implILi4EEES3_"}
!72 = distinct !{!72, !71, !"_ZN6embreemiERKNS_11vfloat_implILi4EEES3_: argument 0"}
!73 = distinct !{!73, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!74 = distinct !{!74, !73, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!75 = distinct !{!75, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!76 = distinct !{!76, !75, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!77 = distinct !{!77, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!78 = distinct !{!78, !77, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!79 = distinct !{!79, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!80 = distinct !{!80, !79, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!81 = !{!46}
!82 = !{!48}
!83 = !{!50}
!84 = !{!52, !50}
!85 = !{!56, !54, !50}
!86 = !{!58, !50}
!87 = !{!60, !50}
!88 = !{!62, !50}
!89 = !{!64, !50}
!90 = !{!66}
!91 = !{!68, !66}
!92 = !{!72, !70, !66}
!93 = !{!74, !66}
!94 = !{!76, !66}
!95 = !{!78, !66}
!96 = !{!80, !66}
!97 = distinct !{!97, i1 true, !"_ZN6embreeanERKNS_9vint_implILi4EEES3_"}
!98 = distinct !{!98, !97, !"_ZN6embreeanERKNS_9vint_implILi4EEES3_: argument 0"}
!99 = distinct !{!99, i1 true, !"_ZNK6embree13InstanceArray14getWorld2LocalILi4EEENS_12AffineSpaceTINS_12LinearSpace3INS_4Vec3INS_6vtypesIXT_EE6vfloatEEEEEEEmRKNS6_5vboolERKS7_"}
!100 = distinct !{!100, !99, !"_ZNK6embree13InstanceArray14getWorld2LocalILi4EEENS_12AffineSpaceTINS_12LinearSpace3INS_4Vec3INS_6vtypesIXT_EE6vfloatEEEEEEEmRKNS6_5vboolERKS7_: argument 0"}
!101 = distinct !{!101, i1 true, !"_ZNK6embree13InstanceArray19getWorld2LocalSlerpILi4EEENS_12AffineSpaceTINS_12LinearSpace3INS_4Vec3INS_6vtypesIXT_EE6vfloatEEEEEEEmRKNS6_5vboolERKS7_"}
!102 = distinct !{!102, !101, !"_ZNK6embree13InstanceArray19getWorld2LocalSlerpILi4EEENS_12AffineSpaceTINS_12LinearSpace3INS_4Vec3INS_6vtypesIXT_EE6vfloatEEEEEEEmRKNS6_5vboolERKS7_: argument 0"}
!103 = distinct !{!103, i1 true, !"_ZNK6embree8Geometry11timeSegmentILi4EEENS_6vtypesIXT_EE4vintERKNS3_6vfloatERS5_"}
!104 = distinct !{!104, !103, !"_ZNK6embree8Geometry11timeSegmentILi4EEENS_6vtypesIXT_EE4vintERKNS3_6vfloatERS5_: argument 0"}
!105 = distinct !{!105, i1 true, !"_ZN6embree14getTimeSegmentILi4EEENS_6vtypesIXT_EE4vintERKNS2_6vfloatES6_S6_S6_RS4_"}
!106 = distinct !{!106, !105, !"_ZN6embree14getTimeSegmentILi4EEENS_6vtypesIXT_EE4vintERKNS2_6vfloatES6_S6_S6_RS4_: argument 0"}
!107 = distinct !{!107, i1 true, !"_ZN6embreemiERKNS_11vfloat_implILi4EEES3_"}
!108 = distinct !{!108, !107, !"_ZN6embreemiERKNS_11vfloat_implILi4EEES3_: argument 0"}
!109 = distinct !{!109, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!110 = distinct !{!110, !109, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!111 = distinct !{!111, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!112 = distinct !{!112, !111, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!113 = distinct !{!113, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!114 = distinct !{!114, !113, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!115 = distinct !{!115, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!116 = distinct !{!116, !115, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!117 = distinct !{!117, i1 true, !"_ZNK6embree13InstanceArray18getWorld2LocalLerpILi4EEENS_12AffineSpaceTINS_12LinearSpace3INS_4Vec3INS_6vtypesIXT_EE6vfloatEEEEEEEmRKNS6_5vboolERKS7_"}
!118 = distinct !{!118, !117, !"_ZNK6embree13InstanceArray18getWorld2LocalLerpILi4EEENS_12AffineSpaceTINS_12LinearSpace3INS_4Vec3INS_6vtypesIXT_EE6vfloatEEEEEEEmRKNS6_5vboolERKS7_: argument 0"}
!119 = distinct !{!119, i1 true, !"_ZNK6embree8Geometry11timeSegmentILi4EEENS_6vtypesIXT_EE4vintERKNS3_6vfloatERS5_"}
!120 = distinct !{!120, !119, !"_ZNK6embree8Geometry11timeSegmentILi4EEENS_6vtypesIXT_EE4vintERKNS3_6vfloatERS5_: argument 0"}
!121 = distinct !{!121, i1 true, !"_ZN6embree14getTimeSegmentILi4EEENS_6vtypesIXT_EE4vintERKNS2_6vfloatES6_S6_S6_RS4_"}
!122 = distinct !{!122, !121, !"_ZN6embree14getTimeSegmentILi4EEENS_6vtypesIXT_EE4vintERKNS2_6vfloatES6_S6_S6_RS4_: argument 0"}
!123 = distinct !{!123, i1 true, !"_ZN6embreemiERKNS_11vfloat_implILi4EEES3_"}
!124 = distinct !{!124, !123, !"_ZN6embreemiERKNS_11vfloat_implILi4EEES3_: argument 0"}
!125 = distinct !{!125, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!126 = distinct !{!126, !125, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!127 = distinct !{!127, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!128 = distinct !{!128, !127, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!129 = distinct !{!129, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!130 = distinct !{!130, !129, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!131 = distinct !{!131, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!132 = distinct !{!132, !131, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!133 = distinct !{!133, i1 true, !"_ZN6embreeltERKNS_11vfloat_implILi4EEES3_"}
!134 = distinct !{!134, !133, !"_ZN6embreeltERKNS_11vfloat_implILi4EEES3_: argument 0"}
!135 = !{!98}
!136 = !{!100}
!137 = !{!102}
!138 = !{!104, !102}
!139 = !{!108, !106, !102}
!140 = !{!110, !102}
!141 = !{!112, !102}
!142 = !{!114, !102}
!143 = !{!116, !102}
!144 = !{!118}
!145 = !{!120, !118}
!146 = !{!124, !122, !118}
!147 = !{!126, !118}
!148 = !{!128, !118}
!149 = !{!130, !118}
!150 = !{!132, !118}
!151 = !{!134}
!152 = distinct !{!152, i1 true, !"_ZNK6embree13InstanceArray14getWorld2LocalEm"}
!153 = distinct !{!153, !152, !"_ZNK6embree13InstanceArray14getWorld2LocalEm: argument 0"}
!154 = distinct !{!154, i1 true, !"_ZNK6embree13InstanceArray14getLocal2WorldEm"}
!155 = distinct !{!155, !154, !"_ZNK6embree13InstanceArray14getLocal2WorldEm: argument 0"}
!156 = distinct !{!156, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!157 = distinct !{!157, !156, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!158 = distinct !{!158, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!159 = distinct !{!159, !158, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!160 = !{!155, !153}
!161 = !{!157, !155, !153}
!162 = !{!159, !155, !153}
!163 = distinct !{!163, i1 true, !"_ZNK6embree13InstanceArray14getWorld2LocalEm"}
!164 = distinct !{!164, !163, !"_ZNK6embree13InstanceArray14getWorld2LocalEm: argument 0"}
!165 = distinct !{!165, i1 true, !"_ZNK6embree13InstanceArray14getLocal2WorldEm"}
!166 = distinct !{!166, !165, !"_ZNK6embree13InstanceArray14getLocal2WorldEm: argument 0"}
!167 = distinct !{!167, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!168 = distinct !{!168, !167, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!169 = distinct !{!169, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!170 = distinct !{!170, !169, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
!171 = !{!166, !164}
!172 = !{!168, !166, !164}
!173 = !{!170, !166, !164}
!174 = distinct !{!174, i1 true, !"_ZNK6embree13InstanceArray14getLocal2WorldEm"}
!175 = distinct !{!175, !174, !"_ZNK6embree13InstanceArray14getLocal2WorldEm: argument 0"}
!176 = distinct !{!176, i1 true, !"_ZNK6embree13InstanceArray3l2wEmm"}
!177 = distinct !{!177, !176, !"_ZNK6embree13InstanceArray3l2wEmm: argument 0"}
end_hunk_1
