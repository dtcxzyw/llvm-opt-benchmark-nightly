begin_hunk_0_@_ZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKvi:bb.a
  %i.bdo = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bbk
  %i.bdp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bbl
  %i.bdq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bbm
  %i.bdr = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bbn
  %i.bds = load float, ptr %i.bdo, align 8, !tbaa !473
  %i.bdt = load float, ptr %i.bdp, align 8, !tbaa !473
  %i.bdu = load float, ptr %i.bdq, align 8, !tbaa !473
  %i.bdv = load float, ptr %i.bdr, align 8, !tbaa !473
  %i.bdw = insertelement <4 x float> poison, float %i.bds, i64 0
  %i.bdx = insertelement <4 x float> %i.bdw, float %i.bdt, i64 1
  %i.bdy = insertelement <4 x float> %i.bdx, float %i.bdu, i64 2
  %i.bdz = insertelement <4 x float> %i.bdy, float %i.bdv, i64 3
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bca
  %i.beb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bcb
  %i.bec = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bcc
  %i.bed = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bcd
  %i.bee = load float, ptr %i.bea, align 4, !tbaa !473
  %i.bef = load float, ptr %i.beb, align 4, !tbaa !473
  %i.beg = load float, ptr %i.bec, align 4, !tbaa !473
  %i.beh = load float, ptr %i.bed, align 4, !tbaa !473
  %i.bei = insertelement <4 x float> poison, float %i.bee, i64 0
  %i.bej = insertelement <4 x float> %i.bei, float %i.bef, i64 1
  %i.bek = insertelement <4 x float> %i.bej, float %i.beg, i64 2
  %i.bel = insertelement <4 x float> %i.bek, float %i.beh, i64 3
  %i.bem = or disjoint i64 %i.ael, 12             ; 2 uses
  %i.ben = or disjoint i64 %i.aem, 44             ; 2 uses
  %i.beo = or disjoint i64 %i.aeo, 76             ; 2 uses
  %i.bep = or disjoint i64 %i.aeq, 108            ; 2 uses
  %i.beq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bem
  %i.ber = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ben
  %i.bes = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.beo
  %i.bet = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bep
  %i.beu = load float, ptr %i.beq, align 16, !tbaa !473
  %i.bev = load float, ptr %i.ber, align 16, !tbaa !473
  %i.bew = load float, ptr %i.bes, align 16, !tbaa !473
  %i.bex = load float, ptr %i.bet, align 16, !tbaa !473
  %i.bey = insertelement <4 x float> poison, float %i.beu, i64 0
  %i.bez = insertelement <4 x float> %i.bey, float %i.bev, i64 1
  %i.bfa = insertelement <4 x float> %i.bez, float %i.bew, i64 2
  %i.bfb = insertelement <4 x float> %i.bfa, float %i.bex, i64 3
  %i.bfc = or disjoint i64 %i.ael, 13             ; 2 uses
  %i.bfd = or disjoint i64 %i.aem, 45             ; 2 uses
  %i.bfe = or disjoint i64 %i.aeo, 77             ; 2 uses
  %i.bff = or disjoint i64 %i.aeq, 109            ; 2 uses
  %i.bfg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bfc
  %i.bfh = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bfd
  %i.bfi = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bfe
  %i.bfj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bff
  %i.bfk = load float, ptr %i.bfg, align 4, !tbaa !473
  %i.bfl = load float, ptr %i.bfh, align 4, !tbaa !473
  %i.bfm = load float, ptr %i.bfi, align 4, !tbaa !473
  %i.bfn = load float, ptr %i.bfj, align 4, !tbaa !473
  %i.bfo = insertelement <4 x float> poison, float %i.bfk, i64 0
  %i.bfp = insertelement <4 x float> %i.bfo, float %i.bfl, i64 1
  %i.bfq = insertelement <4 x float> %i.bfp, float %i.bfm, i64 2
  %i.bfr = insertelement <4 x float> %i.bfq, float %i.bfn, i64 3
  %i.bfs = or disjoint i64 %i.ael, 28             ; 2 uses
  %i.bft = or disjoint i64 %i.aem, 60             ; 2 uses
  %i.bfu = or disjoint i64 %i.aeo, 92             ; 2 uses
  %i.bfv = or disjoint i64 %i.aeq, 124            ; 2 uses
  %i.bfw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bfs
  %i.bfx = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bft
  %i.bfy = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bfu
  %i.bfz = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bfv
  %i.bga = load float, ptr %i.bfw, align 16, !tbaa !473
  %i.bgb = load float, ptr %i.bfx, align 16, !tbaa !473
  %i.bgc = load float, ptr %i.bfy, align 16, !tbaa !473
  %i.bgd = load float, ptr %i.bfz, align 16, !tbaa !473
  %i.bge = insertelement <4 x float> poison, float %i.bga, i64 0
  %i.bgf = insertelement <4 x float> %i.bge, float %i.bgb, i64 1
  %i.bgg = insertelement <4 x float> %i.bgf, float %i.bgc, i64 2
  %i.bgh = insertelement <4 x float> %i.bgg, float %i.bgd, i64 3
  %i.bgi = or disjoint i64 %i.ael, 29             ; 2 uses
  %i.bgj = or disjoint i64 %i.aem, 61             ; 2 uses
  %i.bgk = or disjoint i64 %i.aeo, 93             ; 2 uses
  %i.bgl = or disjoint i64 %i.aeq, 125            ; 2 uses
  %i.bgm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bgi
  %i.bgn = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bgj
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bgk
  %i.bgp = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bgl
  %i.bgq = load float, ptr %i.bgm, align 4, !tbaa !473
  %i.bgr = load float, ptr %i.bgn, align 4, !tbaa !473
  %i.bgs = load float, ptr %i.bgo, align 4, !tbaa !473
  %i.bgt = load float, ptr %i.bgp, align 4, !tbaa !473
  %i.bgu = insertelement <4 x float> poison, float %i.bgq, i64 0
  %i.bgv = insertelement <4 x float> %i.bgu, float %i.bgr, i64 1
  %i.bgw = insertelement <4 x float> %i.bgv, float %i.bgs, i64 2
  %i.bgx = insertelement <4 x float> %i.bgw, float %i.bgt, i64 3
  %i.bgy = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bem
  %i.bgz = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ben
  %i.bha = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.beo
  %i.bhb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bep
  %i.bhc = load float, ptr %i.bgy, align 16, !tbaa !473
  %i.bhd = load float, ptr %i.bgz, align 16, !tbaa !473
  %i.bhe = load float, ptr %i.bha, align 16, !tbaa !473
  %i.bhf = load float, ptr %i.bhb, align 16, !tbaa !473
  %i.bhg = insertelement <4 x float> poison, float %i.bhc, i64 0
  %i.bhh = insertelement <4 x float> %i.bhg, float %i.bhd, i64 1
  %i.bhi = insertelement <4 x float> %i.bhh, float %i.bhe, i64 2
  %i.bhj = insertelement <4 x float> %i.bhi, float %i.bhf, i64 3
  %i.bhk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bfc
  %i.bhl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bfd
  %i.bhm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bfe
  %i.bhn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bff
  %i.bho = load float, ptr %i.bhk, align 4, !tbaa !473
  %i.bhp = load float, ptr %i.bhl, align 4, !tbaa !473
  %i.bhq = load float, ptr %i.bhm, align 4, !tbaa !473
  %i.bhr = load float, ptr %i.bhn, align 4, !tbaa !473
  %i.bhs = insertelement <4 x float> poison, float %i.bho, i64 0
  %i.bht = insertelement <4 x float> %i.bhs, float %i.bhp, i64 1
  %i.bhu = insertelement <4 x float> %i.bht, float %i.bhq, i64 2
  %i.bhv = insertelement <4 x float> %i.bhu, float %i.bhr, i64 3
  %i.bhw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bfs
  %i.bhx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bft
  %i.bhy = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bfu
  %i.bhz = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bfv
  %i.bia = load float, ptr %i.bhw, align 16, !tbaa !473
  %i.bib = load float, ptr %i.bhx, align 16, !tbaa !473
  %i.bic = load float, ptr %i.bhy, align 16, !tbaa !473
  %i.bid = load float, ptr %i.bhz, align 16, !tbaa !473
  %i.bie = insertelement <4 x float> poison, float %i.bia, i64 0
  %i.bif = insertelement <4 x float> %i.bie, float %i.bib, i64 1
  %i.big = insertelement <4 x float> %i.bif, float %i.bic, i64 2
  %i.bih = insertelement <4 x float> %i.big, float %i.bid, i64 3
  %i.bii = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bgi
  %i.bij = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bgj
  %i.bik = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bgk
  %i.bil = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bgl
  %i.bim = load float, ptr %i.bii, align 4, !tbaa !473
  %i.bin = load float, ptr %i.bij, align 4, !tbaa !473
  %i.bio = load float, ptr %i.bik, align 4, !tbaa !473
  %i.bip = load float, ptr %i.bil, align 4, !tbaa !473
  %i.biq = insertelement <4 x float> poison, float %i.bim, i64 0
  %i.bir = insertelement <4 x float> %i.biq, float %i.bin, i64 1
  %i.bis = insertelement <4 x float> %i.bir, float %i.bio, i64 2
  %i.bit = insertelement <4 x float> %i.bis, float %i.bip, i64 3
  %i.biu = or disjoint i64 %i.ael, 14             ; 2 uses
  %i.biv = or disjoint i64 %i.aem, 46             ; 2 uses
  %i.biw = or disjoint i64 %i.aeo, 78             ; 2 uses
  %i.bix = or disjoint i64 %i.aeq, 110            ; 2 uses
  %i.biy = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.biu
  %i.biz = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.biv
  %i.bja = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.biw
  %i.bjb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bix
  %i.bjc = load float, ptr %i.biy, align 8, !tbaa !473
  %i.bjd = load float, ptr %i.biz, align 8, !tbaa !473
  %i.bje = load float, ptr %i.bja, align 8, !tbaa !473
  %i.bjf = load float, ptr %i.bjb, align 8, !tbaa !473
  %i.bjg = insertelement <4 x float> poison, float %i.bjc, i64 0
  %i.bjh = insertelement <4 x float> %i.bjg, float %i.bjd, i64 1
  %i.bji = insertelement <4 x float> %i.bjh, float %i.bje, i64 2
  %i.bjj = insertelement <4 x float> %i.bji, float %i.bjf, i64 3
  %i.bjk = or disjoint i64 %i.ael, 15             ; 2 uses
  %i.bjl = or disjoint i64 %i.aem, 47             ; 2 uses
  %i.bjm = or disjoint i64 %i.aeo, 79             ; 2 uses
  %i.bjn = or disjoint i64 %i.aeq, 111            ; 2 uses
  %i.bjo = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bjk
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bjl
  %i.bjq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bjm
  %i.bjr = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bjn
  %i.bjs = load float, ptr %i.bjo, align 4, !tbaa !473
  %i.bjt = load float, ptr %i.bjp, align 4, !tbaa !473
  %i.bju = load float, ptr %i.bjq, align 4, !tbaa !473
  %i.bjv = load float, ptr %i.bjr, align 4, !tbaa !473
  %i.bjw = insertelement <4 x float> poison, float %i.bjs, i64 0
  %i.bjx = insertelement <4 x float> %i.bjw, float %i.bjt, i64 1
  %i.bjy = insertelement <4 x float> %i.bjx, float %i.bju, i64 2
  %i.bjz = insertelement <4 x float> %i.bjy, float %i.bjv, i64 3
  %i.bka = or disjoint i64 %i.ael, 30             ; 2 uses
  %i.bkb = or disjoint i64 %i.aem, 62             ; 2 uses
  %i.bkc = or disjoint i64 %i.aeo, 94             ; 2 uses
  %i.bkd = or disjoint i64 %i.aeq, 126            ; 2 uses
  %i.bke = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bka
  %i.bkf = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bkb
  %i.bkg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bkc
  %i.bkh = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bkd
  %i.bki = load float, ptr %i.bke, align 8, !tbaa !473
  %i.bkj = load float, ptr %i.bkf, align 8, !tbaa !473
  %i.bkk = load float, ptr %i.bkg, align 8, !tbaa !473
  %i.bkl = load float, ptr %i.bkh, align 8, !tbaa !473
  %i.bkm = insertelement <4 x float> poison, float %i.bki, i64 0
  %i.bkn = insertelement <4 x float> %i.bkm, float %i.bkj, i64 1
  %i.bko = insertelement <4 x float> %i.bkn, float %i.bkk, i64 2
  %i.bkp = insertelement <4 x float> %i.bko, float %i.bkl, i64 3
  %i.bkq = or disjoint i64 %i.ael, 31             ; 2 uses
  %i.bkr = or disjoint i64 %i.aem, 63             ; 2 uses
  %i.bks = or disjoint i64 %i.aeo, 95             ; 2 uses
  %i.bkt = or disjoint i64 %i.aeq, 127            ; 2 uses
  %i.bku = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bkq
  %i.bkv = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bkr
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bks
  %i.bkx = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bkt
  %i.bky = load float, ptr %i.bku, align 4, !tbaa !473
  %i.bkz = load float, ptr %i.bkv, align 4, !tbaa !473
  %i.bla = load float, ptr %i.bkw, align 4, !tbaa !473
  %i.blb = load float, ptr %i.bkx, align 4, !tbaa !473
  %i.blc = insertelement <4 x float> poison, float %i.bky, i64 0
  %i.bld = insertelement <4 x float> %i.blc, float %i.bkz, i64 1
  %i.ble = insertelement <4 x float> %i.bld, float %i.bla, i64 2
  %i.blf = insertelement <4 x float> %i.ble, float %i.blb, i64 3
  %6 = fadd <4 x float> %i.afd, %i.aft
  %7 = fadd <4 x float> %i.ajn, %i.akd
  %8 = fadd <4 x float> %i.anv, %i.aol
  %9 = fadd <4 x float> %i.asd, %i.ast
  %10 = fadd <4 x float> %6, %i.agj
  %11 = fadd <4 x float> %7, %i.akt
  %12 = fadd <4 x float> %8, %i.apb
  %13 = fadd <4 x float> %9, %i.atj
  %14 = fadd <4 x float> %10, %i.agz
  %15 = fadd <4 x float> %11, %i.alj
  %16 = shufflevector <4 x float> %14, <4 x float> %15, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %17 = fadd <4 x float> %12, %i.apr
  %18 = fadd <4 x float> %13, %i.atz
  %i.blg = shufflevector <4 x float> %17, <4 x float> %18, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.blh = shufflevector <8 x float> %16, <8 x float> %i.blg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %19 = fadd <4 x float> %i.awl, %i.axb
  %20 = fadd <4 x float> %i.bat, %i.bbj
  %21 = fadd <4 x float> %i.bfb, %i.bfr
  %22 = fadd <4 x float> %i.bjj, %i.bjz
  %23 = fadd <4 x float> %19, %i.axr
  %24 = fadd <4 x float> %20, %i.bbz
  %25 = fadd <4 x float> %21, %i.bgh
  %26 = fadd <4 x float> %22, %i.bkp
  %27 = fadd <4 x float> %23, %i.ayh
  %28 = fadd <4 x float> %24, %i.bcp
  %29 = shufflevector <4 x float> %27, <4 x float> %28, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %30 = fadd <4 x float> %25, %i.bgx
  %31 = fadd <4 x float> %26, %i.blf
  %i.bli = shufflevector <4 x float> %30, <4 x float> %31, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.blj = shufflevector <8 x float> %29, <8 x float> %i.bli, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.blk = shufflevector <16 x float> %i.blh, <16 x float> %i.blj, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec435 = fmul <32 x float> %i.blk, splat (float 2.500000e-01)
  store <32 x float> %interleaved.vec435, ptr %i.aha, align 16, !tbaa !473
  %i.bll = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.biu
  %i.blm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.biv
  %i.bln = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.biw
  %i.blo = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bix
  %i.blp = load float, ptr %i.bll, align 8, !tbaa !473
  %i.blq = load float, ptr %i.blm, align 8, !tbaa !473
  %i.blr = load float, ptr %i.bln, align 8, !tbaa !473
  %i.bls = load float, ptr %i.blo, align 8, !tbaa !473
  %i.blt = insertelement <4 x float> poison, float %i.blp, i64 0
  %i.blu = insertelement <4 x float> %i.blt, float %i.blq, i64 1
  %i.blv = insertelement <4 x float> %i.blu, float %i.blr, i64 2
  %i.blw = insertelement <4 x float> %i.blv, float %i.bls, i64 3
  %i.blx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bjk
  %i.bly = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bjl
  %i.blz = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bjm
  %i.bma = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bjn
  %i.bmb = load float, ptr %i.blx, align 4, !tbaa !473
  %i.bmc = load float, ptr %i.bly, align 4, !tbaa !473
  %i.bmd = load float, ptr %i.blz, align 4, !tbaa !473
  %i.bme = load float, ptr %i.bma, align 4, !tbaa !473
  %i.bmf = insertelement <4 x float> poison, float %i.bmb, i64 0
  %i.bmg = insertelement <4 x float> %i.bmf, float %i.bmc, i64 1
  %i.bmh = insertelement <4 x float> %i.bmg, float %i.bmd, i64 2
  %i.bmi = insertelement <4 x float> %i.bmh, float %i.bme, i64 3
  %i.bmj = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bka
  %i.bmk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bkb
  %i.bml = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bkc
  %i.bmm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bkd
  %i.bmn = load float, ptr %i.bmj, align 8, !tbaa !473
  %i.bmo = load float, ptr %i.bmk, align 8, !tbaa !473
  %i.bmp = load float, ptr %i.bml, align 8, !tbaa !473
  %i.bmq = load float, ptr %i.bmm, align 8, !tbaa !473
  %i.bmr = insertelement <4 x float> poison, float %i.bmn, i64 0
  %i.bms = insertelement <4 x float> %i.bmr, float %i.bmo, i64 1
  %i.bmt = insertelement <4 x float> %i.bms, float %i.bmp, i64 2
  %i.bmu = insertelement <4 x float> %i.bmt, float %i.bmq, i64 3
  %i.bmv = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bkq
  %i.bmw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bkr
  %i.bmx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bks
  %i.bmy = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bkt
  %i.bmz = load float, ptr %i.bmv, align 4, !tbaa !473
  %i.bna = load float, ptr %i.bmw, align 4, !tbaa !473
  %i.bnb = load float, ptr %i.bmx, align 4, !tbaa !473
  %i.bnc = load float, ptr %i.bmy, align 4, !tbaa !473
  %i.bnd = insertelement <4 x float> poison, float %i.bmz, i64 0
  %i.bne = insertelement <4 x float> %i.bnd, float %i.bna, i64 1
  %i.bnf = insertelement <4 x float> %i.bne, float %i.bnb, i64 2
  %i.bng = insertelement <4 x float> %i.bnf, float %i.bnc, i64 3
  %32 = fadd <4 x float> %i.ahm, %i.ahy
  %33 = fadd <4 x float> %i.alv, %i.amh
  %34 = fadd <4 x float> %i.aqd, %i.aqp
  %35 = fadd <4 x float> %i.aul, %i.aux
  %36 = fadd <4 x float> %32, %i.aik
  %37 = fadd <4 x float> %33, %i.amt
  %38 = fadd <4 x float> %34, %i.arb
  %39 = fadd <4 x float> %35, %i.avj
  %40 = fadd <4 x float> %36, %i.aiw
  %41 = fadd <4 x float> %37, %i.anf
  %42 = shufflevector <4 x float> %40, <4 x float> %41, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %43 = fadd <4 x float> %38, %i.arn
  %44 = fadd <4 x float> %39, %i.avv
  %i.bnh = shufflevector <4 x float> %43, <4 x float> %44, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bni = shufflevector <8 x float> %42, <8 x float> %i.bnh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %45 = fadd <4 x float> %i.ayt, %i.azf
  %46 = fadd <4 x float> %i.bdb, %i.bdn
  %47 = fadd <4 x float> %i.bhj, %i.bhv
  %48 = fadd <4 x float> %i.blw, %i.bmi
  %49 = fadd <4 x float> %45, %i.azr
  %50 = fadd <4 x float> %46, %i.bdz
  %51 = fadd <4 x float> %47, %i.bih
  %52 = fadd <4 x float> %48, %i.bmu
  %53 = fadd <4 x float> %49, %i.bad
  %54 = fadd <4 x float> %50, %i.bel
  %55 = shufflevector <4 x float> %53, <4 x float> %54, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %56 = fadd <4 x float> %51, %i.bit
  %57 = fadd <4 x float> %52, %i.bng
  %i.bnj = shufflevector <4 x float> %56, <4 x float> %57, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bnk = shufflevector <8 x float> %55, <8 x float> %i.bnj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bnl = shufflevector <16 x float> %i.bni, <16 x float> %i.bnk, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec436 = fmul <32 x float> %i.bnl, splat (float 2.500000e-01)
  store <32 x float> %interleaved.vec436, ptr %i.aix, align 16, !tbaa !473
  %index.next437 = add nuw i64 %index434, 4       ; 2 uses
  %i.bnm = icmp eq i64 %index.next437, 8
  br i1 %i.bnm, label %middle.block438, label %vector.body433, !llvm.loop !594

middle.block438:                                  ; preds = %vector.body433
  %i.bnn = call fastcc noundef i32 @_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfiS2_iPA2_KtS5_(ptr noundef %0, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.s, i32 noundef 8, ptr noundef %i.j, i32 noundef %.1238324.us, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE7UVDC_HT, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE7UVAC_HT) ; 2 uses
  %i.bno = call fastcc noundef i32 @_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfiS2_iPA2_KtS5_(ptr noundef %0, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.t, i32 noundef 8, ptr noundef %i.j, i32 noundef %.1242323.us, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE7UVDC_HT, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE7UVAC_HT) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #35
  %i.bnp = add nuw nsw i32 %.0245322.us, 16       ; 2 uses
  %i.bnq = icmp slt i32 %i.bnp, %1
  br i1 %i.bnq, label %bb.h, label %._crit_edge.us332, !llvm.loop !595

._crit_edge.us332:                                ; preds = %middle.block438
  %i.bnr = add nuw nsw i32 %.0247328.us, 16       ; 2 uses
  %i.bns = icmp slt i32 %i.bnr, %2
  %indvars.iv.next390 = add i32 %indvars.iv389, 16
  br i1 %i.bns, label %.preheader278.us, label %.loopexit, !llvm.loop !596

.loopexit:                                        ; preds = %._crit_edge.us, %._crit_edge.us332, %.preheader278.lr.ph, %.preheader280.lr.ph, %.preheader281, %.preheader279
  %i.bnt = load i32, ptr %i.o, align 4, !tbaa !13 ; 3 uses
  %i.bnu = icmp sgt i32 %i.bnt, 0
  br i1 %i.bnu, label %.lr.ph.i.preheader, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit

.lr.ph.i.preheader:                               ; preds = %.loopexit
  %i.bnv = sub nsw i32 17, %i.bnt
  %i.bnw = shl i32 127, %i.bnv
  %i.bnx = load i32, ptr %i.n, align 4, !tbaa !13
  %i.bny = or i32 %i.bnw, %i.bnx
  %i.bnz = add nuw nsw i32 %i.bnt, 7
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.m
  %.02.i = phi i32 [ %i.boe, %bb.m ], [ %i.bny, %.lr.ph.i.preheader ] ; 3 uses
  %.0181.i = phi i32 [ %i.bof, %bb.m ], [ %i.bnz, %.lr.ph.i.preheader ] ; 2 uses
  %i.boa = lshr i32 %.02.i, 16
  %i.bob = trunc i32 %i.boa to i8
  %.val20.i = load ptr, ptr %0, align 8, !tbaa !503
  %.val21.i = load ptr, ptr %i.qi, align 8, !tbaa !505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.bob, ptr %i.d, align 1, !tbaa !26
  call void %.val20.i(ptr noundef %.val21.i, ptr noundef nonnull %i.d, i32 noundef 1), !inline_history !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.boc = and i32 %.02.i, 16711680
  %i.bod = icmp eq i32 %i.boc, 16711680
  br i1 %i.bod, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i
  %.val.i = load ptr, ptr %0, align 8, !tbaa !503
  %.val19.i = load ptr, ptr %i.qi, align 8, !tbaa !505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1, !tbaa !26
  call void %.val.i(ptr noundef %.val19.i, ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %i.boe = shl i32 %.02.i, 8
  %i.bof = add nsw i32 %.0181.i, -8
  %i.bog = icmp sgt i32 %.0181.i, 15
  br i1 %i.bog, label %.lr.ph.i, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit, !llvm.loop !598

_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit: ; preds = %bb.m, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #35
  %.val267 = load ptr, ptr %0, align 8, !tbaa !503
  %.val268 = load ptr, ptr %i.qi, align 8, !tbaa !505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 -1, ptr %i.b, align 1, !tbaa !26
  call void %.val267(ptr noundef %.val268, ptr noundef nonnull %i.b, i32 noundef 1), !inline_history !588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %0, align 8, !tbaa !503
  %.val266 = load ptr, ptr %i.qi, align 8, !tbaa !505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 -39, ptr %i.a, align 1, !tbaa !26
  call void %.val(ptr noundef %.val266, ptr noundef nonnull %i.a, i32 noundef 1), !inline_history !588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit
  %.0 = phi i32 [ 1, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #35
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #27

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfiS2_iPA2_KtS5_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef range(i32 8, 17) %4, ptr nofree noundef nonnull readonly captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8) unnamed_addr #4 {
.lver.check:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca i8, align 1                       ; 4 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %i.q = alloca [64 x i32], align 16              ; 67 uses
  %i.r = load i16, ptr %8, align 2, !tbaa !32     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !32   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 960
  %i.v = load i16, ptr %i.u, align 2, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 962
  %i.x = load i16, ptr %i.w, align 2, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #35
  %i.y = shl nuw nsw i32 %4, 3
  %i.z = zext nneg i32 %4 to i64                  ; 9 uses
  %i.aa = zext nneg i32 %i.y to i64
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.lver.check
  %indvars.iv.lver.orig = phi i64 [ 0, %.lver.check ], [ %indvars.iv.next.lver.orig, %bb.a ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.lver.orig ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 12 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 20 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 28 ; 2 uses
  %i.aj = load float, ptr %i.ab, align 4, !tbaa !473 ; 2 uses
  %i.ak = load float, ptr %i.ai, align 4, !tbaa !473 ; 2 uses
  %i.al = fadd float %i.aj, %i.ak                 ; 2 uses
  %i.am = load <2 x float>, ptr %i.ac, align 4, !tbaa !473
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.ao = load float, ptr %i.af, align 4, !tbaa !473 ; 2 uses
  %i.ap = load float, ptr %i.ae, align 4, !tbaa !473 ; 2 uses
  %i.aq = load <2 x float>, ptr %i.ag, align 4, !tbaa !473 ; 3 uses
  %foldExtExtBinop = fadd <2 x float> %i.an, %i.aq
  %i.ar = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %foldExtExtBinop385 = fadd <2 x float> %i.an, %i.aq
  %i.as = extractelement <2 x float> %foldExtExtBinop385, i64 0 ; 2 uses
  %i.at = fsub <2 x float> %i.an, %i.aq           ; 3 uses
  %i.au = fadd float %i.ap, %i.ao                 ; 2 uses
  %i.av = fsub float %i.aj, %i.ak                 ; 3 uses
  %i.aw = fsub float %i.ap, %i.ao
  %i.ax = fadd float %i.au, %i.al                 ; 2 uses
  %i.ay = fsub float %i.al, %i.au                 ; 3 uses
  %i.az = fadd float %i.as, %i.ar                 ; 2 uses
  %i.ba = fsub float %i.ar, %i.as
  %i.bb = fadd float %i.az, %i.ax
  %i.bc = fsub float %i.ax, %i.az
  %i.bd = fadd float %i.ba, %i.ay
  %i.be = fmul float %i.bd, f0x3F3504F3           ; 2 uses
  %i.bf = fadd float %i.ay, %i.be
  %i.bg = fsub float %i.ay, %i.be
  %shift = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop387 = fadd <2 x float> %i.at, %shift
  %i.bh = extractelement <2 x float> %foldExtExtBinop387, i64 0
  %i.bi = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.av, i64 1
  %i.bk = fadd <2 x float> %i.at, %i.bj           ; 3 uses
  %shift389 = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop390 = fsub <2 x float> %i.bk, %shift389
  %i.bl = extractelement <2 x float> %foldExtExtBinop390, i64 0
  %i.bm = fmul float %i.bl, f0x3EC3EF15
  %i.bn = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> <float f0x3F0A8BD4, float f0x3FA73D75>, <2 x float> %i.bo) ; 2 uses
  %i.bq = fmul float %i.bh, f0x3F3504F3           ; 2 uses
  %i.br = fadd float %i.av, %i.bq                 ; 2 uses
  %i.bs = fsub float %i.av, %i.bq                 ; 2 uses
  %i.bt = extractelement <2 x float> %i.bp, i64 0 ; 2 uses
  %i.bu = fadd float %i.bs, %i.bt
  store float %i.bu, ptr %i.ag, align 4, !tbaa !473
  %i.bv = fsub float %i.bs, %i.bt
  store float %i.bv, ptr %i.ae, align 4, !tbaa !473
  %i.bw = extractelement <2 x float> %i.bp, i64 1 ; 2 uses
  %i.bx = fadd float %i.br, %i.bw
  store float %i.bx, ptr %i.ac, align 4, !tbaa !473
  %i.by = fsub float %i.br, %i.bw
  store float %i.by, ptr %i.ai, align 4, !tbaa !473
  store float %i.bb, ptr %i.ab, align 4, !tbaa !473
  store float %i.bf, ptr %i.ad, align 4, !tbaa !473
  store float %i.bc, ptr %i.af, align 4, !tbaa !473
  store float %i.bg, ptr %i.ah, align 4, !tbaa !473
  %indvars.iv.next.lver.orig = add nuw nsw i64 %indvars.iv.lver.orig, %i.z ; 2 uses
  %i.bz = icmp samesign ult i64 %indvars.iv.next.lver.orig, %i.aa
  br i1 %i.bz, label %bb.a, label %vector.body, !llvm.loop !599

vector.body:                                      ; preds = %bb.a
end_hunk_0
