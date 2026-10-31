Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_channelmixerrgb?download=true
inline.NumInlined: 403
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 99
begin_hunk_0_@process:bb.a
  %i.bcy = load double, ptr %i.bcx, align 8, !tbaa !105, !noalias !343
  %i.bcz = fmul reassoc nsz arcp contract afn double %i.bcy, %i.bbx
  %i.bda = load double, ptr %i.ajd, align 8, !tbaa !105, !noalias !343
  %i.bdb = fsub reassoc nsz arcp contract afn double %i.bda, %i.bcz ; 2 uses
  store double %i.bdb, ptr %i.ajd, align 8, !tbaa !105, !noalias !343
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.pq, i64 496
  %i.bdd = load double, ptr %i.bdc, align 16, !tbaa !105, !noalias !343
  %i.bde = fmul reassoc nsz arcp contract afn double %i.bdd, %i.bbx
  %i.bdf = load double, ptr %i.akn, align 16, !tbaa !105, !noalias !343
  %i.bdg = fsub reassoc nsz arcp contract afn double %i.bdf, %i.bde ; 2 uses
  store double %i.bdg, ptr %i.akn, align 16, !tbaa !105, !noalias !343
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.pq, i64 568
  %i.bdi = load double, ptr %i.bdh, align 8, !tbaa !105, !noalias !343
  %i.bdj = fmul reassoc nsz arcp contract afn double %i.bdi, %i.bbx
  %i.bdk = fsub reassoc nsz arcp contract afn double %i.bbp, %i.bdj ; 2 uses
  store double %i.bdk, ptr %i.alx, align 8, !tbaa !105, !noalias !343
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.pq, i64 560
  %i.bdm = load double, ptr %i.bdl, align 16, !tbaa !105, !noalias !343
  %i.bdn = fdiv reassoc nsz arcp contract afn double %i.bdk, %i.bdm ; 8 uses
  store double %i.bdn, ptr %i.alx, align 8, !tbaa !105, !noalias !343
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.pq, i64 56
  %i.bdp = load double, ptr %i.bdo, align 8, !tbaa !105, !noalias !343
  %i.bdq = fmul reassoc nsz arcp contract afn double %i.bdp, %i.bdn
  %i.bdr = fsub reassoc nsz arcp contract afn double %i.bcc, %i.bdq ; 2 uses
  store double %i.bdr, ptr %i.pr, align 64, !tbaa !105, !noalias !343
  %i.bds = getelementptr inbounds nuw i8, ptr %i.pq, i64 128
  %i.bdt = load double, ptr %i.bds, align 64, !tbaa !105, !noalias !343
  %i.bdu = fmul reassoc nsz arcp contract afn double %i.bdt, %i.bdn
  %i.bdv = fsub reassoc nsz arcp contract afn double %i.bch, %i.bdu ; 2 uses
  store double %i.bdv, ptr %i.adp, align 8, !tbaa !105, !noalias !343
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.pq, i64 200
  %i.bdx = load double, ptr %i.bdw, align 8, !tbaa !105, !noalias !343
  %i.bdy = fmul reassoc nsz arcp contract afn double %i.bdx, %i.bdn
  %i.bdz = fsub reassoc nsz arcp contract afn double %i.bcm, %i.bdy ; 2 uses
  store double %i.bdz, ptr %i.aez, align 16, !tbaa !105, !noalias !343
  %i.bea = getelementptr inbounds nuw i8, ptr %i.pq, i64 272
  %i.beb = load double, ptr %i.bea, align 16, !tbaa !105, !noalias !343
  %i.bec = fmul reassoc nsz arcp contract afn double %i.beb, %i.bdn
  %i.bed = fsub reassoc nsz arcp contract afn double %i.bcr, %i.bec ; 2 uses
  store double %i.bed, ptr %i.agj, align 8, !tbaa !105, !noalias !343
  %i.bee = getelementptr inbounds nuw i8, ptr %i.pq, i64 344
  %i.bef = load double, ptr %i.bee, align 8, !tbaa !105, !noalias !343
  %i.beg = fmul reassoc nsz arcp contract afn double %i.bef, %i.bdn
  %i.beh = fsub reassoc nsz arcp contract afn double %i.bcw, %i.beg ; 2 uses
  store double %i.beh, ptr %i.aht, align 32, !tbaa !105, !noalias !343
  %i.bei = getelementptr inbounds nuw i8, ptr %i.pq, i64 416
  %i.bej = load double, ptr %i.bei, align 32, !tbaa !105, !noalias !343
  %i.bek = fmul reassoc nsz arcp contract afn double %i.bej, %i.bdn
  %i.bel = fsub reassoc nsz arcp contract afn double %i.bdb, %i.bek ; 2 uses
  store double %i.bel, ptr %i.ajd, align 8, !tbaa !105, !noalias !343
  %i.bem = getelementptr inbounds nuw i8, ptr %i.pq, i64 488
  %i.ben = load double, ptr %i.bem, align 8, !tbaa !105, !noalias !343
  %i.beo = fmul reassoc nsz arcp contract afn double %i.ben, %i.bdn
  %i.bep = fsub reassoc nsz arcp contract afn double %i.bdg, %i.beo ; 2 uses
  store double %i.bep, ptr %i.akn, align 16, !tbaa !105, !noalias !343
  %i.beq = getelementptr inbounds nuw i8, ptr %i.pq, i64 480
  %i.ber = load double, ptr %i.beq, align 32, !tbaa !105, !noalias !343
  %i.bes = fdiv reassoc nsz arcp contract afn double %i.bep, %i.ber ; 7 uses
  store double %i.bes, ptr %i.akn, align 16, !tbaa !105, !noalias !343
  %i.bet = getelementptr inbounds nuw i8, ptr %i.pq, i64 48
  %i.beu = load double, ptr %i.bet, align 16, !tbaa !105, !noalias !343
  %i.bev = fmul reassoc nsz arcp contract afn double %i.beu, %i.bes
  %i.bew = fsub reassoc nsz arcp contract afn double %i.bdr, %i.bev ; 2 uses
  store double %i.bew, ptr %i.pr, align 64, !tbaa !105, !noalias !343
  %i.bex = getelementptr inbounds nuw i8, ptr %i.pq, i64 120
  %i.bey = load double, ptr %i.bex, align 8, !tbaa !105, !noalias !343
  %i.bez = fmul reassoc nsz arcp contract afn double %i.bey, %i.bes
  %i.bfa = fsub reassoc nsz arcp contract afn double %i.bdv, %i.bez ; 2 uses
  store double %i.bfa, ptr %i.adp, align 8, !tbaa !105, !noalias !343
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.pq, i64 192
  %i.bfc = load double, ptr %i.bfb, align 64, !tbaa !105, !noalias !343
  %i.bfd = fmul reassoc nsz arcp contract afn double %i.bfc, %i.bes
  %i.bfe = fsub reassoc nsz arcp contract afn double %i.bdz, %i.bfd ; 2 uses
  store double %i.bfe, ptr %i.aez, align 16, !tbaa !105, !noalias !343
  %i.bff = getelementptr inbounds nuw i8, ptr %i.pq, i64 264
  %i.bfg = load double, ptr %i.bff, align 8, !tbaa !105, !noalias !343
  %i.bfh = fmul reassoc nsz arcp contract afn double %i.bfg, %i.bes
  %i.bfi = fsub reassoc nsz arcp contract afn double %i.bed, %i.bfh ; 2 uses
  store double %i.bfi, ptr %i.agj, align 8, !tbaa !105, !noalias !343
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.pq, i64 336
  %i.bfk = load double, ptr %i.bfj, align 16, !tbaa !105, !noalias !343
  %i.bfl = fmul reassoc nsz arcp contract afn double %i.bfk, %i.bes
  %i.bfm = fsub reassoc nsz arcp contract afn double %i.beh, %i.bfl ; 2 uses
  store double %i.bfm, ptr %i.aht, align 32, !tbaa !105, !noalias !343
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.pq, i64 408
  %i.bfo = load double, ptr %i.bfn, align 8, !tbaa !105, !noalias !343
  %i.bfp = fmul reassoc nsz arcp contract afn double %i.bfo, %i.bes
  %i.bfq = fsub reassoc nsz arcp contract afn double %i.bel, %i.bfp ; 2 uses
  store double %i.bfq, ptr %i.ajd, align 8, !tbaa !105, !noalias !343
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.pq, i64 400
  %i.bfs = load double, ptr %i.bfr, align 16, !tbaa !105, !noalias !343
  %i.bft = fdiv reassoc nsz arcp contract afn double %i.bfq, %i.bfs ; 6 uses
  store double %i.bft, ptr %i.ajd, align 8, !tbaa !105, !noalias !343
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.pq, i64 40
  %i.bfv = load double, ptr %i.bfu, align 8, !tbaa !105, !noalias !343
  %i.bfw = fmul reassoc nsz arcp contract afn double %i.bfv, %i.bft
  %i.bfx = fsub reassoc nsz arcp contract afn double %i.bew, %i.bfw ; 2 uses
  store double %i.bfx, ptr %i.pr, align 64, !tbaa !105, !noalias !343
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.pq, i64 112
  %i.bfz = load double, ptr %i.bfy, align 16, !tbaa !105, !noalias !343
  %i.bga = fmul reassoc nsz arcp contract afn double %i.bfz, %i.bft
  %i.bgb = fsub reassoc nsz arcp contract afn double %i.bfa, %i.bga ; 2 uses
  store double %i.bgb, ptr %i.adp, align 8, !tbaa !105, !noalias !343
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.pq, i64 184
  %i.bgd = load double, ptr %i.bgc, align 8, !tbaa !105, !noalias !343
  %i.bge = fmul reassoc nsz arcp contract afn double %i.bgd, %i.bft
  %i.bgf = fsub reassoc nsz arcp contract afn double %i.bfe, %i.bge ; 2 uses
  store double %i.bgf, ptr %i.aez, align 16, !tbaa !105, !noalias !343
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.pq, i64 256
  %i.bgh = load double, ptr %i.bgg, align 64, !tbaa !105, !noalias !343
  %i.bgi = fmul reassoc nsz arcp contract afn double %i.bgh, %i.bft
  %i.bgj = fsub reassoc nsz arcp contract afn double %i.bfi, %i.bgi ; 2 uses
  store double %i.bgj, ptr %i.agj, align 8, !tbaa !105, !noalias !343
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.pq, i64 328
  %i.bgl = load double, ptr %i.bgk, align 8, !tbaa !105, !noalias !343
  %i.bgm = fmul reassoc nsz arcp contract afn double %i.bgl, %i.bft
  %i.bgn = fsub reassoc nsz arcp contract afn double %i.bfm, %i.bgm ; 2 uses
  store double %i.bgn, ptr %i.aht, align 32, !tbaa !105, !noalias !343
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.pq, i64 320
  %i.bgp = load double, ptr %i.bgo, align 64, !tbaa !105, !noalias !343
  %i.bgq = fdiv reassoc nsz arcp contract afn double %i.bgn, %i.bgp ; 5 uses
  store double %i.bgq, ptr %i.aht, align 32, !tbaa !105, !noalias !343
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.pq, i64 32
  %i.bgs = load double, ptr %i.bgr, align 32, !tbaa !105, !noalias !343
  %i.bgt = fmul reassoc nsz arcp contract afn double %i.bgs, %i.bgq
  %i.bgu = fsub reassoc nsz arcp contract afn double %i.bfx, %i.bgt ; 2 uses
  store double %i.bgu, ptr %i.pr, align 64, !tbaa !105, !noalias !343
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.pq, i64 104
  %i.bgw = load double, ptr %i.bgv, align 8, !tbaa !105, !noalias !343
  %i.bgx = fmul reassoc nsz arcp contract afn double %i.bgw, %i.bgq
  %i.bgy = fsub reassoc nsz arcp contract afn double %i.bgb, %i.bgx ; 2 uses
  store double %i.bgy, ptr %i.adp, align 8, !tbaa !105, !noalias !343
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.pq, i64 176
  %i.bha = load double, ptr %i.bgz, align 16, !tbaa !105, !noalias !343
  %i.bhb = fmul reassoc nsz arcp contract afn double %i.bha, %i.bgq
  %i.bhc = fsub reassoc nsz arcp contract afn double %i.bgf, %i.bhb ; 2 uses
  store double %i.bhc, ptr %i.aez, align 16, !tbaa !105, !noalias !343
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.pq, i64 248
  %i.bhe = load double, ptr %i.bhd, align 8, !tbaa !105, !noalias !343
  %i.bhf = fmul reassoc nsz arcp contract afn double %i.bhe, %i.bgq
  %i.bhg = fsub reassoc nsz arcp contract afn double %i.bgj, %i.bhf ; 2 uses
  store double %i.bhg, ptr %i.agj, align 8, !tbaa !105, !noalias !343
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.pq, i64 240
  %i.bhi = load double, ptr %i.bhh, align 16, !tbaa !105, !noalias !343
  %i.bhj = fdiv reassoc nsz arcp contract afn double %i.bhg, %i.bhi ; 4 uses
  store double %i.bhj, ptr %i.agj, align 8, !tbaa !105, !noalias !343
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.pq, i64 24
  %i.bhl = load double, ptr %i.bhk, align 8, !tbaa !105, !noalias !343
  %i.bhm = fmul reassoc nsz arcp contract afn double %i.bhl, %i.bhj
  %i.bhn = fsub reassoc nsz arcp contract afn double %i.bgu, %i.bhm ; 2 uses
  store double %i.bhn, ptr %i.pr, align 64, !tbaa !105, !noalias !343
  %i.bho = getelementptr inbounds nuw i8, ptr %i.pq, i64 96
  %i.bhp = load double, ptr %i.bho, align 32, !tbaa !105, !noalias !343
  %i.bhq = fmul reassoc nsz arcp contract afn double %i.bhp, %i.bhj
  %i.bhr = fsub reassoc nsz arcp contract afn double %i.bgy, %i.bhq ; 2 uses
  store double %i.bhr, ptr %i.adp, align 8, !tbaa !105, !noalias !343
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.pq, i64 168
  %i.bht = load double, ptr %i.bhs, align 8, !tbaa !105, !noalias !343
  %i.bhu = fmul reassoc nsz arcp contract afn double %i.bht, %i.bhj
  %i.bhv = fsub reassoc nsz arcp contract afn double %i.bhc, %i.bhu ; 2 uses
  store double %i.bhv, ptr %i.aez, align 16, !tbaa !105, !noalias !343
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.pq, i64 160
  %i.bhx = load double, ptr %i.bhw, align 32, !tbaa !105, !noalias !343
  %i.bhy = fdiv reassoc nsz arcp contract afn double %i.bhv, %i.bhx ; 3 uses
  store double %i.bhy, ptr %i.aez, align 16, !tbaa !105, !noalias !343
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.bia = load double, ptr %i.bhz, align 16, !tbaa !105, !noalias !343
  %i.bib = fmul reassoc nsz arcp contract afn double %i.bia, %i.bhy
  %i.bic = fsub reassoc nsz arcp contract afn double %i.bhn, %i.bib ; 2 uses
  store double %i.bic, ptr %i.pr, align 64, !tbaa !105, !noalias !343
  %i.bid = getelementptr inbounds nuw i8, ptr %i.pq, i64 88
  %i.bie = load double, ptr %i.bid, align 8, !tbaa !105, !noalias !343
  %i.bif = fmul reassoc nsz arcp contract afn double %i.bie, %i.bhy
  %i.big = fsub reassoc nsz arcp contract afn double %i.bhr, %i.bif ; 2 uses
  store double %i.big, ptr %i.adp, align 8, !tbaa !105, !noalias !343
  %i.bih = getelementptr inbounds nuw i8, ptr %i.pq, i64 80
  %i.bii = load double, ptr %i.bih, align 16, !tbaa !105, !noalias !343
  %i.bij = fdiv reassoc nsz arcp contract afn double %i.big, %i.bii ; 2 uses
  store double %i.bij, ptr %i.adp, align 8, !tbaa !105, !noalias !343
  %i.bik = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.bil = load double, ptr %i.bik, align 8, !tbaa !105, !noalias !343
  %i.bim = fmul reassoc nsz arcp contract afn double %i.bil, %i.bij
  %i.bin = fsub reassoc nsz arcp contract afn double %i.bic, %i.bim ; 2 uses
  store double %i.bin, ptr %i.pr, align 64, !tbaa !105, !noalias !343
  %i.bio = load double, ptr %i.pq, align 64, !tbaa !105, !noalias !343
  %i.bip = fdiv reassoc nsz arcp contract afn double %i.bin, %i.bio
  store double %i.bip, ptr %i.pr, align 64, !tbaa !105, !noalias !343
  br label %gauss_solve.exit.i.i

gauss_solve.exit.i.i:                             ; preds = %._crit_edge.i.i.i.i, %gauss_make_triangular.exit.i.i.i
  tail call void @free(ptr noundef nonnull %i.ano) #31, !noalias !343
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(72) %i.ko, ptr noundef nonnull align 64 dereferenceable(72) %i.pr, i64 72, i1 false), !tbaa !105, !noalias !361
  tail call void @free(ptr noundef %i.pr) #31, !noalias !343
  tail call void @free(ptr noundef nonnull %i.pq) #31, !noalias !343
  br label %pseudo_solve_gaussian.exit.i

pseudo_solve_gaussian.exit.i:                     ; preds = %gauss_solve.exit.i.i, %._crit_edge241.thread.i
  %i.biq = getelementptr inbounds nuw i8, ptr %i.aa, i64 576 ; 3 uses
  %i.bir = getelementptr inbounds nuw i8, ptr %i.aa, i64 580 ; 2 uses
  %i.bis = load <2 x double>, ptr %i.ko, align 64, !tbaa !105, !noalias !337
  %i.bit = fptrunc <2 x double> %i.bis to <2 x float>
  store <2 x float> %i.bit, ptr %i.biq, align 64, !tbaa !12, !noalias !337
  %i.biu = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.biv = load double, ptr %i.biu, align 16, !tbaa !105, !noalias !337
  %i.biw = fptrunc reassoc nsz arcp contract afn double %i.biv to float
  %i.bix = getelementptr inbounds nuw i8, ptr %i.aa, i64 584 ; 3 uses
  store float %i.biw, ptr %i.bix, align 8, !tbaa !12, !noalias !337
  %i.biy = getelementptr inbounds nuw i8, ptr %i.aa, i64 588
  store float 0.000000e+00, ptr %i.biy, align 4, !tbaa !12, !noalias !337
  %i.biz = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.bja = getelementptr inbounds nuw i8, ptr %i.aa, i64 592 ; 3 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.aa, i64 596 ; 2 uses
  %i.bjc = load <2 x double>, ptr %i.biz, align 8, !tbaa !105, !noalias !337
  %i.bjd = fptrunc <2 x double> %i.bjc to <2 x float>
  store <2 x float> %i.bjd, ptr %i.bja, align 16, !tbaa !12, !noalias !337
  %i.bje = getelementptr inbounds nuw i8, ptr %i.ko, i64 40
  %i.bjf = load double, ptr %i.bje, align 8, !tbaa !105, !noalias !337
  %i.bjg = fptrunc reassoc nsz arcp contract afn double %i.bjf to float
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.aa, i64 600 ; 3 uses
  store float %i.bjg, ptr %i.bjh, align 8, !tbaa !12, !noalias !337
  %i.bji = getelementptr inbounds nuw i8, ptr %i.aa, i64 604
  store float 0.000000e+00, ptr %i.bji, align 4, !tbaa !12, !noalias !337
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.ko, i64 48
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.aa, i64 608 ; 3 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.aa, i64 612 ; 2 uses
  %i.bjm = load <2 x double>, ptr %i.bjj, align 16, !tbaa !105, !noalias !337
  %i.bjn = fptrunc <2 x double> %i.bjm to <2 x float>
  store <2 x float> %i.bjn, ptr %i.bjk, align 32, !tbaa !12, !noalias !337
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.ko, i64 64
  %i.bjp = load double, ptr %i.bjo, align 64, !tbaa !105, !noalias !337
  %i.bjq = fptrunc reassoc nsz arcp contract afn double %i.bjp to float
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.aa, i64 616 ; 3 uses
  store float %i.bjq, ptr %i.bjr, align 8, !tbaa !12, !noalias !337
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.aa, i64 620
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bjs, i8 0, i64 20, i1 false), !noalias !337
  tail call void @free(ptr noundef %i.ko) #31, !noalias !337
  tail call void @free(ptr noundef %i.kt) #31, !noalias !337
  %i.bjt = load ptr, ptr %i.ay, align 8, !tbaa !100, !noalias !337 ; 2 uses
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 48
  %i.bjv = load i64, ptr %i.bju, align 16, !tbaa !101, !noalias !337 ; 2 uses
  %.not249.i = icmp eq i64 %i.bjv, 0
  br i1 %.not249.i, label %._crit_edge246.i, label %.lr.ph245.i.preheader

.lr.ph245.i.preheader:                            ; preds = %pseudo_solve_gaussian.exit.i
  %i.bjw = icmp ult i32 %i.ax, 3
  %i.bjx = zext nneg i32 %i.ax to i64
  %switch.gep1513 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.52, i64 %i.bjx
  %i.bjy = zext nneg i32 %i.ax to i64
  %switch.gep1515 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.53, i64 %i.bjy
  %i.bjz = zext nneg i32 %i.ax to i64
  %switch.gep1517 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.54, i64 %i.bjz
  %i.bka = zext nneg i32 %i.ax to i64
  %switch.gep1519 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.55, i64 %i.bka
  %i.bkb = zext nneg i32 %i.ax to i64
  %switch.gep1521 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.56, i64 %i.bkb
  %i.bkc = zext nneg i32 %i.ax to i64
  %switch.gep1523 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.57, i64 %i.bkc
  %i.bkd = zext nneg i32 %i.ax to i64
  %switch.gep1525 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.58, i64 %i.bkd
  %i.bke = zext nneg i32 %i.ax to i64
  %switch.gep1527 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.59, i64 %i.bke
  %i.bkf = zext nneg i32 %i.ax to i64
  %switch.gep1529 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.60, i64 %i.bkf
  br label %.lr.ph245.i

bb.u:                                             ; preds = %bb.as, %.lr.ph240.i
  %.0262238.i = phi i64 [ 0, %.lr.ph240.i ], [ %i.bpr, %bb.as ] ; 7 uses
  %.idx274.i = shl i64 %.0262238.i, 4
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx274.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31, !noalias !337
  call fastcc void @convert_any_XYZ_to_LMS(ptr noundef nonnull %i.bkg, ptr noundef nonnull %i.h, i32 noundef %i.ax), !noalias !337
  %i.bkh = getelementptr inbounds nuw [48 x i8], ptr %i.ku, i64 %.0262238.i ; 3 uses
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bkh, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14278.i)
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bkh, i64 116
  %i.bkk = load float, ptr %i.bkj, align 4, !tbaa !12, !noalias !337 ; 9 uses
  %i.bkl = load float, ptr %i.bki, align 4, !tbaa !12, !noalias !337
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bkh, i64 120
  %i.bkn = load float, ptr %i.bkm, align 4, !tbaa !12, !noalias !337 ; 9 uses
  %i.bko = fmul reassoc nsz arcp contract afn float %i.bkk, 2.000000e-03
  %i.bkp = fmul reassoc nsz arcp contract afn float %i.bkl, 8.620690e-03
  %i.bkq = fadd reassoc nsz arcp contract afn float %i.bkp, f0x3E0D3DCB ; 7 uses
  %i.bkr = fmul reassoc nsz arcp contract afn float %i.bkn, 5.000000e-03
  %i.bks = fadd reassoc nsz arcp contract afn float %i.bkq, %i.bko ; 5 uses
  %i.bkt = fcmp reassoc nsz arcp contract afn ogt float %i.bks, f0x3E53DCB1
  %i.bku = fmul reassoc nsz arcp contract afn float %i.bks, %i.bks
  %i.bkv = fmul reassoc nsz arcp contract afn float %i.bku, %i.bks
  %i.bkw = fmul reassoc nsz arcp contract afn float %i.bks, f0x3E038026
  %i.bkx = fadd reassoc nsz arcp contract afn float %i.bkw, f0xBC911AA6
  %i.bky = select reassoc nsz arcp contract afn i1 %i.bkt, float %i.bkv, float %i.bkx ; 4 uses
  %i.bkz = fcmp reassoc nsz arcp contract afn ogt float %i.bkq, f0x3E53DCB1
  %i.bla = fmul reassoc nsz arcp contract afn float %i.bkq, %i.bkq
  %i.blb = fmul reassoc nsz arcp contract afn float %i.bla, %i.bkq
  %i.blc = fmul reassoc nsz arcp contract afn float %i.bkq, f0x3E038026
  %i.bld = fadd reassoc nsz arcp contract afn float %i.blc, f0xBC911AA6
  %i.ble = select reassoc nsz arcp contract afn i1 %i.bkz, float %i.blb, float %i.bld ; 5 uses
  %i.blf = fsub reassoc nsz arcp contract afn float %i.bkq, %i.bkr ; 5 uses
  %i.blg = fcmp reassoc nsz arcp contract afn ogt float %i.blf, f0x3E53DCB1
  %i.blh = fmul reassoc nsz arcp contract afn float %i.blf, %i.blf
  %i.bli = fmul reassoc nsz arcp contract afn float %i.blh, %i.blf
  %i.blj = fmul reassoc nsz arcp contract afn float %i.blf, f0x3E038026
  %i.blk = fadd reassoc nsz arcp contract afn float %i.blj, f0xBC911AA6
  %i.bll = select reassoc nsz arcp contract afn i1 %i.blg, float %i.bli, float %i.blk ; 4 uses
  %i.blm = fmul reassoc nsz arcp contract afn float %i.bky, 9.642000e-01 ; 2 uses
  %i.bln = fmul reassoc nsz arcp contract afn float %i.bll, f0x3F532CA5 ; 2 uses
  br i1 %i.le, label %switch.lookup1493, label %convert_any_XYZ_to_LMS.exit300.i

switch.lookup1493:                                ; preds = %bb.u
  %switch.load1495 = load float, ptr %switch.gep1494, align 4
  %switch.load1497 = load float, ptr %switch.gep1496, align 4
  %switch.load1499 = load float, ptr %switch.gep1498, align 4
  %switch.load1501 = load float, ptr %switch.gep1500, align 4
  %switch.load1503 = load float, ptr %switch.gep1502, align 4
  %switch.load1505 = load float, ptr %switch.gep1504, align 4
  %switch.load1507 = load float, ptr %switch.gep1506, align 4
  %switch.load1509 = load float, ptr %switch.gep1508, align 4
  %switch.load1511 = load float, ptr %switch.gep1510, align 4
  %i.blo = fmul reassoc nsz arcp contract afn float %switch.load1495, %i.bky
  %i.blp = fmul reassoc nsz arcp contract afn float %switch.load1497, %i.ble
  %i.blq = fadd reassoc nsz arcp contract afn float %i.blp, %i.blo
  %i.blr = fmul reassoc nsz arcp contract afn float %switch.load1499, %i.bll
  %i.bls = fadd reassoc nsz arcp contract afn float %i.blq, %i.blr
  %i.blt = fmul reassoc nsz arcp contract afn float %switch.load1501, %i.bky
  %i.blu = fmul reassoc nsz arcp contract afn float %switch.load1503, %i.ble
  %i.blv = fadd reassoc nsz arcp contract afn float %i.blu, %i.blt
  %i.blw = fmul reassoc nsz arcp contract afn float %switch.load1505, %i.bll
  %i.blx = fadd reassoc nsz arcp contract afn float %i.blv, %i.blw
  %i.bly = fmul reassoc nsz arcp contract afn float %switch.load1507, %i.bky
  %i.blz = fmul reassoc nsz arcp contract afn float %switch.load1509, %i.ble
  %i.bma = fadd reassoc nsz arcp contract afn float %i.blz, %i.bly
  %i.bmb = fmul reassoc nsz arcp contract afn float %switch.load1511, %i.bll
  %i.bmc = fadd reassoc nsz arcp contract afn float %i.bma, %i.bmb
  store float %i.bmc, ptr %.sroa.10.i, align 8, !tbaa !12, !noalias !337
  %i.bmd = fadd reassoc nsz arcp contract afn float %i.blm, %i.ble
  %i.bme = fadd reassoc nsz arcp contract afn float %i.bmd, %i.bln
  %i.bmf = fmul reassoc nsz arcp contract afn float %i.bme, 0.000000e+00
  br label %convert_any_XYZ_to_LMS.exit300.i

convert_any_XYZ_to_LMS.exit300.i:                 ; preds = %bb.u, %switch.lookup1493
  %.sroa.6.0.i = phi nsz float [ %i.ble, %bb.u ], [ %i.blx, %switch.lookup1493 ]
  %.sroa.0277.0.i = phi nsz float [ %i.blm, %bb.u ], [ %i.bls, %switch.lookup1493 ]
  %.sink11.i298.sroa.phi.i = phi ptr [ %.sroa.10.i, %bb.u ], [ %.sroa.14278.i, %switch.lookup1493 ]
  %.sink.i299.i = phi float [ %i.bln, %bb.u ], [ %i.bmf, %switch.lookup1493 ]
  store float %.sink.i299.i, ptr %.sink11.i298.sroa.phi.i, align 4, !tbaa !12, !noalias !337
  switch i32 %i.ky, label %bb.as [
    i32 0, label %bb.v
    i32 2, label %bb.w
    i32 1, label %bb.x
    i32 3, label %bb.y
    i32 4, label %bb.ae
    i32 5, label %bb.ak
    i32 6, label %bb.aq
    i32 7, label %bb.ar
  ]

bb.v:                                             ; preds = %convert_any_XYZ_to_LMS.exit300.i
  br label %bb.as

bb.w:                                             ; preds = %convert_any_XYZ_to_LMS.exit300.i
  %i.bmg = fmul reassoc nsz arcp contract afn float %i.bkk, 7.812500e-03
  %i.bmh = fmul reassoc nsz arcp contract afn float %i.bkn, 7.812500e-03
  %i.bmi = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.bmg, float noundef %i.bmh) #33
  %i.bmj = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.bmi)
  br label %bb.as

bb.x:                                             ; preds = %convert_any_XYZ_to_LMS.exit300.i
  %i.bmk = fmul reassoc nsz arcp contract afn float %i.bkk, 7.812500e-03
  %i.bml = fmul reassoc nsz arcp contract afn float %i.bkn, 7.812500e-03
  %i.bmm = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.bmk, float noundef %i.bml) #33
  %i.bmn = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bmm
  %i.bmo = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.bmn)
  br label %bb.as

bb.y:                                             ; preds = %convert_any_XYZ_to_LMS.exit300.i
  %i.bmp = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.bkn, float %i.bkk) ; 5 uses
  %i.bmq = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.bkn, float noundef %i.bkk) #33
  %i.bmr = fadd reassoc nsz arcp contract afn float %i.bmp, -1.000000e+00 ; 3 uses
  %i.bms = fcmp reassoc nsz arcp contract afn oeq float %i.bmq, 0.000000e+00
  br i1 %i.bms, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bmt = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bmr) ; 2 uses
  %i.bmu = fcmp reassoc nsz arcp contract afn ugt float %i.bmt, f0x40490FDB
  br i1 %i.bmu, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.bmv = fcmp reassoc nsz arcp contract afn ogt float %i.bmt, f0x40490FDB ; 2 uses
  %i.bmw = fcmp reassoc nsz arcp contract afn ole float %i.bmp, 1.000000e+00
  %or.cond.i = select i1 %i.bmv, i1 %i.bmw, i1 false
  br i1 %or.cond.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bmx = fadd reassoc nsz arcp contract afn float %i.bmp, f0x40A90FDB
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.bmy = fcmp reassoc nsz arcp contract afn ogt float %i.bmp, 1.000000e+00
  %or.cond3.i = select i1 %i.bmv, i1 %i.bmy, i1 false
  %i.bmz = fadd reassoc nsz arcp contract afn float %i.bmp, f0xC0E90FDB
  %spec.select.i = select nsz i1 %or.cond3.i, float %i.bmz, float %i.bmr
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.z, %bb.y
  %.0260.i = phi nsz float [ %spec.select.i, %bb.ac ], [ %i.bmr, %bb.z ], [ %i.bmx, %bb.ab ], [ 0.000000e+00, %bb.y ] ; 2 uses
  %i.bna = fmul reassoc nsz arcp contract afn float %.0260.i, %.0260.i
  %merged.sqrt276.i = fmul reassoc nsz arcp contract afn float %i.bna, -2.500000e-01
  %i.bnb = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %merged.sqrt276.i)
  br label %bb.as

bb.ae:                                            ; preds = %convert_any_XYZ_to_LMS.exit300.i
  %i.bnc = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.bkn, float %i.bkk) ; 5 uses
  %i.bnd = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.bkn, float noundef %i.bkk) #33
  %i.bne = fadd reassoc nsz arcp contract afn float %i.bnc, -2.230000e+00 ; 3 uses
  %i.bnf = fcmp reassoc nsz arcp contract afn oeq float %i.bnd, 0.000000e+00
  br i1 %i.bnf, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bng = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bne) ; 2 uses
  %i.bnh = fcmp reassoc nsz arcp contract afn ugt float %i.bng, f0x40490FDB
  br i1 %i.bnh, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.bni = fcmp reassoc nsz arcp contract afn ogt float %i.bng, f0x40490FDB ; 2 uses
  %i.bnj = fcmp reassoc nsz arcp contract afn ole float %i.bnc, 2.230000e+00
  %or.cond5.i = select i1 %i.bni, i1 %i.bnj, i1 false
  br i1 %or.cond5.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bnk = fadd reassoc nsz arcp contract afn float %i.bnc, f0x4081B3B2
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.bnl = fcmp reassoc nsz arcp contract afn ogt float %i.bnc, 2.230000e+00
  %or.cond7.i = select i1 %i.bni, i1 %i.bnl, i1 false
  %i.bnm = fadd reassoc nsz arcp contract afn float %i.bnc, f0xC1083602
  %spec.select280.i = select nsz i1 %or.cond7.i, float %i.bnm, float %i.bne
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ae
  %.0259.i = phi nsz float [ %spec.select280.i, %bb.ai ], [ %i.bne, %bb.af ], [ %i.bnk, %bb.ah ], [ 0.000000e+00, %bb.ae ] ; 2 uses
  %i.bnn = fmul reassoc nsz arcp contract afn float %.0259.i, %.0259.i
  %merged.sqrt275.i = fmul reassoc nsz arcp contract afn float %i.bnn, -2.500000e-01
  %i.bno = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %merged.sqrt275.i)
  br label %bb.as

bb.ak:                                            ; preds = %convert_any_XYZ_to_LMS.exit300.i
  %i.bnp = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.bkn, float %i.bkk) ; 5 uses
  %i.bnq = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.bkn, float noundef %i.bkk) #33
  %i.bnr = fadd reassoc nsz arcp contract afn float %i.bnp, 1.930000e+00 ; 3 uses
  %i.bns = fcmp reassoc nsz arcp contract afn oeq float %i.bnq, 0.000000e+00
  br i1 %i.bns, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bnt = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bnr) ; 2 uses
  %i.bnu = fcmp reassoc nsz arcp contract afn ugt float %i.bnt, f0x40490FDB
  br i1 %i.bnu, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.bnv = fcmp reassoc nsz arcp contract afn ogt float %i.bnt, f0x40490FDB ; 2 uses
  %i.bnw = fcmp reassoc nsz arcp contract afn ole float %i.bnp, -1.930000e+00
  %or.cond9.i = select i1 %i.bnv, i1 %i.bnw, i1 false
  br i1 %or.cond9.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.bnx = fadd reassoc nsz arcp contract afn float %i.bnp, f0x41036935
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.bny = fcmp reassoc nsz arcp contract afn ogt float %i.bnp, -1.930000e+00
  %or.cond11.i = select i1 %i.bnv, i1 %i.bny, i1 false
  %i.bnz = fadd reassoc nsz arcp contract afn float %i.bnp, f0xC08B4D4C
  %spec.select281.i = select nsz i1 %or.cond11.i, float %i.bnz, float %i.bnr
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.al, %bb.ak
  %.0258.i = phi nsz float [ %spec.select281.i, %bb.ao ], [ %i.bnr, %bb.al ], [ %i.bnx, %bb.an ], [ 0.000000e+00, %bb.ak ] ; 2 uses
  %i.boa = fmul reassoc nsz arcp contract afn float %.0258.i, %.0258.i
  %merged.sqrt.i = fmul reassoc nsz arcp contract afn float %i.boa, -2.500000e-01
  %i.bob = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %merged.sqrt.i)
  br label %bb.as

bb.aq:                                            ; preds = %convert_any_XYZ_to_LMS.exit300.i
  %i.boc = load ptr, ptr %i.bo, align 64, !tbaa !102, !noalias !337
  %i.bod = getelementptr inbounds nuw [4 x i8], ptr %i.boc, i64 %.0262238.i
  %i.boe = load float, ptr %i.bod, align 4, !tbaa !12, !noalias !337
  %i.bof = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.boe
  %i.bog = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.bof)
  %i.boh = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.bog)
  br label %bb.as

bb.ar:                                            ; preds = %convert_any_XYZ_to_LMS.exit300.i
  %i.boi = load ptr, ptr %i.bo, align 64, !tbaa !102, !noalias !337
  %i.boj = getelementptr inbounds nuw [4 x i8], ptr %i.boi, i64 %.0262238.i
  %i.bok = load float, ptr %i.boj, align 4, !tbaa !12, !noalias !337
  %i.bol = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.bok)
  %i.bom = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.bol)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.aj, %bb.ad, %bb.x, %bb.w, %bb.v, %convert_any_XYZ_to_LMS.exit300.i
  %.0261.i = phi nsz float [ %i.lb, %bb.v ], [ %i.bmj, %bb.w ], [ %i.bmo, %bb.x ], [ %i.bnb, %bb.ad ], [ %i.bno, %bb.aj ], [ %i.bob, %bb.ap ], [ %i.boh, %bb.aq ], [ %i.bom, %bb.ar ], [ 1.000000e+00, %convert_any_XYZ_to_LMS.exit300.i ] ; 5 uses
  %.idx277.i = mul i64 %.0262238.i, 24
  %i.bon = getelementptr i8, ptr %i.ko, i64 %.idx277.i ; 2 uses
  %i.boo = fmul reassoc nsz arcp contract afn float %.0261.i, %.sroa.0277.0.i
  %i.bop = fpext reassoc nsz arcp contract afn float %i.boo to double
  store double %i.bop, ptr %i.bon, align 8, !tbaa !105, !noalias !337
  %i.boq = getelementptr i8, ptr %i.bon, i64 8
  %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.8..i = load float, ptr %.sroa.10.i, align 8, !tbaa !12, !noalias !337
  %i.bor = insertelement <2 x float> poison, float %.0261.i, i64 0
  %i.bos = shufflevector <2 x float> %i.bor, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bot = insertelement <2 x float> poison, float %.sroa.6.0.i, i64 0
  %i.bou = insertelement <2 x float> %i.bot, float %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.8..i, i64 1
  %i.bov = fmul reassoc nsz arcp contract afn <2 x float> %i.bos, %i.bou
  %i.bow = fpext <2 x float> %i.bov to <2 x double>
  store <2 x double> %i.bow, ptr %i.boq, align 8, !tbaa !105, !noalias !337
  %i.box = load float, ptr %i.h, align 16, !tbaa !12, !noalias !337
  %i.boy = fmul reassoc nsz arcp contract afn float %i.box, %.0261.i
  %i.boz = fpext reassoc nsz arcp contract afn float %i.boy to double ; 3 uses
  %.idx206.i = mul i64 %.0262238.i, 216
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.kt, i64 %.idx206.i ; 11 uses
  store double %i.boz, ptr %i.bpa, align 8, !tbaa !105, !noalias !337
  %i.bpb = load float, ptr %i.lc, align 4, !tbaa !12, !noalias !337
  %i.bpc = fmul reassoc nsz arcp contract afn float %i.bpb, %.0261.i
  %i.bpd = fpext reassoc nsz arcp contract afn float %i.bpc to double ; 3 uses
  %i.bpe = getelementptr i8, ptr %i.bpa, i64 8
  store double %i.bpd, ptr %i.bpe, align 8, !tbaa !105, !noalias !337
  %i.bpf = load float, ptr %i.ld, align 8, !tbaa !12, !noalias !337
  %i.bpg = fmul reassoc nsz arcp contract afn float %i.bpf, %.0261.i
  %i.bph = fpext reassoc nsz arcp contract afn float %i.bpg to double ; 3 uses
  %i.bpi = getelementptr i8, ptr %i.bpa, i64 16
  store double %i.bph, ptr %i.bpi, align 8, !tbaa !105, !noalias !337
  %i.bpj = getelementptr i8, ptr %i.bpa, i64 24
  %i.bpk = getelementptr i8, ptr %i.bpa, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bpj, i8 0, i64 72, i1 false), !noalias !337
  store double %i.boz, ptr %i.bpk, align 8, !tbaa !105, !noalias !337
  %i.bpl = getelementptr i8, ptr %i.bpa, i64 104
  store double %i.bpd, ptr %i.bpl, align 8, !tbaa !105, !noalias !337
  %i.bpm = getelementptr i8, ptr %i.bpa, i64 112
  store double %i.bph, ptr %i.bpm, align 8, !tbaa !105, !noalias !337
  %i.bpn = getelementptr i8, ptr %i.bpa, i64 120
  %i.bpo = getelementptr i8, ptr %i.bpa, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bpn, i8 0, i64 72, i1 false), !noalias !337
  store double %i.boz, ptr %i.bpo, align 8, !tbaa !105, !noalias !337
  %i.bpp = getelementptr i8, ptr %i.bpa, i64 200
  store double %i.bpd, ptr %i.bpp, align 8, !tbaa !105, !noalias !337
  %i.bpq = getelementptr i8, ptr %i.bpa, i64 208
  store double %i.bph, ptr %i.bpq, align 8, !tbaa !105, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14278.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31, !noalias !337
  %i.bpr = add nuw i64 %.0262238.i, 1             ; 2 uses
  %exitcond268.not.i = icmp eq i64 %i.bpr, %i.kw
  br i1 %exitcond268.not.i, label %._crit_edge241.i, label %bb.u

._crit_edge246.i:                                 ; preds = %convert_any_LMS_to_XYZ.exit306.i, %pseudo_solve_gaussian.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31, !noalias !337
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !12, !noalias !337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31, !noalias !337
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !12, !noalias !337
  %i.bps = load ptr, ptr %i.bo, align 64, !tbaa !102, !noalias !337
  call fastcc void @_compute_patches_delta_E(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bjt, ptr noundef %i.bps, ptr noundef %i.i, ptr noundef %i.j), !noalias !337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #31, !noalias !337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #31, !noalias !337
  call fastcc void @_check_if_close_to_daylight(float noundef %i.im, float noundef %i.io, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef null), !noalias !337
  %i.bpt = load i32, ptr %i.l, align 4, !tbaa !15, !noalias !337 ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.bpt, 6
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.307, ptr @.str.308
  %switch.selectcmp442.i = icmp eq i32 %i.bpt, 2
  %switch.select443.i = select i1 %switch.selectcmp442.i, ptr @.str.306, ptr %switch.select.i
  %i.bpu = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %switch.select443.i, i32 noundef 5) #31, !noalias !337
  %i.bpv = load float, ptr %i.i, align 4, !tbaa !12, !noalias !337 ; 4 uses
  %i.bpw = fcmp reassoc nsz arcp contract afn ugt float %i.bpv, 1.200000e+00
  br i1 %i.bpw, label %bb.aw, label %_extract_color_checker.exit

.lr.ph245.i:                                      ; preds = %.lr.ph245.i.preheader, %convert_any_LMS_to_XYZ.exit306.i
  %.0256244.i = phi i64 [ %i.bsz, %convert_any_LMS_to_XYZ.exit306.i ], [ 0, %.lr.ph245.i.preheader ] ; 2 uses
  %.idx.i = shl i64 %.0256244.i, 4
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.i)
  %.sroa.0.0.copyload.i = load float, ptr %i.bpx, align 16, !tbaa !12, !noalias !337 ; 5 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bpx, i64 4 ; 4 uses
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !12, !noalias !337 ; 5 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bpx, i64 8 ; 3 uses
  %.sroa.12.0.copyload.i = load float, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !12, !noalias !337 ; 5 uses
  br i1 %i.bjw, label %switch.lookup1512, label %convert_any_XYZ_to_LMS.exit303.i

switch.lookup1512:                                ; preds = %.lr.ph245.i
  %switch.load1514 = load float, ptr %switch.gep1513, align 4
  %switch.load1516 = load float, ptr %switch.gep1515, align 4
  %switch.load1518 = load float, ptr %switch.gep1517, align 4
  %switch.load1520 = load float, ptr %switch.gep1519, align 4
  %switch.load1522 = load float, ptr %switch.gep1521, align 4
  %switch.load1524 = load float, ptr %switch.gep1523, align 4
  %switch.load1526 = load float, ptr %switch.gep1525, align 4
  %switch.load1528 = load float, ptr %switch.gep1527, align 4
  %switch.load1530 = load float, ptr %switch.gep1529, align 4
  %i.bpy = fmul reassoc nsz arcp contract afn float %switch.load1514, %.sroa.0.0.copyload.i
  %i.bpz = fmul reassoc nsz arcp contract afn float %switch.load1516, %.sroa.8.0.copyload.i
  %i.bqa = fadd reassoc nsz arcp contract afn float %i.bpz, %i.bpy
  %i.bqb = fmul reassoc nsz arcp contract afn float %switch.load1518, %.sroa.12.0.copyload.i
  %i.bqc = fadd reassoc nsz arcp contract afn float %i.bqa, %i.bqb
  %i.bqd = fmul reassoc nsz arcp contract afn float %switch.load1520, %.sroa.0.0.copyload.i
  %i.bqe = fmul reassoc nsz arcp contract afn float %switch.load1522, %.sroa.8.0.copyload.i
  %i.bqf = fadd reassoc nsz arcp contract afn float %i.bqe, %i.bqd
  %i.bqg = fmul reassoc nsz arcp contract afn float %switch.load1524, %.sroa.12.0.copyload.i
  %i.bqh = fadd reassoc nsz arcp contract afn float %i.bqf, %i.bqg
  %i.bqi = fmul reassoc nsz arcp contract afn float %switch.load1526, %.sroa.0.0.copyload.i
  %i.bqj = fmul reassoc nsz arcp contract afn float %switch.load1528, %.sroa.8.0.copyload.i
  %i.bqk = fadd reassoc nsz arcp contract afn float %i.bqj, %i.bqi
  %i.bql = fmul reassoc nsz arcp contract afn float %switch.load1530, %.sroa.12.0.copyload.i
  %i.bqm = fadd reassoc nsz arcp contract afn float %i.bqk, %i.bql
  store float %i.bqm, ptr %.sroa.14.i, align 8, !tbaa !12, !noalias !337
  %i.bqn = fadd reassoc nsz arcp contract afn float %.sroa.8.0.copyload.i, %.sroa.0.0.copyload.i
  %i.bqo = fadd reassoc nsz arcp contract afn float %i.bqn, %.sroa.12.0.copyload.i
  %i.bqp = fmul reassoc nsz arcp contract afn float %i.bqo, 0.000000e+00
  br label %convert_any_XYZ_to_LMS.exit303.i

convert_any_XYZ_to_LMS.exit303.i:                 ; preds = %.lr.ph245.i, %switch.lookup1512
  %.sroa.8.0.i = phi nsz float [ %.sroa.8.0.copyload.i, %.lr.ph245.i ], [ %i.bqh, %switch.lookup1512 ] ; 3 uses
  %.sroa.0.0.i = phi nsz float [ %.sroa.0.0.copyload.i, %.lr.ph245.i ], [ %i.bqc, %switch.lookup1512 ] ; 3 uses
  %.sink11.i301.sroa.phi.i = phi ptr [ %.sroa.14.i, %.lr.ph245.i ], [ %.sroa.20.i, %switch.lookup1512 ]
  %.sink.i302.i = phi float [ %.sroa.12.0.copyload.i, %.lr.ph245.i ], [ %i.bqp, %switch.lookup1512 ]
  store float %.sink.i302.i, ptr %.sink11.i301.sroa.phi.i, align 4, !tbaa !12, !noalias !337
  %i.bqq = load float, ptr %i.biq, align 64, !tbaa !12, !noalias !337
  %i.bqr = fmul reassoc nsz arcp contract afn float %i.bqq, %.sroa.0.0.i
  %i.bqs = load float, ptr %i.bir, align 4, !tbaa !12, !noalias !337
  %i.bqt = fmul reassoc nsz arcp contract afn float %i.bqs, %.sroa.8.0.i
  %i.bqu = fadd reassoc nsz arcp contract afn float %i.bqt, %i.bqr
  %.sroa.14.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.8..i = load float, ptr %.sroa.14.i, align 8, !tbaa !12, !noalias !337 ; 3 uses
  %i.bqv = load float, ptr %i.bix, align 8, !tbaa !12, !noalias !337
  %i.bqw = fmul reassoc nsz arcp contract afn float %i.bqv, %.sroa.14.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.8..i
  %i.bqx = fadd reassoc nsz arcp contract afn float %i.bqu, %i.bqw ; 9 uses
  %i.bqy = load float, ptr %i.bja, align 16, !tbaa !12, !noalias !337
  %i.bqz = fmul reassoc nsz arcp contract afn float %i.bqy, %.sroa.0.0.i
  %i.bra = load float, ptr %i.bjb, align 4, !tbaa !12, !noalias !337
  %i.brb = fmul reassoc nsz arcp contract afn float %i.bra, %.sroa.8.0.i
  %i.brc = fadd reassoc nsz arcp contract afn float %i.brb, %i.bqz
  %i.brd = load float, ptr %i.bjh, align 8, !tbaa !12, !noalias !337
  %i.bre = fmul reassoc nsz arcp contract afn float %i.brd, %.sroa.14.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.8..i
  %i.brf = fadd reassoc nsz arcp contract afn float %i.brc, %i.bre ; 9 uses
  %i.brg = load float, ptr %i.bjk, align 32, !tbaa !12, !noalias !337
  %i.brh = fmul reassoc nsz arcp contract afn float %i.brg, %.sroa.0.0.i
  %i.bri = load float, ptr %i.bjl, align 4, !tbaa !12, !noalias !337
  %i.brj = fmul reassoc nsz arcp contract afn float %i.bri, %.sroa.8.0.i
  %i.brk = fadd reassoc nsz arcp contract afn float %i.brj, %i.brh
  %i.brl = load float, ptr %i.bjr, align 8, !tbaa !12, !noalias !337
  %i.brm = fmul reassoc nsz arcp contract afn float %i.brl, %.sroa.14.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.8..i
  %i.brn = fadd reassoc nsz arcp contract afn float %i.brk, %i.brm ; 9 uses
  switch i32 %i.ax, label %bb.av [
    i32 2, label %bb.at
    i32 0, label %bb.at
    i32 1, label %bb.au
  ]

bb.at:                                            ; preds = %convert_any_XYZ_to_LMS.exit303.i, %convert_any_XYZ_to_LMS.exit303.i
  %i.bro = fmul reassoc nsz arcp contract afn float %i.bqx, f0x3F7CAC08
  %i.brp = fmul reassoc nsz arcp contract afn float %i.brf, -1.471000e-01
  %i.brq = fadd reassoc nsz arcp contract afn float %i.brp, %i.bro
  %i.brr = fmul reassoc nsz arcp contract afn float %i.brn, 1.600000e-01
  %i.brs = fadd reassoc nsz arcp contract afn float %i.brq, %i.brr
  store float %i.brs, ptr %i.bpx, align 16, !tbaa !12, !noalias !337
  %i.brt = fmul reassoc nsz arcp contract afn float %i.bqx, 4.323000e-01
  %i.bru = fmul reassoc nsz arcp contract afn float %i.brf, 5.184000e-01
  %i.brv = fadd reassoc nsz arcp contract afn float %i.bru, %i.brt
  %i.brw = fmul reassoc nsz arcp contract afn float %i.brn, 4.930000e-02
  %i.brx = fadd reassoc nsz arcp contract afn float %i.brv, %i.brw
  store float %i.brx, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !12, !noalias !337
  %i.bry = fmul reassoc nsz arcp contract afn float %i.bqx, -8.500000e-03
  %i.brz = fmul reassoc nsz arcp contract afn float %i.brf, 4.000000e-02
  %i.bsa = fadd reassoc nsz arcp contract afn float %i.brz, %i.bry
  %i.bsb = fmul reassoc nsz arcp contract afn float %i.brn, 9.685000e-01
  %i.bsc = fadd reassoc nsz arcp contract afn float %i.bsa, %i.bsb
  store float %i.bsc, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !12, !noalias !337
  %i.bsd = fadd reassoc nsz arcp contract afn float %i.brf, %i.bqx
  %i.bse = fadd reassoc nsz arcp contract afn float %i.bsd, %i.brn
  %i.bsf = fmul reassoc nsz arcp contract afn float %i.bse, 0.000000e+00
  br label %convert_any_LMS_to_XYZ.exit306.i

bb.au:                                            ; preds = %convert_any_XYZ_to_LMS.exit303.i
  %i.bsg = fmul reassoc nsz arcp contract afn float %i.bqx, f0x3FEE583F
  %i.bsh = fmul reassoc nsz arcp contract afn float %i.brf, f0xBF8170CE
  %i.bsi = fadd reassoc nsz arcp contract afn float %i.bsh, %i.bsg
  %i.bsj = fmul reassoc nsz arcp contract afn float %i.brn, 1.491870e-01
  %i.bsk = fadd reassoc nsz arcp contract afn float %i.bsi, %i.bsj
  store float %i.bsk, ptr %i.bpx, align 16, !tbaa !12, !noalias !337
  %i.bsl = fmul reassoc nsz arcp contract afn float %i.bqx, 3.875200e-01
  %i.bsm = fmul reassoc nsz arcp contract afn float %i.brf, 6.214470e-01
  %i.bsn = fadd reassoc nsz arcp contract afn float %i.bsm, %i.bsl
  %i.bso = fmul reassoc nsz arcp contract afn float %i.brn, -8.974000e-03
  %i.bsp = fadd reassoc nsz arcp contract afn float %i.bsn, %i.bso
  store float %i.bsp, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !12, !noalias !337
  %i.bsq = fmul reassoc nsz arcp contract afn float %i.bqx, -1.584100e-02
  %i.bsr = fmul reassoc nsz arcp contract afn float %i.brf, -3.412300e-02
  %i.bss = fadd reassoc nsz arcp contract afn float %i.bsr, %i.bsq
  %i.bst = fmul reassoc nsz arcp contract afn float %i.brn, f0x3F866538
  %i.bsu = fadd reassoc nsz arcp contract afn float %i.bss, %i.bst
  store float %i.bsu, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !12, !noalias !337
  %i.bsv = fadd reassoc nsz arcp contract afn float %i.brf, %i.bqx
  %i.bsw = fadd reassoc nsz arcp contract afn float %i.bsv, %i.brn
  %i.bsx = fmul reassoc nsz arcp contract afn float %i.bsw, 0.000000e+00
  br label %convert_any_LMS_to_XYZ.exit306.i

bb.av:                                            ; preds = %convert_any_XYZ_to_LMS.exit303.i
  store float %i.bqx, ptr %i.bpx, align 16, !tbaa !12, !noalias !337
  store float %i.brf, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !12, !noalias !337
  br label %convert_any_LMS_to_XYZ.exit306.i

convert_any_LMS_to_XYZ.exit306.i:                 ; preds = %bb.av, %bb.au, %bb.at
  %.sink11.i304.i = phi i64 [ 8, %bb.av ], [ 12, %bb.au ], [ 12, %bb.at ]
  %.sink.i305.i = phi float [ %i.brn, %bb.av ], [ %i.bsx, %bb.au ], [ %i.bsf, %bb.at ]
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bpx, i64 %.sink11.i304.i
  store float %.sink.i305.i, ptr %i.bsy, align 4, !tbaa !12, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.i)
  %i.bsz = add nuw i64 %.0256244.i, 1             ; 2 uses
  %exitcond270.not.i = icmp eq i64 %i.bsz, %i.bjv
  br i1 %exitcond270.not.i, label %._crit_edge246.i, label %.lr.ph245.i

bb.aw:                                            ; preds = %._crit_edge246.i
  %i.bta = fcmp reassoc nsz arcp contract afn ugt float %i.bpv, 2.300000e+00
  br i1 %i.bta, label %bb.ax, label %_extract_color_checker.exit

bb.ax:                                            ; preds = %bb.aw
  %i.btb = fcmp reassoc nsz arcp contract afn ugt float %i.bpv, 3.400000e+00
  %.str.312..str.311.i = select i1 %i.btb, ptr @.str.312, ptr @.str.311
  br label %_extract_color_checker.exit

_extract_color_checker.exit:                      ; preds = %._crit_edge246.i, %bb.aw, %bb.ax
  %.str.310.sink.i = phi ptr [ @.str.309, %._crit_edge246.i ], [ @.str.310, %bb.aw ], [ %.str.312..str.311.i, %bb.ax ]
  %i.btc = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.310.sink.i, i32 noundef 5) #31, !noalias !337
  %i.btd = getelementptr inbounds nuw i8, ptr %i.aa, i64 536
  store i32 1, ptr %i.btd, align 8, !tbaa !108, !noalias !337
  %i.bte = getelementptr inbounds nuw i8, ptr %i.aa, i64 712 ; 2 uses
  %i.btf = load ptr, ptr %i.bte, align 8, !tbaa !109, !noalias !337
  call void @g_free(ptr noundef %i.btf) #31, !noalias !337
  %i.btg = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.313, i32 noundef 5) #31, !noalias !337
  %i.bth = load float, ptr %i.c, align 4, !tbaa !12, !noalias !337
  %i.bti = fpext reassoc nsz arcp contract afn float %i.bth to double
  %i.btj = load float, ptr %i.d, align 4, !tbaa !12, !noalias !337
  %i.btk = fpext reassoc nsz arcp contract afn float %i.btj to double
  %i.btl = load float, ptr %i.f, align 4, !tbaa !12, !noalias !337
  %i.btm = fpext reassoc nsz arcp contract afn float %i.btl to double
  %i.btn = load float, ptr %i.g, align 4, !tbaa !12, !noalias !337
  %i.bto = fpext reassoc nsz arcp contract afn float %i.btn to double
  %i.btp = fpext reassoc nsz arcp contract afn float %i.bpv to double
  %i.btq = load float, ptr %i.j, align 4, !tbaa !12, !noalias !337
  %i.btr = fpext reassoc nsz arcp contract afn float %i.btq to double
  %i.bts = load float, ptr %i.k, align 4, !tbaa !12, !noalias !337
  %i.btt = fpext reassoc nsz arcp contract afn float %i.bts to double
  %i.btu = load float, ptr %i.biq, align 64, !tbaa !12, !noalias !337
  %i.btv = fpext reassoc nsz arcp contract afn float %i.btu to double
  %i.btw = load float, ptr %i.bir, align 4, !tbaa !12, !noalias !337
  %i.btx = fpext reassoc nsz arcp contract afn float %i.btw to double
  %i.bty = load float, ptr %i.bix, align 8, !tbaa !12, !noalias !337
  %i.btz = fpext reassoc nsz arcp contract afn float %i.bty to double
  %i.bua = load float, ptr %i.bja, align 16, !tbaa !12, !noalias !337
  %i.bub = fpext reassoc nsz arcp contract afn float %i.bua to double
  %i.buc = load float, ptr %i.bjb, align 4, !tbaa !12, !noalias !337
  %i.bud = fpext reassoc nsz arcp contract afn float %i.buc to double
  %i.bue = load float, ptr %i.bjh, align 8, !tbaa !12, !noalias !337
  %i.buf = fpext reassoc nsz arcp contract afn float %i.bue to double
  %i.bug = load float, ptr %i.bjk, align 32, !tbaa !12, !noalias !337
  %i.buh = fpext reassoc nsz arcp contract afn float %i.bug to double
  %i.bui = load float, ptr %i.bjl, align 4, !tbaa !12, !noalias !337
  %i.buj = fpext reassoc nsz arcp contract afn float %i.bui to double
  %i.buk = load float, ptr %i.bjr, align 8, !tbaa !12, !noalias !337
  %i.bul = fpext reassoc nsz arcp contract afn float %i.buk to double
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.bm, i64 1
  %i.bum = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %.sroa.0.4.vec.extract.i)
  %i.bun = fpext reassoc nsz arcp contract afn float %i.bum to double
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.bm, i64 0
  %i.buo = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i to double
  %i.bup = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.btg, ptr noundef %i.btc, double noundef %i.bti, double noundef %i.btk, double noundef %i.btm, double noundef %i.bto, double noundef %i.btp, double noundef %i.btr, double noundef %i.btt, ptr noundef %i.bpu, double noundef %i.btv, double noundef %i.btx, double noundef %i.btz, double noundef %i.bub, double noundef %i.bud, double noundef %i.buf, double noundef %i.buh, double noundef %i.buj, double noundef %i.bul, double noundef %i.bun, double noundef %i.buo) #31, !noalias !337
  store ptr %i.bup, ptr %i.bte, align 8, !tbaa !109, !noalias !337
  call void @free(ptr noundef nonnull %i.bd) #31, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.042.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10319.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14320.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10323.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14324.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10327.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14328.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31, !noalias !337
  store i32 0, ptr %i.ap, align 16, !tbaa !97
  %i.buq = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.au) #31 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.g, %bb.h, %_extract_color_checker.exit, %bb.f
  %i.bur = getelementptr inbounds nuw i8, ptr %i.t, i64 148
  %i.bus = load i32, ptr %i.bur, align 4, !tbaa !110
  %i.but = icmp eq i32 %i.bus, 10
  br i1 %i.but, label %bb.az, label %bb.bn

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #31
  %i.buu = load ptr, ptr %i.ak, align 8, !tbaa !73 ; 11 uses
  store <4 x float> splat (float 1.000000e+00), ptr %i.r, align 16, !tbaa !12
  %i.buv = getelementptr inbounds nuw i8, ptr %i.buu, i64 112
  %i.buw = call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %i.buv) #31
  %.not.i129 = icmp eq i32 %i.buw, 0
  br i1 %.not.i129, label %_get_white_balance_coeff.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bux = load ptr, ptr %i.ak, align 8, !tbaa !73 ; 3 uses
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bux, i64 2480
  %i.buz = load i32, ptr %i.buy, align 16, !tbaa !111
  %.not.i.i130 = icmp eq i32 %i.buz, 0
  %i.bva = getelementptr inbounds nuw i8, ptr %i.bux, i64 2400
  %..i.i = select i1 %.not.i.i130, i64 2416, i64 2448
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bux, i64 %..i.i
  %i.bvc = call i32 @dt_dev_equal_chroma(ptr noundef nonnull %i.bva, ptr noundef nonnull %i.bvb) #31
  %.not26.i = icmp eq i32 %i.bvc, 0
  br i1 %.not26.i, label %bb.bb, label %_get_white_balance_coeff.exit

bb.bb:                                            ; preds = %bb.ba
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.buu, i64 2416
  %i.bve = load double, ptr %i.bvd, align 16, !tbaa !105 ; 2 uses
  %i.bvf = fcmp reassoc nsz arcp contract afn ogt double %i.bve, 0.000000e+00
  br i1 %i.bvf, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.buu, i64 2424
  %i.bvh = load double, ptr %i.bvg, align 8, !tbaa !105
  %i.bvi = fcmp reassoc nsz arcp contract afn ogt double %i.bvh, 0.000000e+00
  br i1 %i.bvi, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.buu, i64 2432
  %i.bvk = load double, ptr %i.bvj, align 16, !tbaa !105
  %i.bvl = fcmp reassoc nsz arcp contract afn ogt double %i.bvk, 0.000000e+00
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.bvm = phi i1 [ false, %bb.bc ], [ false, %bb.bb ], [ %i.bvl, %bb.bd ]
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.buu, i64 2400
  %i.bvo = load float, ptr %i.bvn, align 16, !tbaa !12 ; 2 uses
  %i.bvp = fcmp reassoc nsz arcp contract afn ogt float %i.bvo, 1.000000e+00
  br i1 %i.bvp, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.buu, i64 2404
  %i.bvr = load float, ptr %i.bvq, align 4, !tbaa !12
  %i.bvs = fcmp reassoc nsz arcp contract afn ogt float %i.bvr, 1.000000e+00
  br i1 %i.bvs, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.buu, i64 2408
  %i.bvu = load float, ptr %i.bvt, align 8, !tbaa !12
  %i.bvv = fcmp reassoc nsz arcp contract afn ogt float %i.bvu, 1.000000e+00
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %i.bvw = phi i1 [ true, %bb.bf ], [ true, %bb.be ], [ %i.bvv, %bb.bg ]
  %or.cond.i131 = select i1 %i.bvm, i1 %i.bvw, i1 false
  br i1 %or.cond.i131, label %.preheader.preheader.i132, label %_get_white_balance_coeff.exit

.preheader.preheader.i132:                        ; preds = %bb.bh
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.buu, i64 2424
  %i.bvy = load double, ptr %i.bvx, align 8, !tbaa !105
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.buu, i64 2404
  %i.bwa = load float, ptr %i.bvz, align 4, !tbaa !12
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.buu, i64 2432
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.buu, i64 2408
  %i.bwd = load <2 x double>, ptr %i.bwb, align 16, !tbaa !105
  %i.bwe = insertelement <4 x double> poison, double %i.bve, i64 0
  %i.bwf = insertelement <4 x double> %i.bwe, double %i.bvy, i64 1
  %i.bwg = shufflevector <2 x double> %i.bwd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bwh = shufflevector <4 x double> %i.bwf, <4 x double> %i.bwg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bwi = fptrunc <4 x double> %i.bwh to <4 x float>
  %i.bwj = load <2 x float>, ptr %i.bwc, align 8, !tbaa !12
  %i.bwk = insertelement <4 x float> poison, float %i.bvo, i64 0
  %i.bwl = insertelement <4 x float> %i.bwk, float %i.bwa, i64 1
  %i.bwm = shufflevector <2 x float> %i.bwj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bwn = shufflevector <4 x float> %i.bwl, <4 x float> %i.bwm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bwo = fdiv reassoc nsz arcp contract afn <4 x float> %i.bwi, %i.bwn
  store <4 x float> %i.bwo, ptr %i.r, align 16, !tbaa !12
  br label %_get_white_balance_coeff.exit

_get_white_balance_coeff.exit:                    ; preds = %bb.az, %bb.ba, %bb.bh, %.preheader.preheader.i132
  %i.bwp = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.bwp, i64 112
  %i.bwr = call fastcc i32 @find_temperature_from_raw_coeffs(ptr noundef nonnull %i.bwq, ptr noundef nonnull %i.r, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q)
  %.not124 = icmp eq i32 %i.bwr, 0
  br i1 %.not124, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %_get_white_balance_coeff.exit
  %i.bws = load float, ptr %i.p, align 4, !tbaa !12 ; 2 uses
  %i.bwt = load float, ptr %i.q, align 4, !tbaa !12 ; 3 uses
  %i.bwu = fdiv reassoc nsz arcp contract afn float %i.bws, %i.bwt ; 9 uses
  %i.bwv = fadd reassoc nsz arcp contract afn float %i.bws, %i.bwt
  %i.bww = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bwv
  %i.bwx = fdiv reassoc nsz arcp contract afn float %i.bww, %i.bwt ; 9 uses
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.t, i64 112 ; 4 uses
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.bxa = load i32, ptr %i.bwz, align 16, !tbaa !99
  switch i32 %i.bxa, label %bb.bl [
    i32 2, label %bb.bj
    i32 0, label %bb.bj
    i32 1, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi, %bb.bi
  %i.bxb = fmul reassoc nsz arcp contract afn float %i.bwu, f0x3F652546
  %i.bxc = fadd reassoc nsz arcp contract afn float %i.bxb, 2.664000e-01
  %i.bxd = fmul reassoc nsz arcp contract afn float %i.bwx, -1.614000e-01
  %i.bxe = fadd reassoc nsz arcp contract afn float %i.bxc, %i.bxd
  store float %i.bxe, ptr %i.bwy, align 16, !tbaa !12
  %i.bxf = fmul reassoc nsz arcp contract afn float %i.bwu, f0xBF400D1B
  %i.bxg = fadd reassoc nsz arcp contract afn float %i.bxf, 1.713500e+00
  %i.bxh = fmul reassoc nsz arcp contract afn float %i.bwx, 3.670000e-02
  %i.bxi = fadd reassoc nsz arcp contract afn float %i.bxg, %i.bxh
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.t, i64 116
  store float %i.bxi, ptr %i.bxj, align 4, !tbaa !12
  %i.bxk = fmul reassoc nsz arcp contract afn float %i.bwu, 3.890000e-02
  %i.bxl = fadd reassoc nsz arcp contract afn float %i.bxk, -6.850000e-02
  %i.bxm = fmul reassoc nsz arcp contract afn float %i.bwx, 1.029600e+00
  %i.bxn = fadd reassoc nsz arcp contract afn float %i.bxl, %i.bxm
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  store float %i.bxn, ptr %i.bxo, align 8, !tbaa !12
  %i.bxp = fadd reassoc nsz arcp contract afn float %i.bwu, 1.000000e+00
  %i.bxq = fadd reassoc nsz arcp contract afn float %i.bxp, %i.bwx
  %i.bxr = fmul reassoc nsz arcp contract afn float %i.bxq, 0.000000e+00
  br label %convert_any_XYZ_to_LMS.exit

bb.bk:                                            ; preds = %bb.bi
  %i.bxs = fmul reassoc nsz arcp contract afn float %i.bwu, 4.012880e-01
  %i.bxt = fadd reassoc nsz arcp contract afn float %i.bxs, 6.501730e-01
  %i.bxu = fmul reassoc nsz arcp contract afn float %i.bwx, -5.146100e-02
  %i.bxv = fadd reassoc nsz arcp contract afn float %i.bxt, %i.bxu
  store float %i.bxv, ptr %i.bwy, align 16, !tbaa !12
  %i.bxw = fmul reassoc nsz arcp contract afn float %i.bwu, -2.502680e-01
  %i.bxx = fadd reassoc nsz arcp contract afn float %i.bxw, f0x3F9A2A3D
  %i.bxy = fmul reassoc nsz arcp contract afn float %i.bwx, 4.585400e-02
  %i.bxz = fadd reassoc nsz arcp contract afn float %i.bxx, %i.bxy
  %i.bya = getelementptr inbounds nuw i8, ptr %i.t, i64 116
  store float %i.bxz, ptr %i.bya, align 4, !tbaa !12
  %i.byb = fmul reassoc nsz arcp contract afn float %i.bwu, -2.079000e-03
  %i.byc = fadd reassoc nsz arcp contract afn float %i.byb, 4.895200e-02
  %i.byd = fmul reassoc nsz arcp contract afn float %i.bwx, 9.531270e-01
  %i.bye = fadd reassoc nsz arcp contract afn float %i.byc, %i.byd
  %i.byf = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  store float %i.bye, ptr %i.byf, align 8, !tbaa !12
  %i.byg = fadd reassoc nsz arcp contract afn float %i.bwu, 1.000000e+00
  %i.byh = fadd reassoc nsz arcp contract afn float %i.byg, %i.bwx
  %i.byi = fmul reassoc nsz arcp contract afn float %i.byh, 0.000000e+00
  br label %convert_any_XYZ_to_LMS.exit

bb.bl:                                            ; preds = %bb.bi
  store float %i.bwu, ptr %i.bwy, align 16, !tbaa !12
  %i.byj = getelementptr inbounds nuw i8, ptr %i.t, i64 116
  store float 1.000000e+00, ptr %i.byj, align 4, !tbaa !12
  br label %convert_any_XYZ_to_LMS.exit

convert_any_XYZ_to_LMS.exit:                      ; preds = %bb.bj, %bb.bk, %bb.bl
  %.sink11.i = phi i64 [ 8, %bb.bl ], [ 12, %bb.bk ], [ 12, %bb.bj ]
  %.sink.i133 = phi float [ %i.bwx, %bb.bl ], [ %i.byi, %bb.bk ], [ %i.bxr, %bb.bj ]
  %i.byk = getelementptr inbounds nuw i8, ptr %i.bwy, i64 %.sink11.i
  store float %.sink.i133, ptr %i.byk, align 4, !tbaa !12
  %i.byl = getelementptr inbounds nuw i8, ptr %i.t, i64 124
  store float 0.000000e+00, ptr %i.byl, align 4, !tbaa !12
  br label %bb.bm

bb.bm:                                            ; preds = %_get_white_balance_coeff.exit, %convert_any_XYZ_to_LMS.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #31
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.ay
  %i.bym = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.byn = load i32, ptr %i.bym, align 16, !tbaa !99 ; 2 uses
  %i.byo = icmp ult i32 %i.byn, 5
  br i1 %i.byo, label %.sink.split, label %bb.bo

.sink.split:                                      ; preds = %bb.bn
  %i.byp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.byq = load i32, ptr %i.byp, align 4, !tbaa !338
  %i.byr = sext i32 %i.byq to i64
  %i.bys = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.byt = load i32, ptr %i.bys, align 4, !tbaa !339
  %i.byu = sext i32 %i.byt to i64
  %i.byv = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.byw = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.byx = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.byy = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.byz = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.bza = load float, ptr %i.byz, align 64, !tbaa !112
  %i.bzb = getelementptr inbounds nuw i8, ptr %i.t, i64 132
  %i.bzc = load float, ptr %i.bzb, align 4, !tbaa !113
  %i.bzd = getelementptr inbounds nuw i8, ptr %i.t, i64 140
  %i.bze = load i32, ptr %i.bzd, align 4, !tbaa !114
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.bzg = load i32, ptr %i.bzf, align 8, !tbaa !115
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.t, i64 152
  %i.bzi = load i32, ptr %i.bzh, align 8, !tbaa !116
  call fastcc void @_loop_switch(ptr noundef %2, ptr noundef %3, i64 noundef %i.byr, i64 noundef %i.byu, ptr noundef %i.n, ptr noundef %i.m, ptr noundef nonnull %i.t, ptr noundef nonnull %i.byv, ptr noundef nonnull %i.byw, ptr noundef nonnull %i.byx, ptr noundef nonnull %i.byy, float noundef %i.bza, float noundef %i.bzc, i32 noundef %i.bze, i32 noundef %i.bzg, i32 noundef %i.byn, i32 noundef %i.bzi)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.sink.split
  %i.bzj = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.bzk = load i32, ptr %i.bzj, align 16, !tbaa !90
  %i.bzl = icmp ne i32 %i.bzk, 0
  %or.cond3 = select i1 %i.bzl, i1 %i.ao, i1 false
  br i1 %or.cond3, label %bb.bp, label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.aa, i64 532 ; 2 uses
  %i.bzn = load i32, ptr %i.bzm, align 4, !tbaa !117
  %.not125 = icmp eq i32 %i.bzn, 0
  br i1 %.not125, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.bzo = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.bzp = getelementptr i8, ptr %i.bzo, i64 644
  %.val = load i32, ptr %i.bzp, align 4, !tbaa !72
  %i.bzq = and i32 %.val, 4
  %.not126 = icmp eq i32 %i.bzq, 0
  br i1 %.not126, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.bzr = getelementptr inbounds nuw i8, ptr %i.aa, i64 440 ; 2 uses
  %i.bzs = load ptr, ptr %i.bzr, align 8, !tbaa !100, !noalias !362
  %i.bzt = getelementptr inbounds nuw i8, ptr %i.bzs, i64 48
  %i.bzu = load i64, ptr %i.bzt, align 16, !tbaa !101, !noalias !362
  %i.bzv = shl i64 %i.bzu, 4
  %i.bzw = call ptr @dt_alloc_aligned(i64 noundef %i.bzv) #31, !noalias !362 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bzw, i64 64) ]
  %i.bzx = getelementptr i8, ptr %5, i64 8
  %.val.i = load i32, ptr %i.bzx, align 4, !tbaa !338, !noalias !362
  %i.bzy = getelementptr i8, ptr %5, i64 12
  %.val15.i = load i32, ptr %i.bzy, align 4, !tbaa !339, !noalias !362
  %i.bzz = call fastcc <2 x float> @_extract_patches(ptr noundef readonly %3, i32 %.val.i, i32 %.val15.i, ptr noundef nonnull %i.aa, ptr noundef nonnull readonly %i.m, ptr noundef nonnull readonly %i.o, ptr noundef %i.bzw, i32 noundef 0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !362
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !12, !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31, !noalias !362
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !12, !noalias !362
  %i.caa = load ptr, ptr %i.bzr, align 8, !tbaa !100, !noalias !362
  %i.cab = getelementptr inbounds nuw i8, ptr %i.aa, i64 704
  %i.cac = load ptr, ptr %i.cab, align 64, !tbaa !102, !noalias !362
  call fastcc void @_compute_patches_delta_E(ptr noundef %i.bzw, ptr noundef %i.caa, ptr noundef %i.cac, ptr noundef %i.a, ptr noundef %i.b), !noalias !362
  %i.cad = load float, ptr %i.a, align 4, !tbaa !12, !noalias !362 ; 4 uses
  %i.cae = fcmp reassoc nsz arcp contract afn ugt float %i.cad, 1.200000e+00
  br i1 %i.cae, label %bb.bs, label %_validate_color_checker.exit

bb.bs:                                            ; preds = %bb.br
  %i.caf = fcmp reassoc nsz arcp contract afn ugt float %i.cad, 2.300000e+00
  br i1 %i.caf, label %bb.bt, label %_validate_color_checker.exit

bb.bt:                                            ; preds = %bb.bs
  %i.cag = fcmp reassoc nsz arcp contract afn ugt float %i.cad, 3.400000e+00
  %.str.312..str.311.i137 = select i1 %i.cag, ptr @.str.312, ptr @.str.311
  br label %_validate_color_checker.exit

_validate_color_checker.exit:                     ; preds = %bb.br, %bb.bs, %bb.bt
  %.str.310.sink.i134 = phi ptr [ @.str.309, %bb.br ], [ @.str.310, %bb.bs ], [ %.str.312..str.311.i137, %bb.bt ]
  %i.cah = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.310.sink.i134, i32 noundef 5) #31, !noalias !362
  %i.cai = getelementptr inbounds nuw i8, ptr %i.aa, i64 712 ; 2 uses
  %i.caj = load ptr, ptr %i.cai, align 8, !tbaa !109, !noalias !362
  call void @g_free(ptr noundef %i.caj) #31, !noalias !362
  %i.cak = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.315, i32 noundef 5) #31, !noalias !362
  %i.cal = fpext reassoc nsz arcp contract afn float %i.cad to double
  %i.cam = load float, ptr %i.b, align 4, !tbaa !12, !noalias !362
  %i.can = fpext reassoc nsz arcp contract afn float %i.cam to double
  %.sroa.0.4.vec.extract.i135 = extractelement <2 x float> %i.bzz, i64 1
  %i.cao = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %.sroa.0.4.vec.extract.i135)
  %i.cap = fpext reassoc nsz arcp contract afn float %i.cao to double
  %.sroa.0.0.vec.extract.i136 = extractelement <2 x float> %i.bzz, i64 0
  %i.caq = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i136 to double
  %i.car = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.cak, ptr noundef %i.cah, double noundef %i.cal, double noundef %i.can, double noundef %i.cap, double noundef %i.caq) #31, !noalias !362
end_hunk_0
begin_hunk_1_@commit_params:bb.a
  %i.ci = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bq
  %i.cj = select i1 %or.cond, float 1.000000e+00, float %i.ci ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.cl = load float, ptr %1, align 4, !tbaa !12
  %i.cm = fdiv reassoc nsz arcp contract afn float %i.cl, %.0142
  store float %i.cm, ptr %i.e, align 8, !tbaa !12
  %i.cn = load float, ptr %i.ca, align 4, !tbaa !12
  %i.co = fdiv reassoc nsz arcp contract afn float %i.cn, %.0141
  store float %i.co, ptr %i.cb, align 8, !tbaa !12
  %i.cp = load float, ptr %i.cc, align 4, !tbaa !12
  %i.cq = fdiv reassoc nsz arcp contract afn float %i.cp, %.0140
  store float %i.cq, ptr %i.cd, align 8, !tbaa !12
  %i.cr = load float, ptr %i.ce, align 4, !tbaa !12
  %i.cs = fsub reassoc nsz arcp contract afn float %.0139, %i.cr
  store float %i.cs, ptr %i.cf, align 8, !tbaa !12
  %i.ct = load float, ptr %i.cg, align 4, !tbaa !12
  %i.cu = fsub reassoc nsz arcp contract afn float %i.ct, %.0138
  store float %i.cu, ptr %i.ch, align 8, !tbaa !12
  %i.cv = load float, ptr %i.bj, align 4, !tbaa !12
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, %i.cj
  store float %i.cw, ptr %i.ck, align 8, !tbaa !12
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !12
  %i.cz = fdiv reassoc nsz arcp contract afn float %i.cy, %.0142
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store float %i.cz, ptr %i.da, align 4, !tbaa !12
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dc = load float, ptr %i.db, align 4, !tbaa !12
  %i.dd = fdiv reassoc nsz arcp contract afn float %i.dc, %.0141
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store float %i.dd, ptr %i.de, align 4, !tbaa !12
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.dg = load float, ptr %i.df, align 4, !tbaa !12
  %i.dh = fdiv reassoc nsz arcp contract afn float %i.dg, %.0140
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store float %i.dh, ptr %i.di, align 4, !tbaa !12
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !12
  %i.dl = fsub reassoc nsz arcp contract afn float %.0139, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  store float %i.dl, ptr %i.dm, align 4, !tbaa !12
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.do = load float, ptr %i.dn, align 4, !tbaa !12
  %i.dp = fsub reassoc nsz arcp contract afn float %i.do, %.0138
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  store float %i.dp, ptr %i.dq, align 4, !tbaa !12
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !12
  %i.dt = fmul reassoc nsz arcp contract afn float %i.ds, %i.cj
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  store float %i.dt, ptr %i.du, align 4, !tbaa !12
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !12
  %i.dx = fdiv reassoc nsz arcp contract afn float %i.dw, %.0142
  %i.dy = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store float %i.dx, ptr %i.dy, align 8, !tbaa !12
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !12
  %i.eb = fdiv reassoc nsz arcp contract afn float %i.ea, %.0141
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store float %i.eb, ptr %i.ec, align 8, !tbaa !12
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !12
  %i.ef = fdiv reassoc nsz arcp contract afn float %i.ee, %.0140
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store float %i.ef, ptr %i.eg, align 8, !tbaa !12
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !12
  %i.ej = fsub reassoc nsz arcp contract afn float %.0139, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store float %i.ej, ptr %i.ek, align 8, !tbaa !12
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.em = load float, ptr %i.el, align 4, !tbaa !12
  %i.en = fsub reassoc nsz arcp contract afn float %i.em, %.0138
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store float %i.en, ptr %i.eo, align 8, !tbaa !12
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !12
  %i.er = fmul reassoc nsz arcp contract afn float %i.eq, %i.cj
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store float %i.er, ptr %i.es, align 8, !tbaa !12
  %i.et = icmp eq i32 %i.i, 0
  br i1 %i.et, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !12
  %i.ew = fsub reassoc nsz arcp contract afn float %.0139, %i.ev
  store float %i.ew, ptr %i.cf, align 64, !tbaa !12
  %i.ex = load float, ptr %i.ce, align 4, !tbaa !12
  %i.ey = fsub reassoc nsz arcp contract afn float %.0139, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store float %i.ey, ptr %i.ez, align 8, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store float 0.000000e+00, ptr %i.fa, align 4, !tbaa !12
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 92
  store float 0.000000e+00, ptr %i.fb, align 4, !tbaa !12
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  store float 0.000000e+00, ptr %i.fc, align 4, !tbaa !12
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !23
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 3 uses
  store i32 %i.fe, ptr %i.ff, align 16, !tbaa !99
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !24
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 140
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !114
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !374 ; 3 uses
  %i.fl = fcmp reassoc nsz arcp contract afn oeq float %i.fk, 0.000000e+00
  %i.fm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.fk
  %i.fn = select reassoc nsz arcp contract afn i1 %i.fl, float %i.fk, float %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  store float %i.fn, ptr %i.fo, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !185
  store float %i.fq, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !186
  store float %i.fs, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 4 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !73 ; 11 uses
  store <4 x float> splat (float 1.000000e+00), ptr %i.c, align 16, !tbaa !12
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 112
  %i.fw = tail call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %i.fv) #31
  %.not.i = icmp eq i32 %i.fw, 0
  br i1 %.not.i, label %_get_white_balance_coeff.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fx = load ptr, ptr %i.ft, align 8, !tbaa !73 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 2480
  %i.fz = load i32, ptr %i.fy, align 16, !tbaa !111
  %.not.i.i = icmp eq i32 %i.fz, 0
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 2400
  %..i.i = select i1 %.not.i.i, i64 2416, i64 2448
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 %..i.i
  %i.gc = tail call i32 @dt_dev_equal_chroma(ptr noundef nonnull %i.ga, ptr noundef nonnull %i.gb) #31
  %.not26.i = icmp eq i32 %i.gc, 0
  br i1 %.not26.i, label %bb.o, label %_get_white_balance_coeff.exit

bb.o:                                             ; preds = %bb.n
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fu, i64 2416
  %i.ge = load double, ptr %i.gd, align 16, !tbaa !105 ; 2 uses
  %i.gf = fcmp reassoc nsz arcp contract afn ogt double %i.ge, 0.000000e+00
  br i1 %i.gf, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fu, i64 2424
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !105
  %i.gi = fcmp reassoc nsz arcp contract afn ogt double %i.gh, 0.000000e+00
  br i1 %i.gi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fu, i64 2432
  %i.gk = load double, ptr %i.gj, align 16, !tbaa !105
  %i.gl = fcmp reassoc nsz arcp contract afn ogt double %i.gk, 0.000000e+00
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.gm = phi i1 [ false, %bb.p ], [ false, %bb.o ], [ %i.gl, %bb.q ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fu, i64 2400
  %i.go = load float, ptr %i.gn, align 16, !tbaa !12 ; 2 uses
  %i.gp = fcmp reassoc nsz arcp contract afn ogt float %i.go, 1.000000e+00
  br i1 %i.gp, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fu, i64 2404
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !12
  %i.gs = fcmp reassoc nsz arcp contract afn ogt float %i.gr, 1.000000e+00
  br i1 %i.gs, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fu, i64 2408
  %i.gu = load float, ptr %i.gt, align 8, !tbaa !12
  %i.gv = fcmp reassoc nsz arcp contract afn ogt float %i.gu, 1.000000e+00
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.gw = phi i1 [ true, %bb.s ], [ true, %bb.r ], [ %i.gv, %bb.t ]
  %or.cond.i = select i1 %i.gm, i1 %i.gw, i1 false
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_get_white_balance_coeff.exit

.preheader.preheader.i:                           ; preds = %bb.u
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fu, i64 2424
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !105
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fu, i64 2404
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !12
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fu, i64 2432
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fu, i64 2408
  %i.hd = load <2 x double>, ptr %i.hb, align 16, !tbaa !105
  %i.he = insertelement <4 x double> poison, double %i.ge, i64 0
  %i.hf = insertelement <4 x double> %i.he, double %i.gy, i64 1
  %i.hg = shufflevector <2 x double> %i.hd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hh = shufflevector <4 x double> %i.hf, <4 x double> %i.hg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hi = fptrunc <4 x double> %i.hh to <4 x float>
  %i.hj = load <2 x float>, ptr %i.hc, align 8, !tbaa !12
  %i.hk = insertelement <4 x float> poison, float %i.go, i64 0
  %i.hl = insertelement <4 x float> %i.hk, float %i.ha, i64 1
  %i.hm = shufflevector <2 x float> %i.hj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hn = shufflevector <4 x float> %i.hl, <4 x float> %i.hm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ho = fdiv reassoc nsz arcp contract afn <4 x float> %i.hi, %i.hn
  store <4 x float> %i.ho, ptr %i.c, align 16, !tbaa !12
  br label %_get_white_balance_coeff.exit

_get_white_balance_coeff.exit:                    ; preds = %bb.m, %bb.n, %bb.u, %.preheader.preheader.i
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !122
  %i.hr = load ptr, ptr %i.ft, align 8, !tbaa !73
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 112
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !187
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !188
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !189
  call fastcc void @illuminant_to_xy(i32 noundef %i.hq, ptr noundef nonnull %i.hs, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, float noundef %i.hu, i32 noundef %i.hw, i32 noundef %i.hy)
  %i.hz = load i32, ptr %i.hp, align 4, !tbaa !122 ; 2 uses
  %i.ia = icmp eq i32 %i.hz, 10
  %.pre190 = load float, ptr %i.a, align 4, !tbaa !12 ; 4 uses
  %.pre191 = load float, ptr %i.b, align 4, !tbaa !12 ; 5 uses
  br i1 %i.ia, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_get_white_balance_coeff.exit
  call fastcc void @_check_if_close_to_daylight(float noundef %.pre190, float noundef %.pre191, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.ff)
  %.pre = load i32, ptr %i.hp, align 4, !tbaa !122
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_get_white_balance_coeff.exit
  %i.ib = phi i32 [ %.pre, %bb.v ], [ %i.hz, %_get_white_balance_coeff.exit ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.e, i64 148 ; 2 uses
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !110
  %i.id = fdiv reassoc nsz arcp contract afn float %.pre190, %.pre191 ; 10 uses
  %i.ie = fadd reassoc nsz arcp contract afn float %.pre190, %.pre191
  %i.if = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ie
  %i.ig = fdiv reassoc nsz arcp contract afn float %i.if, %.pre191 ; 10 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 5 uses
  %i.ii = load i32, ptr %i.ff, align 16, !tbaa !99
  switch i32 %i.ii, label %bb.z [
    i32 2, label %bb.x
    i32 0, label %bb.x
    i32 1, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.ij = fmul reassoc nsz arcp contract afn float %i.id, f0x3F652546
  %i.ik = fadd reassoc nsz arcp contract afn float %i.ij, 2.664000e-01
  %i.il = fmul reassoc nsz arcp contract afn float %i.ig, -1.614000e-01
  %i.im = fadd reassoc nsz arcp contract afn float %i.ik, %i.il
  store float %i.im, ptr %i.ih, align 16, !tbaa !12
  %i.in = fmul reassoc nsz arcp contract afn float %i.id, f0xBF400D1B
  %i.io = fadd reassoc nsz arcp contract afn float %i.in, 1.713500e+00
  %i.ip = fmul reassoc nsz arcp contract afn float %i.ig, 3.670000e-02
  %i.iq = fadd reassoc nsz arcp contract afn float %i.io, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.e, i64 116
  store float %i.iq, ptr %i.ir, align 4, !tbaa !12
  %i.is = fmul reassoc nsz arcp contract afn float %i.id, 3.890000e-02
  %i.it = fadd reassoc nsz arcp contract afn float %i.is, -6.850000e-02
  %i.iu = fmul reassoc nsz arcp contract afn float %i.ig, 1.029600e+00
  %i.iv = fadd reassoc nsz arcp contract afn float %i.it, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store float %i.iv, ptr %i.iw, align 8, !tbaa !12
  %i.ix = fadd reassoc nsz arcp contract afn float %i.id, 1.000000e+00
  %i.iy = fadd reassoc nsz arcp contract afn float %i.ix, %i.ig
  %i.iz = fmul reassoc nsz arcp contract afn float %i.iy, 0.000000e+00
  br label %convert_any_XYZ_to_LMS.exit

bb.y:                                             ; preds = %bb.w
  %i.ja = fmul reassoc nsz arcp contract afn float %i.id, 4.012880e-01
  %i.jb = fadd reassoc nsz arcp contract afn float %i.ja, 6.501730e-01
  %i.jc = fmul reassoc nsz arcp contract afn float %i.ig, -5.146100e-02
  %i.jd = fadd reassoc nsz arcp contract afn float %i.jb, %i.jc
  store float %i.jd, ptr %i.ih, align 16, !tbaa !12
  %i.je = fmul reassoc nsz arcp contract afn float %i.id, -2.502680e-01
  %i.jf = fadd reassoc nsz arcp contract afn float %i.je, f0x3F9A2A3D
  %i.jg = fmul reassoc nsz arcp contract afn float %i.ig, 4.585400e-02
  %i.jh = fadd reassoc nsz arcp contract afn float %i.jf, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.e, i64 116
  store float %i.jh, ptr %i.ji, align 4, !tbaa !12
  %i.jj = fmul reassoc nsz arcp contract afn float %i.id, -2.079000e-03
  %i.jk = fadd reassoc nsz arcp contract afn float %i.jj, 4.895200e-02
  %i.jl = fmul reassoc nsz arcp contract afn float %i.ig, 9.531270e-01
  %i.jm = fadd reassoc nsz arcp contract afn float %i.jk, %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store float %i.jm, ptr %i.jn, align 8, !tbaa !12
  %i.jo = fadd reassoc nsz arcp contract afn float %i.id, 1.000000e+00
  %i.jp = fadd reassoc nsz arcp contract afn float %i.jo, %i.ig
  %i.jq = fmul reassoc nsz arcp contract afn float %i.jp, 0.000000e+00
  br label %convert_any_XYZ_to_LMS.exit

bb.z:                                             ; preds = %bb.w
  store float %i.id, ptr %i.ih, align 16, !tbaa !12
  %i.jr = getelementptr inbounds nuw i8, ptr %i.e, i64 116
  store float 1.000000e+00, ptr %i.jr, align 4, !tbaa !12
  br label %convert_any_XYZ_to_LMS.exit

convert_any_XYZ_to_LMS.exit:                      ; preds = %bb.x, %bb.y, %bb.z
  %.sink11.i = phi i64 [ 8, %bb.z ], [ 12, %bb.y ], [ 12, %bb.x ]
  %.sink.i = phi float [ %i.ig, %bb.z ], [ %i.jq, %bb.y ], [ %i.iz, %bb.x ]
  %i.js = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.sink11.i
  store float %.sink.i, ptr %i.js, align 4, !tbaa !12
  %i.jt = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  store float 0.000000e+00, ptr %i.jt, align 4, !tbaa !12
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !46
  %i.jw = getelementptr i8, ptr %i.jv, i64 644
  %.val = load i32, ptr %i.jw, align 4, !tbaa !72
  %i.jx = and i32 %.val, 4
  %i.jy = icmp ne i32 %i.jx, 0
  %i.jz = icmp ne ptr %i.g, null                  ; 3 uses
  %or.cond3 = select i1 %i.jy, i1 %i.jz, i1 false
  br i1 %or.cond3, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %convert_any_XYZ_to_LMS.exit
  %i.ka = getelementptr inbounds nuw i8, ptr %i.g, i64 528
  %i.kb = load i32, ptr %i.ka, align 16, !tbaa !97
  %i.kc = icmp ne i32 %i.kb, 0
  %i.kd = getelementptr inbounds nuw i8, ptr %i.g, i64 532
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !117
  %i.kf = icmp ne i32 %i.ke, 0
  br label %bb.ab

bb.ab:                                            ; preds = %convert_any_XYZ_to_LMS.exit, %bb.aa
  %i.kg = phi i1 [ %i.kc, %bb.aa ], [ false, %convert_any_XYZ_to_LMS.exit ] ; 2 uses
  %i.kh = phi i1 [ %i.kf, %bb.aa ], [ false, %convert_any_XYZ_to_LMS.exit ] ; 2 uses
  %i.ki = call ptr @get_f(ptr noundef nonnull @.str.84) ; 3 uses
  %i.kj = load i32, ptr %i.ic, align 4, !tbaa !110 ; 2 uses
  %.not.i156 = icmp eq ptr %i.ki, null
  br i1 %.not.i156, label %dt_introspection_get_enum_name.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.kk = load i32, ptr %i.ki, align 8, !tbaa !103
  %i.kl = icmp eq i32 %i.kk, 16
  br i1 %i.kl, label %bb.ad, label %dt_introspection_get_enum_name.exit

bb.ad:                                            ; preds = %bb.ac
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 72
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !103 ; 3 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !376 ; 2 uses
  %.not1214.i = icmp eq ptr %i.ko, null
  br i1 %.not1214.i, label %dt_introspection_get_enum_name.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ad
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !377
  %i.kr = icmp eq i32 %i.kq, %i.kj
  br i1 %i.kr, label %dt_introspection_get_enum_name.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0915.i187 = phi ptr [ %i.ks, %.lr.ph.i ], [ %i.kn, %.lr.ph.i.preheader ] ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.0915.i187, i64 24 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !376 ; 2 uses
  %.not12.i = icmp eq ptr %i.kt, null
  br i1 %.not12.i, label %dt_introspection_get_enum_name.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.ku = getelementptr inbounds nuw i8, ptr %.0915.i187, i64 32
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !377
  %i.kw = icmp eq i32 %i.kv, %i.kj
  br i1 %i.kw, label %dt_introspection_get_enum_name.exit, label %.lr.ph

dt_introspection_get_enum_name.exit:              ; preds = %.lr.ph.i, %.lr.ph, %.lr.ph.i.preheader, %bb.ab, %bb.ac, %bb.ad
  %.1.i = phi ptr [ null, %bb.ab ], [ null, %bb.ac ], [ null, %bb.ad ], [ %i.ko, %.lr.ph.i.preheader ], [ %i.kt, %.lr.ph.i ], [ null, %.lr.ph ] ; 2 uses
  %i.kx = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !160
  %i.ky = and i32 %i.kx, 2097152
  %.not151 = icmp eq i32 %i.ky, 0
  br i1 %.not151, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %dt_introspection_get_enum_name.exit
  %i.kz = select i1 %i.kg, ptr @.str.86, ptr @.str.87
  %i.la = select i1 %i.kh, ptr @.str.88, ptr @.str.87
  %i.lb = load float, ptr %i.ht, align 4, !tbaa !187
  %i.lc = fptosi float %i.lb to i32
  %i.ld = fpext reassoc nsz arcp contract afn float %.pre190 to double
  %i.le = fpext reassoc nsz arcp contract afn float %.pre191 to double
  %i.lf = fpext reassoc nsz arcp contract afn float %i.id to double
  %i.lg = fpext reassoc nsz arcp contract afn float %i.ig to double
  %i.lh = load <2 x float>, ptr %i.ih, align 16, !tbaa !12
  %i.li = fpext <2 x float> %i.lh to <2 x double> ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.lk = load float, ptr %i.lj, align 8, !tbaa !12
  %i.ll = fpext reassoc nsz arcp contract afn float %i.lk to double
  %.not152 = icmp eq ptr %.1.i, null
  %i.lm = select i1 %.not152, ptr @.str.89, ptr %.1.i
  %i.ln = extractelement <2 x double> %i.li, i64 0
  %i.lo = extractelement <2 x double> %i.li, i64 1
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.85, ptr noundef nonnull %i.kz, ptr noundef nonnull %i.la, i32 noundef %i.lc, double noundef %i.ld, double noundef %i.le, double noundef %i.lf, double noundef 1.000000e+00, double noundef %i.lg, double noundef %i.ln, double noundef %i.lo, double noundef %i.ll, ptr noundef nonnull %i.lm) #31
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %dt_introspection_get_enum_name.exit
  %i.lp = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.lq = load float, ptr %i.lp, align 8, !tbaa !12
  %i.lr = fdiv reassoc nsz arcp contract afn float f0x3F51729B, %i.lq
  %i.ls = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.lr, float 8.340000e-02)
  %i.lt = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store float %i.ls, ptr %i.lt, align 64, !tbaa !112
  %i.lu = load ptr, ptr %i.ft, align 8, !tbaa !73
  %i.lv = load i32, ptr %i.lu, align 16, !tbaa !90
  %i.lw = icmp ne i32 %i.lv, 0
  %or.cond7 = select i1 %i.lw, i1 %i.jz, i1 false
  %or.cond9 = select i1 %i.kg, i1 true, i1 %i.kh
  %or.cond155 = select i1 %or.cond7, i1 %or.cond9, i1 false
  br i1 %or.cond155, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 216
  store i32 0, ptr %i.lx, align 8, !tbaa !378
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ly = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !379 ; 2 uses
  %.not153 = icmp eq ptr %i.lz, null
  br i1 %.not153, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !381
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.mb = phi i32 [ %i.ma, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  br i1 %i.jz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.mc = icmp ugt i32 %i.mb, 1
  %i.md = trunc i32 %i.mb to i1
  %i.me = and i1 %i.mc, %i.md
  %i.mf = zext i1 %i.me to i32
  %i.mg = getelementptr inbounds nuw i8, ptr %i.g, i64 544
  store i32 %i.mf, ptr %i.mg, align 32, !tbaa !121
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_check_if_close_to_daylight(float noundef %0, float noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 6 uses
  %i.b = fcmp reassoc nsz arcp contract afn olt float %0, f0x7F7FFFFF
  br i1 %i.b, label %xy_to_CCT.exit, label %xy_to_CCT.exit.thread

xy_to_CCT.exit:                                   ; preds = %bb.a
  %i.c = fadd reassoc nsz arcp contract afn float %1, -1.735000e-01
  %i.d = fsub reassoc nsz arcp contract afn float 3.366000e-01, %0
  %i.e = fdiv reassoc nsz arcp contract afn float %i.d, %i.c ; 3 uses
  %i.f = fmul reassoc nsz arcp contract afn float %i.e, f0x3F8AE3F1
  %i.g = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.f)
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, f0x45C36E6D
  %i.i = fadd reassoc nsz arcp contract afn float %i.h, f0xC46D773E
  %i.j = fmul reassoc nsz arcp contract afn float %i.e, f0x409FB049
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.j)
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, f0x41E5A5DE
  %i.m = fadd reassoc nsz arcp contract afn float %i.i, %i.l
  %i.n = fmul reassoc nsz arcp contract afn float %i.e, f0x41608FB8
  %i.o = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.n)
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, 4.000000e-05
  %i.q = fadd reassoc nsz arcp contract afn float %i.m, %i.p ; 3 uses
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.q, 3.000000e+03
  %i.s = fcmp reassoc nsz arcp contract afn ogt float %i.q, 1.667000e+03
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %bb.b, label %xy_to_CCT.exit.thread

bb.b:                                             ; preds = %xy_to_CCT.exit
  %i.t = tail call reassoc nsz arcp contract afn fastcc float @CCT_reverse_lookup(float noundef %0, float noundef %1)
  br label %xy_to_CCT.exit.thread

xy_to_CCT.exit.thread:                            ; preds = %bb.a, %bb.b, %xy_to_CCT.exit
  %.0 = phi nsz float [ %i.t, %bb.b ], [ %i.q, %xy_to_CCT.exit ], [ 0.000000e+00, %bb.a ] ; 16 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %xy_to_CCT.exit.thread
  store float %.0, ptr %2, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %xy_to_CCT.exit.thread
  %i.u = fmul reassoc nsz arcp contract afn float %1, 1.200000e+01
  %i.v = fmul reassoc nsz arcp contract afn float %0, 1.882000e+00
  %i.w = fsub reassoc nsz arcp contract afn float %i.u, %i.v
  %i.x = fadd reassoc nsz arcp contract afn float %i.w, 2.908800e+00 ; 2 uses
  %i.y = fmul reassoc nsz arcp contract afn float %0, 5.593200e+00
  %i.z = fpext reassoc nsz arcp contract afn float %i.y to double
  %i.aa = fpext reassoc nsz arcp contract afn float %1 to double
  %i.ab = fmul reassoc nsz arcp contract afn double %i.aa, 1.911600e+00
  %i.ac = fadd reassoc nsz arcp contract afn double %i.ab, %i.z
  %i.ad = fptrunc reassoc nsz arcp contract afn double %i.ac to float
  %i.ae = fmul reassoc nsz arcp contract afn float %1, 7.897200e+00
  %i.af = fdiv reassoc nsz arcp contract afn float %i.ad, %i.x ; 2 uses
  %i.ag = fdiv reassoc nsz arcp contract afn float %i.ae, %i.x ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 0, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  call fastcc void @illuminant_to_xy(i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ah, float noundef %.0, i32 noundef 12, i32 noundef 9)
  %.val34 = load float, ptr %i.a, align 8, !tbaa !12 ; 2 uses
  %.val35 = load float, ptr %i.ah, align 4, !tbaa !12 ; 3 uses
  %i.ai = fmul reassoc nsz arcp contract afn float %.val35, 1.200000e+01
  %i.aj = fmul reassoc nsz arcp contract afn float %.val34, 1.882000e+00
  %i.ak = fsub reassoc nsz arcp contract afn float %i.ai, %i.aj
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, 2.908800e+00 ; 2 uses
  %i.am = fmul reassoc nsz arcp contract afn float %.val34, 5.593200e+00
  %i.an = fpext reassoc nsz arcp contract afn float %i.am to double
  %i.ao = fpext reassoc nsz arcp contract afn float %.val35 to double
  %i.ap = fmul reassoc nsz arcp contract afn double %i.ao, 1.911600e+00
  %i.aq = fadd reassoc nsz arcp contract afn double %i.ap, %i.an
  %i.ar = fptrunc reassoc nsz arcp contract afn double %i.aq to float
  %i.as = fmul reassoc nsz arcp contract afn float %.val35, 7.897200e+00
  %i.at = fdiv reassoc nsz arcp contract afn float %i.ar, %i.al
  %i.au = fdiv reassoc nsz arcp contract afn float %i.as, %i.al
  %i.av = fsub reassoc nsz arcp contract afn float %i.at, %i.af
  %i.aw = fsub reassoc nsz arcp contract afn float %i.au, %i.ag
  %i.ax = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.av, float noundef %i.aw) #33 ; 4 uses
  %i.ay = fcmp reassoc nsz arcp contract afn oge float %.0, 1.667000e+03 ; 2 uses
  %i.az = fcmp reassoc nsz arcp contract afn ole float %.0, 4.000000e+03 ; 2 uses
  %or.cond.i24.i = and i1 %i.ay, %i.az
  br i1 %or.cond.i24.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ba = fdiv reassoc nsz arcp contract afn float f0x4D7DCBA8, %.0
  %i.bb = fsub reassoc nsz arcp contract afn float f0xC864DDBA, %i.ba
  %i.bc = fdiv reassoc nsz arcp contract afn float %i.bb, %.0
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, f0x445B6C85
  %i.be = fdiv reassoc nsz arcp contract afn float %i.bd, %.0
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, 1.799100e-01
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.bg = fcmp reassoc nsz arcp contract afn ogt float %.0, 4.000000e+03
  %i.bh = fcmp reassoc nsz arcp contract afn ole float %.0, 2.500000e+04
  %or.cond3.i25.i = and i1 %i.bg, %i.bh
  br i1 %or.cond3.i25.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = fdiv reassoc nsz arcp contract afn float f0x4F345AC2, %.0
  %i.bj = fsub reassoc nsz arcp contract afn float f0x4A009A78, %i.bi
  %i.bk = fdiv reassoc nsz arcp contract afn float %i.bj, %.0
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, f0x435EA27C
  %i.bm = fdiv reassoc nsz arcp contract afn float %i.bl, %.0
  %i.bn = fadd reassoc nsz arcp contract afn float %i.bm, 2.403900e-01
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.038.i.i = phi nsz float [ %i.bf, %bb.e ], [ %i.bn, %bb.g ], [ 0.000000e+00, %bb.f ] ; 8 uses
  %i.bo = fcmp reassoc nsz arcp contract afn ole float %.0, 2.222000e+03
  %or.cond5.i.i = and i1 %i.ay, %i.bo
  br i1 %or.cond5.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bp = fmul reassoc nsz arcp contract afn float %.038.i.i, f0x3F8D9DE8
  %i.bq = fsub reassoc nsz arcp contract afn float f0xBFAC8EE0, %i.bp
  br label %CCT_to_xy_blackbody.exit.i

bb.j:                                             ; preds = %bb.h
  %i.br = fcmp reassoc nsz arcp contract afn ogt float %.0, 2.222000e+03
  %or.cond7.i.i = and i1 %i.br, %i.az
  br i1 %or.cond7.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = fmul reassoc nsz arcp contract afn float %.038.i.i, f0x3F747772
  %i.bt = fsub reassoc nsz arcp contract afn float f0xBFAFE553, %i.bs
  br label %CCT_to_xy_blackbody.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bu = fcmp reassoc nsz arcp contract afn ogt float %.0, 4.000000e+03
  %i.bv = fcmp reassoc nsz arcp contract afn ole float %.0, 2.500000e+04
  %or.cond9.i.i = and i1 %i.bu, %i.bv
  br i1 %or.cond9.i.i, label %bb.m, label %illuminant_to_xy.exit

bb.m:                                             ; preds = %bb.l
  %i.bw = fmul reassoc nsz arcp contract afn float %.038.i.i, f0x40453B86
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, f0xC0BBF2C9
  br label %CCT_to_xy_blackbody.exit.i

CCT_to_xy_blackbody.exit.i:                       ; preds = %bb.m, %bb.k, %bb.i
  %.sink41.i = phi float [ %i.bq, %bb.i ], [ %i.bt, %bb.k ], [ %i.bx, %bb.m ]
end_hunk_1
begin_hunk_2_@get_f:bb.a
  br i1 %.not48, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.v = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.100) #31
  %.not49 = icmp eq i32 %i.v, 0
  br i1 %.not49, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.w = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.97) #31
  %.not50 = icmp eq i32 %i.w, 0
  br i1 %.not50, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.x = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.98) #31
  %.not51 = icmp eq i32 %i.x, 0
  br i1 %.not51, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.y = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.99) #31
  %.not52 = icmp eq i32 %i.y, 0
  br i1 %.not52, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.z = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.125) #31
  %.not53 = icmp eq i32 %i.z, 0
  br i1 %.not53, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aa = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.126) #31
  %.not54 = icmp eq i32 %i.aa, 0
  br i1 %.not54, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ab = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.174) #31
  %.not55 = icmp eq i32 %i.ab, 0
  %. = select i1 %.not55, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2376), ptr null
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2288), %bb.aa ], [ %., %bb.ab ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2200), %bb.z ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2112), %bb.y ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2024), %bb.x ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1936), %bb.w ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1848), %bb.v ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1760), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1672), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1584), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1496), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1408), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1320), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1232), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1144), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1056), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 968), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 880), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 792), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 704), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 616), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #15

; Function Attrs: nounwind uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @dt_alloc_aligned(i64 noundef 192) #31 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %dt_calloc_aligned.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(192) %i.a, i8 0, i64 192, i1 false)
  br label %dt_calloc_aligned.exit

dt_calloc_aligned.exit:                           ; preds = %bb.a, %bb.b
  call void @llvm.assume(i1 true) [ "align"(ptr %i.a, i64 64) ]
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !45
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nounwind uwtable
define void @cleanup_pipe(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  tail call void @dt_dev_reset_chroma(ptr noundef %i.b) #31
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !45
  tail call void @free(ptr noundef %i.d) #31
  store ptr null, ptr %i.c, align 16, !tbaa !45
  ret void
}

declare void @dt_dev_reset_chroma(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define void @gui_reset(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  store i32 0, ptr %i.c, align 64, !tbaa !161
  tail call void @dt_iop_color_picker_reset(ptr noundef %0, i32 noundef 1) #31
  tail call void @gui_changed(ptr noundef %0, ptr noundef null, ptr noundef null)
  ret void
}

declare void @dt_iop_color_picker_reset(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = alloca [4 x float], align 16             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 40 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !57  ; 39 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !190
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %bb.b, label %.thread178

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %2, align 4, !tbaa !15
  %i.k = icmp eq i32 %i.j, 10
  br i1 %i.k, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73   ; 11 uses
  store <4 x float> splat (float 1.000000e+00), ptr %i.a, align 16, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.o = tail call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %i.n) #31
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %_get_white_balance_coeff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !73   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2480
  %i.r = load i32, ptr %i.q, align 16, !tbaa !111
  %.not.i.i = icmp eq i32 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 2400
  %..i.i = select i1 %.not.i.i, i64 2416, i64 2448
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %..i.i
  %i.u = tail call i32 @dt_dev_equal_chroma(ptr noundef nonnull %i.s, ptr noundef nonnull %i.t) #31
  %.not26.i = icmp eq i32 %i.u, 0
  br i1 %.not26.i, label %bb.f, label %_get_white_balance_coeff.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 2416
  %i.w = load double, ptr %i.v, align 16, !tbaa !105 ; 2 uses
  %i.x = fcmp reassoc nsz arcp contract afn ogt double %i.w, 0.000000e+00
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 2424
  %i.z = load double, ptr %i.y, align 8, !tbaa !105
  %i.aa = fcmp reassoc nsz arcp contract afn ogt double %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 2432
  %i.ac = load double, ptr %i.ab, align 16, !tbaa !105
  %i.ad = fcmp reassoc nsz arcp contract afn ogt double %i.ac, 0.000000e+00
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ae = phi i1 [ false, %bb.g ], [ false, %bb.f ], [ %i.ad, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 2400
  %i.ag = load float, ptr %i.af, align 16, !tbaa !12 ; 2 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %i.ag, 1.000000e+00
  br i1 %i.ah, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 2404
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !12
  %i.ak = fcmp reassoc nsz arcp contract afn ogt float %i.aj, 1.000000e+00
  br i1 %i.ak, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 2408
  %i.am = load float, ptr %i.al, align 8, !tbaa !12
  %i.an = fcmp reassoc nsz arcp contract afn ogt float %i.am, 1.000000e+00
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ao = phi i1 [ true, %bb.j ], [ true, %bb.i ], [ %i.an, %bb.k ]
  %or.cond.i = select i1 %i.ae, i1 %i.ao, i1 false
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_get_white_balance_coeff.exit

.preheader.preheader.i:                           ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 2424
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !105
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 2404
  %i.as = load float, ptr %i.ar, align 4, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 2432
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 2408
  %i.av = load <2 x double>, ptr %i.at, align 16, !tbaa !105
  %i.aw = insertelement <4 x double> poison, double %i.w, i64 0
  %i.ax = insertelement <4 x double> %i.aw, double %i.aq, i64 1
  %i.ay = shufflevector <2 x double> %i.av, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.az = shufflevector <4 x double> %i.ax, <4 x double> %i.ay, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ba = fptrunc <4 x double> %i.az to <4 x float>
  %i.bb = load <2 x float>, ptr %i.au, align 8, !tbaa !12
  %i.bc = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.as, i64 1
  %i.be = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bf = shufflevector <4 x float> %i.bd, <4 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bg = fdiv reassoc nsz arcp contract afn <4 x float> %i.ba, %i.bf
  store <4 x float> %i.bg, ptr %i.a, align 16, !tbaa !12
  br label %_get_white_balance_coeff.exit

_get_white_balance_coeff.exit:                    ; preds = %bb.d, %bb.e, %bb.l, %.preheader.preheader.i
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !73
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 140 ; 2 uses
  %i.bl = call fastcc i32 @find_temperature_from_raw_coeffs(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bk) ; 0 uses
  %i.bm = load float, ptr %i.bj, align 4, !tbaa !185
  %i.bn = load float, ptr %i.bk, align 4, !tbaa !186
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  call fastcc void @_check_if_close_to_daylight(float noundef %i.bm, float noundef %i.bn, ptr noundef nonnull %i.bo, ptr noundef null, ptr noundef nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %_get_white_balance_coeff.exit, %bb.b
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !122
  switch i32 %i.br, label %.thread178 [
    i32 2, label %.thread
    i32 6, label %bb.n
    i32 10, label %bb.o
  ]

.thread:                                          ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 928
  %i.bt = load float, ptr %i.bs, align 32, !tbaa !191
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store float %i.bt, ptr %i.bu, align 4, !tbaa !187
  br label %.thread178

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 932
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !192
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store float %i.bw, ptr %i.bx, align 4, !tbaa !187
  br label %.thread178

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !73 ; 11 uses
  store <4 x float> splat (float 1.000000e+00), ptr %i.b, align 16, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 112
  %i.cb = call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %i.ca) #31
  %.not.i169 = icmp eq i32 %i.cb, 0
  br i1 %.not.i169, label %_get_white_balance_coeff.exit176, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !73 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2480
  %i.ce = load i32, ptr %i.cd, align 16, !tbaa !111
  %.not.i.i170 = icmp eq i32 %i.ce, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 2400
  %..i.i171 = select i1 %.not.i.i170, i64 2416, i64 2448
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %..i.i171
  %i.ch = call i32 @dt_dev_equal_chroma(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cg) #31
  %.not26.i172 = icmp eq i32 %i.ch, 0
  br i1 %.not26.i172, label %bb.q, label %_get_white_balance_coeff.exit176

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 2416
  %i.cj = load double, ptr %i.ci, align 16, !tbaa !105 ; 2 uses
  %i.ck = fcmp reassoc nsz arcp contract afn ogt double %i.cj, 0.000000e+00
  br i1 %i.ck, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 2424
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !105
  %i.cn = fcmp reassoc nsz arcp contract afn ogt double %i.cm, 0.000000e+00
  br i1 %i.cn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 2432
  %i.cp = load double, ptr %i.co, align 16, !tbaa !105
  %i.cq = fcmp reassoc nsz arcp contract afn ogt double %i.cp, 0.000000e+00
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.cr = phi i1 [ false, %bb.r ], [ false, %bb.q ], [ %i.cq, %bb.s ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bz, i64 2400
  %i.ct = load float, ptr %i.cs, align 16, !tbaa !12 ; 2 uses
  %i.cu = fcmp reassoc nsz arcp contract afn ogt float %i.ct, 1.000000e+00
  br i1 %i.cu, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 2404
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !12
  %i.cx = fcmp reassoc nsz arcp contract afn ogt float %i.cw, 1.000000e+00
  br i1 %i.cx, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bz, i64 2408
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !12
  %i.da = fcmp reassoc nsz arcp contract afn ogt float %i.cz, 1.000000e+00
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.db = phi i1 [ true, %bb.u ], [ true, %bb.t ], [ %i.da, %bb.v ]
  %or.cond.i174 = select i1 %i.cr, i1 %i.db, i1 false
  br i1 %or.cond.i174, label %.preheader.preheader.i175, label %_get_white_balance_coeff.exit176

.preheader.preheader.i175:                        ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bz, i64 2424
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !105
  %i.de = getelementptr inbounds nuw i8, ptr %i.bz, i64 2404
  %i.df = load float, ptr %i.de, align 4, !tbaa !12
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bz, i64 2432
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bz, i64 2408
  %i.di = load <2 x double>, ptr %i.dg, align 16, !tbaa !105
  %i.dj = insertelement <4 x double> poison, double %i.cj, i64 0
  %i.dk = insertelement <4 x double> %i.dj, double %i.dd, i64 1
  %i.dl = shufflevector <2 x double> %i.di, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dm = shufflevector <4 x double> %i.dk, <4 x double> %i.dl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dn = fptrunc <4 x double> %i.dm to <4 x float>
  %i.do = load <2 x float>, ptr %i.dh, align 8, !tbaa !12
  %i.dp = insertelement <4 x float> poison, float %i.ct, i64 0
  %i.dq = insertelement <4 x float> %i.dp, float %i.df, i64 1
  %i.dr = shufflevector <2 x float> %i.do, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ds = shufflevector <4 x float> %i.dq, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dt = fdiv reassoc nsz arcp contract afn <4 x float> %i.dn, %i.ds
  store <4 x float> %i.dt, ptr %i.b, align 16, !tbaa !12
  br label %_get_white_balance_coeff.exit176

_get_white_balance_coeff.exit176:                 ; preds = %bb.o, %bb.p, %bb.w, %.preheader.preheader.i175
  %i.du = load ptr, ptr %i.by, align 8, !tbaa !73
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 112
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 140 ; 2 uses
  %i.dy = call fastcc i32 @find_temperature_from_raw_coeffs(ptr noundef nonnull %i.dv, ptr noundef nonnull %i.b, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dx)
  %i.dz = load float, ptr %i.dw, align 4, !tbaa !185
  %i.ea = load float, ptr %i.dx, align 4, !tbaa !186
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  call fastcc void @_check_if_close_to_daylight(float noundef %i.dz, float noundef %i.ea, ptr noundef nonnull %i.eb, ptr noundef null, ptr noundef nonnull %i.ec)
  %.not155 = icmp eq i32 %i.dy, 0
  br i1 %.not155, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_get_white_balance_coeff.exit176
  %i.ed = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.102, i32 noundef 5) #31
  call void (ptr, ...) @dt_control_log(ptr noundef %i.ed) #31
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_get_white_balance_coeff.exit176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %.thread178

.thread178:                                       ; preds = %bb.m, %bb.n, %.thread, %bb.y, %bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.ef = load ptr, ptr %i.ee, align 16, !tbaa !193
  %i.eg = icmp eq ptr %1, %i.ef                   ; 2 uses
  br i1 %i.eg, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.thread178
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !122
  switch i32 %i.ei, label %bb.ab [
    i32 2, label %.thread179
    i32 6, label %bb.aa
  ]

.thread179:                                       ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !187
  %i.el = getelementptr inbounds nuw i8, ptr %i.f, i64 928
  store float %i.ek, ptr %i.el, align 32, !tbaa !191
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.em = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.en = load float, ptr %i.em, align 4, !tbaa !187
  %i.eo = getelementptr inbounds nuw i8, ptr %i.f, i64 932
  store float %i.en, ptr %i.eo, align 4, !tbaa !192
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %.thread179, %bb.aa, %.thread178
  %i.ep = load ptr, ptr %i.g, align 8, !tbaa !190
  %i.eq = icmp eq ptr %1, %i.ep
  br i1 %i.eq, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.er = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.es = load ptr, ptr %i.er, align 16, !tbaa !194
  %i.et = icmp eq ptr %1, %i.es
  br i1 %i.et, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !195
  %i.ew = icmp eq ptr %1, %i.ev
  %brmerge = or i1 %i.eg, %i.ew
  br i1 %brmerge, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !122 ; 4 uses
  switch i32 %i.ey, label %bb.af [
    i32 7, label %bb.ag
    i32 10, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ez = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !187
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !188
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !189
  call fastcc void @illuminant_to_xy(i32 noundef %i.ey, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.ez, ptr noundef nonnull %i.fa, float noundef %i.fc, i32 noundef %i.fe, i32 noundef %i.fg)
  %.pr = load i32, ptr %i.ex, align 4, !tbaa !122
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.ae, %bb.af
  %i.fh = phi i32 [ %i.ey, %bb.ae ], [ %i.ey, %bb.ae ], [ %.pr, %bb.af ]
  switch i32 %i.fh, label %bb.ah [
    i32 2, label %bb.ai
    i32 6, label %bb.ai
    i32 10, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !185
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !186
  %i.fm = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  call fastcc void @_check_if_close_to_daylight(float noundef %i.fj, float noundef %i.fl, ptr noundef nonnull %i.fm, ptr noundef null, ptr noundef null)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ad, %bb.ag, %bb.ag, %bb.ag, %bb.ah
  %i.fn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 104
  %i.fp = atomicrmw add ptr %i.fo, i32 1 seq_cst, align 4 ; 0 uses
  %.not161 = icmp eq ptr %1, null                 ; 3 uses
  br i1 %.not161, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fq = getelementptr inbounds nuw i8, ptr %i.f, i64 848
  %i.fr = load ptr, ptr %i.fq, align 16, !tbaa !196
  %i.fs = icmp eq ptr %1, %i.fr
  br i1 %i.fs, label %.thread182, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ft = getelementptr inbounds nuw i8, ptr %i.f, i64 856
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !197
  %i.fv = icmp eq ptr %1, %i.fu
  br i1 %i.fv, label %.thread182, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fw = getelementptr inbounds nuw i8, ptr %i.f, i64 864
  %i.fx = load ptr, ptr %i.fw, align 32, !tbaa !198
  %i.fy = icmp eq ptr %1, %i.fx
  br i1 %i.fy, label %.thread182, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fz = getelementptr inbounds nuw i8, ptr %i.f, i64 832
  %i.ga = load ptr, ptr %i.fz, align 64, !tbaa !382
  %i.gb = icmp eq ptr %1, %i.ga
  br i1 %i.gb, label %.thread182, label %.thread180

.thread182:                                       ; preds = %bb.aj, %bb.ak, %bb.al, %bb.am
  %.val183 = load ptr, ptr %i.e, align 16, !tbaa !57
  call fastcc void @_paint_hue(ptr %.val183)
  br label %.thread180

bb.an:                                            ; preds = %bb.ai
  %.val = load ptr, ptr %i.e, align 16, !tbaa !57
  call fastcc void @_paint_hue(ptr %.val)
  br label %dt_xyY_to_Lch.exit

.thread180:                                       ; preds = %bb.am, %.thread182
  %i.gc = load ptr, ptr %i.g, align 8, !tbaa !190
  %i.gd = icmp eq ptr %1, %i.gc
  br i1 %i.gd, label %dt_xyY_to_Lch.exit, label %bb.ao

bb.ao:                                            ; preds = %.thread180
  %i.ge = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.gf = load ptr, ptr %i.ge, align 16, !tbaa !194
  %i.gg = icmp eq ptr %1, %i.gf
  br i1 %i.gg, label %dt_xyY_to_Lch.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gh = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !195
  %i.gj = icmp eq ptr %1, %i.gi
  br i1 %i.gj, label %dt_xyY_to_Lch.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gk = load ptr, ptr %i.ee, align 16, !tbaa !193
  %i.gl = icmp eq ptr %1, %i.gk
  br i1 %i.gl, label %dt_xyY_to_Lch.exit, label %bb.at

dt_xyY_to_Lch.exit:                               ; preds = %bb.an, %bb.aq, %bb.ap, %bb.ao, %.thread180
  %.val167 = load ptr, ptr %i.c, align 8, !tbaa !118
  %.val168 = load ptr, ptr %i.e, align 16, !tbaa !57
  call fastcc void @_update_illuminants(ptr %.val167, ptr %.val168)
  call fastcc void @_update_approx_cct(ptr noundef nonnull %0)
  call fastcc void @_update_illuminant_color(ptr noundef nonnull %0)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !185 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.gp = load float, ptr %i.go, align 4, !tbaa !186 ; 2 uses
  %i.gq = call reassoc nsz arcp contract afn float @cbrtf(float noundef 1.000000e+00) #33
  %i.gr = fmul reassoc nsz arcp contract afn float %i.gq, 1.508000e+03
  %i.gs = fadd reassoc nsz arcp contract afn float %i.gr, -2.080000e+02 ; 2 uses
  %i.gt = fmul reassoc nsz arcp contract afn float %i.gp, 9.000000e+00
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gp, 1.200000e+01
  %i.gv = fmul reassoc nsz arcp contract afn float %i.gn, 2.000000e+00
  %i.gw = fsub reassoc nsz arcp contract afn float %i.gu, %i.gv
  %i.gx = fadd reassoc nsz arcp contract afn float %i.gw, 3.000000e+00 ; 2 uses
  %i.gy = fdiv reassoc nsz arcp contract afn float %i.gt, %i.gx
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gn, 4.000000e+00
  %i.ha = fdiv reassoc nsz arcp contract afn float %i.gz, %i.gx
end_hunk_2
begin_hunk_3_@gui_update:bb.a
_area_mapping_active.exit.i:                      ; preds = %bb.q
  %i.cj = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_val(ptr noundef nonnull %i.ci) #31
  %i.ck = fcmp reassoc nsz arcp contract afn oeq float %i.cj, 0.000000e+00
  br i1 %i.ck, label %_area_mapping_active.exit.thread.i, label %_area_mapping_section_text.exit

_area_mapping_active.exit.thread.i:               ; preds = %_area_mapping_active.exit.i, %bb.q, %bb.n, %bb.m
  br label %_area_mapping_section_text.exit

_area_mapping_section_text.exit:                  ; preds = %bb.p, %_area_mapping_active.exit.i, %_area_mapping_active.exit.thread.i
  %.str.317.sink.i = phi ptr [ @.str.317, %_area_mapping_active.exit.thread.i ], [ @.str.316, %bb.p ], [ @.str.316, %_area_mapping_active.exit.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 776 ; 2 uses
  %i.cm = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.317.sink.i, i32 noundef 5) #31
  tail call void @dt_gui_collapsible_section_set_label(ptr noundef nonnull %i.cl, ptr noundef %i.cm) #31
  tail call void @dt_gui_update_collapsible_section(ptr noundef nonnull %i.cl) #31
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 912
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  tail call void @gui_changed(ptr noundef nonnull %0, ptr noundef null, ptr noundef null)
  ret void
}

declare void @dt_bauhaus_combobox_set(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @dt_conf_key_exists(ptr noundef) local_unnamed_addr #5

declare i32 @dt_conf_get_bool(ptr noundef) local_unnamed_addr #5

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #5

declare float @dt_conf_get_float(ptr noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #5

declare void @gtk_widget_hide(ptr noundef) local_unnamed_addr #5

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #5

declare void @dt_gui_hide_collapsible_section(ptr noundef) local_unnamed_addr #5

declare void @dt_gui_collapsible_section_set_label(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_gui_update_collapsible_section(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @init(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  tail call void @dt_iop_default_init(ptr noundef %0) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !224 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !12
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !12
  ret void
}

declare void @dt_iop_default_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @reload_defaults(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !224 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !225
  %i.f = tail call ptr %i.e(ptr noundef nonnull @.str.97) #31
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load float, ptr %i.g, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 4 uses
  store float %i.h, ptr %i.i, align 4, !tbaa !185
  %i.j = load ptr, ptr %i.d, align 16, !tbaa !225
  %i.k = tail call ptr %i.j(ptr noundef nonnull @.str.98) #31
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load float, ptr %i.l, align 8, !tbaa !103
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 140 ; 4 uses
  store float %i.m, ptr %i.n, align 4, !tbaa !186
  %i.o = load ptr, ptr %i.d, align 16, !tbaa !225
  %i.p = tail call ptr %i.o(ptr noundef nonnull @.str.99) #31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load float, ptr %i.q, align 8, !tbaa !103
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 4 uses
  store float %i.r, ptr %i.s, align 4, !tbaa !187
  %i.t = load ptr, ptr %i.d, align 16, !tbaa !225
  %i.u = tail call ptr %i.t(ptr noundef nonnull @.str.84) #31
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = load i32, ptr %i.v, align 8, !tbaa !103
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 5 uses
  store i32 %i.w, ptr %i.x, align 4, !tbaa !122
  %i.y = load ptr, ptr %i.d, align 16, !tbaa !225
  %i.z = tail call ptr %i.y(ptr noundef nonnull @.str.100) #31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !103
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 132 ; 5 uses
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !23
  %i.ad = tail call i32 @dt_conf_is_equal(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.82) #31
  %i.ae = tail call i32 @dt_is_scene_referred() #31
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = icmp ne i32 %i.ad, 0
  %i.ah = select i1 %i.af, i1 true, i1 %i.ag
  %i.ai = zext i1 %i.ah to i32
  tail call fastcc void @_declare_cat_on_pipe(ptr noundef %0, i32 noundef %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !73 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 2392
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !383 ; 2 uses
  %.not = icmp ne ptr %i.an, null
  %i.ao = icmp ne ptr %i.an, %0
  %spec.select = and i1 %.not, %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 676
  store i32 0, ptr %i.ap, align 4, !tbaa !226
  br i1 %spec.select, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aq = tail call i32 @dt_image_is_monochrome(ptr noundef nonnull %i.al) #31
  %.not63 = icmp eq i32 %i.aq, 0
  br i1 %.not63, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 0, ptr %i.x, align 4, !tbaa !122
  store i32 4, ptr %i.ac, align 4, !tbaa !23
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  store i32 1, ptr %i.ac, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !73 ; 11 uses
  store <4 x float> splat (float 1.000000e+00), ptr %i.a, align 16, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.at = tail call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %i.as) #31
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %_get_white_balance_coeff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = load ptr, ptr %i.aj, align 8, !tbaa !73 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2480
  %i.aw = load i32, ptr %i.av, align 16, !tbaa !111
  %.not.i.i = icmp eq i32 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 2400
  %..i.i = select i1 %.not.i.i, i64 2416, i64 2448
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %..i.i
  %i.az = tail call i32 @dt_dev_equal_chroma(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay) #31
  %.not26.i = icmp eq i32 %i.az, 0
  br i1 %.not26.i, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 2416
  %i.bb = load double, ptr %i.ba, align 16, !tbaa !105 ; 2 uses
  %i.bc = fcmp reassoc nsz arcp contract afn ogt double %i.bb, 0.000000e+00
  br i1 %i.bc, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 2424
  %i.be = load double, ptr %i.bd, align 8, !tbaa !105
  %i.bf = fcmp reassoc nsz arcp contract afn ogt double %i.be, 0.000000e+00
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 2432
  %i.bh = load double, ptr %i.bg, align 16, !tbaa !105
  %i.bi = fcmp reassoc nsz arcp contract afn ogt double %i.bh, 0.000000e+00
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.bj = phi i1 [ false, %bb.g ], [ false, %bb.f ], [ %i.bi, %bb.h ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 2400
  %i.bl = load float, ptr %i.bk, align 16, !tbaa !12 ; 2 uses
  %i.bm = fcmp reassoc nsz arcp contract afn ogt float %i.bl, 1.000000e+00
  br i1 %i.bm, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 2404
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !12
  %i.bp = fcmp reassoc nsz arcp contract afn ogt float %i.bo, 1.000000e+00
  br i1 %i.bp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ar, i64 2408
  %i.br = load float, ptr %i.bq, align 8, !tbaa !12
  %i.bs = fcmp reassoc nsz arcp contract afn ogt float %i.br, 1.000000e+00
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.bt = phi i1 [ true, %bb.j ], [ true, %bb.i ], [ %i.bs, %bb.k ]
  %or.cond.i = select i1 %i.bj, i1 %i.bt, i1 false
  br i1 %or.cond.i, label %.preheader.preheader.i, label %bb.m

.preheader.preheader.i:                           ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ar, i64 2424
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !105
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 2404
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !12
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 2432
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ar, i64 2408
  %i.ca = load <2 x double>, ptr %i.by, align 16, !tbaa !105
  %i.cb = insertelement <4 x double> poison, double %i.bb, i64 0
  %i.cc = insertelement <4 x double> %i.cb, double %i.bv, i64 1
  %i.cd = shufflevector <2 x double> %i.ca, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x double> %i.cc, <4 x double> %i.cd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cf = fptrunc <4 x double> %i.ce to <4 x float>
  %i.cg = load <2 x float>, ptr %i.bz, align 8, !tbaa !12
  %i.ch = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.ci = insertelement <4 x float> %i.ch, float %i.bx, i64 1
  %i.cj = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ck = shufflevector <4 x float> %i.ci, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cl = fdiv reassoc nsz arcp contract afn <4 x float> %i.cf, %i.ck
  store <4 x float> %i.cl, ptr %i.a, align 16, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.l, %.preheader.preheader.i
  %i.cm = call fastcc i32 @find_temperature_from_raw_coeffs(ptr noundef nonnull %i.al, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull %i.n)
  %.not65 = icmp eq i32 %i.cm, 0
  br i1 %.not65, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 10, ptr %i.x, align 4, !tbaa !122
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cn = load float, ptr %i.i, align 4, !tbaa !185
  %i.co = load float, ptr %i.n, align 4, !tbaa !186
  call fastcc void @_check_if_close_to_daylight(float noundef %i.cn, float noundef %i.co, ptr noundef nonnull %i.s, ptr noundef nonnull %i.x, ptr noundef nonnull %i.ac)
  br label %_get_white_balance_coeff.exit

_get_white_balance_coeff.exit:                    ; preds = %bb.d, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.p

bb.p:                                             ; preds = %_get_white_balance_coeff.exit, %bb.c
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.cq = load ptr, ptr %i.cp, align 16, !tbaa !57 ; 9 uses
  %.not66 = icmp eq ptr %i.cq, null
  br i1 %.not66, label %bb.x, label %dt_xyY_to_Lch.exit

dt_xyY_to_Lch.exit:                               ; preds = %bb.p
  %i.cr = load float, ptr %i.i, align 4, !tbaa !185 ; 2 uses
  %i.cs = load float, ptr %i.n, align 4, !tbaa !186 ; 2 uses
  %i.ct = call reassoc nsz arcp contract afn float @cbrtf(float noundef 1.000000e+00) #33
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ct, 1.508000e+03
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cu, -2.080000e+02 ; 2 uses
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cs, 9.000000e+00
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cs, 1.200000e+01
  %i.cy = fmul reassoc nsz arcp contract afn float %i.cr, 2.000000e+00
  %i.cz = fsub reassoc nsz arcp contract afn float %i.cx, %i.cy
  %i.da = fadd reassoc nsz arcp contract afn float %i.cz, 3.000000e+00 ; 2 uses
  %i.db = fdiv reassoc nsz arcp contract afn float %i.cw, %i.da
  %i.dc = fmul reassoc nsz arcp contract afn float %i.cr, 4.000000e+00
  %i.dd = fdiv reassoc nsz arcp contract afn float %i.dc, %i.da
  %i.de = fadd reassoc nsz arcp contract afn float %i.dd, f0xBE562DD1
  %i.df = fmul reassoc nsz arcp contract afn float %i.cv, %i.de ; 2 uses
  %i.dg = fadd reassoc nsz arcp contract afn float %i.db, f0xBEF9E502
  %i.dh = fmul reassoc nsz arcp contract afn float %i.cv, %i.dg ; 2 uses
  %i.di = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.dh, float noundef %i.df) #33
  %i.dj = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.dh, float %i.df) ; 3 uses
  %i.dk = fcmp reassoc nsz arcp contract afn olt float %i.dj, 0.000000e+00
  %i.dl = fadd reassoc nsz arcp contract afn float %i.dj, f0x40C90FDB
  %i.dm = select reassoc nsz arcp contract afn i1 %i.dk, float %i.dl, float %i.dj
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  %i.do = load ptr, ptr %i.dn, align 64, !tbaa !199
  %i.dp = fmul reassoc nsz arcp contract afn float %i.dm, f0x42652EE0
  call void @dt_bauhaus_slider_set_default(ptr noundef %i.do, float noundef %i.dp) #31
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cq, i64 72
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !200
  call void @dt_bauhaus_slider_set_default(ptr noundef %i.dr, float noundef %i.di) #31
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.dt = load ptr, ptr %i.ds, align 16, !tbaa !193
  %i.du = load float, ptr %i.s, align 4, !tbaa !187
  call void @dt_bauhaus_slider_set_default(ptr noundef %i.dt, float noundef %i.du) #31
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 4 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !190
  %i.dx = load i32, ptr %i.x, align 4, !tbaa !122
  call void @dt_bauhaus_combobox_set_default(ptr noundef %i.dw, i32 noundef %i.dx) #31
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !201
  %i.ea = load i32, ptr %i.ac, align 4, !tbaa !23
  call void @dt_bauhaus_combobox_set_default(ptr noundef %i.dz, i32 noundef %i.ea) #31
  %i.eb = load float, ptr %i.s, align 4, !tbaa !187 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cq, i64 928
  store float %i.eb, ptr %i.ec, align 32, !tbaa !191
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cq, i64 932
  store float %i.eb, ptr %i.ed, align 4, !tbaa !192
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cq, i64 712 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !109 ; 2 uses
  %.not69 = icmp eq ptr %i.ef, null
  br i1 %.not69, label %bb.r, label %bb.q

bb.q:                                             ; preds = %dt_xyY_to_Lch.exit
  call void @g_free(ptr noundef nonnull %i.ef) #31
  store ptr null, ptr %i.ee, align 8, !tbaa !109
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %dt_xyY_to_Lch.exit
  %i.eg = load ptr, ptr %i.dv, align 8, !tbaa !190
  %i.eh = call i32 @dt_bauhaus_combobox_get_from_value(ptr noundef %i.eg, i32 noundef 10) #31 ; 2 uses
  %i.ei = call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %i.al) #31
  %.not70 = icmp eq i32 %i.ei, 0
  br i1 %.not70, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ej = call i32 @dt_image_is_monochrome(ptr noundef nonnull %i.al) #31
  %.not71 = icmp eq i32 %i.ej, 0
  br i1 %.not71, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ek = icmp eq i32 %i.eh, -1
  br i1 %i.ek, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.el = load ptr, ptr %i.dv, align 8, !tbaa !190
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !384
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 472
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !385
  %i.eq = call ptr %i.ep(ptr noundef nonnull @.str.84) #31
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 72
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !103
  %i.et = call i32 @dt_bauhaus_combobox_add_introspection(ptr noundef %i.el, ptr noundef null, ptr noundef %i.es, i32 noundef 10, i32 noundef 10) #31 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.eu = load ptr, ptr %i.dv, align 8, !tbaa !190
  call void @dt_bauhaus_combobox_remove_at(ptr noundef %i.eu, i32 noundef %i.eh) #31
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v
  call void @gui_changed(ptr noundef nonnull %0, ptr noundef null, ptr noundef null)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.p
  ret void
}

declare i32 @dt_conf_is_equal(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @dt_image_is_monochrome(ptr noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_default(ptr noundef, float noundef) local_unnamed_addr #5

declare void @dt_bauhaus_combobox_set_default(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @g_free(ptr noundef) local_unnamed_addr #5

declare i32 @dt_bauhaus_combobox_get_from_value(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @dt_image_is_matrix_correction_supported(ptr noundef) local_unnamed_addr #5

declare i32 @dt_bauhaus_combobox_add_introspection(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @dt_bauhaus_combobox_remove_at(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @_paint_hue(ptr nofree readonly captures(none) %.704.val) unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 10 uses
  %i.b = alloca [4 x float], align 16             ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.704.val, i64 848 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !196
  %i.e = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.d) #31
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.704.val, i64 864 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.704.val, i64 856 ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn float %i.e, f0x3C8EFA36
  %sincos12 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.m) ; 2 uses
  %sin13 = extractvalue { float, float } %sincos12, 0
  %cos14 = extractvalue { float, float } %sincos12, 1
  %.scalar = fmul reassoc nnan nsz arcp contract afn float %cos14, f0x3C5CC0BB
  %i.n = insertelement <4 x float> <float f0x3D39D80B, float f0x3D39D80B, float f0x3D39D80B, float poison>, float %.scalar, i64 3
  %factor.op.fmul23 = fmul reassoc nnan nsz arcp contract afn float %sin13, f0x3D09F874
  %i.o = insertelement <2 x float> poison, float %factor.op.fmul23, i64 1
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.c, align 16, !tbaa !196
  tail call void @gtk_widget_queue_draw(ptr noundef %i.p) #31
  %i.q = load ptr, ptr %i.k, align 32, !tbaa !198
  tail call void @gtk_widget_queue_draw(ptr noundef %i.q) #31
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !197
  tail call void @gtk_widget_queue_draw(ptr noundef %i.r) #31
  %i.s = getelementptr inbounds nuw i8, ptr %.704.val, i64 880
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !227
  tail call void @gtk_widget_queue_draw(ptr noundef %i.t) #31
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %.015 = phi i32 [ 0, %bb.a ], [ %i.cc, %bb.c ]  ; 2 uses
  %i.u = uitofp nsz nneg i32 %.015 to float       ; 4 uses
  %i.v = fmul reassoc nnan nsz arcp contract afn float %i.u, f0x3D579436 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.w = fmul reassoc nnan nsz arcp contract afn float %i.u, 3.306940e-01
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.w) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.x = fmul reassoc nsz arcp contract afn float %cos, 1.920000e-01
end_hunk_3
begin_hunk_4_@_update_illuminants:bb.a
  tail call void @gtk_widget_set_visible(ptr noundef %i.e, i32 noundef 0) #31
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !228
  tail call void @gtk_widget_set_visible(ptr noundef %i.m, i32 noundef 0) #31
  %i.n = load ptr, ptr %i.g, align 16, !tbaa !229
  tail call void @gtk_widget_set_visible(ptr noundef %i.n, i32 noundef 0) #31
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !230
  tail call void @gtk_widget_set_visible(ptr noundef %i.o, i32 noundef 0) #31
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  tail call void @gtk_widget_set_visible(ptr noundef %i.e, i32 noundef 1) #31
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !228
  tail call void @gtk_widget_set_visible(ptr noundef %i.p, i32 noundef 1) #31
  %i.q = load ptr, ptr %i.g, align 16, !tbaa !229
  tail call void @gtk_widget_set_visible(ptr noundef %i.q, i32 noundef 1) #31
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !230
  tail call void @gtk_widget_set_visible(ptr noundef %i.r, i32 noundef 1) #31
  %i.s = load ptr, ptr %i.i, align 16, !tbaa !193
  tail call void @gtk_widget_set_visible(ptr noundef %i.s, i32 noundef 1) #31
  %i.t = load ptr, ptr %i.j, align 16, !tbaa !194
  tail call void @gtk_widget_set_visible(ptr noundef %i.t, i32 noundef 1) #31
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !195
  tail call void @gtk_widget_set_visible(ptr noundef %i.u, i32 noundef 1) #31
  %i.v = load ptr, ptr %i.l, align 64, !tbaa !199
  tail call void @gtk_widget_set_visible(ptr noundef %i.v, i32 noundef 1) #31
  %i.w = getelementptr inbounds nuw i8, ptr %.680.val, i64 120
  %i.x = load i32, ptr %i.w, align 4, !tbaa !122
  switch i32 %i.x, label %bb.k [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 6, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 7, label %bb.h
    i32 10, label %bb.i
    i32 9, label %bb.j
    i32 8, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.704.val, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !201
  tail call void @gtk_widget_set_visible(ptr noundef %i.z, i32 noundef 1) #31
  br label %.sink.split

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.704.val, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !201
  tail call void @gtk_widget_set_visible(ptr noundef %i.ab, i32 noundef 1) #31
  br label %.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.704.val, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !201
  tail call void @gtk_widget_set_visible(ptr noundef %i.ad, i32 noundef 1) #31
  br label %.sink.split

bb.g:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.704.val, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !201
  tail call void @gtk_widget_set_visible(ptr noundef %i.af, i32 noundef 1) #31
  br label %.sink.split

bb.h:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.704.val, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !201
  tail call void @gtk_widget_set_visible(ptr noundef %i.ah, i32 noundef 1) #31
  br label %.sink.split

bb.i:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.704.val, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !201
  tail call void @gtk_widget_set_visible(ptr noundef %i.aj, i32 noundef 1) #31
  br label %.sink.split

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.704.val, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !201
  tail call void @gtk_widget_set_visible(ptr noundef %i.al, i32 noundef 0) #31
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink6 = phi i32 [ 0, %bb.d ], [ 1, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.b ]
  %.sink5 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.b ]
  %.sink4 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.b ]
  %.sink3 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 1, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.b ] ; 2 uses
  %i.am = load ptr, ptr %i.i, align 16, !tbaa !193
  tail call void @gtk_widget_set_visible(ptr noundef %i.am, i32 noundef %.sink6) #31
  %i.an = load ptr, ptr %i.j, align 16, !tbaa !194
  tail call void @gtk_widget_set_visible(ptr noundef %i.an, i32 noundef %.sink5) #31
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !195
  tail call void @gtk_widget_set_visible(ptr noundef %i.ao, i32 noundef %.sink4) #31
  %i.ap = load ptr, ptr %i.l, align 64, !tbaa !199
  tail call void @gtk_widget_set_visible(ptr noundef %i.ap, i32 noundef %.sink3) #31
  %i.aq = getelementptr inbounds nuw i8, ptr %.704.val, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !200
  tail call void @gtk_widget_set_visible(ptr noundef %i.ar, i32 noundef %.sink3) #31
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_update_approx_cct(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca [4 x float], align 16             ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !57  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.k = load float, ptr %i.j, align 4, !tbaa !185
  store float %i.k, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 140
  %i.m = load float, ptr %i.l, align 4, !tbaa !186
  store float %i.m, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !73   ; 11 uses
  store <4 x float> splat (float 1.000000e+00), ptr %i.c, align 16, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.q = tail call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %i.p) #31
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_get_white_balance_coeff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !73   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2480
  %i.t = load i32, ptr %i.s, align 16, !tbaa !111
  %.not.i.i = icmp eq i32 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 2400
  %..i.i = select i1 %.not.i.i, i64 2416, i64 2448
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %..i.i
  %i.w = tail call i32 @dt_dev_equal_chroma(ptr noundef nonnull %i.u, ptr noundef nonnull %i.v) #31
  %.not26.i = icmp eq i32 %i.w, 0
  br i1 %.not26.i, label %bb.c, label %_get_white_balance_coeff.exit

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 2416
  %i.y = load double, ptr %i.x, align 16, !tbaa !105 ; 2 uses
  %i.z = fcmp reassoc nsz arcp contract afn ogt double %i.y, 0.000000e+00
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 2424
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !105
  %i.ac = fcmp reassoc nsz arcp contract afn ogt double %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 2432
  %i.ae = load double, ptr %i.ad, align 16, !tbaa !105
  %i.af = fcmp reassoc nsz arcp contract afn ogt double %i.ae, 0.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ag = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ %i.af, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 2400
  %i.ai = load float, ptr %i.ah, align 16, !tbaa !12 ; 2 uses
  %i.aj = fcmp reassoc nsz arcp contract afn ogt float %i.ai, 1.000000e+00
  br i1 %i.aj, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 2404
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12
  %i.am = fcmp reassoc nsz arcp contract afn ogt float %i.al, 1.000000e+00
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 2408
  %i.ao = load float, ptr %i.an, align 8, !tbaa !12
  %i.ap = fcmp reassoc nsz arcp contract afn ogt float %i.ao, 1.000000e+00
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.aq = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ %i.ap, %bb.h ]
  %or.cond.i = select i1 %i.ag, i1 %i.aq, i1 false
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_get_white_balance_coeff.exit

.preheader.preheader.i:                           ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 2424
  %i.as = load double, ptr %i.ar, align 8, !tbaa !105
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 2404
  %i.au = load float, ptr %i.at, align 4, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 2432
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 2408
  %i.ax = load <2 x double>, ptr %i.av, align 16, !tbaa !105
  %i.ay = insertelement <4 x double> poison, double %i.y, i64 0
  %i.az = insertelement <4 x double> %i.ay, double %i.as, i64 1
  %i.ba = shufflevector <2 x double> %i.ax, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bb = shufflevector <4 x double> %i.az, <4 x double> %i.ba, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bc = fptrunc <4 x double> %i.bb to <4 x float>
  %i.bd = load <2 x float>, ptr %i.aw, align 8, !tbaa !12
  %i.be = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.bf = insertelement <4 x float> %i.be, float %i.au, i64 1
  %i.bg = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bh = shufflevector <4 x float> %i.bf, <4 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bi = fdiv reassoc nsz arcp contract afn <4 x float> %i.bc, %i.bh
  store <4 x float> %i.bi, ptr %i.c, align 16, !tbaa !12
  br label %_get_white_balance_coeff.exit

_get_white_balance_coeff.exit:                    ; preds = %bb.a, %bb.b, %bb.i, %.preheader.preheader.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !122
  %i.bl = load ptr, ptr %i.n, align 8, !tbaa !73
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !187
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 124
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !188
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !189
  call fastcc void @illuminant_to_xy(i32 noundef %i.bk, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, float noundef %i.bo, i32 noundef %i.bq, i32 noundef %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store float 5.000000e+03, ptr %i.e, align 4, !tbaa !12
  %i.bt = load float, ptr %i.a, align 4, !tbaa !12
  %i.bu = load float, ptr %i.b, align 4, !tbaa !12
  call fastcc void @_check_if_close_to_daylight(float noundef %i.bt, float noundef %i.bu, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef null)
  %i.bv = load float, ptr %i.e, align 4, !tbaa !12 ; 3 uses
  %i.bw = fcmp reassoc nsz arcp contract afn ogt float %i.bv, 1.667000e+03
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %i.bv, 2.500000e+04
  %or.cond = and i1 %i.bw, %i.bx
  br i1 %or.cond, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_get_white_balance_coeff.exit
  %i.by = load i32, ptr %i.d, align 4, !tbaa !15
  %i.bz = fpext reassoc nsz arcp contract afn float %i.bv to double ; 3 uses
  switch i32 %i.by, label %bb.m [
    i32 2, label %bb.k
    i32 6, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ca = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.318, i32 noundef 5) #31
  %i.cb = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.ca, double noundef %i.bz) #31
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.cc = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.320, i32 noundef 5) #31
  %i.cd = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.cc, double noundef %i.bz) #31
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.ce = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.322, i32 noundef 5) #31
  %i.cf = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.ce, double noundef %i.bz) #31
  br label %bb.o

bb.n:                                             ; preds = %_get_white_balance_coeff.exit
  %i.cg = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.324, i32 noundef 5) #31
  %i.ch = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.cg) #31
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.l, %bb.n
  %.str.319.sink = phi ptr [ @.str.319, %bb.k ], [ @.str.323, %bb.m ], [ @.str.321, %bb.l ], [ @.str.325, %bb.n ]
  %.0 = phi ptr [ %i.cb, %bb.k ], [ %i.cf, %bb.m ], [ %i.cd, %bb.l ], [ %i.ch, %bb.n ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.cj = load ptr, ptr %i.ci, align 16, !tbaa !229
  %i.ck = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.319.sink, i32 noundef 5) #31
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.cj, ptr noundef %i.ck) #31
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.cm = load ptr, ptr %i.cl, align 16, !tbaa !229
  call void @gtk_label_set_text(ptr noundef %i.cm, ptr noundef %.0) #31
  call void @g_free(ptr noundef %.0) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_update_illuminant_color(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !228
  tail call void @gtk_widget_queue_draw(ptr noundef %i.d) #31
  %i.e = getelementptr i8, ptr %0, i64 680
  %.val = load ptr, ptr %i.e, align 8, !tbaa !118
  %.val3 = load ptr, ptr %i.a, align 16, !tbaa !57 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val3, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.h = getelementptr inbounds nuw i8, ptr %.val3, i64 72 ; 2 uses
  br label %dt_Lch_to_xyY.exit26.i

dt_Lch_to_xyY.exit26.i:                           ; preds = %dt_Lch_to_xyY.exit26.i, %bb.a
  %.014.i = phi i32 [ 0, %bb.a ], [ %i.dk, %dt_Lch_to_xyY.exit26.i ] ; 2 uses
  %i.i = uitofp nsz nneg i32 %.014.i to float     ; 3 uses
  %i.j = fmul reassoc nnan nsz arcp contract afn float %i.i, f0x3D579436 ; 2 uses
  %i.k = fmul reassoc nnan nsz arcp contract afn float %i.i, 3.306940e-01
  %sincos.i.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.k) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1
  %i.l = insertelement <2 x float> poison, float %cos.i.i, i64 0
  %i.m = insertelement <2 x float> %i.l, float %sin.i.i, i64 1
  %i.n = fmul reassoc nsz arcp contract afn <2 x float> %i.m, splat (float f0x3D1D89D9)
  %i.o = fadd reassoc nsz arcp contract afn <2 x float> %i.n, <float f0x3E562DD1, float f0x3EF9E502> ; 3 uses
  %i.p = extractelement <2 x float> %i.o, i64 0
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, 6.000000e+00
  %i.r = extractelement <2 x float> %i.o, i64 1
  %i.s = fmul reassoc nsz arcp contract afn float %i.r, 1.600000e+01
  %i.t = fsub reassoc nsz arcp contract afn float %i.q, %i.s
  %i.u = fadd reassoc nsz arcp contract afn float %i.t, 1.200000e+01
  %i.v = fmul reassoc nsz arcp contract afn <2 x float> %i.o, <float 9.000000e+00, float 4.000000e+00>
  %i.w = insertelement <2 x float> poison, float %i.u, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fdiv reassoc nsz arcp contract afn <2 x float> %i.v, %i.x ; 2 uses
  %i.z = extractelement <2 x float> %i.y, i64 0   ; 2 uses
  %i.aa = extractelement <2 x float> %i.y, i64 1  ; 3 uses
  %i.ab = fdiv reassoc nsz arcp contract afn float %i.z, %i.aa ; 3 uses
  %i.ac = fadd reassoc nsz arcp contract afn float %i.z, %i.aa
  %i.ad = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ac
  %i.ae = fdiv reassoc nsz arcp contract afn float %i.ad, %i.aa ; 3 uses
  %i.af = fmul reassoc nsz arcp contract afn float %i.ab, f0x40489119
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, f0xBFCEF57D
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ae, f0xBEFB31D6
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ag, %i.ah ; 2 uses
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ab, f0x3F7A9091
  %i.ak = fsub reassoc nsz arcp contract afn float f0x3FF54420, %i.aj
  %i.al = fmul reassoc nsz arcp contract afn float %i.ae, 3.345400e-02
  %i.am = fadd reassoc nsz arcp contract afn float %i.al, %i.ak ; 2 uses
  %i.an = fmul reassoc nsz arcp contract afn float %i.ab, 7.194530e-02
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, f0xBE6A7CB9
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ae, f0x3FB3DEFE
  %i.aq = fadd reassoc nsz arcp contract afn float %i.ao, %i.ap ; 2 uses
  %i.ar = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ai, float %i.am)
  %i.as = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ar, float %i.aq) ; 3 uses
  %i.at = fdiv reassoc nsz arcp contract afn float %i.ai, %i.as
  %i.au = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.at, float 0.000000e+00)
  %i.av = fdiv reassoc nsz arcp contract afn float %i.am, %i.as
  %i.aw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.av, float 0.000000e+00)
  %i.ax = fdiv reassoc nsz arcp contract afn float %i.aq, %i.as
  %i.ay = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ax, float 0.000000e+00)
  %i.az = load ptr, ptr %i.f, align 64, !tbaa !199
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.az, float noundef %i.j, float noundef %i.au, float noundef %i.aw, float noundef %i.ay) #31
  %i.ba = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef 1.000000e+00) #33
  %i.bb = load <2 x float>, ptr %i.g, align 4, !tbaa !12 ; 3 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 1
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, 1.200000e+01
  %i.be = extractelement <2 x float> %i.bb, i64 0
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, 2.000000e+00
  %i.bg = fsub reassoc nsz arcp contract afn float %i.bd, %i.bf
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, 3.000000e+00
  %i.bi = fmul reassoc nsz arcp contract afn <2 x float> %i.bb, <float 4.000000e+00, float 9.000000e+00>
  %i.bj = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fdiv reassoc nsz arcp contract afn <2 x float> %i.bi, %i.bk
  %i.bm = fmul reassoc nsz arcp contract afn float %i.ba, 1.508000e+03
  %i.bn = fadd reassoc nsz arcp contract afn float %i.bm, -2.080000e+02
  %i.bo = fadd reassoc nsz arcp contract afn <2 x float> %i.bl, <float f0xBE562DD1, float f0xBEF9E502>
  %i.bp = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul reassoc nsz arcp contract afn <2 x float> %i.bo, %i.bq ; 2 uses
  %i.bs = extractelement <2 x float> %i.br, i64 0
  %i.bt = extractelement <2 x float> %i.br, i64 1
  %i.bu = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.bt, float %i.bs) ; 3 uses
  %i.bv = fcmp reassoc nsz arcp contract afn olt float %i.bu, 0.000000e+00
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bu, f0x40C90FDB
  %i.bx = select reassoc nsz arcp contract afn i1 %i.bv, float %i.bw, float %i.bu
  %sincos.i23.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.bx) ; 2 uses
  %sin.i24.i = extractvalue { float, float } %sincos.i23.i, 0
  %cos.i25.i = extractvalue { float, float } %sincos.i23.i, 1
  %i.by = fmul reassoc nnan nsz arcp contract afn float %i.i, f0x3C04A9F9 ; 2 uses
  %i.bz = fmul reassoc nsz arcp contract afn float %cos.i25.i, %i.by
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bz, f0x3E562DD1 ; 2 uses
  %i.cb = fmul reassoc nsz arcp contract afn float %sin.i24.i, %i.by
  %i.cc = fadd reassoc nsz arcp contract afn float %i.cb, f0x3EF9E502 ; 2 uses
  %i.cd = fmul reassoc nsz arcp contract afn float %i.ca, 6.000000e+00
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cc, 1.600000e+01
  %i.cf = fsub reassoc nsz arcp contract afn float %i.cd, %i.ce
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cf, 1.200000e+01 ; 2 uses
  %i.ch = fmul reassoc nsz arcp contract afn float %i.ca, 9.000000e+00
  %i.ci = fdiv reassoc nsz arcp contract afn float %i.ch, %i.cg ; 2 uses
  %i.cj = fmul reassoc nsz arcp contract afn float %i.cc, 4.000000e+00
  %i.ck = fdiv reassoc nsz arcp contract afn float %i.cj, %i.cg ; 3 uses
  %i.cl = fdiv reassoc nsz arcp contract afn float %i.ci, %i.ck ; 3 uses
  %i.cm = fadd reassoc nsz arcp contract afn float %i.ci, %i.ck
  %i.cn = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cm
  %i.co = fdiv reassoc nsz arcp contract afn float %i.cn, %i.ck ; 3 uses
  %i.cp = fmul reassoc nsz arcp contract afn float %i.cl, f0x40489119
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cp, f0xBFCEF57D
  %i.cr = fmul reassoc nsz arcp contract afn float %i.co, f0xBEFB31D6
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cq, %i.cr ; 2 uses
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cl, f0x3F7A9091
  %i.cu = fsub reassoc nsz arcp contract afn float f0x3FF54420, %i.ct
  %i.cv = fmul reassoc nsz arcp contract afn float %i.co, 3.345400e-02
  %i.cw = fadd reassoc nsz arcp contract afn float %i.cv, %i.cu ; 2 uses
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cl, 7.194530e-02
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, f0xBE6A7CB9
end_hunk_4
begin_hunk_5_@_auto_set_illuminant:bb.a
bb.m:                                             ; preds = %dt_XYZ_to_Lab.exit
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cd)
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, f0x3E22F983
  %i.ci = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ch
  br label %dt_Lab_2_LCH.exit

dt_Lab_2_LCH.exit:                                ; preds = %bb.l, %bb.m
  %.0.i = phi nsz float [ %i.cf, %bb.l ], [ %i.ci, %bb.m ]
  %i.cj = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.ca, float noundef %i.cc) #33
  %i.ck = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.326, i32 noundef 5) #31
  %i.cl = fpext reassoc nsz arcp contract afn float %i.by to double
  %i.cm = fmul reassoc nsz arcp contract afn float %.0.i, 3.600000e+02
  %i.cn = fpext reassoc nsz arcp contract afn float %i.cm to double
  %i.co = fpext reassoc nsz arcp contract afn float %i.cj to double
  %i.cp = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.ck, double noundef %i.cl, double noundef %i.cn, double noundef %i.co) #31 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 888
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !231
  tail call void @gtk_label_set_text(ptr noundef %i.cr, ptr noundef %i.cp) #31
  tail call void @g_free(ptr noundef %i.cp) #31
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 840
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !214
  %i.cu = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %i.ct) #31
  %i.cv = getelementptr inbounds nuw i8, ptr %i.i, i64 904
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !215
  %i.cx = tail call i32 @gtk_toggle_button_get_active(ptr noundef %i.cw) #31 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !25
  %.not = icmp eq i32 %i.cz, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %dt_Lab_2_LCH.exit
  %i.da = load float, ptr %i.k, align 4, !tbaa !12
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.dc = load float, ptr %i.db, align 4, !tbaa !12
  %i.dd = fadd reassoc nsz arcp contract afn float %i.dc, %i.da
  %i.de = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.df = load float, ptr %i.de, align 4, !tbaa !12
  %i.dg = fadd reassoc nsz arcp contract afn float %i.dd, %i.df ; 2 uses
  %i.dh = fcmp reassoc nsz arcp contract afn olt float %i.dg, f0x37800000
  %spec.select = select reassoc nsz arcp contract afn i1 %i.dh, float f0x37800000, float %i.dg
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %dt_Lab_2_LCH.exit
  %.0116 = phi nsz float [ %spec.select, %bb.n ], [ 1.000000e+00, %dt_Lab_2_LCH.exit ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.k, i64 100
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !26
  %.not122 = icmp eq i32 %i.dj, 0
  br i1 %.not122, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dk = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !12
  %i.dm = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !12
  %i.do = fadd reassoc nsz arcp contract afn float %i.dn, %i.dl
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !12
  %i.dr = fadd reassoc nsz arcp contract afn float %i.do, %i.dq ; 2 uses
  %i.ds = fcmp reassoc nsz arcp contract afn olt float %i.dr, f0x37800000
  %spec.select128 = select reassoc nsz arcp contract afn i1 %i.ds, float f0x37800000, float %i.dr
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0115 = phi nsz float [ %spec.select128, %bb.p ], [ 1.000000e+00, %bb.o ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !27
  %.not123 = icmp eq i32 %i.du, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !12 ; 2 uses
  %.phi.trans.insert465 = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %.pre466 = load float, ptr %.phi.trans.insert465, align 4, !tbaa !12 ; 2 uses
  br i1 %.not123, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %bb.q
  %.phi.trans.insert468 = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.pre469 = load float, ptr %.phi.trans.insert468, align 4, !tbaa !12
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dv = fadd reassoc nsz arcp contract afn float %.pre466, %.pre
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !12 ; 2 uses
  %i.dy = fadd reassoc nsz arcp contract afn float %i.dv, %i.dx ; 2 uses
  %i.dz = fcmp reassoc nsz arcp contract afn olt float %i.dy, f0x37800000
  %spec.select129 = select reassoc nsz arcp contract afn i1 %i.dz, float f0x37800000, float %i.dy
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.r
  %i.ea = phi float [ %i.dx, %bb.r ], [ %.pre469, %._crit_edge ]
  %.0114 = phi nsz float [ %spec.select129, %bb.r ], [ 1.000000e+00, %._crit_edge ] ; 3 uses
  %i.eb = fdiv reassoc nsz arcp contract afn float %.pre, %.0114 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.ed = fdiv reassoc nsz arcp contract afn float %.pre466, %.0114 ; 2 uses
  %i.ee = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr align 4 %i.k, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !12 ; 3 uses
  %i.ef = shufflevector <5 x float> %i.ee, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.eg = insertelement <2 x float> poison, float %.0116, i64 0
  %i.eh = insertelement <2 x float> %i.eg, float %.0115, i64 1 ; 2 uses
  %i.ei = fdiv reassoc nsz arcp contract afn <2 x float> %i.ef, %i.eh ; 2 uses
  %i.ej = load <2 x float>, ptr %i.ec, align 4, !tbaa !12 ; 2 uses
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <5 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.el = shufflevector <5 x float> %i.ek, <5 x float> %i.ee, <2 x i32> <i32 0, i32 5>
  %i.em = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.en = fdiv reassoc nsz arcp contract afn <2 x float> %i.el, %i.em ; 3 uses
  %i.eo = shufflevector <2 x float> %i.ej, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.ep = shufflevector <5 x float> %i.eo, <5 x float> %i.ee, <2 x i32> <i32 1, i32 7>
  %i.eq = fdiv reassoc nsz arcp contract afn <2 x float> %i.ep, %i.em ; 3 uses
  %i.er = fdiv reassoc nsz arcp contract afn float %i.ea, %.0114 ; 2 uses
  switch i32 %i.cu, label %bb.bh [
    i32 1, label %bb.t
    i32 0, label %bb.ax
  ]

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.es = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.et = load float, ptr %i.es, align 4, !tbaa !185
  store float %i.et, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.eu = getelementptr inbounds nuw i8, ptr %i.k, i64 140
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !186
  store float %i.ev, ptr %i.c, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.ew = getelementptr inbounds nuw i8, ptr %i.k, i64 132
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !23 ; 2 uses
  store i32 %i.ex, ptr %i.d, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !73 ; 11 uses
  store <4 x float> splat (float 1.000000e+00), ptr %i.e, align 16, !tbaa !12
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 112
  %i.fb = tail call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %i.fa) #31
  %.not.i = icmp eq i32 %i.fb, 0
  br i1 %.not.i, label %_get_white_balance_coeff.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fc = load ptr, ptr %i.ey, align 8, !tbaa !73 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 2480
  %i.fe = load i32, ptr %i.fd, align 16, !tbaa !111
  %.not.i.i = icmp eq i32 %i.fe, 0
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 2400
  %..i.i = select i1 %.not.i.i, i64 2416, i64 2448
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 %..i.i
  %i.fh = tail call i32 @dt_dev_equal_chroma(ptr noundef nonnull %i.ff, ptr noundef nonnull %i.fg) #31
  %.not26.i = icmp eq i32 %i.fh, 0
  br i1 %.not26.i, label %bb.v, label %_get_white_balance_coeff.exit

bb.v:                                             ; preds = %bb.u
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 2416
  %i.fj = load double, ptr %i.fi, align 16, !tbaa !105 ; 2 uses
  %i.fk = fcmp reassoc nsz arcp contract afn ogt double %i.fj, 0.000000e+00
  br i1 %i.fk, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ez, i64 2424
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !105
  %i.fn = fcmp reassoc nsz arcp contract afn ogt double %i.fm, 0.000000e+00
  br i1 %i.fn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ez, i64 2432
  %i.fp = load double, ptr %i.fo, align 16, !tbaa !105
  %i.fq = fcmp reassoc nsz arcp contract afn ogt double %i.fp, 0.000000e+00
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.fr = phi i1 [ false, %bb.w ], [ false, %bb.v ], [ %i.fq, %bb.x ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ez, i64 2400
  %i.ft = load float, ptr %i.fs, align 16, !tbaa !12 ; 2 uses
  %i.fu = fcmp reassoc nsz arcp contract afn ogt float %i.ft, 1.000000e+00
  br i1 %i.fu, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ez, i64 2404
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !12
  %i.fx = fcmp reassoc nsz arcp contract afn ogt float %i.fw, 1.000000e+00
  br i1 %i.fx, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ez, i64 2408
  %i.fz = load float, ptr %i.fy, align 8, !tbaa !12
  %i.ga = fcmp reassoc nsz arcp contract afn ogt float %i.fz, 1.000000e+00
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.gb = phi i1 [ true, %bb.z ], [ true, %bb.y ], [ %i.ga, %bb.aa ]
  %or.cond.i = select i1 %i.fr, i1 %i.gb, i1 false
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_get_white_balance_coeff.exit

.preheader.preheader.i:                           ; preds = %bb.ab
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ez, i64 2424
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !105
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ez, i64 2404
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !12
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ez, i64 2432
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ez, i64 2408
  %i.gi = load <2 x double>, ptr %i.gg, align 16, !tbaa !105
  %i.gj = insertelement <4 x double> poison, double %i.fj, i64 0
  %i.gk = insertelement <4 x double> %i.gj, double %i.gd, i64 1
  %i.gl = shufflevector <2 x double> %i.gi, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gm = shufflevector <4 x double> %i.gk, <4 x double> %i.gl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gn = fptrunc <4 x double> %i.gm to <4 x float>
  %i.go = load <2 x float>, ptr %i.gh, align 8, !tbaa !12
  %i.gp = insertelement <4 x float> poison, float %i.ft, i64 0
  %i.gq = insertelement <4 x float> %i.gp, float %i.gf, i64 1
  %i.gr = shufflevector <2 x float> %i.go, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gs = shufflevector <4 x float> %i.gq, <4 x float> %i.gr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gt = fdiv reassoc nsz arcp contract afn <4 x float> %i.gn, %i.gs
  store <4 x float> %i.gt, ptr %i.e, align 16, !tbaa !12
  br label %_get_white_balance_coeff.exit

_get_white_balance_coeff.exit:                    ; preds = %bb.t, %bb.u, %bb.ab, %.preheader.preheader.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !122
  %i.gw = load ptr, ptr %i.ey, align 8, !tbaa !73
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 112
  %i.gy = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !187
  %i.ha = getelementptr inbounds nuw i8, ptr %i.k, i64 124
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !188
  %i.hc = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !189
  call fastcc void @illuminant_to_xy(i32 noundef %i.gv, ptr noundef nonnull %i.gx, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, float noundef %i.gz, i32 noundef %i.hb, i32 noundef %i.hd)
  %i.he = load i32, ptr %i.gu, align 4, !tbaa !122
  %i.hf = icmp eq i32 %i.he, 10
  %.pre470 = load float, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %.pre471 = load float, ptr %i.c, align 4, !tbaa !12 ; 4 uses
  br i1 %i.hf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_get_white_balance_coeff.exit
  call fastcc void @_check_if_close_to_daylight(float noundef %.pre470, float noundef %.pre471, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d)
  %.pre472 = load i32, ptr %i.d, align 4, !tbaa !15
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_get_white_balance_coeff.exit
  %i.hg = phi i32 [ %.pre472, %bb.ac ], [ %i.ex, %_get_white_balance_coeff.exit ] ; 13 uses
  %i.hh = fdiv reassoc nsz arcp contract afn float %.pre470, %.pre471 ; 4 uses
  %i.hi = fadd reassoc nsz arcp contract afn float %.pre470, %.pre471
  %i.hj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hi
  %i.hk = fdiv reassoc nsz arcp contract afn float %i.hj, %.pre471 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25)
  store float 0.000000e+00, ptr %.sroa.17, align 8
  %i.hl = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.hh, i64 0 ; 3 uses
  switch i32 %i.hg, label %convert_any_XYZ_to_LMS.exit [
    i32 2, label %bb.ae
    i32 0, label %bb.ae
    i32 1, label %convert_any_XYZ_to_LMS.exit.thread
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hn = fmul reassoc nsz arcp contract afn <2 x float> %i.hm, <float f0x3F652546, float f0xBF400D1B>
  %i.ho = insertelement <2 x float> poison, float %i.hk, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hq = fmul reassoc nsz arcp contract afn <2 x float> %i.hp, <float -1.614000e-01, float 3.670000e-02>
  %i.hr = fadd reassoc nsz arcp contract afn <2 x float> %i.hn, <float 2.664000e-01, float 1.713500e+00>
  %i.hs = fadd reassoc nsz arcp contract afn <2 x float> %i.hr, %i.hq
  %i.ht = fmul reassoc nsz arcp contract afn float %i.hh, 3.890000e-02
  %i.hu = fadd reassoc nsz arcp contract afn float %i.ht, -6.850000e-02
  %i.hv = fmul reassoc nsz arcp contract afn float %i.hk, 1.029600e+00
  %i.hw = fadd reassoc nsz arcp contract afn float %i.hu, %i.hv
  store float %i.hw, ptr %.sroa.17, align 8, !tbaa !12
  %i.hx = fadd reassoc nsz arcp contract afn float %i.hh, 1.000000e+00
  %i.hy = fadd reassoc nsz arcp contract afn float %i.hx, %i.hk
  %i.hz = fmul reassoc nsz arcp contract afn float %i.hy, 0.000000e+00
  br label %convert_any_XYZ_to_LMS.exit

convert_any_XYZ_to_LMS.exit.thread:               ; preds = %bb.ad
  %i.ia = fmul reassoc nsz arcp contract afn float %i.hh, 4.012880e-01
  %i.ib = fadd reassoc nsz arcp contract afn float %i.ia, 6.501730e-01
  %i.ic = fmul reassoc nsz arcp contract afn float %i.hk, -5.146100e-02
  %i.id = fadd reassoc nsz arcp contract afn float %i.ib, %i.ic
  %i.ie = insertelement <2 x float> poison, float %i.hk, i64 0
  %i.if = shufflevector <2 x float> %i.ie, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ig = fmul reassoc nsz arcp contract afn <2 x float> %i.if, <float 4.585400e-02, float 9.531270e-01>
  %i.ih = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ii = fmul reassoc nsz arcp contract afn <2 x float> %i.ih, <float poison, float 2.079000e-03>
  %i.ij = fsub reassoc nsz arcp contract afn <2 x float> <float poison, float 4.895200e-02>, %i.ii
  %i.ik = fmul reassoc nsz arcp contract afn <2 x float> %i.ih, <float -2.502680e-01, float poison>
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> %i.ij, <2 x i32> <i32 0, i32 3>
  %i.im = fadd reassoc nsz arcp contract afn <2 x float> %i.il, <float f0x3F9A2A3D, float -0.000000e+00>
  %i.in = fadd reassoc nsz arcp contract afn <2 x float> %i.im, %i.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.39)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57358)
  br label %bb.ah

convert_any_XYZ_to_LMS.exit:                      ; preds = %bb.ad, %bb.ae
  %.sink11.i.sroa.phi = phi ptr [ %.sroa.17, %bb.ad ], [ %.sroa.25, %bb.ae ]
  %.sink.i = phi float [ %i.hk, %bb.ad ], [ %i.hz, %bb.ae ]
  %i.io = phi <2 x float> [ %i.hl, %bb.ad ], [ %i.hs, %bb.ae ] ; 3 uses
  store float %.sink.i, ptr %.sink11.i.sroa.phi, align 4, !tbaa !12
  %.sroa.17.0..sroa.17.0..sroa.17.0..sroa.17.8. = load float, ptr %.sroa.17, align 8, !tbaa !12 ; 5 uses
  %i.ip = fcmp reassoc nsz arcp contract afn olt float %.sroa.17.0..sroa.17.0..sroa.17.0..sroa.17.8., f0x37800000
  %i.iq = select reassoc nsz arcp contract afn i1 %i.ip, float f0x37800000, float %.sroa.17.0..sroa.17.0..sroa.17.0..sroa.17.8.
  %i.ir = fdiv reassoc nsz arcp contract afn float f0x3F51729B, %i.iq
  %i.is = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ir, float 8.340000e-02)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.39)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57358)
  store float 0.000000e+00, ptr %.sroa.39, align 8
  %i.it = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.iu = insertelement <2 x float> %i.it, float %.sroa.17.0..sroa.17.0..sroa.17.0..sroa.17.8., i64 1 ; 2 uses
  %i.iv = extractelement <2 x float> %i.io, i64 0 ; 2 uses
  switch i32 %i.hg, label %.preheader.preheader.i134 [
    i32 2, label %bb.af
    i32 0, label %bb.ag
    i32 1, label %bb.ah
    i32 3, label %.preheader52.preheader.i
  ]

.preheader52.preheader.i:                         ; preds = %convert_any_XYZ_to_LMS.exit
  %i.iw = fcmp reassoc nsz arcp contract afn ogt float %i.aq, f0x37800000
  br i1 %i.iw, label %.split.us.preheader.i48.i, label %.split.preheader.i47.i

.preheader.preheader.i134:                        ; preds = %convert_any_XYZ_to_LMS.exit
  store float %i.bd, ptr %.sroa.39, align 8, !tbaa !12
  br label %chroma_adapt_pixel.exit

bb.af:                                            ; preds = %convert_any_XYZ_to_LMS.exit
  %i.ix = fmul reassoc nsz arcp contract afn <2 x float> %i.an, <float 1.713500e+00, float f0x3F652546>
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.iz = fmul reassoc nsz arcp contract afn <2 x float> %i.an, <float 2.664000e-01, float f0x3F400D1B> ; 2 uses
  %i.ja = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jc = fmul reassoc nsz arcp contract afn <2 x float> %i.jb, <float -1.614000e-01, float 3.670000e-02>
  %i.jd = fsub reassoc nsz arcp contract afn <2 x float> %i.iy, %i.iz
  %i.je = fadd reassoc nsz arcp contract afn <2 x float> %i.iy, %i.iz
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> %i.jd, <2 x i32> <i32 0, i32 3>
  %i.jg = fadd reassoc nsz arcp contract afn <2 x float> %i.jc, %i.jf ; 2 uses
  %i.jh = fmul reassoc nsz arcp contract afn float %i.ao, 3.890000e-02
  %i.ji = fmul reassoc nsz arcp contract afn float %i.aq, 6.850000e-02
  %i.jj = fsub reassoc nsz arcp contract afn float %i.jh, %i.ji
  %i.jk = fmul reassoc nsz arcp contract afn float %i.bd, 1.029600e+00
  %i.jl = fadd reassoc nsz arcp contract afn float %i.jk, %i.jj ; 2 uses
  %i.jm = fcmp reassoc nsz arcp contract afn ogt float %i.aq, f0x37800000
  br i1 %i.jm, label %.split.us.preheader.i.i, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.af
  %i.jn = fmul reassoc nsz arcp contract afn <2 x float> %i.jg, splat (float 6.553600e+04)
  %i.jo = fmul reassoc nsz arcp contract afn float %i.jl, 6.553600e+04
  br label %downscale_vector.exit.i

.split.us.preheader.i.i:                          ; preds = %bb.af
  %i.jp = fadd reassoc nsz arcp contract afn float %i.aq, f0x37800000 ; 3 uses
  %i.jq = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.jr = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.js = fdiv reassoc nsz arcp contract afn <2 x float> %i.jg, %i.jr
  %i.jt = fdiv reassoc nsz arcp contract afn float %i.jl, %i.jp
  br label %downscale_vector.exit.i

downscale_vector.exit.i:                          ; preds = %.split.us.preheader.i.i, %.split.preheader.i.i
  %.sink22.i.i = phi float [ f0x37800000, %.split.preheader.i.i ], [ %i.jp, %.split.us.preheader.i.i ] ; 2 uses
  %i.ju = phi float [ %i.jo, %.split.preheader.i.i ], [ %i.jt, %.split.us.preheader.i.i ]
  %i.jv = phi <2 x float> [ %i.jn, %.split.preheader.i.i ], [ %i.js, %.split.us.preheader.i.i ]
  %i.jw = fdiv reassoc nsz arcp contract afn float %i.ju, %.sroa.17.0..sroa.17.0..sroa.17.0..sroa.17.8. ; 3 uses
  %i.jx = fcmp reassoc nsz arcp contract afn ogt float %i.jw, 0.000000e+00
  %i.jy = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.jw, float %i.is)
  %i.jz = select reassoc nsz arcp contract afn i1 %i.jx, float %i.jy, float %i.jw
  %i.ka = insertelement <2 x float> poison, float %.sink22.i.i, i64 0
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.kb, <float 9.960780e-01, float f0x3F82A487>
  %i.kd = fmul reassoc nnan nsz arcp contract afn float %.sink22.i.i, f0x3F51729B
  %i.ke = fmul reassoc nsz arcp contract afn float %i.kd, %i.jz ; 3 uses
  %i.kf = fmul reassoc nsz arcp contract afn <2 x float> %i.kc, %i.jv
  %i.kg = fdiv reassoc nsz arcp contract afn <2 x float> %i.kf, %i.io ; 4 uses
  %i.kh = fmul reassoc nsz arcp contract afn <2 x float> %i.kg, <float 4.323000e-01, float -1.471000e-01>
  %i.ki = fmul reassoc nsz arcp contract afn <2 x float> %i.kg, <float f0x3F7CAC08, float 5.184000e-01>
  %i.kj = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kk = fadd reassoc nsz arcp contract afn <2 x float> %i.kh, %i.kj
  %i.kl = insertelement <2 x float> poison, float %i.ke, i64 0
  %i.km = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kn = fmul reassoc nsz arcp contract afn <2 x float> %i.km, <float 4.930000e-02, float 1.600000e-01>
  %i.ko = fadd reassoc nsz arcp contract afn <2 x float> %i.kk, %i.kn
  %i.kp = extractelement <2 x float> %i.kg, i64 0 ; 2 uses
  %i.kq = fmul reassoc nsz arcp contract afn float %i.kp, -8.500000e-03
  %i.kr = extractelement <2 x float> %i.kg, i64 1 ; 2 uses
  %i.ks = fmul reassoc nsz arcp contract afn float %i.kr, 4.000000e-02
  %i.kt = fadd reassoc nsz arcp contract afn float %i.kq, %i.ks
  %i.ku = fmul reassoc nsz arcp contract afn float %i.ke, 9.685000e-01
  %i.kv = fadd reassoc nsz arcp contract afn float %i.kt, %i.ku
  store float %i.kv, ptr %.sroa.39, align 8, !tbaa !12
  %i.kw = fadd reassoc nsz arcp contract afn float %i.kp, %i.kr
  %i.kx = fadd reassoc nsz arcp contract afn float %i.kw, %i.ke
  %i.ky = fmul reassoc nsz arcp contract afn float %i.kx, 0.000000e+00
  br label %chroma_adapt_pixel.exit

bb.ag:                                            ; preds = %convert_any_XYZ_to_LMS.exit
  %i.kz = fmul reassoc nsz arcp contract afn float %i.ao, f0x3F652546
  %i.la = fmul reassoc nsz arcp contract afn float %i.aq, 2.664000e-01
  %i.lb = fadd reassoc nsz arcp contract afn float %i.la, %i.kz
  %i.lc = fmul reassoc nsz arcp contract afn float %i.bd, -1.614000e-01
  %i.ld = fadd reassoc nsz arcp contract afn float %i.lb, %i.lc ; 2 uses
  %i.le = fmul reassoc nsz arcp contract afn <2 x float> %i.an, <float 6.850000e-02, float f0x3F400D1B>
  %i.lf = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lg = fmul reassoc nsz arcp contract afn <2 x float> %i.an, <float 1.713500e+00, float 3.890000e-02>
  %i.lh = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.li = shufflevector <2 x float> %i.lh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lj = fmul reassoc nsz arcp contract afn <2 x float> %i.li, <float 3.670000e-02, float 1.029600e+00>
  %i.lk = fsub reassoc nsz arcp contract afn <2 x float> %i.lg, %i.lf
  %i.ll = fadd reassoc nsz arcp contract afn <2 x float> %i.lj, %i.lk ; 2 uses
  %i.lm = fcmp reassoc nsz arcp contract afn ogt float %i.aq, f0x37800000
  br i1 %i.lm, label %.split.us.preheader.i40.i, label %.split.preheader.i39.i
end_hunk_5
begin_hunk_6_@_preview_pipe_finished_callback:bb.a
  %i.ca = load double, ptr %i.bz, align 16, !tbaa !105
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 2424
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !105
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 2432
  %i.ce = load double, ptr %i.cd, align 16, !tbaa !105
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 2448
  %i.cg = load double, ptr %i.cf, align 16, !tbaa !105
  %i.ch = getelementptr inbounds nuw i8, ptr %i.n, i64 2456
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !105
  %i.cj = getelementptr inbounds nuw i8, ptr %i.n, i64 2464
  %i.ck = load double, ptr %i.cj, align 16, !tbaa !105
  %i.cl = getelementptr inbounds nuw i8, ptr %i.n, i64 1552
  %i.cm = load i32, ptr %i.cl, align 16, !tbaa !419
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull %spec.select.i, ptr noundef null, ptr noundef nonnull %1, i32 noundef -2, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.330, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.by, double noundef %i.ca, double noundef %i.cc, double noundef %i.ce, double noundef %i.cg, double noundef %i.ci, double noundef %i.ck, i32 noundef %i.cm) #31
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %i.bm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cn = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.336, i32 noundef 5) #31
  %i.co = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.337, i32 noundef 5) #31
  tail call void @dt_iop_set_module_trouble_message(ptr noundef nonnull %1, ptr noundef %i.cn, ptr noundef %i.co, ptr noundef null) #31
  br label %_set_trouble_messages.exit

bb.aa:                                            ; preds = %bb.y
  br i1 %i.bl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load ptr, ptr %i.o, align 16, !tbaa !418
  %i.cq = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.338, i32 noundef 5) #31
  %i.cr = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.339, i32 noundef 5) #31
  tail call void @dt_iop_set_module_trouble_message(ptr noundef %i.cp, ptr noundef %i.cq, ptr noundef %i.cr, ptr noundef null) #31
  %i.cs = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.340, i32 noundef 5) #31
  %i.ct = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.341, i32 noundef 5) #31
  tail call void @dt_iop_set_module_trouble_message(ptr noundef nonnull %1, ptr noundef %i.cs, ptr noundef %i.ct, ptr noundef null) #31
  br label %_set_trouble_messages.exit

bb.ac:                                            ; preds = %bb.aa
  br i1 %i.bk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cu = load ptr, ptr %i.o, align 16, !tbaa !418
  %i.cv = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.342, i32 noundef 5) #31
  %i.cw = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.343, i32 noundef 5) #31
  tail call void @dt_iop_set_module_trouble_message(ptr noundef %i.cu, ptr noundef %i.cv, ptr noundef %i.cw, ptr noundef null) #31
  %i.cx = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.342, i32 noundef 5) #31
  %i.cy = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.344, i32 noundef 5) #31
  tail call void @dt_iop_set_module_trouble_message(ptr noundef nonnull %1, ptr noundef %i.cx, ptr noundef %i.cy, ptr noundef null) #31
  br label %_set_trouble_messages.exit

bb.ae:                                            ; preds = %bb.ac
  %i.cz = load ptr, ptr %i.x, align 8, !tbaa !119 ; 2 uses
  %.not95.i = icmp ne ptr %i.cz, null
  %i.da = icmp eq ptr %i.cz, %1
  %or.cond97.i = and i1 %.not95.i, %i.da
  br i1 %or.cond97.i, label %bb.af, label %_set_trouble_messages.exit

bb.af:                                            ; preds = %bb.ae
  %i.db = load ptr, ptr %i.o, align 16, !tbaa !418
  tail call void @dt_iop_set_module_trouble_message(ptr noundef %i.db, ptr noundef null, ptr noundef null, ptr noundef null) #31
  tail call void @dt_iop_set_module_trouble_message(ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef null) #31
  br label %_set_trouble_messages.exit

_set_trouble_messages.exit:                       ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.z, %bb.h, %bb.f, %bb.e, %bb.a
  ret void
}

declare ptr @dt_ui_notebook_new(ptr noundef) local_unnamed_addr #5

declare ptr @dt_action_define_iop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @dt_ui_notebook_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @dt_bauhaus_combobox_from_params(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @gtk_drawing_area_new() local_unnamed_addr #5

declare void @gtk_widget_set_size_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @_illuminant_color_draw(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca [4 x float], align 16             ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !118  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #31
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !238
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !239  ; 2 uses
  %i.j = sitofp reassoc nsz arcp contract afn i32 %i.g to double ; 2 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1440
  %i.m = load double, ptr %i.l, align 8, !tbaa !240 ; 2 uses
  %i.n = fmul reassoc nsz arcp contract afn double %i.m, %i.j
  %i.o = fptosi double %i.n to i32
  %i.p = sitofp reassoc nsz arcp contract afn i32 %i.i to double
  %i.q = fmul reassoc nsz arcp contract afn double %i.m, %i.p
  %i.r = fptosi double %i.q to i32
  %i.s = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.o, i32 noundef %i.r) #31 ; 4 uses
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1440
  %i.v = load double, ptr %i.u, align 8, !tbaa !240 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.s, double noundef %i.v, double noundef %i.v) #31
  %i.w = call ptr @cairo_create(ptr noundef %i.s) #31 ; 5 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1432
  %i.z = load double, ptr %i.y, align 8, !tbaa !235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !185
  store float %i.ab, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 140
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !186
  store float %i.ad, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 664 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !73 ; 11 uses
  store <4 x float> splat (float 1.000000e+00), ptr %i.c, align 16, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.ah = call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %i.ag) #31
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %_get_white_balance_coeff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !73 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2480
  %i.ak = load i32, ptr %i.aj, align 16, !tbaa !111
  %.not.i.i = icmp eq i32 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 2400
  %..i.i = select i1 %.not.i.i, i64 2416, i64 2448
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %..i.i
  %i.an = call i32 @dt_dev_equal_chroma(ptr noundef nonnull %i.al, ptr noundef nonnull %i.am) #31
  %.not26.i = icmp eq i32 %i.an, 0
  br i1 %.not26.i, label %bb.c, label %_get_white_balance_coeff.exit

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 2416
  %i.ap = load double, ptr %i.ao, align 16, !tbaa !105 ; 2 uses
  %i.aq = fcmp reassoc nsz arcp contract afn ogt double %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 2424
  %i.as = load double, ptr %i.ar, align 8, !tbaa !105
  %i.at = fcmp reassoc nsz arcp contract afn ogt double %i.as, 0.000000e+00
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 2432
  %i.av = load double, ptr %i.au, align 16, !tbaa !105
  %i.aw = fcmp reassoc nsz arcp contract afn ogt double %i.av, 0.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ax = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ %i.aw, %bb.e ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 2400
  %i.az = load float, ptr %i.ay, align 16, !tbaa !12 ; 2 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.az, 1.000000e+00
  br i1 %i.ba, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 2404
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bd = fcmp reassoc nsz arcp contract afn ogt float %i.bc, 1.000000e+00
  br i1 %i.bd, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 2408
  %i.bf = load float, ptr %i.be, align 8, !tbaa !12
  %i.bg = fcmp reassoc nsz arcp contract afn ogt float %i.bf, 1.000000e+00
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.bh = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ %i.bg, %bb.h ]
  %or.cond.i = select i1 %i.ax, i1 %i.bh, i1 false
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_get_white_balance_coeff.exit

.preheader.preheader.i:                           ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 2424
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !105
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 2404
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.af, i64 2432
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 2408
  %i.bo = load <2 x double>, ptr %i.bm, align 16, !tbaa !105
  %i.bp = insertelement <4 x double> poison, double %i.ap, i64 0
  %i.bq = insertelement <4 x double> %i.bp, double %i.bj, i64 1
  %i.br = shufflevector <2 x double> %i.bo, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x double> %i.bq, <4 x double> %i.br, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bt = fptrunc <4 x double> %i.bs to <4 x float>
  %i.bu = load <2 x float>, ptr %i.bn, align 8, !tbaa !12
  %i.bv = insertelement <4 x float> poison, float %i.az, i64 0
  %i.bw = insertelement <4 x float> %i.bv, float %i.bl, i64 1
  %i.bx = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.by = shufflevector <4 x float> %i.bw, <4 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bz = fdiv reassoc nsz arcp contract afn <4 x float> %i.bt, %i.by
  store <4 x float> %i.bz, ptr %i.c, align 16, !tbaa !12
  br label %_get_white_balance_coeff.exit

_get_white_balance_coeff.exit:                    ; preds = %bb.a, %bb.b, %bb.i, %.preheader.preheader.i
  %i.ca = sitofp reassoc nsz arcp contract afn i32 %i.i to float
  %i.cb = fmul reassoc nsz arcp contract afn double %i.z, 3.000000e+00
  %i.cc = fptrunc reassoc nsz arcp contract afn double %i.cb to float ; 2 uses
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, 2.000000e+00
  %i.ce = fsub reassoc nsz arcp contract afn float %i.ca, %i.cd
  %i.cf = fptosi float %i.ce to i32
  %i.cg = fadd reassoc nsz arcp contract afn double %i.j, -8.000000e+00
  %i.ch = fptosi double %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !122
  %i.ck = load ptr, ptr %i.ae, align 8, !tbaa !73
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 112
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !187
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !188
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !189
  call fastcc void @illuminant_to_xy(i32 noundef %i.cj, ptr noundef nonnull %i.cl, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, float noundef %i.cn, i32 noundef %i.cp, i32 noundef %i.cr)
  %i.cs = load float, ptr %i.a, align 4, !tbaa !12 ; 2 uses
  %i.ct = load float, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %i.cu = fdiv reassoc nsz arcp contract afn float %i.cs, %i.ct ; 3 uses
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cs, %i.ct
  %i.cw = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cv
  %i.cx = fdiv reassoc nsz arcp contract afn float %i.cw, %i.ct ; 3 uses
  %i.cy = fmul reassoc nsz arcp contract afn float %i.cu, f0x40489119
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cy, f0xBFCEF57D
  %i.da = fmul reassoc nsz arcp contract afn float %i.cx, f0xBEFB31D6
  %i.db = fadd reassoc nsz arcp contract afn float %i.cz, %i.da ; 2 uses
  %i.dc = fmul reassoc nsz arcp contract afn float %i.cu, f0x3F7A9091
  %i.dd = fsub reassoc nsz arcp contract afn float f0x3FF54420, %i.dc
  %i.de = fmul reassoc nsz arcp contract afn float %i.cx, 3.345400e-02
  %i.df = fadd reassoc nsz arcp contract afn float %i.dd, %i.de ; 2 uses
  %i.dg = fmul reassoc nsz arcp contract afn float %i.cu, 7.194530e-02
  %i.dh = fadd reassoc nsz arcp contract afn float %i.dg, f0xBE6A7CB9
  %i.di = fmul reassoc nsz arcp contract afn float %i.cx, f0x3FB3DEFE
  %i.dj = fadd reassoc nsz arcp contract afn float %i.dh, %i.di ; 2 uses
  %i.dk = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.db, float %i.df)
  %i.dl = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dk, float %i.dj) ; 3 uses
  %i.dm = fdiv reassoc nsz arcp contract afn float %i.db, %i.dl
  %i.dn = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dm, float 0.000000e+00)
  %i.do = fdiv reassoc nsz arcp contract afn float %i.df, %i.dl
  %i.dp = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.do, float 0.000000e+00)
  %i.dq = fdiv reassoc nsz arcp contract afn float %i.dj, %i.dl
  %i.dr = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dq, float 0.000000e+00)
  %i.ds = fpext reassoc nsz arcp contract afn float %i.dn to double
  %i.dt = fpext reassoc nsz arcp contract afn float %i.dp to double
  %i.du = fpext reassoc nsz arcp contract afn float %i.dr to double
  call void @cairo_set_source_rgb(ptr noundef %i.w, double noundef %i.ds, double noundef %i.dt, double noundef %i.du) #31
  %i.dv = fpext reassoc nsz arcp contract afn float %i.cc to double
  %i.dw = sitofp reassoc nsz arcp contract afn i32 %i.ch to double
  %i.dx = sitofp reassoc nsz arcp contract afn i32 %i.cf to double
  call void @cairo_rectangle(ptr noundef %i.w, double noundef 4.000000e+00, double noundef %i.dv, double noundef %i.dw, double noundef %i.dx) #31
  call void @cairo_fill(ptr noundef %i.w) #31
  call void @cairo_stroke(ptr noundef %i.w) #31
  call void @cairo_destroy(ptr noundef %i.w) #31
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.s, double noundef 0.000000e+00, double noundef 0.000000e+00) #31
  call void @cairo_paint(ptr noundef %1) #31
  call void @cairo_surface_destroy(ptr noundef %i.s) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret i32 1
}

declare ptr @dt_color_picker_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #5

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_soft_range(ptr noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_digits(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @dt_bauhaus_slider_new_with_range_and_feedback(ptr noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare ptr @dt_bauhaus_widget_set_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_illum_xy_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %dt_Lch_to_xyY.exit, label %bb.c

dt_Lch_to_xyY.exit:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !118  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !57  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 64, !tbaa !199
  %i.j = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.i) #31
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, f0x3C8EFA36
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !200
  %i.n = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.m) #31
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.k) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.o = fmul reassoc nsz arcp contract afn float %i.n, f0x3A49A634 ; 2 uses
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, %cos.i
  %i.q = fadd reassoc nsz arcp contract afn float %i.p, f0x3E562DD1 ; 2 uses
  %i.r = fmul reassoc nsz arcp contract afn float %i.o, %sin.i
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, f0x3EF9E502 ; 2 uses
  %i.t = fmul reassoc nsz arcp contract afn float %i.q, 6.000000e+00
  %i.u = fmul reassoc nsz arcp contract afn float %i.s, 1.600000e+01
  %i.v = fsub reassoc nsz arcp contract afn float %i.t, %i.u
  %i.w = fadd reassoc nsz arcp contract afn float %i.v, 1.200000e+01 ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn float %i.q, 9.000000e+00
  %i.y = fdiv reassoc nsz arcp contract afn float %i.x, %i.w ; 4 uses
  %i.z = fmul reassoc nsz arcp contract afn float %i.s, 4.000000e+00
  %i.aa = fdiv reassoc nsz arcp contract afn float %i.z, %i.w ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store float %i.y, ptr %i.ab, align 4, !tbaa !185
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 140
  store float %i.aa, ptr %i.ac, align 4, !tbaa !186
  %i.ad = fcmp reassoc nsz arcp contract afn olt float %i.y, f0x7F7FFFFF
  br i1 %i.ad, label %xy_to_CCT.exit, label %xy_to_CCT.exit.thread

xy_to_CCT.exit:                                   ; preds = %dt_Lch_to_xyY.exit
  %i.ae = fadd reassoc nsz arcp contract afn float %i.aa, -1.735000e-01
  %i.af = fsub reassoc nsz arcp contract afn float 3.366000e-01, %i.y
  %i.ag = fdiv reassoc nsz arcp contract afn float %i.af, %i.ae ; 3 uses
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, f0x3F8AE3F1
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.ah)
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, f0x45C36E6D
  %i.ak = fadd reassoc nsz arcp contract afn float %i.aj, f0xC46D773E
  %i.al = fmul reassoc nsz arcp contract afn float %i.ag, f0x409FB049
  %i.am = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.al)
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, f0x41E5A5DE
  %i.ao = fadd reassoc nsz arcp contract afn float %i.ak, %i.an
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ag, f0x41608FB8
  %i.aq = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.ap)
  %i.ar = fmul reassoc nsz arcp contract afn float %i.aq, 4.000000e-05
  %i.as = fadd reassoc nsz arcp contract afn float %i.ao, %i.ar ; 2 uses
  %i.at = fcmp reassoc nsz arcp contract afn olt float %i.as, 3.000000e+03
  br i1 %i.at, label %xy_to_CCT.exit.thread, label %bb.b

xy_to_CCT.exit.thread:                            ; preds = %dt_Lch_to_xyY.exit, %xy_to_CCT.exit
  %i.au = tail call reassoc nsz arcp contract afn fastcc float @CCT_reverse_lookup(float noundef %i.y, float noundef %i.aa)
  br label %bb.b

bb.b:                                             ; preds = %xy_to_CCT.exit.thread, %xy_to_CCT.exit
  %.0 = phi nsz float [ %i.au, %xy_to_CCT.exit.thread ], [ %i.as, %xy_to_CCT.exit ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 2 uses
  store float %.0, ptr %i.av, align 4, !tbaa !187
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  %i.ay = atomicrmw add ptr %i.ax, i32 1 seq_cst, align 4 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ba = load ptr, ptr %i.az, align 16, !tbaa !193
  %i.bb = load float, ptr %i.av, align 4, !tbaa !187
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ba, float noundef %i.bb) #31
  tail call fastcc void @_update_approx_cct(ptr noundef nonnull %1)
  tail call fastcc void @_update_illuminant_color(ptr noundef nonnull %1)
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  %i.be = atomicrmw add ptr %i.bd, i32 -1 seq_cst, align 4 ; 0 uses
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !177
  tail call void @dt_dev_add_history_item(ptr noundef %i.bf, ptr noundef nonnull %1, i32 noundef 1) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @dt_bauhaus_slider_new_with_range(ptr noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_hard_max(ptr noundef, float noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_soft_max(ptr noundef, float noundef) local_unnamed_addr #5

declare ptr @dt_bauhaus_toggle_from_params(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_gui_new_collapsible_section(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @dt_bauhaus_combobox_new_full(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_spot_settings_changed_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !57  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.f) #31 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 864 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 32, !tbaa !198
  %i.j = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.i) #31
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 856 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !197
  %i.m = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.l) #31
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 848
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !196
  %i.p = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.o) #31
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 904
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !215
  %i.s = tail call i32 @gtk_toggle_button_get_active(ptr noundef %i.r) #31
  %i.t = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #31 ; 0 uses
  tail call void @dt_conf_set_float(ptr noundef nonnull @.str.91, float noundef %i.j) #31
  tail call void @dt_conf_set_float(ptr noundef nonnull @.str.93, float noundef %i.m) #31
  tail call void @dt_conf_set_float(ptr noundef nonnull @.str.92, float noundef %i.p) #31
  tail call void @dt_conf_set_bool(ptr noundef nonnull @.str.90, i32 noundef %i.s) #31
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 776
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 840 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !214  ; 2 uses
  %.not10.i.i = icmp eq ptr %i.w, null
  br i1 %.not10.i.i, label %_area_mapping_active.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = tail call i32 @dt_bauhaus_combobox_get(ptr noundef nonnull %i.w) #31
  %.not11.i.i = icmp eq i32 %i.x, 1
  br i1 %.not11.i.i, label %_area_mapping_active.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.h, align 32, !tbaa !198 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.y, null
  br i1 %.not12.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_val(ptr noundef nonnull %i.y) #31
  %i.aa = fcmp reassoc nsz arcp contract afn une float %i.z, 5.000000e+01
  br i1 %i.aa, label %_area_mapping_section_text.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !197 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.ab, null
  br i1 %.not13.i.i, label %_area_mapping_active.exit.thread.i, label %_area_mapping_active.exit.i

_area_mapping_active.exit.i:                      ; preds = %bb.f
  %i.ac = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_val(ptr noundef nonnull %i.ab) #31
  %i.ad = fcmp reassoc nsz arcp contract afn oeq float %i.ac, 0.000000e+00
  br i1 %i.ad, label %_area_mapping_active.exit.thread.i, label %_area_mapping_section_text.exit

_area_mapping_active.exit.thread.i:               ; preds = %_area_mapping_active.exit.i, %bb.f, %bb.c, %bb.b
  br label %_area_mapping_section_text.exit

_area_mapping_section_text.exit:                  ; preds = %bb.e, %_area_mapping_active.exit.i, %_area_mapping_active.exit.thread.i
  %.str.317.sink.i = phi ptr [ @.str.317, %_area_mapping_active.exit.thread.i ], [ @.str.316, %bb.e ], [ @.str.316, %_area_mapping_active.exit.i ]
  %i.ae = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.317.sink.i, i32 noundef 5) #31
  tail call void @dt_gui_collapsible_section_set_label(ptr noundef nonnull %i.u, ptr noundef %i.ae) #31
  %.val = load ptr, ptr %i.d, align 16, !tbaa !57
  tail call fastcc void @_paint_hue(ptr %.val)
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !214
  %i.ag = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %i.af) #31
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_area_mapping_section_text.exit
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !177
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2760
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !178
  tail call fastcc void @_auto_set_illuminant(ptr noundef nonnull %1, ptr noundef %i.ak)
  br label %bb.h

bb.h:                                             ; preds = %_area_mapping_section_text.exit, %bb.g, %bb.a
  ret void
}

declare ptr @gtk_check_button_new_with_label(ptr noundef) local_unnamed_addr #5

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @gtk_bin_get_child(ptr noundef) local_unnamed_addr #5

declare void @gtk_widget_set_vexpand(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @_origin_color_draw(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !57  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #31
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !238
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !239  ; 2 uses
  %i.g = sitofp reassoc nsz arcp contract afn i32 %i.d to double ; 2 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1440
  %i.j = load double, ptr %i.i, align 8, !tbaa !240 ; 2 uses
  %i.k = fmul reassoc nsz arcp contract afn double %i.j, %i.g
  %i.l = fptosi double %i.k to i32
  %i.m = sitofp reassoc nsz arcp contract afn i32 %i.f to double
  %i.n = fmul reassoc nsz arcp contract afn double %i.j, %i.m
  %i.o = fptosi double %i.n to i32
  %i.p = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.l, i32 noundef %i.o) #31 ; 4 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1440
  %i.s = load double, ptr %i.r, align 8, !tbaa !240 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.p, double noundef %i.s, double noundef %i.s) #31
  %i.t = call ptr @cairo_create(ptr noundef %i.p) #31 ; 5 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1432
  %i.w = load double, ptr %i.v, align 8, !tbaa !235
  %i.x = fmul reassoc nsz arcp contract afn double %i.w, 3.000000e+00
  %i.y = fptrunc reassoc nsz arcp contract afn double %i.x to float ; 2 uses
  %i.z = fadd reassoc nsz arcp contract afn double %i.g, -8.000000e+00
  %i.aa = fptosi double %i.z to i32
  %i.ab = fmul reassoc nsz arcp contract afn float %i.y, 2.000000e+00
  %i.ac = sitofp reassoc nsz arcp contract afn i32 %i.f to float
  %i.ad = fsub reassoc nsz arcp contract afn float %i.ac, %i.ab
  %i.ae = fptosi float %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 912
  %i.ag = load float, ptr %i.af, align 16, !tbaa !12
  %i.ah = fpext reassoc nsz arcp contract afn float %i.ag to double
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 916
  %i.aj = load <2 x float>, ptr %i.ai, align 4, !tbaa !12
  %i.ak = fpext <2 x float> %i.aj to <2 x double> ; 2 uses
  %i.al = extractelement <2 x double> %i.ak, i64 0
  %i.am = extractelement <2 x double> %i.ak, i64 1
  call void @cairo_set_source_rgb(ptr noundef %i.t, double noundef %i.ah, double noundef %i.al, double noundef %i.am) #31
  %i.an = fpext reassoc nsz arcp contract afn float %i.y to double
  %i.ao = sitofp reassoc nsz arcp contract afn i32 %i.aa to double
  %i.ap = sitofp reassoc nsz arcp contract afn i32 %i.ae to double
  call void @cairo_rectangle(ptr noundef %i.t, double noundef 4.000000e+00, double noundef %i.an, double noundef %i.ao, double noundef %i.ap) #31
  call void @cairo_fill(ptr noundef %i.t) #31
  call void @cairo_stroke(ptr noundef %i.t) #31
  call void @cairo_destroy(ptr noundef %i.t) #31
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.p, double noundef 0.000000e+00, double noundef 0.000000e+00) #31
  call void @cairo_paint(ptr noundef %1) #31
  call void @cairo_surface_destroy(ptr noundef %i.p) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret i32 1
}

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @_target_color_draw(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = alloca [4 x float], align 16             ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !57  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #31
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !238
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !239  ; 2 uses
  %i.i = sitofp reassoc nsz arcp contract afn i32 %i.f to double ; 2 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1440
  %i.l = load double, ptr %i.k, align 8, !tbaa !240 ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn double %i.l, %i.i
  %i.n = fptosi double %i.m to i32
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.h to double
  %i.p = fmul reassoc nsz arcp contract afn double %i.l, %i.o
  %i.q = fptosi double %i.p to i32
  %i.r = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.n, i32 noundef %i.q) #31 ; 4 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1440
  %i.u = load double, ptr %i.t, align 8, !tbaa !240 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.r, double noundef %i.u, double noundef %i.u) #31
  %i.v = call ptr @cairo_create(ptr noundef %i.r) #31 ; 5 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1432
  %i.y = load double, ptr %i.x, align 8, !tbaa !235
  %i.z = fmul reassoc nsz arcp contract afn double %i.y, 3.000000e+00
  %i.aa = fptrunc reassoc nsz arcp contract afn double %i.z to float ; 2 uses
  %i.ab = fadd reassoc nsz arcp contract afn double %i.i, -8.000000e+00
  %i.ac = fptosi double %i.ab to i32
  %i.ad = fmul reassoc nsz arcp contract afn float %i.aa, 2.000000e+00
  %i.ae = sitofp reassoc nsz arcp contract afn i32 %i.h to float
  %i.af = fsub reassoc nsz arcp contract afn float %i.ae, %i.ad
  %i.ag = fptosi float %i.af to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 864
  %i.ai = load ptr, ptr %i.ah, align 32, !tbaa !198
  %i.aj = call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.ai) #31
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 856
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !197
  %i.am = call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.al) #31 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 848
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !196
  %i.ap = call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.ao) #31
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, f0x3C8EFA36
  %sincos = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.aq) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.ar = fmul reassoc nsz arcp contract afn float %i.am, 2.000000e-03
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, %cos
  %i.at = fmul reassoc nsz arcp contract afn float %i.aj, 8.620690e-03
  %i.au = fmul reassoc nsz arcp contract afn float %i.am, 5.000000e-03
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, %sin
  %i.aw = fadd reassoc nsz arcp contract afn float %i.at, f0x3E0D3DCB ; 3 uses
  %i.ax = fadd reassoc nsz arcp contract afn float %i.as, %i.aw
  %i.ay = fsub reassoc nsz arcp contract afn float %i.aw, %i.av
  %i.az = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 1
  %i.bb = insertelement <4 x float> %i.ba, float %i.ay, i64 2 ; 2 uses
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.bd = fmul reassoc nsz arcp contract afn <4 x float> %i.bc, <float f0x3E038026, float f0x3E038026, float f0x3E038026, float 0.000000e+00> ; 2 uses
  %i.be = shufflevector <4 x float> %i.bb, <4 x float> %i.bd, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 4 uses
  %i.bf = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.be, splat (float f0x3E53DCB1)
  %i.bg = fmul reassoc nsz arcp contract afn <4 x float> %i.be, %i.be
  %i.bh = fmul reassoc nsz arcp contract afn <4 x float> %i.bg, %i.be
  %i.bi = fadd reassoc nsz arcp contract afn <4 x float> %i.bd, splat (float f0xBC911AA6)
  %i.bj = select <4 x i1> %i.bf, <4 x float> %i.bh, <4 x float> %i.bi
  %i.bk = fmul reassoc nsz arcp contract afn <4 x float> %i.bj, <float 9.642000e-01, float 1.000000e+00, float f0x3F532CA5, float 0.000000e+00>
  store <4 x float> %i.bk, ptr %i.b, align 16, !tbaa !12
  call fastcc void @dt_XYZ_to_sRGB(ptr noundef %i.b, ptr noundef nonnull %i.a)
  %i.bl = load float, ptr %i.a, align 16, !tbaa !12
  %i.bm = fpext reassoc nsz arcp contract afn float %i.bl to double
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bo = load <2 x float>, ptr %i.bn, align 4, !tbaa !12
  %i.bp = fpext <2 x float> %i.bo to <2 x double> ; 2 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 0
  %i.br = extractelement <2 x double> %i.bp, i64 1
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef %i.bm, double noundef %i.bq, double noundef %i.br) #31
  %i.bs = fpext reassoc nsz arcp contract afn float %i.aa to double
  %i.bt = sitofp reassoc nsz arcp contract afn i32 %i.ac to double
  %i.bu = sitofp reassoc nsz arcp contract afn i32 %i.ag to double
  call void @cairo_rectangle(ptr noundef %i.v, double noundef 4.000000e+00, double noundef %i.bs, double noundef %i.bt, double noundef %i.bu) #31
  call void @cairo_fill(ptr noundef %i.v) #31
  call void @cairo_stroke(ptr noundef %i.v) #31
  call void @cairo_destroy(ptr noundef %i.v) #31
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.r, double noundef 0.000000e+00, double noundef 0.000000e+00) #31
  call void @cairo_paint(ptr noundef %1) #31
  call void @cairo_surface_destroy(ptr noundef %i.r) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret i32 1
}

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @gtk_widget_set_margin_end(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @gtk_widget_get_parent(ptr noundef) local_unnamed_addr #5

declare void @gtk_widget_show(ptr noundef) local_unnamed_addr #5

declare ptr @gtk_notebook_get_nth_page(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @gtk_notebook_set_current_page(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_start_profiling_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #3 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load atomic i32, ptr %i.d seq_cst, align 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @dt_iop_request_focus(ptr noundef %1) #31
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !420
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.g, i32 noundef 1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.j = call i32 @dt_dev_get_preview_size(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #31
  %.not9 = icmp eq i32 %i.j, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !57  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 736
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !236
  %i.o = call i32 @gtk_toggle_button_get_active(ptr noundef %i.n) #31
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 640
  store i32 %i.o, ptr %i.p, align 64, !tbaa !161
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.r = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.q) #31 ; 0 uses
  %i.s = load float, ptr %i.a, align 4, !tbaa !12
  %i.t = load float, ptr %i.b, align 4, !tbaa !12
  call fastcc void @_init_bounding_box(ptr noundef %i.l, float noundef %i.s, float noundef %i.t)
  %i.u = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.q) #31 ; 0 uses
  call void @dt_control_queue_redraw_center() #31
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_checker_changed_callback(ptr noundef %0, ptr noundef %1) #3 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load atomic i32, ptr %i.d seq_cst, align 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !57  ; 3 uses
  %i.h = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %0) #31 ; 3 uses
  tail call void @dt_conf_set_int(ptr noundef nonnull @.str.94, i32 noundef %i.h) #31
  %i.i = icmp ult i32 %i.h, 7
  br i1 %i.i, label %switch.lookup, label %dt_get_color_checker.exit

switch.lookup:                                    ; preds = %bb.b
  %i.j = zext nneg i32 %i.h to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._checker_changed_callback, i64 %i.j
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %dt_get_color_checker.exit

dt_get_color_checker.exit:                        ; preds = %bb.b, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @xrite_24_2014, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  store ptr %.0.i, ptr %i.k, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73
  %i.n = call i32 @dt_dev_get_preview_size(ptr noundef %i.m, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #31
  %.not9 = icmp eq i32 %i.n, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %dt_get_color_checker.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.p = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.o) #31 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 536
  store i32 0, ptr %i.q, align 8, !tbaa !108
  %i.r = load float, ptr %i.a, align 4, !tbaa !12
  %i.s = load float, ptr %i.b, align 4, !tbaa !12
  call fastcc void @_init_bounding_box(ptr noundef nonnull %i.g, float noundef %i.r, float noundef %i.s)
  %i.t = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.o) #31 ; 0 uses
  call void @dt_control_queue_redraw_center() #31
  br label %bb.d

bb.d:                                             ; preds = %dt_get_color_checker.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_optimize_changed_callback(ptr noundef %0, ptr noundef %1) #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !57
  %i.f = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %0) #31 ; 2 uses
  tail call void @dt_conf_set_int(ptr noundef nonnull @.str.95, i32 noundef %i.f) #31
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.h = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.g) #31 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  store i32 %i.f, ptr %i.i, align 64, !tbaa !104
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #31 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_safety_changed_callback(ptr noundef %0, ptr noundef %1) #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.f) #31 ; 0 uses
  %i.h = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %0) #31
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 452 ; 2 uses
  store float %i.h, ptr %i.i, align 4, !tbaa !179
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #31 ; 0 uses
  %i.k = load float, ptr %i.i, align 4, !tbaa !179
  tail call void @dt_conf_set_float(ptr noundef nonnull @.str.96, float noundef %i.k) #31
  tail call void @dt_control_queue_redraw_center() #31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @dtgtk_button_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @dtgtk_cairo_paint_check_mark(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal void @_commit_profile_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
end_hunk_6
begin_hunk_7_@get_p:bb.a
  %.not71 = icmp eq i32 %i.aa, 0
  br i1 %.not71, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.ay

bb.ac:                                            ; preds = %bb.aa
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.173) #34
  %.not72 = icmp eq i32 %i.ac, 0
  br i1 %.not72, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 108
  br label %bb.ay

bb.ae:                                            ; preds = %bb.ac
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.180) #34
  %.not73 = icmp eq i32 %i.ae, 0
  br i1 %.not73, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.ay

bb.ag:                                            ; preds = %bb.ae
  %i.ag = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.186) #34
  %.not74 = icmp eq i32 %i.ag, 0
  br i1 %.not74, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 116
  br label %bb.ay

bb.ai:                                            ; preds = %bb.ag
  %i.ai = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.84) #34
  %.not75 = icmp eq i32 %i.ai, 0
  br i1 %.not75, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.ay

bb.ak:                                            ; preds = %bb.ai
  %i.ak = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.117) #34
  %.not76 = icmp eq i32 %i.ak, 0
  br i1 %.not76, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 124
  br label %bb.ay

bb.am:                                            ; preds = %bb.ak
  %i.am = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.118) #34
  %.not77 = icmp eq i32 %i.am, 0
  br i1 %.not77, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.ay

bb.ao:                                            ; preds = %bb.am
  %i.ao = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.100) #34
  %.not78 = icmp eq i32 %i.ao, 0
  br i1 %.not78, label %bb.ap, label %sub_0

bb.ap:                                            ; preds = %bb.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 132
  br label %bb.ay

sub_0:                                            ; preds = %bb.ao
  %i.aq = load i8, ptr %1, align 1
  switch i8 %i.aq, label %.tail85.thread [
    i8 120, label %.tail
    i8 121, label %.tail85
  ]

.tail:                                            ; preds = %sub_0
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.aq, label %.tail85.thread

bb.aq:                                            ; preds = %.tail
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.ay

.tail85:                                          ; preds = %sub_0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.ar, label %.tail85.thread

bb.ar:                                            ; preds = %.tail85
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 140
  br label %bb.ay

.tail85.thread:                                   ; preds = %sub_0, %.tail, %.tail85
  %i.az = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.99) #34
  %.not81 = icmp eq i32 %i.az, 0
  br i1 %.not81, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.tail85.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.ay

bb.at:                                            ; preds = %.tail85.thread
  %i.bb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.125) #34
  %.not82 = icmp eq i32 %i.bb, 0
  br i1 %.not82, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 148
  br label %bb.ay

bb.av:                                            ; preds = %bb.at
  %i.bd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.126) #34
  %.not83 = icmp eq i32 %i.bd, 0
  br i1 %.not83, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.bf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.174) #34
  %.not84 = icmp eq i32 %i.bf, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 156
  %spec.select = select i1 %.not84, ptr %i.bg, ptr null
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.b, %bb.a, %bb.aw, %bb.au, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d
  %.0 = phi ptr [ %0, %bb.b ], [ %spec.select, %bb.ax ], [ %i.be, %bb.aw ], [ %i.bc, %bb.au ], [ %i.ba, %bb.as ], [ %i.ay, %bb.ar ], [ %i.au, %bb.aq ], [ %i.ap, %bb.ap ], [ %i.an, %bb.an ], [ %i.al, %bb.al ], [ %i.aj, %bb.aj ], [ %i.ah, %bb.ah ], [ %i.af, %bb.af ], [ %i.ad, %bb.ad ], [ %i.ab, %bb.ab ], [ %i.z, %bb.z ], [ %i.x, %bb.x ], [ %i.v, %bb.v ], [ %i.t, %bb.t ], [ %i.r, %bb.r ], [ %i.p, %bb.p ], [ %i.n, %bb.n ], [ %i.l, %bb.l ], [ %i.j, %bb.j ], [ %i.h, %bb.h ], [ %i.f, %bb.f ], [ %i.d, %bb.d ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #20

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @dt_iop_is_first_instance(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @dt_iop_get_instance_id(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc <2 x float> @_extract_patches(ptr noalias nofree noundef readonly captures(none) %0, i32 %.8.val, i32 %.12.val, ptr noundef nonnull %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr noalias nofree noundef captures(none) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #14 {
bb.a:
  %i.a = sext i32 %.8.val to i64
  %i.b = insertelement <2 x i32> poison, i32 %.8.val, i64 0
  %i.c = insertelement <2 x i32> %i.b, i32 %.12.val, i64 1
  %i.d = sext <2 x i32> %i.c to <2 x i64>
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load float, ptr %i.g, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.j = load float, ptr %i.i, align 4, !tbaa !12 ; 2 uses
  %i.k = tail call reassoc nsz arcp contract afn float @hypotf(float noundef 1.000000e+00, float noundef %i.j) #33
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 452
  %i.n = load float, ptr %i.m, align 4, !tbaa !179
  %i.o = fmul reassoc nsz arcp contract afn float %i.l, %i.n ; 5 uses
  %i.p = fdiv reassoc nsz arcp contract afn float %i.o, %i.j ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 64, !tbaa !102
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.u = load i64, ptr %i.t, align 16, !tbaa !101
  %i.v = shl i64 %i.u, 2
  %i.w = tail call ptr @dt_alloc_aligned(i64 noundef %i.v) #31 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.w, i64 64) ]
  store ptr %i.w, ptr %i.q, align 64, !tbaa !102
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !100
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = phi ptr [ %.pre, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load i64, ptr %i.y, align 16, !tbaa !101
  %.not79 = icmp eq i64 %i.z, 0
  br i1 %.not79, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.aa = add nsw <2 x i64> %i.d, splat (i64 -1)  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 492
  %i.ad = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.p, i64 1
  %i.af = fneg reassoc nsz arcp contract afn <2 x float> %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = uitofp <2 x i64> %i.aa to <2 x float>
  %i.al = extractelement <2 x i64> %i.aa, i64 0
  %i.am = extractelement <2 x i64> %i.aa, i64 1
  %i.an = insertelement <4 x float> poison, float %i.o, i64 2
  %i.ao = insertelement <4 x float> %i.an, float %i.p, i64 3
  br label %bb.d

._crit_edge:                                      ; preds = %.preheader28, %bb.c
  %.lcssa31 = phi ptr [ %i.x, %bb.c ], [ %i.gv, %.preheader28 ] ; 6 uses
  %.lcssa30 = phi i64 [ 0, %bb.c ], [ %i.gx, %.preheader28 ] ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa31, i64 80
  %i.aq = load i64, ptr %i.ap, align 16, !tbaa !101 ; 2 uses
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %.lcssa31, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 116
  %i.au = load float, ptr %i.as, align 4, !tbaa !12
  %.idx290 = shl i64 %i.aq, 4
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 %.idx290 ; 3 uses
  %.sroa.0125.0.copyload = load float, ptr %i.av, align 4, !tbaa !12 ; 2 uses
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %.sroa.4126.0.copyload = load float, ptr %.sroa.4126.0..sroa_idx, align 4, !tbaa !12 ; 2 uses
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.5127.0.copyload = load float, ptr %.sroa.5127.0..sroa_idx, align 4, !tbaa !12 ; 2 uses
  %i.aw = fmul reassoc nsz arcp contract afn float %i.au, 8.620690e-03
  %i.ax = fadd reassoc nsz arcp contract afn float %i.aw, f0x3E0D3DCB ; 6 uses
  %i.ay = fcmp reassoc nsz arcp contract afn ogt float %i.ax, f0x3E53DCB1
  %i.az = fmul reassoc nsz arcp contract afn float %i.ax, %i.ax
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, %i.ax
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ax, f0x3E038026
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, f0xBC911AA6
  %i.bd = select reassoc nsz arcp contract afn i1 %i.ay, float %i.ba, float %i.bc ; 2 uses
  %i.be = load <2 x float>, ptr %i.at, align 4, !tbaa !12
  %i.bf = fmul reassoc nsz arcp contract afn <2 x float> %i.be, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %i.bg = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bi = fadd reassoc nsz arcp contract afn <2 x float> %i.bh, %i.bf
  %i.bj = fsub reassoc nsz arcp contract afn <2 x float> %i.bh, %i.bf
  %i.bk = shufflevector <2 x float> %i.bi, <2 x float> %i.bj, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.bl = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bk, splat (float f0x3E53DCB1)
  %i.bm = fmul reassoc nsz arcp contract afn <2 x float> %i.bk, %i.bk
  %i.bn = fmul reassoc nsz arcp contract afn <2 x float> %i.bm, %i.bk
  %i.bo = fmul reassoc nsz arcp contract afn <2 x float> %i.bk, splat (float f0x3E038026)
  %i.bp = fadd reassoc nsz arcp contract afn <2 x float> %i.bo, splat (float f0xBC911AA6)
  %i.bq = select <2 x i1> %i.bl, <2 x float> %i.bn, <2 x float> %i.bp ; 2 uses
  %i.br = extractelement <2 x float> %i.bq, i64 0
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, 9.642000e-01 ; 2 uses
  %i.bt = extractelement <2 x float> %i.bq, i64 1
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, f0x3F532CA5 ; 2 uses
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bs, %i.bs
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bd, %i.bd
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bv, %i.bw
  %i.by = fmul reassoc nsz arcp contract afn float %i.bu, %i.bu
  %i.bz = fadd reassoc nsz arcp contract afn float %i.bx, %i.by
  %i.ca = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.bz)
  %i.cb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ca, float f0x37800000) ; 3 uses
  %i.cc = fmul reassoc nsz arcp contract afn float %.sroa.0125.0.copyload, %.sroa.0125.0.copyload
  %i.cd = fmul reassoc nsz arcp contract afn float %.sroa.4126.0.copyload, %.sroa.4126.0.copyload
  %i.ce = fadd reassoc nsz arcp contract afn float %i.cd, %i.cc
  %i.cf = fmul reassoc nsz arcp contract afn float %.sroa.5127.0.copyload, %.sroa.5127.0.copyload
  %i.cg = fadd reassoc nsz arcp contract afn float %i.ce, %i.cf
  %i.ch = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.cg)
  %i.ci = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ch, float f0x37800000) ; 2 uses
  %i.cj = fdiv reassoc nsz arcp contract afn float %i.cb, %i.ci ; 3 uses
  %.not = icmp ne i32 %5, 0
  %i.ck = icmp ne i64 %.lcssa30, 0
  %or.cond = and i1 %.not, %i.ck
  br i1 %or.cond, label %.lr.ph50, label %.loopexit

bb.d:                                             ; preds = %.lr.ph, %.preheader28
  %i.cl = phi ptr [ %i.x, %.lr.ph ], [ %i.gv, %.preheader28 ]
  %.027245 = phi i64 [ 0, %.lr.ph ], [ %i.gu, %.preheader28 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [48 x i8], ptr %i.cl, i64 %.027245
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 128
  %i.co = load <2 x float>, ptr %i.cn, align 16, !tbaa !12 ; 3 uses
  %i.cp = extractelement <2 x float> %i.co, i64 0 ; 2 uses
  %i.cq = fsub reassoc nsz arcp contract afn float %i.cp, %i.o
  %.sroa.0135.0.vec.insert = insertelement <2 x float> <float poison, float undef>, float %i.cq, i64 0 ; 2 uses
  %i.cr = extractelement <2 x float> %i.co, i64 1 ; 2 uses
  %i.cs = fsub reassoc nsz arcp contract afn float %i.cr, %i.p ; 2 uses
  %.sroa.0135.4.vec.insert = insertelement <2 x float> %.sroa.0135.0.vec.insert, float %i.cs, i64 1
  %i.ct = fadd reassoc nsz arcp contract afn float %i.cp, %i.o
  %.sroa.5137.8.vec.insert = insertelement <2 x float> <float poison, float undef>, float %i.ct, i64 0 ; 2 uses
  %.sroa.5137.12.vec.insert = insertelement <2 x float> %.sroa.5137.8.vec.insert, float %i.cs, i64 1
  %i.cu = fadd reassoc nsz arcp contract afn float %i.cr, %i.p ; 2 uses
  %.sroa.8139.20.vec.insert = insertelement <2 x float> %.sroa.5137.8.vec.insert, float %i.cu, i64 1
  %.sroa.11141.28.vec.insert = insertelement <2 x float> %.sroa.0135.0.vec.insert, float %i.cu, i64 1
  %i.cv = tail call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %.sroa.0135.4.vec.insert, ptr noundef nonnull %i.ab) #31 ; 2 uses
  %i.cw = tail call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %.sroa.5137.12.vec.insert, ptr noundef nonnull %i.ab) #31 ; 2 uses
  %i.cx = tail call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %.sroa.8139.20.vec.insert, ptr noundef nonnull %i.ab) #31 ; 2 uses
  %i.cy = tail call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %.sroa.11141.28.vec.insert, ptr noundef nonnull %i.ab) #31 ; 2 uses
  %.idx23 = shl i64 %.027245, 4
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 %.idx23 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  store i32 0, ptr %i.db, align 4
  %i.dc = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cv, <2 x float> %i.ak)
  %i.dd = fptoui <2 x float> %i.dc to <2 x i64>
  %i.de = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cv, <2 x float> zeroinitializer)
  %i.df = fptoui <2 x float> %i.de to <2 x i64>
  %i.dg = uitofp <2 x i64> %i.dd to <2 x float>
  %i.dh = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cw, <2 x float> %i.dg)
  %i.di = fptoui <2 x float> %i.dh to <2 x i64>
  %i.dj = uitofp <2 x i64> %i.df to <2 x float>
  %i.dk = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cw, <2 x float> %i.dj)
  %i.dl = fptoui <2 x float> %i.dk to <2 x i64>
  %i.dm = uitofp <2 x i64> %i.di to <2 x float>
  %i.dn = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cx, <2 x float> %i.dm)
  %i.do = fptoui <2 x float> %i.dn to <2 x i64>
  %i.dp = uitofp <2 x i64> %i.dl to <2 x float>
  %i.dq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cx, <2 x float> %i.dp)
  %i.dr = fptoui <2 x float> %i.dq to <2 x i64>
  %i.ds = uitofp <2 x i64> %i.do to <2 x float>
  %i.dt = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cy, <2 x float> %i.ds)
  %i.du = fptoui <2 x float> %i.dt to <2 x i64>   ; 3 uses
  %i.dv = uitofp <2 x i64> %i.dr to <2 x float>
  %i.dw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cy, <2 x float> %i.dv)
  %i.dx = fptoui <2 x float> %i.dw to <2 x i64>
  %i.dy = extractelement <2 x i64> %i.du, i64 0
  %. = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %i.dy)
  %i.dz = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.aa, <2 x i64> %i.dx) ; 3 uses
  %i.ea = icmp ugt <2 x i64> %i.dz, %i.du         ; 2 uses
  %i.eb = extractelement <2 x i1> %i.ea, i64 0
  %i.ec = extractelement <2 x i1> %i.ea, i64 1
  %or.cond160 = select i1 %i.ec, i1 %i.eb, i1 false
  br i1 %or.cond160, label %.preheader27.us.preheader, label %.preheader28

.preheader27.us.preheader:                        ; preds = %bb.d
  %i.ed = extractelement <2 x i64> %i.du, i64 1
  %i.ee = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.ed)
  %i.ef = extractelement <2 x i64> %i.dz, i64 1
  %i.eg = extractelement <2 x i64> %i.dz, i64 0
  br label %.preheader27.us

.preheader27.us:                                  ; preds = %.preheader27.us.preheader, %._crit_edge.us
  %i.eh = phi float [ %i.fb, %._crit_edge.us ], [ 0.000000e+00, %.preheader27.us.preheader ]
  %.026441.us = phi i64 [ %i.fm, %._crit_edge.us ], [ %i.ee, %.preheader27.us.preheader ] ; 3 uses
  %.026540.us = phi i64 [ %.2.us, %._crit_edge.us ], [ 0, %.preheader27.us.preheader ]
  %i.ei = phi <2 x float> [ %i.fc, %._crit_edge.us ], [ zeroinitializer, %.preheader27.us.preheader ]
  %i.ej = uitofp reassoc nsz arcp contract afn i64 %.026441.us to float
  %i.ek = fadd reassoc nsz arcp contract afn float %i.ej, 5.000000e-01
  %i.el = mul i64 %.026441.us, %i.a
  %i.em = insertelement <2 x float> poison, float %i.ek, i64 1
  br label %bb.e

bb.e:                                             ; preds = %.preheader27.us, %bb.f
  %i.en = phi float [ %i.eh, %.preheader27.us ], [ %i.fb, %bb.f ] ; 2 uses
  %.026339.us = phi i64 [ %., %.preheader27.us ], [ %i.fd, %bb.f ] ; 3 uses
  %.126638.us = phi i64 [ %.026540.us, %.preheader27.us ], [ %.2.us, %bb.f ] ; 2 uses
  %i.eo = phi <2 x float> [ %i.ei, %.preheader27.us ], [ %i.fc, %bb.f ] ; 2 uses
  %i.ep = uitofp reassoc nsz arcp contract afn i64 %.026339.us to float
  %i.eq = fadd reassoc nsz arcp contract afn float %i.ep, 5.000000e-01
  %i.er = insertelement <2 x float> %i.em, float %i.eq, i64 0
  %i.es = tail call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %i.er, ptr noundef nonnull %i.ac) #31
  %i.et = fsub reassoc nsz arcp contract afn <2 x float> %i.es, %i.co ; 2 uses
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ew = shufflevector <2 x float> %i.af, <2 x float> %i.et, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ex = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ev, %i.ew
  %i.ey = freeze <4 x i1> %i.ex
  %i.ez = bitcast <4 x i1> %i.ey to i4
  %i.fa = icmp eq i4 %i.ez, -1
  br i1 %i.fa, label %.preheader26.us, label %bb.f

bb.f:                                             ; preds = %.preheader26.us, %bb.e
  %i.fb = phi float [ %i.fk, %.preheader26.us ], [ %i.en, %bb.e ] ; 3 uses
  %.2.us = phi i64 [ %i.fl, %.preheader26.us ], [ %.126638.us, %bb.e ] ; 3 uses
  %i.fc = phi <2 x float> [ %i.fh, %.preheader26.us ], [ %i.eo, %bb.e ] ; 3 uses
  %i.fd = add i64 %.026339.us, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fd, %i.eg
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.e

.preheader26.us:                                  ; preds = %bb.e
  %i.fe = add i64 %.026339.us, %i.el
  %.idx291.us = shl i64 %i.fe, 4
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 %.idx291.us ; 2 uses
  %i.fg = load <2 x float>, ptr %i.ff, align 4, !tbaa !12
  %i.fh = fadd reassoc nsz arcp contract afn <2 x float> %i.eo, %i.fg ; 2 uses
  store <2 x float> %i.fh, ptr %i.cz, align 4, !tbaa !12
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !12
  %i.fk = fadd reassoc nsz arcp contract afn float %i.en, %i.fj ; 2 uses
  store float %i.fk, ptr %i.da, align 4, !tbaa !12
  %i.fl = add i64 %.126638.us, 1
  br label %bb.f

._crit_edge.us:                                   ; preds = %bb.f
  %i.fm = add i64 %.026441.us, 1                  ; 2 uses
  %exitcond92.not = icmp eq i64 %i.fm, %i.ef
  br i1 %exitcond92.not, label %.preheader28.loopexit, label %.preheader27.us

.preheader28.loopexit:                            ; preds = %._crit_edge.us
  %i.fn = uitofp reassoc nsz arcp contract afn i64 %.2.us to float
  br label %.preheader28

.preheader28:                                     ; preds = %.preheader28.loopexit, %bb.d
  %i.fo = phi float [ 0.000000e+00, %bb.d ], [ %i.fb, %.preheader28.loopexit ]
  %.0265.lcssa = phi float [ 0.000000e+00, %bb.d ], [ %i.fn, %.preheader28.loopexit ] ; 2 uses
  %i.fp = phi <2 x float> [ zeroinitializer, %bb.d ], [ %i.fc, %.preheader28.loopexit ]
  %i.fq = insertelement <2 x float> poison, float %.0265.lcssa, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = fdiv reassoc nsz arcp contract afn <2 x float> %i.fp, %i.fr ; 4 uses
  %i.ft = fdiv reassoc nsz arcp contract afn float %i.fo, %.0265.lcssa ; 2 uses
  %i.fu = load float, ptr %i.ah, align 4, !tbaa !12
  %i.fv = extractelement <2 x float> %i.fs, i64 0
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fu, %i.fv
  %i.fx = load float, ptr %i.ai, align 4, !tbaa !12
  %i.fy = extractelement <2 x float> %i.fs, i64 1
  %i.fz = fmul reassoc nsz arcp contract afn float %i.fx, %i.fy
  %i.ga = fadd reassoc nsz arcp contract afn float %i.fz, %i.fw
  %i.gb = load float, ptr %i.aj, align 4, !tbaa !12
  %i.gc = fmul reassoc nsz arcp contract afn float %i.gb, %i.ft
  %i.gd = fadd reassoc nsz arcp contract afn float %i.ga, %i.gc
  %i.ge = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %2, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !12 ; 3 uses
  %i.gf = shufflevector <5 x float> %i.ge, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <5 x float> %i.ge, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.gh = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gi = fmul reassoc nsz arcp contract afn <2 x float> %i.gg, %i.gh
  %i.gj = load <2 x float>, ptr %i.ag, align 4, !tbaa !12 ; 2 uses
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gl = shufflevector <4 x float> %i.gf, <4 x float> %i.gk, <2 x i32> <i32 0, i32 4>
  %i.gm = fmul reassoc nsz arcp contract afn <2 x float> %i.gl, %i.fs
  %i.gn = fadd reassoc nsz arcp contract afn <2 x float> %i.gm, %i.gi
  %i.go = shufflevector <2 x float> %i.gj, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.gp = shufflevector <5 x float> %i.ge, <5 x float> %i.go, <2 x i32> <i32 2, i32 6>
  %i.gq = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fmul reassoc nsz arcp contract afn <2 x float> %i.gp, %i.gr
  %i.gt = fadd reassoc nsz arcp contract afn <2 x float> %i.gn, %i.gs
  store <2 x float> %i.gt, ptr %i.cz, align 4, !tbaa !12
  store float %i.gd, ptr %i.da, align 4, !tbaa !12
  %i.gu = add nuw i64 %.027245, 1                 ; 2 uses
  %i.gv = load ptr, ptr %i.e, align 8, !tbaa !100 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 48
  %i.gx = load i64, ptr %i.gw, align 16, !tbaa !101 ; 2 uses
  %i.gy = icmp ult i64 %i.gu, %i.gx
  br i1 %i.gy, label %bb.d, label %._crit_edge

.lr.ph50:                                         ; preds = %._crit_edge
  %i.gz = fmul reassoc nsz arcp contract afn float %i.cj, %i.ci ; 2 uses
  %min.iters.check = icmp ult i64 %.lcssa30, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph50
  %i.ha = shl i64 %.lcssa30, 4
  %i.hb = getelementptr i8, ptr %4, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.hb, i64 -4
  %i.hd = getelementptr i8, ptr %.lcssa31, i64 112
  %i.he = mul i64 %.lcssa30, 48
  %i.hf = getelementptr i8, ptr %.lcssa31, i64 %i.he
  %i.hg = getelementptr i8, ptr %i.hf, i64 76
  %bound0 = icmp ult ptr %4, %i.hg
  %bound1 = icmp ult ptr %i.hd, %i.hc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.hh = and i64 %.lcssa30, 7                    ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 0
  %i.hj = select i1 %i.hi, i64 8, i64 %i.hh
  %n.vec = sub i64 %.lcssa30, %i.hj               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.gz, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <8 x float> poison, float %i.cb, i64 0
  %broadcast.splat172 = shufflevector <8 x float> %broadcast.splatinsert171, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.hk = shl <8 x i64> %vec.ind, splat (i64 4)
  %wide.gep = getelementptr inbounds nuw i8, ptr %4, <8 x i64> %i.hk ; 4 uses
  %i.hl = extractelement <8 x ptr> %wide.gep, i64 0
  %wide.gep173 = getelementptr inbounds nuw [48 x i8], ptr %.lcssa31, <8 x i64> %vec.ind ; 3 uses
  %wide.gep174 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep173, i64 112
  %wide.gep175 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep173, i64 116
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep175, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !434
  %wide.masked.gather176 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep174, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !434
  %wide.gep177 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep173, i64 120
  %wide.masked.gather178 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep177, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !434
  %i.hm = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, splat (float 2.000000e-03)
  %i.hn = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather176, splat (float 8.620690e-03)
  %i.ho = fadd reassoc nsz arcp contract afn <8 x float> %i.hn, splat (float f0x3E0D3DCB) ; 7 uses
  %i.hp = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather178, splat (float 5.000000e-03)
  %i.hq = fadd reassoc nsz arcp contract afn <8 x float> %i.ho, %i.hm ; 5 uses
  %i.hr = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.hq, splat (float f0x3E53DCB1)
  %i.hs = fmul reassoc nsz arcp contract afn <8 x float> %i.hq, %i.hq
  %i.ht = fmul reassoc nsz arcp contract afn <8 x float> %i.hs, %i.hq
  %i.hu = fmul reassoc nsz arcp contract afn <8 x float> %i.hq, splat (float f0x3E038026)
  %i.hv = fadd reassoc nsz arcp contract afn <8 x float> %i.hu, splat (float f0xBC911AA6)
  %i.hw = select reassoc nsz arcp contract afn <8 x i1> %i.hr, <8 x float> %i.ht, <8 x float> %i.hv
  %i.hx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ho, splat (float f0x3E53DCB1)
  %i.hy = fmul reassoc nsz arcp contract afn <8 x float> %i.ho, %i.ho
  %i.hz = fmul reassoc nsz arcp contract afn <8 x float> %i.hy, %i.ho
  %i.ia = fmul reassoc nsz arcp contract afn <8 x float> %i.ho, splat (float f0x3E038026)
  %i.ib = fadd reassoc nsz arcp contract afn <8 x float> %i.ia, splat (float f0xBC911AA6)
  %i.ic = select reassoc nsz arcp contract afn <8 x i1> %i.hx, <8 x float> %i.hz, <8 x float> %i.ib ; 2 uses
  %i.id = fsub reassoc nsz arcp contract afn <8 x float> %i.ho, %i.hp ; 5 uses
  %i.ie = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.id, splat (float f0x3E53DCB1)
  %i.if = fmul reassoc nsz arcp contract afn <8 x float> %i.id, %i.id
  %i.ig = fmul reassoc nsz arcp contract afn <8 x float> %i.if, %i.id
  %i.ih = fmul reassoc nsz arcp contract afn <8 x float> %i.id, splat (float f0x3E038026)
  %i.ii = fadd reassoc nsz arcp contract afn <8 x float> %i.ih, splat (float f0xBC911AA6)
  %i.ij = select reassoc nsz arcp contract afn <8 x i1> %i.ie, <8 x float> %i.ig, <8 x float> %i.ii
  %i.ik = fmul reassoc nsz arcp contract afn <8 x float> %i.hw, splat (float 9.642000e-01) ; 2 uses
  %i.il = fmul reassoc nsz arcp contract afn <8 x float> %i.ij, splat (float f0x3F532CA5) ; 2 uses
  %wide.vec = load <32 x float>, ptr %i.hl, align 4, !tbaa !12, !alias.scope !435, !noalias !434 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec179 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec180 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.im = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %strided.vec
  %wide.gep181 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %i.in = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec179, %strided.vec179
  %i.io = fadd reassoc nsz arcp contract afn <8 x float> %i.in, %i.im
  %wide.gep182 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %i.ip = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec180, %strided.vec180
end_hunk_7
