Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/compress?download=true
inline.NumInlined: 91
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@BZ2_compressBlock:bb.a
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zc, i64 4
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !73
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zc, i64 8
  %i.zh = load i32, ptr %i.zg, align 8, !tbaa !73
  %i.zi = add i32 %i.yy, %i.zh
  %i.zj = getelementptr i8, ptr %i.sw, i64 34
  %i.zk = load i16, ptr %i.zj, align 2, !tbaa !78
  %i.zl = zext i16 %i.zk to i64
  %i.zm = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.zl ; 3 uses
  %i.zn = load i32, ptr %i.zm, align 8, !tbaa !73
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zm, i64 4
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !73
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %i.zr = load i32, ptr %i.zq, align 8, !tbaa !73
  %i.zs = add i32 %i.zi, %i.zr
  %i.zt = getelementptr i8, ptr %i.sw, i64 36
  %i.zu = load i16, ptr %i.zt, align 2, !tbaa !78
  %i.zv = zext i16 %i.zu to i64
  %i.zw = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.zv ; 3 uses
  %i.zx = load i32, ptr %i.zw, align 8, !tbaa !73
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 4
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !73
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zw, i64 8
  %i.aab = load i32, ptr %i.aaa, align 8, !tbaa !73
  %i.aac = add i32 %i.zs, %i.aab
  %i.aad = getelementptr i8, ptr %i.sw, i64 38
  %i.aae = load i16, ptr %i.aad, align 2, !tbaa !78
  %i.aaf = zext i16 %i.aae to i64
  %i.aag = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aaf ; 3 uses
  %i.aah = load i32, ptr %i.aag, align 8, !tbaa !73
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aag, i64 4
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !73
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aag, i64 8
  %i.aal = load i32, ptr %i.aak, align 8, !tbaa !73
  %i.aam = add i32 %i.aac, %i.aal
  %i.aan = getelementptr i8, ptr %i.sw, i64 40
  %i.aao = load i16, ptr %i.aan, align 2, !tbaa !78
  %i.aap = zext i16 %i.aao to i64
  %i.aaq = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aap ; 3 uses
  %i.aar = load i32, ptr %i.aaq, align 8, !tbaa !73
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aaq, i64 4
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !73
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  %i.aav = load i32, ptr %i.aau, align 8, !tbaa !73
  %i.aaw = add i32 %i.aam, %i.aav
  %i.aax = getelementptr i8, ptr %i.sw, i64 42
  %i.aay = load i16, ptr %i.aax, align 2, !tbaa !78
  %i.aaz = zext i16 %i.aay to i64
  %i.aba = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aaz ; 3 uses
  %i.abb = load i32, ptr %i.aba, align 8, !tbaa !73
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aba, i64 4
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !73
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %i.abf = load i32, ptr %i.abe, align 8, !tbaa !73
  %i.abg = add i32 %i.aaw, %i.abf
  %i.abh = getelementptr i8, ptr %i.sw, i64 44
  %i.abi = load i16, ptr %i.abh, align 2, !tbaa !78
  %i.abj = zext i16 %i.abi to i64
  %i.abk = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.abj ; 3 uses
  %i.abl = load i32, ptr %i.abk, align 8, !tbaa !73
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abk, i64 4
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !73
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  %i.abp = load i32, ptr %i.abo, align 8, !tbaa !73
  %i.abq = add i32 %i.abg, %i.abp
  %i.abr = getelementptr i8, ptr %i.sw, i64 46
  %i.abs = load i16, ptr %i.abr, align 2, !tbaa !78
  %i.abt = zext i16 %i.abs to i64
  %i.abu = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.abt ; 3 uses
  %i.abv = load i32, ptr %i.abu, align 8, !tbaa !73
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abu, i64 4
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !73
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abu, i64 8
  %i.abz = load i32, ptr %i.aby, align 8, !tbaa !73
  %i.aca = add i32 %i.abq, %i.abz
  %i.acb = getelementptr i8, ptr %i.sw, i64 48
  %i.acc = load i16, ptr %i.acb, align 2, !tbaa !78
  %i.acd = zext i16 %i.acc to i64
  %i.ace = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.acd ; 3 uses
  %i.acf = load i32, ptr %i.ace, align 8, !tbaa !73
  %i.acg = getelementptr inbounds nuw i8, ptr %i.ace, i64 4
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !73
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ace, i64 8
  %i.acj = load i32, ptr %i.aci, align 8, !tbaa !73
  %i.ack = add i32 %i.aca, %i.acj
  %i.acl = getelementptr i8, ptr %i.sw, i64 50
  %i.acm = load i16, ptr %i.acl, align 2, !tbaa !78
  %i.acn = zext i16 %i.acm to i64
  %i.aco = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.acn ; 3 uses
  %i.acp = load i32, ptr %i.aco, align 8, !tbaa !73
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aco, i64 4
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !73
  %i.acs = getelementptr inbounds nuw i8, ptr %i.aco, i64 8
  %i.act = load i32, ptr %i.acs, align 8, !tbaa !73
  %i.acu = add i32 %i.ack, %i.act
  %i.acv = getelementptr i8, ptr %i.sw, i64 52
  %i.acw = load i16, ptr %i.acv, align 2, !tbaa !78
  %i.acx = zext i16 %i.acw to i64
  %i.acy = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.acx ; 3 uses
  %i.acz = load i32, ptr %i.acy, align 8, !tbaa !73
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acy, i64 4
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !73
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  %i.add = load i32, ptr %i.adc, align 8, !tbaa !73
  %i.ade = add i32 %i.acu, %i.add
  %i.adf = getelementptr i8, ptr %i.sw, i64 54
  %i.adg = load i16, ptr %i.adf, align 2, !tbaa !78
  %i.adh = zext i16 %i.adg to i64
  %i.adi = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.adh ; 3 uses
  %i.adj = load i32, ptr %i.adi, align 8, !tbaa !73
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adi, i64 4
  %i.adl = load i32, ptr %i.adk, align 4, !tbaa !73
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %i.adn = load i32, ptr %i.adm, align 8, !tbaa !73
  %i.ado = add i32 %i.ade, %i.adn
  %i.adp = getelementptr i8, ptr %i.sw, i64 56
  %i.adq = load i16, ptr %i.adp, align 2, !tbaa !78
  %i.adr = zext i16 %i.adq to i64
  %i.ads = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.adr ; 3 uses
  %i.adt = load i32, ptr %i.ads, align 8, !tbaa !73
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ads, i64 4
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !73
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ads, i64 8
  %i.adx = load i32, ptr %i.adw, align 8, !tbaa !73
  %i.ady = add i32 %i.ado, %i.adx
  %i.adz = getelementptr i8, ptr %i.sw, i64 58
  %i.aea = load i16, ptr %i.adz, align 2, !tbaa !78
  %i.aeb = zext i16 %i.aea to i64
  %i.aec = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aeb ; 3 uses
  %i.aed = load i32, ptr %i.aec, align 8, !tbaa !73
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aec, i64 4
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !73
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  %i.aeh = load i32, ptr %i.aeg, align 8, !tbaa !73
  %i.aei = add i32 %i.ady, %i.aeh
  %i.aej = getelementptr i8, ptr %i.sw, i64 60
  %i.aek = load i16, ptr %i.aej, align 2, !tbaa !78
  %i.ael = zext i16 %i.aek to i64
  %i.aem = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ael ; 3 uses
  %i.aen = load i32, ptr %i.aem, align 8, !tbaa !73
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aem, i64 4
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !73
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aem, i64 8
  %i.aer = load i32, ptr %i.aeq, align 8, !tbaa !73
  %i.aes = add i32 %i.aei, %i.aer
  %i.aet = getelementptr i8, ptr %i.sw, i64 62
  %i.aeu = load i16, ptr %i.aet, align 2, !tbaa !78
  %i.aev = zext i16 %i.aeu to i64
  %i.aew = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aev ; 3 uses
  %i.aex = load i32, ptr %i.aew, align 8, !tbaa !73
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aew, i64 4
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !73
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aew, i64 8
  %i.afb = load i32, ptr %i.afa, align 8, !tbaa !73
  %i.afc = add i32 %i.aes, %i.afb
  %i.afd = getelementptr i8, ptr %i.sw, i64 64
  %i.afe = load i16, ptr %i.afd, align 2, !tbaa !78
  %i.aff = zext i16 %i.afe to i64
  %i.afg = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aff ; 3 uses
  %i.afh = load i32, ptr %i.afg, align 8, !tbaa !73
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afg, i64 4
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !73
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afg, i64 8
  %i.afl = load i32, ptr %i.afk, align 8, !tbaa !73
  %i.afm = add i32 %i.afc, %i.afl
  %i.afn = getelementptr i8, ptr %i.sw, i64 66
  %i.afo = load i16, ptr %i.afn, align 2, !tbaa !78
  %i.afp = zext i16 %i.afo to i64
  %i.afq = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.afp ; 3 uses
  %i.afr = load i32, ptr %i.afq, align 8, !tbaa !73
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afq, i64 4
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !73
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afq, i64 8
  %i.afv = load i32, ptr %i.afu, align 8, !tbaa !73
  %i.afw = add i32 %i.afm, %i.afv
  %i.afx = getelementptr i8, ptr %i.sw, i64 68
  %i.afy = load i16, ptr %i.afx, align 2, !tbaa !78
  %i.afz = zext i16 %i.afy to i64
  %i.aga = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.afz ; 3 uses
  %i.agb = load i32, ptr %i.aga, align 8, !tbaa !73
  %i.agc = getelementptr inbounds nuw i8, ptr %i.aga, i64 4
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !73
  %i.age = getelementptr inbounds nuw i8, ptr %i.aga, i64 8
  %i.agf = load i32, ptr %i.age, align 8, !tbaa !73
  %i.agg = add i32 %i.afw, %i.agf
  %i.agh = getelementptr i8, ptr %i.sw, i64 70
  %i.agi = load i16, ptr %i.agh, align 2, !tbaa !78
  %i.agj = zext i16 %i.agi to i64
  %i.agk = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.agj ; 3 uses
  %i.agl = load i32, ptr %i.agk, align 8, !tbaa !73
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agk, i64 4
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !73
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agk, i64 8
  %i.agp = load i32, ptr %i.ago, align 8, !tbaa !73
  %i.agq = add i32 %i.agg, %i.agp
  %i.agr = getelementptr i8, ptr %i.sw, i64 72
  %i.ags = load i16, ptr %i.agr, align 2, !tbaa !78
  %i.agt = zext i16 %i.ags to i64
  %i.agu = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.agt ; 3 uses
  %i.agv = load i32, ptr %i.agu, align 8, !tbaa !73
  %2 = insertelement <32 x i32> poison, i32 %i.tj, i64 0
  %3 = insertelement <32 x i32> %2, i32 %i.ta, i64 1
  %4 = insertelement <32 x i32> %3, i32 %i.tt, i64 2
  %5 = insertelement <32 x i32> %4, i32 %i.ud, i64 3 ; 2 uses
  %6 = insertelement <32 x i32> %5, i32 %i.un, i64 4
  %7 = insertelement <32 x i32> %6, i32 %i.ux, i64 5
  %8 = insertelement <32 x i32> %7, i32 %i.vh, i64 6
  %9 = insertelement <32 x i32> %8, i32 %i.vr, i64 7
  %10 = insertelement <32 x i32> %9, i32 %i.wb, i64 8
  %11 = insertelement <32 x i32> %10, i32 %i.wl, i64 9
  %12 = insertelement <32 x i32> %11, i32 %i.wv, i64 10
  %13 = insertelement <32 x i32> %12, i32 %i.xf, i64 11
  %14 = insertelement <32 x i32> %13, i32 %i.xp, i64 12
  %15 = insertelement <32 x i32> %14, i32 %i.xz, i64 13
  %16 = insertelement <32 x i32> %15, i32 %i.yj, i64 14
  %17 = insertelement <32 x i32> %16, i32 %i.yt, i64 15
  %18 = insertelement <32 x i32> %17, i32 %i.zd, i64 16
  %19 = insertelement <32 x i32> %18, i32 %i.zn, i64 17
  %20 = insertelement <32 x i32> %19, i32 %i.zx, i64 18
  %21 = insertelement <32 x i32> %20, i32 %i.aah, i64 19
  %22 = insertelement <32 x i32> %21, i32 %i.aar, i64 20
  %23 = insertelement <32 x i32> %22, i32 %i.abb, i64 21
  %24 = insertelement <32 x i32> %23, i32 %i.abl, i64 22
  %25 = insertelement <32 x i32> %24, i32 %i.abv, i64 23
  %26 = insertelement <32 x i32> %25, i32 %i.acf, i64 24
  %27 = insertelement <32 x i32> %26, i32 %i.acp, i64 25
  %28 = insertelement <32 x i32> %27, i32 %i.acz, i64 26
  %29 = insertelement <32 x i32> %28, i32 %i.adj, i64 27
  %30 = insertelement <32 x i32> %29, i32 %i.adt, i64 28
  %31 = insertelement <32 x i32> %30, i32 %i.aed, i64 29
  %32 = insertelement <32 x i32> %31, i32 %i.aen, i64 30
  %33 = insertelement <32 x i32> %32, i32 %i.aex, i64 31
  %34 = insertelement <4 x i32> poison, i32 %i.afh, i64 0
  %35 = insertelement <4 x i32> %34, i32 %i.afr, i64 1
  %36 = insertelement <4 x i32> %35, i32 %i.agb, i64 2
  %37 = insertelement <4 x i32> %36, i32 %i.agl, i64 3
  %38 = shufflevector <32 x i32> %5, <32 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op1172 = add <4 x i32> %38, %37
  %39 = shufflevector <4 x i32> %rdx.op1172, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %40 = shufflevector <32 x i32> %39, <32 x i32> %33, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.agw = call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %40)
  %op.rdx1173 = add i32 %i.agw, %i.agv
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agu, i64 4
  %i.agy = load i32, ptr %i.agx, align 4, !tbaa !73
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agu, i64 8
  %i.aha = load i32, ptr %i.agz, align 8, !tbaa !73
  %i.ahb = add i32 %i.agq, %i.aha
  %i.ahc = getelementptr i8, ptr %i.sw, i64 74
  %i.ahd = load i16, ptr %i.ahc, align 2, !tbaa !78
  %i.ahe = zext i16 %i.ahd to i64
  %i.ahf = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ahe ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  %i.ahh = load i32, ptr %i.ahg, align 8, !tbaa !73
  %i.ahi = add i32 %i.ahb, %i.ahh
  %i.ahj = getelementptr i8, ptr %i.sw, i64 76
  %i.ahk = load i16, ptr %i.ahj, align 2, !tbaa !78
  %i.ahl = zext i16 %i.ahk to i64
  %i.ahm = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ahl ; 2 uses
  %41 = insertelement <32 x i32> poison, i32 %i.tl, i64 0
  %42 = insertelement <32 x i32> %41, i32 %i.tc, i64 1
  %43 = insertelement <32 x i32> %42, i32 %i.tv, i64 2
  %44 = insertelement <32 x i32> %43, i32 %i.uf, i64 3 ; 2 uses
  %45 = insertelement <32 x i32> %44, i32 %i.up, i64 4
  %46 = insertelement <32 x i32> %45, i32 %i.uz, i64 5
  %47 = insertelement <32 x i32> %46, i32 %i.vj, i64 6
  %48 = insertelement <32 x i32> %47, i32 %i.vt, i64 7
  %49 = insertelement <32 x i32> %48, i32 %i.wd, i64 8
  %50 = insertelement <32 x i32> %49, i32 %i.wn, i64 9
  %51 = insertelement <32 x i32> %50, i32 %i.wx, i64 10
  %52 = insertelement <32 x i32> %51, i32 %i.xh, i64 11
  %53 = insertelement <32 x i32> %52, i32 %i.xr, i64 12
  %54 = insertelement <32 x i32> %53, i32 %i.yb, i64 13
  %55 = insertelement <32 x i32> %54, i32 %i.yl, i64 14
  %56 = insertelement <32 x i32> %55, i32 %i.yv, i64 15
  %57 = insertelement <32 x i32> %56, i32 %i.zf, i64 16
  %58 = insertelement <32 x i32> %57, i32 %i.zp, i64 17
  %59 = insertelement <32 x i32> %58, i32 %i.zz, i64 18
  %60 = insertelement <32 x i32> %59, i32 %i.aaj, i64 19
  %61 = insertelement <32 x i32> %60, i32 %i.aat, i64 20
  %62 = insertelement <32 x i32> %61, i32 %i.abd, i64 21
  %63 = insertelement <32 x i32> %62, i32 %i.abn, i64 22
  %64 = insertelement <32 x i32> %63, i32 %i.abx, i64 23
  %65 = insertelement <32 x i32> %64, i32 %i.ach, i64 24
  %66 = insertelement <32 x i32> %65, i32 %i.acr, i64 25
  %67 = insertelement <32 x i32> %66, i32 %i.adb, i64 26
  %68 = insertelement <32 x i32> %67, i32 %i.adl, i64 27
  %69 = insertelement <32 x i32> %68, i32 %i.adv, i64 28
  %70 = insertelement <32 x i32> %69, i32 %i.aef, i64 29
  %71 = insertelement <32 x i32> %70, i32 %i.aep, i64 30
  %72 = insertelement <32 x i32> %71, i32 %i.aez, i64 31
  %73 = insertelement <4 x i32> poison, i32 %i.afj, i64 0
  %74 = insertelement <4 x i32> %73, i32 %i.aft, i64 1
  %75 = insertelement <4 x i32> %74, i32 %i.agd, i64 2
  %76 = insertelement <4 x i32> %75, i32 %i.agn, i64 3
  %77 = shufflevector <32 x i32> %44, <32 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = add <4 x i32> %77, %76
  %78 = shufflevector <4 x i32> %rdx.op, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %79 = shufflevector <32 x i32> %78, <32 x i32> %72, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ahn = call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %79)
  %op.rdx = add i32 %i.ahn, %i.agy
  %i.aho = load <2 x i32>, ptr %i.ahf, align 8, !tbaa !73
  %i.ahp = load <2 x i32>, ptr %i.ahm, align 8, !tbaa !73 ; 2 uses
  %i.ahq = insertelement <2 x i32> %i.ahp, i32 %op.rdx1173, i64 0
  %i.ahr = add <2 x i32> %i.ahq, %i.aho
  %i.ahs = insertelement <2 x i32> %i.ahp, i32 %op.rdx, i64 1
  %i.aht = add <2 x i32> %i.ahr, %i.ahs
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  %i.ahv = load i32, ptr %i.ahu, align 8, !tbaa !73
  %i.ahw = add i32 %i.ahi, %i.ahv
  %i.ahx = getelementptr i8, ptr %i.sw, i64 78
  %i.ahy = load i16, ptr %i.ahx, align 2, !tbaa !78
  %i.ahz = zext i16 %i.ahy to i64
  %i.aia = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ahz ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 8
  %i.aic = load i32, ptr %i.aib, align 8, !tbaa !73
  %i.aid = add i32 %i.ahw, %i.aic
  %i.aie = getelementptr i8, ptr %i.sw, i64 80
  %i.aif = load i16, ptr %i.aie, align 2, !tbaa !78
  %i.aig = zext i16 %i.aif to i64
  %i.aih = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aig ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 8
  %i.aij = load i32, ptr %i.aii, align 8, !tbaa !73
  %i.aik = add i32 %i.aid, %i.aij
  %i.ail = getelementptr i8, ptr %i.sw, i64 82
  %i.aim = load i16, ptr %i.ail, align 2, !tbaa !78
  %i.ain = zext i16 %i.aim to i64
  %i.aio = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ain ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 8
  %i.aiq = load i32, ptr %i.aip, align 8, !tbaa !73
  %i.air = add i32 %i.aik, %i.aiq
  %i.ais = getelementptr i8, ptr %i.sw, i64 84
  %i.ait = load i16, ptr %i.ais, align 2, !tbaa !78
  %i.aiu = zext i16 %i.ait to i64
  %i.aiv = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aiu ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 8
  %i.aix = load i32, ptr %i.aiw, align 8, !tbaa !73
  %i.aiy = add i32 %i.air, %i.aix
  %i.aiz = getelementptr i8, ptr %i.sw, i64 86
  %i.aja = load i16, ptr %i.aiz, align 2, !tbaa !78
  %i.ajb = zext i16 %i.aja to i64
  %i.ajc = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ajb ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 8
  %i.aje = load i32, ptr %i.ajd, align 8, !tbaa !73
  %i.ajf = add i32 %i.aiy, %i.aje
  %i.ajg = getelementptr i8, ptr %i.sw, i64 88
  %i.ajh = load i16, ptr %i.ajg, align 2, !tbaa !78
  %i.aji = zext i16 %i.ajh to i64
  %i.ajj = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aji ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 8
  %i.ajl = load i32, ptr %i.ajk, align 8, !tbaa !73
  %i.ajm = add i32 %i.ajf, %i.ajl
  %i.ajn = getelementptr i8, ptr %i.sw, i64 90
  %i.ajo = load i16, ptr %i.ajn, align 2, !tbaa !78
  %i.ajp = zext i16 %i.ajo to i64
  %i.ajq = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ajp ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 8
  %i.ajs = load i32, ptr %i.ajr, align 8, !tbaa !73
  %i.ajt = add i32 %i.ajm, %i.ajs
  %i.aju = getelementptr i8, ptr %i.sw, i64 92
  %i.ajv = load i16, ptr %i.aju, align 2, !tbaa !78
  %i.ajw = zext i16 %i.ajv to i64
  %i.ajx = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ajw ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 8
  %i.ajz = load i32, ptr %i.ajy, align 8, !tbaa !73
  %i.aka = add i32 %i.ajt, %i.ajz
  %i.akb = getelementptr i8, ptr %i.sw, i64 94
  %i.akc = load i16, ptr %i.akb, align 2, !tbaa !78
  %i.akd = zext i16 %i.akc to i64
  %i.ake = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.akd ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 8
  %i.akg = load i32, ptr %i.akf, align 8, !tbaa !73
  %i.akh = add i32 %i.aka, %i.akg
  %i.aki = getelementptr i8, ptr %i.sw, i64 96
  %i.akj = load i16, ptr %i.aki, align 2, !tbaa !78
  %i.akk = zext i16 %i.akj to i64
  %i.akl = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.akk ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 8
  %i.akn = load i32, ptr %i.akm, align 8, !tbaa !73
  %i.ako = add i32 %i.akh, %i.akn
  %i.akp = getelementptr i8, ptr %i.sw, i64 98
  %i.akq = load i16, ptr %i.akp, align 2, !tbaa !78
  %i.akr = zext i16 %i.akq to i64
  %i.aks = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.akr ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 8
  %i.aku = load i32, ptr %i.akt, align 8, !tbaa !73
  %i.akv = add i32 %i.ako, %i.aku
  %i.akw = load <2 x i32>, ptr %i.aia, align 8, !tbaa !73
  %i.akx = add <2 x i32> %i.aht, %i.akw
  %i.aky = load <2 x i32>, ptr %i.aih, align 8, !tbaa !73
  %i.akz = add <2 x i32> %i.akx, %i.aky
  %i.ala = load <2 x i32>, ptr %i.aio, align 8, !tbaa !73
  %i.alb = add <2 x i32> %i.akz, %i.ala
  %i.alc = load <2 x i32>, ptr %i.aiv, align 8, !tbaa !73
  %i.ald = add <2 x i32> %i.alb, %i.alc
  %i.ale = load <2 x i32>, ptr %i.ajc, align 8, !tbaa !73
  %i.alf = add <2 x i32> %i.ald, %i.ale
  %i.alg = load <2 x i32>, ptr %i.ajj, align 8, !tbaa !73
  %i.alh = add <2 x i32> %i.alf, %i.alg
  %i.ali = load <2 x i32>, ptr %i.ajq, align 8, !tbaa !73
  %i.alj = add <2 x i32> %i.alh, %i.ali
  %i.alk = load <2 x i32>, ptr %i.ajx, align 8, !tbaa !73
  %i.all = add <2 x i32> %i.alj, %i.alk
  %i.alm = load <2 x i32>, ptr %i.ake, align 8, !tbaa !73
  %i.aln = add <2 x i32> %i.all, %i.alm
  %i.alo = load <2 x i32>, ptr %i.akl, align 8, !tbaa !73
  %i.alp = add <2 x i32> %i.aln, %i.alo
  %i.alq = load <2 x i32>, ptr %i.aks, align 8, !tbaa !73
  %i.alr = add <2 x i32> %i.alp, %i.alq
  store <2 x i32> %i.alr, ptr %i.a, align 8
  store i32 %i.akv, ptr %i.pf, align 8
  br label %.loopexit1973.i.preheader

.lr.ph2134.i:                                     ; preds = %.loopexit, %.lr.ph2134.preheader.i
  %indvars.iv2381.i = phi i64 [ %i.st, %.lr.ph2134.preheader.i ], [ %indvars.iv.next2382.i, %.loopexit ] ; 2 uses
  %i.als = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv2381.i
  %i.alt = load i16, ptr %i.als, align 2, !tbaa !78
  %i.alu = zext i16 %i.alt to i64
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.alu ; 5 uses
  br i1 %min.iters.check1128, label %scalar.ph.preheader, label %vector.body1131

vector.body1131:                                  ; preds = %.lr.ph2134.i
  %i.alv = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 258
  %i.alw = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 516
  %i.alx = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 774
  %i.aly = load i8, ptr %invariant.gep.i, align 1, !tbaa !18
  %i.alz = load i8, ptr %i.alv, align 1, !tbaa !18
  %i.ama = load i8, ptr %i.alw, align 1, !tbaa !18
  %i.amb = load i8, ptr %i.alx, align 1, !tbaa !18
  %i.amc = insertelement <4 x i8> poison, i8 %i.aly, i64 0
  %i.amd = insertelement <4 x i8> %i.amc, i8 %i.alz, i64 1
  %i.ame = insertelement <4 x i8> %i.amd, i8 %i.ama, i64 2
  %i.amf = insertelement <4 x i8> %i.ame, i8 %i.amb, i64 3
  %i.amg = zext <4 x i8> %i.amf to <4 x i16>
  %wide.load = load <4 x i16>, ptr %i.a, align 8, !tbaa !78
  %i.amh = add <4 x i16> %wide.load, %i.amg
  store <4 x i16> %i.amh, ptr %i.a, align 8, !tbaa !78
  br i1 %cmp.n1135, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph2134.i, %vector.body1131
  %indvars.iv2376.i.ph = phi i64 [ 0, %.lr.ph2134.i ], [ %n.vec1130, %vector.body1131 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv2376.i = phi i64 [ %indvars.iv.next2377.i, %scalar.ph ], [ %indvars.iv2376.i.ph, %scalar.ph.preheader ] ; 3 uses
  %gep.i = getelementptr inbounds nuw [258 x i8], ptr %invariant.gep.i, i64 %indvars.iv2376.i
  %i.ami = load i8, ptr %gep.i, align 1, !tbaa !18
  %i.amj = zext i8 %i.ami to i16
  %i.amk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv2376.i ; 2 uses
  %i.aml = load i16, ptr %i.amk, align 2, !tbaa !78
  %i.amm = add i16 %i.aml, %i.amj
  store i16 %i.amm, ptr %i.amk, align 2, !tbaa !78
  %indvars.iv.next2377.i = add nuw nsw i64 %indvars.iv2376.i, 1 ; 2 uses
  %exitcond2380.not.i = icmp eq i64 %indvars.iv.next2377.i, %i.ow
  br i1 %exitcond2380.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !33

.loopexit:                                        ; preds = %scalar.ph, %vector.body1131
  %indvars.iv.next2382.i = add nsw i64 %indvars.iv2381.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next2382.i to i32
  %exitcond2385.not.i = icmp eq i32 %i.su, %lftr.wideiv.i
  br i1 %exitcond2385.not.i, label %.loopexit1973.i.preheader, label %.lr.ph2134.i, !llvm.loop !34

.loopexit1973.i.preheader:                        ; preds = %.loopexit, %bb.ba, %.preheader1972.i
  br i1 %i.pk, label %.loopexit1973.i.epil.preheader, label %.loopexit1973.i

.loopexit1973.i:                                  ; preds = %.loopexit1973.i.preheader, %.loopexit1973.i
  %indvars.iv2386.i = phi i64 [ %indvars.iv.next2387.i.3, %.loopexit1973.i ], [ 0, %.loopexit1973.i.preheader ] ; 6 uses
  %.014902136.i = phi i32 [ %spec.select1521.i.3, %.loopexit1973.i ], [ 999999999, %.loopexit1973.i.preheader ] ; 2 uses
  %.014922135.i = phi i32 [ %spec.select1520.i.3, %.loopexit1973.i ], [ -1, %.loopexit1973.i.preheader ]
  %niter1384 = phi i64 [ %niter1384.next.3, %.loopexit1973.i ], [ 0, %.loopexit1973.i.preheader ]
  %i.amn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv2386.i
  %i.amo = load i16, ptr %i.amn, align 8, !tbaa !78
  %i.amp = zext i16 %i.amo to i32                 ; 2 uses
  %i.amq = icmp samesign ugt i32 %.014902136.i, %i.amp
  %i.amr = trunc nuw nsw i64 %indvars.iv2386.i to i32
  %spec.select1520.i = select i1 %i.amq, i32 %i.amr, i32 %.014922135.i
  %spec.select1521.i = call i32 @llvm.umin.i32(i32 %.014902136.i, i32 %i.amp) ; 2 uses
  %indvars.iv.next2387.i = or disjoint i64 %indvars.iv2386.i, 1 ; 2 uses
  %i.ams = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next2387.i
  %i.amt = load i16, ptr %i.ams, align 2, !tbaa !78
  %i.amu = zext i16 %i.amt to i32                 ; 2 uses
  %i.amv = icmp samesign ugt i32 %spec.select1521.i, %i.amu
  %i.amw = trunc nuw nsw i64 %indvars.iv.next2387.i to i32
  %spec.select1520.i.1 = select i1 %i.amv, i32 %i.amw, i32 %spec.select1520.i
  %spec.select1521.i.1 = call i32 @llvm.umin.i32(i32 %spec.select1521.i, i32 %i.amu) ; 2 uses
  %indvars.iv.next2387.i.1 = or disjoint i64 %indvars.iv2386.i, 2 ; 2 uses
  %i.amx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next2387.i.1
  %i.amy = load i16, ptr %i.amx, align 4, !tbaa !78
  %i.amz = zext i16 %i.amy to i32                 ; 2 uses
  %i.ana = icmp samesign ugt i32 %spec.select1521.i.1, %i.amz
  %i.anb = trunc nuw nsw i64 %indvars.iv.next2387.i.1 to i32
  %spec.select1520.i.2 = select i1 %i.ana, i32 %i.anb, i32 %spec.select1520.i.1
  %spec.select1521.i.2 = call i32 @llvm.umin.i32(i32 %spec.select1521.i.1, i32 %i.amz) ; 2 uses
  %indvars.iv.next2387.i.2 = or disjoint i64 %indvars.iv2386.i, 3 ; 2 uses
  %i.anc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next2387.i.2
  %i.and = load i16, ptr %i.anc, align 2, !tbaa !78
  %i.ane = zext i16 %i.and to i32                 ; 2 uses
  %i.anf = icmp samesign ugt i32 %spec.select1521.i.2, %i.ane
  %i.ang = trunc nuw nsw i64 %indvars.iv.next2387.i.2 to i32
  %spec.select1520.i.3 = select i1 %i.anf, i32 %i.ang, i32 %spec.select1520.i.2 ; 3 uses
end_hunk_0
begin_hunk_1_@bsPutUInt32:bb.a
bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.i = phi i32 [ %.pre15.i, %.lr.ph.i ], [ %i.q, %bb.b ]
  %i.j = phi i32 [ %.pre.i, %.lr.ph.i ], [ %i.s, %bb.b ]
  %i.k = lshr i32 %i.j, 24
  %i.l = trunc nuw i32 %i.k to i8
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.n = sext i32 %i.i to i64
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  store i8 %i.l, ptr %i.o, align 1, !tbaa !18
  %i.p = load i32, ptr %i.h, align 4, !tbaa !16
  %i.q = add nsw i32 %i.p, 1                      ; 2 uses
  store i32 %i.q, ptr %i.h, align 4, !tbaa !16
  %i.r = load i32, ptr %i.e, align 8, !tbaa !15
  %i.s = shl i32 %i.r, 8                          ; 3 uses
  store i32 %i.s, ptr %i.e, align 8, !tbaa !15
  %i.t = load i32, ptr %i.b, align 4, !tbaa !14   ; 3 uses
  %i.u = add nsw i32 %i.t, -8
  store i32 %i.u, ptr %i.b, align 4, !tbaa !14
  %i.v = icmp sgt i32 %i.t, 15
  br i1 %i.v, label %bb.b, label %bsW.exit, !llvm.loop !0

bsW.exit:                                         ; preds = %bb.b, %.._crit_edge_crit_edge.i
  %i.w = phi i32 [ %.pre16.i, %.._crit_edge_crit_edge.i ], [ %i.s, %bb.b ]
  %.lcssa.i = phi i32 [ %i.f, %.._crit_edge_crit_edge.i ], [ %i.t, %bb.b ] ; 4 uses
  %i.x = sub i32 32, %.lcssa.i
  %i.y = shl i32 %i.a, %i.x
  %i.z = or i32 %i.y, %i.w                        ; 3 uses
  store i32 %i.z, ptr %i.e, align 8, !tbaa !15
  store i32 %.lcssa.i, ptr %i.b, align 4, !tbaa !14
  %i.aa = lshr i32 %1, 16
  %i.ab = and i32 %i.aa, 255
  %i.ac = icmp sgt i32 %.lcssa.i, 7
  br i1 %i.ac, label %.lr.ph.i10, label %bsW.exit13

.lr.ph.i10:                                       ; preds = %bsW.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre15.i12 = load i32, ptr %i.ae, align 4, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i10
  %i.af = phi i32 [ %.pre15.i12, %.lr.ph.i10 ], [ %i.an, %bb.c ]
  %i.ag = phi i32 [ %i.z, %.lr.ph.i10 ], [ %i.ap, %bb.c ]
  %i.ah = lshr i32 %i.ag, 24
  %i.ai = trunc nuw i32 %i.ah to i8
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !17
  %i.ak = sext i32 %i.af to i64
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  store i8 %i.ai, ptr %i.al, align 1, !tbaa !18
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.an = add nsw i32 %i.am, 1                    ; 2 uses
  store i32 %i.an, ptr %i.ae, align 4, !tbaa !16
  %i.ao = load i32, ptr %i.e, align 8, !tbaa !15
  %i.ap = shl i32 %i.ao, 8                        ; 3 uses
  store i32 %i.ap, ptr %i.e, align 8, !tbaa !15
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !14  ; 2 uses
  %i.ar = add nsw i32 %i.aq, -8                   ; 2 uses
  store i32 %i.ar, ptr %i.b, align 4, !tbaa !14
  %i.as = icmp sgt i32 %i.aq, 15
  br i1 %i.as, label %bb.c, label %bsW.exit13, !llvm.loop !0

bsW.exit13:                                       ; preds = %bb.c, %bsW.exit
  %i.at = phi i32 [ %i.z, %bsW.exit ], [ %i.ap, %bb.c ]
  %.lcssa.i9 = phi i32 [ %.lcssa.i, %bsW.exit ], [ %i.ar, %bb.c ] ; 3 uses
  %i.au = add nsw i32 %.lcssa.i9, 8               ; 2 uses
  %i.av = sub i32 24, %.lcssa.i9
  %i.aw = shl i32 %i.ab, %i.av
  %i.ax = or i32 %i.aw, %i.at                     ; 3 uses
  store i32 %i.ax, ptr %i.e, align 8, !tbaa !15
  store i32 %i.au, ptr %i.b, align 4, !tbaa !14
  %i.ay = lshr i32 %1, 8
  %i.az = and i32 %i.ay, 255
  %i.ba = icmp sgt i32 %.lcssa.i9, -1
  br i1 %i.ba, label %.lr.ph.i17, label %bsW.exit20

.lr.ph.i17:                                       ; preds = %bsW.exit13
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre15.i19 = load i32, ptr %i.bc, align 4, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i17
  %i.bd = phi i32 [ %.pre15.i19, %.lr.ph.i17 ], [ %i.bl, %bb.d ]
  %i.be = phi i32 [ %i.ax, %.lr.ph.i17 ], [ %i.bn, %bb.d ]
  %i.bf = lshr i32 %i.be, 24
  %i.bg = trunc nuw i32 %i.bf to i8
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !17
  %i.bi = sext i32 %i.bd to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 %i.bi
  store i8 %i.bg, ptr %i.bj, align 1, !tbaa !18
  %i.bk = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.bl = add nsw i32 %i.bk, 1                    ; 2 uses
  store i32 %i.bl, ptr %i.bc, align 4, !tbaa !16
  %i.bm = load i32, ptr %i.e, align 8, !tbaa !15
  %i.bn = shl i32 %i.bm, 8                        ; 3 uses
  store i32 %i.bn, ptr %i.e, align 8, !tbaa !15
  %i.bo = load i32, ptr %i.b, align 4, !tbaa !14  ; 2 uses
  %i.bp = add nsw i32 %i.bo, -8                   ; 2 uses
  store i32 %i.bp, ptr %i.b, align 4, !tbaa !14
  %i.bq = icmp sgt i32 %i.bo, 15
  br i1 %i.bq, label %bb.d, label %bsW.exit20, !llvm.loop !0

bsW.exit20:                                       ; preds = %bb.d, %bsW.exit13
  %i.br = phi i32 [ %i.ax, %bsW.exit13 ], [ %i.bn, %bb.d ]
  %.lcssa.i16 = phi i32 [ %i.au, %bsW.exit13 ], [ %i.bp, %bb.d ] ; 3 uses
  %i.bs = add nsw i32 %.lcssa.i16, 8              ; 2 uses
  %i.bt = sub i32 24, %.lcssa.i16
  %i.bu = shl i32 %i.az, %i.bt
  %i.bv = or i32 %i.bu, %i.br                     ; 3 uses
  store i32 %i.bv, ptr %i.e, align 8, !tbaa !15
  store i32 %i.bs, ptr %i.b, align 4, !tbaa !14
  %i.bw = icmp sgt i32 %.lcssa.i16, -1
  br i1 %i.bw, label %.lr.ph.i24, label %bsW.exit27

.lr.ph.i24:                                       ; preds = %bsW.exit20
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre15.i26 = load i32, ptr %i.by, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i24
  %i.bz = phi i32 [ %.pre15.i26, %.lr.ph.i24 ], [ %i.ch, %bb.e ]
  %i.ca = phi i32 [ %i.bv, %.lr.ph.i24 ], [ %i.cj, %bb.e ]
  %i.cb = lshr i32 %i.ca, 24
  %i.cc = trunc nuw i32 %i.cb to i8
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !17
  %i.ce = sext i32 %i.bz to i64
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  store i8 %i.cc, ptr %i.cf, align 1, !tbaa !18
  %i.cg = load i32, ptr %i.by, align 4, !tbaa !16
  %i.ch = add nsw i32 %i.cg, 1                    ; 2 uses
  store i32 %i.ch, ptr %i.by, align 4, !tbaa !16
  %i.ci = load i32, ptr %i.e, align 8, !tbaa !15
  %i.cj = shl i32 %i.ci, 8                        ; 3 uses
  store i32 %i.cj, ptr %i.e, align 8, !tbaa !15
  %i.ck = load i32, ptr %i.b, align 4, !tbaa !14  ; 2 uses
  %i.cl = add nsw i32 %i.ck, -8                   ; 2 uses
  store i32 %i.cl, ptr %i.b, align 4, !tbaa !14
  %i.cm = icmp sgt i32 %i.ck, 15
  br i1 %i.cm, label %bb.e, label %bsW.exit27, !llvm.loop !0

bsW.exit27:                                       ; preds = %bb.e, %bsW.exit20
  %i.cn = phi i32 [ %i.bv, %bsW.exit20 ], [ %i.cj, %bb.e ]
  %.lcssa.i23 = phi i32 [ %i.bs, %bsW.exit20 ], [ %i.cl, %bb.e ] ; 2 uses
  %i.co = and i32 %1, 255
  %i.cp = add nsw i32 %.lcssa.i23, 8
  %i.cq = sub i32 24, %.lcssa.i23
  %i.cr = shl i32 %i.co, %i.cq
  %i.cs = or i32 %i.cr, %i.cn
  store i32 %i.cs, ptr %i.e, align 8, !tbaa !15
  store i32 %i.cp, ptr %i.b, align 4, !tbaa !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare void @BZ2_bz__AssertH__fail(i32 noundef) local_unnamed_addr #3

declare void @BZ2_hbMakeCodeLengths(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @BZ2_hbAssignCodes(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !19}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"p1 short", !9, i64 0}
!13 = !{!"", !9, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !6, i64 48, !10, i64 56, !11, i64 64, !12, i64 72, !11, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !5, i64 128, !5, i64 384, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !6, i64 668, !5, i64 672, !5, i64 1704, !5, i64 19706, !5, i64 37708, !5, i64 39256, !5, i64 45448, !5, i64 51640}
!14 = !{!13, !6, i64 644}
!15 = !{!13, !6, i64 640}
!16 = !{!13, !6, i64 116}
!17 = !{!13, !11, i64 80}
!18 = !{!5, !5, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19, !74, !75}
!22 = distinct !{!22, !19, !74, !75}
!23 = distinct !{!23, !19, !75, !74}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !19, !74, !75}
!28 = distinct !{!28, !19, !74, !75}
!29 = distinct !{!29, !19, !75, !74}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !81}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !19, !75, !74}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !81}
!37 = distinct !{!37, !81}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !19}
!40 = distinct !{!40, !19}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !19, !75, !74}
!43 = distinct !{!43, !19}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !19, !74, !75}
!46 = distinct !{!46, !19, !75, !74}
!47 = distinct !{!47, !19}
!48 = distinct !{!48, !19}
!49 = distinct !{!49, !19}
!50 = distinct !{!50, !19}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, !19}
!57 = distinct !{!57, !19}
!58 = distinct !{!58, !19}
!59 = !{!13, !6, i64 108}
!60 = !{!13, !6, i64 648}
!61 = !{!13, !6, i64 652}
!62 = !{!13, !6, i64 660}
!63 = !{!13, !6, i64 656}
!64 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!13, !10, i64 32}
!67 = !{!13, !6, i64 664}
!68 = !{!13, !6, i64 48}
!69 = !{!13, !10, i64 56}
!70 = !{!13, !11, i64 64}
!71 = !{!13, !12, i64 72}
!72 = !{!13, !6, i64 124}
!73 = !{!6, !6, i64 0}
!74 = !{!"llvm.loop.isvectorized", i32 1}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!"branch_weights", i32 8, i32 24}
!77 = !{!"short", !5, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!13, !6, i64 668}
!80 = !{!"branch_weights", i32 8, i32 8}
!81 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
