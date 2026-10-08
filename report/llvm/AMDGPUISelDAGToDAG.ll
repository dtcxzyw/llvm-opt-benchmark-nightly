Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUISelDAGToDAG?download=true
inline.NumInlined: 5475
inline.NumDeleted: 1103
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK4llvm18AMDGPUDAGToDAGISel21CheckPatternPredicateEj:bb.a
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 872
  %i.xp = load i8, ptr %i.xo, align 8, !tbaa !636, !range !493, !noundef !141
  %i.xq = trunc nuw i8 %i.xp to i1
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xn, i64 647
  %i.xs = load i8, ptr %i.xr, align 1, !range !493
  %i.xt = trunc nuw i8 %i.xs to i1
  %i.xu = select i1 %i.xq, i1 %i.xt, i1 false
  br i1 %i.xu, label %bb.ef, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.ef:                                            ; preds = %bb.ee
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xn, i64 384
  %i.xw = load i8, ptr %i.xv, align 8, !tbaa !613
  %i.xx = icmp eq i8 %i.xw, 6
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.eg:                                            ; preds = %bb.a
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !197 ; 3 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 872
  %i.yb = load i8, ptr %i.ya, align 8, !tbaa !636, !range !493, !noundef !141
  %i.yc = trunc nuw i8 %i.yb to i1
  br i1 %i.yc, label %bb.eh, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.eh:                                            ; preds = %bb.eg
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xz, i64 647
  %i.ye = load i8, ptr %i.yd, align 1, !range !493
  %i.yf = trunc nuw i8 %i.ye to i1
  br i1 %i.yf, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xz, i64 384
  %i.yh = load i8, ptr %i.yg, align 8, !tbaa !613
  %i.yi = icmp eq i8 %i.yh, 6
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.ej:                                            ; preds = %bb.a
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !197 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 872
  %i.ym = load i8, ptr %i.yl, align 8, !tbaa !636, !range !493, !noundef !141
  %i.yn = trunc nuw i8 %i.ym to i1
  br i1 %i.yn, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yk, i64 384
  %i.yp = load i8, ptr %i.yo, align 8, !tbaa !613
  %i.yq = icmp eq i8 %i.yp, 6
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.el:                                            ; preds = %bb.a
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !197
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 496
  %i.yu = load i32, ptr %i.yt, align 8, !tbaa !367
  %i.yv = icmp sgt i32 %i.yu, 7
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.em:                                            ; preds = %bb.a
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !197
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 733
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !961, !range !493, !noundef !141
  %i.za = trunc nuw i8 %i.yz to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.en:                                            ; preds = %bb.a
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !197 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 674
  %i.ze = load i8, ptr %i.zd, align 2, !tbaa !958, !range !493, !noundef !141
  %i.zf = trunc nuw i8 %i.ze to i1
  br i1 %i.zf, label %bb.eo, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.eo:                                            ; preds = %bb.en
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zc, i64 835
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !625, !range !493, !noundef !141
  %i.zi = trunc nuw i8 %i.zh to i1
  %i.zj = xor i1 %i.zi, true
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.ep:                                            ; preds = %bb.a
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !197 ; 3 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 654
  %i.zn = load i8, ptr %i.zm, align 2, !tbaa !946, !range !493, !noundef !141
  %i.zo = trunc nuw i8 %i.zn to i1
  br i1 %i.zo, label %bb.eq, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.eq:                                            ; preds = %bb.ep
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zl, i64 684
  %i.zq = load i8, ptr %i.zp, align 4, !tbaa !962, !range !493, !noundef !141
  %i.zr = trunc nuw i8 %i.zq to i1
  br i1 %i.zr, label %bb.er, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.er:                                            ; preds = %bb.eq
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zl, i64 872
  %i.zt = load i8, ptr %i.zs, align 8, !tbaa !636, !range !493, !noundef !141
  %i.zu = trunc nuw i8 %i.zt to i1
  %i.zv = xor i1 %i.zu, true
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.es:                                            ; preds = %bb.a
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !197 ; 3 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 684
  %i.zz = load i8, ptr %i.zy, align 4, !tbaa !962, !range !493, !noundef !141
  %i.aaa = trunc nuw i8 %i.zz to i1
  br i1 %i.aaa, label %bb.et, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.et:                                            ; preds = %bb.es
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zx, i64 872
  %i.aac = load i8, ptr %i.aab, align 8, !tbaa !636, !range !493, !noundef !141
  %i.aad = trunc nuw i8 %i.aac to i1
  br i1 %i.aad, label %bb.eu, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.eu:                                            ; preds = %bb.et
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zx, i64 647
  %i.aaf = load i8, ptr %i.aae, align 1, !range !493
  %i.aag = trunc nuw i8 %i.aaf to i1
  %i.aah = xor i1 %i.aag, true
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.ev:                                            ; preds = %bb.a
  %i.aai = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !197 ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 684
  %i.aal = load i8, ptr %i.aak, align 4, !tbaa !962, !range !493, !noundef !141
  %i.aam = trunc nuw i8 %i.aal to i1
  br i1 %i.aam, label %bb.ew, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.ew:                                            ; preds = %bb.ev
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaj, i64 872
  %i.aao = load i8, ptr %i.aan, align 8, !tbaa !636, !range !493, !noundef !141
  %i.aap = trunc nuw i8 %i.aao to i1
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aaj, i64 647
  %i.aar = load i8, ptr %i.aaq, align 1, !range !493
  %i.aas = trunc nuw i8 %i.aar to i1
  %i.aat = select i1 %i.aap, i1 %i.aas, i1 false
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.ex:                                            ; preds = %bb.a
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !197
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 766
  %i.aax = load i8, ptr %i.aaw, align 2, !tbaa !497, !range !493, !noundef !141
  %i.aay = trunc nuw i8 %i.aax to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.ey:                                            ; preds = %bb.a
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !197
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 738
  %i.abc = load i8, ptr %i.abb, align 2, !tbaa !963, !range !493, !noundef !141
  %i.abd = trunc nuw i8 %i.abc to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.ez:                                            ; preds = %bb.a
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !197
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 886
  %i.abh = load i8, ptr %i.abg, align 2, !tbaa !964, !range !493, !noundef !141
  %i.abi = trunc nuw i8 %i.abh to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.fa:                                            ; preds = %bb.a
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !197
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 788
  %i.abm = load i8, ptr %i.abl, align 4, !tbaa !965, !range !493, !noundef !141
  %i.abn = trunc nuw i8 %i.abm to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.fb:                                            ; preds = %bb.a
  %i.abo = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !197 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 788
  %i.abr = load i8, ptr %i.abq, align 4, !tbaa !965, !range !493, !noundef !141
  %i.abs = trunc nuw i8 %i.abr to i1
  br i1 %i.abs, label %bb.fc, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.fc:                                            ; preds = %bb.fb
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abp, i64 766
  %i.abu = load i8, ptr %i.abt, align 2, !tbaa !497, !range !493, !noundef !141
  %i.abv = trunc nuw i8 %i.abu to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.fd:                                            ; preds = %bb.a
  %i.abw = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !197
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 794
  %i.abz = load i8, ptr %i.aby, align 2, !tbaa !966, !range !493, !noundef !141
  %i.aca = trunc nuw i8 %i.abz to i1
  br i1 %i.aca, label %bb.fe, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.fe:                                            ; preds = %bb.fd
  %i.acb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !647
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 40
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !483
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 144
  %.sroa.0.0.copyload.i = load i40, ptr %i.acf, align 8
  %i.acg = and i40 %.sroa.0.0.copyload.i, 16776960
  %i.ach = icmp eq i40 %i.acg, 65792
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.ff:                                            ; preds = %bb.a
  %i.aci = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !197 ; 6 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 835
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !625, !range !493, !noundef !141
  %i.acm = trunc nuw i8 %i.acl to i1
  br i1 %i.acm, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acj, i64 663
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !950, !range !493, !noundef !141
  %i.acp = trunc nuw i8 %i.aco to i1
  br i1 %i.acp, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acj, i64 643
  %i.acr = load i8, ptr %i.acq, align 1, !tbaa !951, !range !493, !noundef !141
  %i.acs = trunc nuw i8 %i.acr to i1
  br i1 %i.acs, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit41, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit41.thread132

_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit41: ; preds = %bb.fh
  %i.act = getelementptr inbounds nuw i8, ptr %i.acj, i64 742
  %i.acu = load i8, ptr %i.act, align 2, !tbaa !952, !range !493, !noundef !141
  %i.acv = trunc nuw i8 %i.acu to i1
  br i1 %i.acv, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit41.thread132

_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit41.thread132: ; preds = %bb.fh, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit41
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acj, i64 872
  %i.acx = load i8, ptr %i.acw, align 8, !tbaa !636, !range !493, !noundef !141
  %i.acy = trunc nuw i8 %i.acx to i1
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acj, i64 647
  %i.ada = load i8, ptr %i.acz, align 1, !range !493
  %i.adb = trunc nuw i8 %i.ada to i1
  %i.adc = select i1 %i.acy, i1 %i.adb, i1 false
  %i.add = xor i1 %i.adc, true
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.fi:                                            ; preds = %bb.a
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !197 ; 5 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 663
  %i.adh = load i8, ptr %i.adg, align 1, !tbaa !950, !range !493, !noundef !141
  %i.adi = trunc nuw i8 %i.adh to i1
  br i1 %i.adi, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adf, i64 643
  %i.adk = load i8, ptr %i.adj, align 1, !tbaa !951, !range !493, !noundef !141
  %i.adl = trunc nuw i8 %i.adk to i1
  br i1 %i.adl, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit42, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit42.thread133

_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit42: ; preds = %bb.fj
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adf, i64 742
  %i.adn = load i8, ptr %i.adm, align 2, !tbaa !952, !range !493, !noundef !141
  %i.ado = trunc nuw i8 %i.adn to i1
  br i1 %i.ado, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit42.thread133

_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit42.thread133: ; preds = %bb.fj, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit42
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adf, i64 872
  %i.adq = load i8, ptr %i.adp, align 8, !tbaa !636, !range !493, !noundef !141
  %i.adr = trunc nuw i8 %i.adq to i1
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adf, i64 647
  %i.adt = load i8, ptr %i.ads, align 1, !range !493
  %i.adu = trunc nuw i8 %i.adt to i1
  %i.adv = select i1 %i.adr, i1 %i.adu, i1 false
  %i.adw = xor i1 %i.adv, true
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.fk:                                            ; preds = %bb.a
  %i.adx = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !197 ; 6 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 835
  %i.aea = load i8, ptr %i.adz, align 1, !tbaa !625, !range !493, !noundef !141
  %i.aeb = trunc nuw i8 %i.aea to i1
  br i1 %i.aeb, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aec = getelementptr inbounds nuw i8, ptr %i.ady, i64 663
  %i.aed = load i8, ptr %i.aec, align 1, !tbaa !950, !range !493, !noundef !141
  %i.aee = trunc nuw i8 %i.aed to i1
  br i1 %i.aee, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.aef = getelementptr inbounds nuw i8, ptr %i.ady, i64 643
  %i.aeg = load i8, ptr %i.aef, align 1, !tbaa !951, !range !493, !noundef !141
  %i.aeh = trunc nuw i8 %i.aeg to i1
  br i1 %i.aeh, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit43, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit43.thread134

_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit43: ; preds = %bb.fm
  %i.aei = getelementptr inbounds nuw i8, ptr %i.ady, i64 742
  %i.aej = load i8, ptr %i.aei, align 2, !tbaa !952, !range !493, !noundef !141
  %i.aek = trunc nuw i8 %i.aej to i1
  br i1 %i.aek, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit43.thread134

_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit43.thread134: ; preds = %bb.fm, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit43
  %i.ael = getelementptr inbounds nuw i8, ptr %i.ady, i64 872
  %i.aem = load i8, ptr %i.ael, align 8, !tbaa !636, !range !493, !noundef !141
  %i.aen = trunc nuw i8 %i.aem to i1
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.ady, i64 647
  %i.aep = load i8, ptr %i.aeo, align 1, !range !493
  %i.aeq = trunc nuw i8 %i.aep to i1
  %i.aer = select i1 %i.aen, i1 %i.aeq, i1 false
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.fn:                                            ; preds = %bb.a
  %i.aes = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !197 ; 5 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 663
  %i.aev = load i8, ptr %i.aeu, align 1, !tbaa !950, !range !493, !noundef !141
  %i.aew = trunc nuw i8 %i.aev to i1
  br i1 %i.aew, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aet, i64 643
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !951, !range !493, !noundef !141
  %i.aez = trunc nuw i8 %i.aey to i1
  br i1 %i.aez, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit44, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit44.thread135

_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit44: ; preds = %bb.fo
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aet, i64 742
  %i.afb = load i8, ptr %i.afa, align 2, !tbaa !952, !range !493, !noundef !141
  %i.afc = trunc nuw i8 %i.afb to i1
  br i1 %i.afc, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit44.thread135

_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit44.thread135: ; preds = %bb.fo, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit44
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aet, i64 872
  %i.afe = load i8, ptr %i.afd, align 8, !tbaa !636, !range !493, !noundef !141
  %i.aff = trunc nuw i8 %i.afe to i1
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aet, i64 647
  %i.afh = load i8, ptr %i.afg, align 1, !range !493
  %i.afi = trunc nuw i8 %i.afh to i1
  %i.afj = select i1 %i.aff, i1 %i.afi, i1 false
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.fp:                                            ; preds = %bb.a
  %i.afk = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !197 ; 6 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 663
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !950, !range !493, !noundef !141
  %i.afo = trunc nuw i8 %i.afn to i1
  br i1 %i.afo, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit45.thread, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afl, i64 643
  %i.afq = load i8, ptr %i.afp, align 1, !tbaa !951, !range !493, !noundef !141
  %i.afr = trunc nuw i8 %i.afq to i1
  br i1 %i.afr, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit45, label %_ZNK4llvm12DenormalModeeqES0_.exit

_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit45: ; preds = %bb.fq
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afl, i64 742
  %i.aft = load i8, ptr %i.afs, align 2, !tbaa !952, !range !493, !noundef !141
  %i.afu = trunc nuw i8 %i.aft to i1
  br i1 %i.afu, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit45.thread.thread, label %_ZNK4llvm12DenormalModeeqES0_.exit

_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit45.thread: ; preds = %bb.fp
  %.phi.trans.insert221 = getelementptr inbounds nuw i8, ptr %i.afl, i64 742
  %.pre222 = load i8, ptr %.phi.trans.insert221, align 2, !tbaa !952, !range !493
  %i.afv = trunc nuw i8 %.pre222 to i1
  br i1 %i.afv, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit45.thread.thread, label %_ZNK4llvm12DenormalModeeqES0_.exit

_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit45.thread.thread: ; preds = %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit45, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit45.thread
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afl, i64 872
  %i.afx = load i8, ptr %i.afw, align 8, !tbaa !636, !range !493, !noundef !141
  %i.afy = trunc nuw i8 %i.afx to i1
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afl, i64 647
  %i.aga = load i8, ptr %i.afz, align 1, !range !493
  %i.agb = trunc nuw i8 %i.aga to i1
  %i.agc = select i1 %i.afy, i1 %i.agb, i1 false
  %i.agd = xor i1 %i.agc, true
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.fr:                                            ; preds = %bb.a
  %i.age = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !197 ; 3 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 496
  %i.agh = load i32, ptr %i.agg, align 8, !tbaa !367
  %i.agi = icmp slt i32 %i.agh, 8
  br i1 %i.agi, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agf, i64 872
  %i.agk = load i8, ptr %i.agj, align 8, !tbaa !636, !range !493, !noundef !141
  %i.agl = trunc nuw i8 %i.agk to i1
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agf, i64 647
  %i.agn = load i8, ptr %i.agm, align 1, !range !493
  %i.ago = trunc nuw i8 %i.agn to i1
  %i.agp = select i1 %i.agl, i1 %i.ago, i1 false
  %i.agq = xor i1 %i.agp, true
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.ft:                                            ; preds = %bb.a
  %i.agr = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !197 ; 3 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 739
  %i.agu = load i8, ptr %i.agt, align 1, !tbaa !947, !range !493, !noundef !141
  %i.agv = trunc nuw i8 %i.agu to i1
  br i1 %i.agv, label %bb.fu, label %_ZNK4llvm12DenormalModeeqES0_.exit

end_hunk_0
begin_hunk_1_@_ZNK4llvm18AMDGPUDAGToDAGISel21CheckPatternPredicateEj:bb.a

bb.pi:                                            ; preds = %bb.ph
  %i.cce = getelementptr inbounds nuw i8, ptr %i.cca, i64 835
  %i.ccf = load i8, ptr %i.cce, align 1, !tbaa !625, !range !493, !noundef !141
  %i.ccg = trunc nuw i8 %i.ccf to i1
  %i.cch = xor i1 %i.ccg, true
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.pj:                                            ; preds = %bb.a
  %i.cci = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ccj = load ptr, ptr %i.cci, align 8, !tbaa !197 ; 2 uses
  %i.cck = getelementptr inbounds nuw i8, ptr %i.ccj, i64 739
  %i.ccl = load i8, ptr %i.cck, align 1, !tbaa !947, !range !493, !noundef !141
  %i.ccm = trunc nuw i8 %i.ccl to i1
  br i1 %i.ccm, label %bb.pk, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.pk:                                            ; preds = %bb.pj
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.ccj, i64 496
  %i.cco = load i32, ptr %i.ccn, align 8, !tbaa !367
  %i.ccp = icmp eq i32 %i.cco, 11
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.pl:                                            ; preds = %bb.a
  %i.ccq = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ccr = load ptr, ptr %i.ccq, align 8, !tbaa !197 ; 2 uses
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.ccr, i64 496
  %i.cct = load i32, ptr %i.ccs, align 8, !tbaa !367
  %i.ccu = icmp sgt i32 %i.cct, 10
  br i1 %i.ccu, label %bb.pm, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.pm:                                            ; preds = %bb.pl
  %i.ccv = getelementptr inbounds nuw i8, ptr %i.ccr, i64 384
  %i.ccw = load i8, ptr %i.ccv, align 8, !tbaa !613
  %i.ccx = icmp eq i8 %i.ccw, 5
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.pn:                                            ; preds = %bb.a
  %i.ccy = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ccz = load ptr, ptr %i.ccy, align 8, !tbaa !197 ; 2 uses
  %i.cda = getelementptr inbounds nuw i8, ptr %i.ccz, i64 496
  %i.cdb = load i32, ptr %i.cda, align 8, !tbaa !367
  %i.cdc = icmp sgt i32 %i.cdb, 10
  br i1 %i.cdc, label %bb.po, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.po:                                            ; preds = %bb.pn
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.ccz, i64 739
  %i.cde = load i8, ptr %i.cdd, align 1, !tbaa !947, !range !493, !noundef !141
  %i.cdf = trunc nuw i8 %i.cde to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.pp:                                            ; preds = %bb.a
  %i.cdg = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cdh = load ptr, ptr %i.cdg, align 8, !tbaa !197
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.cdh, i64 496
  %i.cdj = load i32, ptr %i.cdi, align 8, !tbaa !367
  %i.cdk = add i32 %i.cdj, -5
  %spec.select237 = icmp ult i32 %i.cdk, 3
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.pq:                                            ; preds = %bb.a
  %i.cdl = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cdm = load ptr, ptr %i.cdl, align 8, !tbaa !197
  %i.cdn = getelementptr inbounds nuw i8, ptr %i.cdm, i64 496
  %i.cdo = load i32, ptr %i.cdn, align 8, !tbaa !367 ; 2 uses
  %i.cdp = icmp slt i32 %i.cdo, 8
  br i1 %i.cdp, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.cdq = and i32 %i.cdo, 2147483646
  %spec.select150 = icmp eq i32 %i.cdq, 8
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.ps:                                            ; preds = %bb.a
  %i.cdr = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cds = load ptr, ptr %i.cdr, align 8, !tbaa !197 ; 2 uses
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.cds, i64 752
  %i.cdu = load i8, ptr %i.cdt, align 8, !tbaa !955, !range !493, !noundef !141
  %i.cdv = trunc nuw i8 %i.cdu to i1
  br i1 %i.cdv, label %bb.pt, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.pt:                                            ; preds = %bb.ps
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.cds, i64 496
  %i.cdx = load i32, ptr %i.cdw, align 8, !tbaa !367
  %.off182 = add i32 %i.cdx, -5
  %switch183 = icmp ult i32 %.off182, 5
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.pu:                                            ; preds = %bb.a
  %i.cdy = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cdz = load ptr, ptr %i.cdy, align 8, !tbaa !197 ; 2 uses
  %i.cea = getelementptr inbounds nuw i8, ptr %i.cdz, i64 752
  %i.ceb = load i8, ptr %i.cea, align 8, !tbaa !955, !range !493, !noundef !141
  %i.cec = trunc nuw i8 %i.ceb to i1
  br i1 %i.cec, label %bb.pv, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.pv:                                            ; preds = %bb.pu
  %i.ced = getelementptr inbounds nuw i8, ptr %i.cdz, i64 496
  %i.cee = load i32, ptr %i.ced, align 8, !tbaa !367
  %i.cef = icmp sgt i32 %i.cee, 9
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.pw:                                            ; preds = %bb.a
  %i.ceg = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ceh = load ptr, ptr %i.ceg, align 8, !tbaa !197 ; 3 uses
  %i.cei = getelementptr inbounds nuw i8, ptr %i.ceh, i64 872
  %i.cej = load i8, ptr %i.cei, align 8, !tbaa !636, !range !493, !noundef !141
  %i.cek = trunc nuw i8 %i.cej to i1
  %i.cel = getelementptr inbounds nuw i8, ptr %i.ceh, i64 647
  %i.cem = load i8, ptr %i.cel, align 1, !range !493
  %i.cen = trunc nuw i8 %i.cem to i1
  %i.ceo = select i1 %i.cek, i1 %i.cen, i1 false
  br i1 %i.ceo, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.px

bb.px:                                            ; preds = %bb.pw
  %i.cep = getelementptr inbounds nuw i8, ptr %i.ceh, i64 496
  %i.ceq = load i32, ptr %i.cep, align 8, !tbaa !367
  %i.cer = icmp sgt i32 %i.ceq, 9
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.py:                                            ; preds = %bb.a
  %i.ces = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cet = load ptr, ptr %i.ces, align 8, !tbaa !197 ; 3 uses
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.cet, i64 872
  %i.cev = load i8, ptr %i.ceu, align 8, !tbaa !636, !range !493, !noundef !141
  %i.cew = trunc nuw i8 %i.cev to i1
  %i.cex = getelementptr inbounds nuw i8, ptr %i.cet, i64 647
  %i.cey = load i8, ptr %i.cex, align 1, !range !493
  %i.cez = trunc nuw i8 %i.cey to i1
  %i.cfa = select i1 %i.cew, i1 %i.cez, i1 false
  br i1 %i.cfa, label %bb.pz, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.pz:                                            ; preds = %bb.py
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.cet, i64 496
  %i.cfc = load i32, ptr %i.cfb, align 8, !tbaa !367
  %i.cfd = icmp sgt i32 %i.cfc, 9
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qa:                                            ; preds = %bb.a
  %i.cfe = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cff = load ptr, ptr %i.cfe, align 8, !tbaa !197
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cff, i64 800
  %i.cfh = load i8, ptr %i.cfg, align 8, !tbaa !1003, !range !493, !noundef !141
  %i.cfi = trunc nuw i8 %i.cfh to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qb:                                            ; preds = %bb.a
  %i.cfj = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cfk = load ptr, ptr %i.cfj, align 8, !tbaa !197
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.cfk, i64 802
  %i.cfm = load i8, ptr %i.cfl, align 2, !tbaa !1004, !range !493, !noundef !141
  %i.cfn = trunc nuw i8 %i.cfm to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qc:                                            ; preds = %bb.a
  %i.cfo = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cfp = load ptr, ptr %i.cfo, align 8, !tbaa !197
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.cfp, i64 803
  %i.cfr = load i8, ptr %i.cfq, align 1, !tbaa !1005, !range !493, !noundef !141
  %i.cfs = trunc nuw i8 %i.cfr to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qd:                                            ; preds = %bb.a
  %i.cft = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cfu = load ptr, ptr %i.cft, align 8, !tbaa !197 ; 2 uses
  %i.cfv = getelementptr inbounds nuw i8, ptr %i.cfu, i64 793
  %i.cfw = load i8, ptr %i.cfv, align 1, !tbaa !999, !range !493, !noundef !141
  %i.cfx = trunc nuw i8 %i.cfw to i1
  br i1 %i.cfx, label %bb.qe, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qe:                                            ; preds = %bb.qd
  %i.cfy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cfz = load ptr, ptr %i.cfy, align 8, !tbaa !647
  %i.cga = getelementptr inbounds nuw i8, ptr %i.cfz, i64 40
  %i.cgb = load ptr, ptr %i.cga, align 8, !tbaa !483
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.cgb, i64 144
  %.sroa.0.0.copyload.i67 = load i40, ptr %i.cgc, align 8
  %i.cgd = and i40 %.sroa.0.0.copyload.i67, 16776960
  %or.cond = icmp eq i40 %i.cgd, 65792
  br i1 %or.cond, label %bb.qf, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qf:                                            ; preds = %bb.qe
  %i.cge = getelementptr inbounds nuw i8, ptr %i.cfu, i64 496
  %i.cgf = load i32, ptr %i.cge, align 8, !tbaa !367 ; 2 uses
  %i.cgg = icmp ult i32 %i.cgf, 10
  br i1 %i.cgg, label %switch.lookup, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qg:                                            ; preds = %bb.a
  %i.cgh = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cgi = load ptr, ptr %i.cgh, align 8, !tbaa !197
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.cgi, i64 793
  %i.cgk = load i8, ptr %i.cgj, align 1, !tbaa !999, !range !493, !noundef !141
  %i.cgl = trunc nuw i8 %i.cgk to i1
  br i1 %i.cgl, label %bb.qh, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qh:                                            ; preds = %bb.qg
  %i.cgm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cgn = load ptr, ptr %i.cgm, align 8, !tbaa !647
  %i.cgo = getelementptr inbounds nuw i8, ptr %i.cgn, i64 40
  %i.cgp = load ptr, ptr %i.cgo, align 8, !tbaa !483
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.cgp, i64 144
  %.sroa.0.0.copyload.i69.a = load i40, ptr %i.cgq, align 8
  %i.cgr = and i40 %.sroa.0.0.copyload.i69.a, 16776960
  %i.cgs = icmp eq i40 %i.cgr, 65792
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qi:                                            ; preds = %bb.a
  %i.cgt = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cgu = load ptr, ptr %i.cgt, align 8, !tbaa !197 ; 3 uses
  %i.cgv = getelementptr inbounds nuw i8, ptr %i.cgu, i64 746
  %i.cgw = load i8, ptr %i.cgv, align 2, !tbaa !986, !range !493, !noundef !141
  %i.cgx = trunc nuw i8 %i.cgw to i1
  br i1 %i.cgx, label %bb.qj, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qj:                                            ; preds = %bb.qi
  %i.cgy = getelementptr inbounds nuw i8, ptr %i.cgu, i64 872
  %i.cgz = load i8, ptr %i.cgy, align 8, !tbaa !636, !range !493, !noundef !141
  %i.cha = trunc nuw i8 %i.cgz to i1
  %i.chb = getelementptr inbounds nuw i8, ptr %i.cgu, i64 647
  %i.chc = load i8, ptr %i.chb, align 1, !range !493
  %i.chd = trunc nuw i8 %i.chc to i1
  %i.che = select i1 %i.cha, i1 %i.chd, i1 false
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qk:                                            ; preds = %bb.a
  %i.chf = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.chg = load ptr, ptr %i.chf, align 8, !tbaa !197 ; 3 uses
  %i.chh = getelementptr inbounds nuw i8, ptr %i.chg, i64 745
  %i.chi = load i8, ptr %i.chh, align 1, !tbaa !987, !range !493, !noundef !141
  %i.chj = trunc nuw i8 %i.chi to i1
  br i1 %i.chj, label %bb.ql, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.ql:                                            ; preds = %bb.qk
  %i.chk = getelementptr inbounds nuw i8, ptr %i.chg, i64 872
  %i.chl = load i8, ptr %i.chk, align 8, !tbaa !636, !range !493, !noundef !141
  %i.chm = trunc nuw i8 %i.chl to i1
  %i.chn = getelementptr inbounds nuw i8, ptr %i.chg, i64 647
  %i.cho = load i8, ptr %i.chn, align 1, !range !493
  %i.chp = trunc nuw i8 %i.cho to i1
  %i.chq = select i1 %i.chm, i1 %i.chp, i1 false
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qm:                                            ; preds = %bb.a
  %i.chr = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.chs = load ptr, ptr %i.chr, align 8, !tbaa !197 ; 2 uses
  %i.cht = getelementptr inbounds nuw i8, ptr %i.chs, i64 677
  %i.chu = load i8, ptr %i.cht, align 1, !tbaa !990, !range !493, !noundef !141
  %i.chv = trunc nuw i8 %i.chu to i1
  br i1 %i.chv, label %bb.qn, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qn:                                            ; preds = %bb.qm
  %i.chw = getelementptr inbounds nuw i8, ptr %i.chs, i64 835
  %i.chx = load i8, ptr %i.chw, align 1, !tbaa !625, !range !493, !noundef !141
  %i.chy = trunc nuw i8 %i.chx to i1
  %i.chz = xor i1 %i.chy, true
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qo:                                            ; preds = %bb.a
  %i.cia = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cib = load ptr, ptr %i.cia, align 8, !tbaa !197 ; 2 uses
  %i.cic = getelementptr inbounds nuw i8, ptr %i.cib, i64 678
  %i.cid = load i8, ptr %i.cic, align 2, !tbaa !991, !range !493, !noundef !141
  %i.cie = trunc nuw i8 %i.cid to i1
  br i1 %i.cie, label %bb.qp, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qp:                                            ; preds = %bb.qo
  %i.cif = getelementptr inbounds nuw i8, ptr %i.cib, i64 835
  %i.cig = load i8, ptr %i.cif, align 1, !tbaa !625, !range !493, !noundef !141
  %i.cih = trunc nuw i8 %i.cig to i1
  %i.cii = xor i1 %i.cih, true
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qq:                                            ; preds = %bb.a
  %i.cij = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cik = load ptr, ptr %i.cij, align 8, !tbaa !197 ; 3 uses
  %i.cil = getelementptr inbounds nuw i8, ptr %i.cik, i64 669
  %i.cim = load i8, ptr %i.cil, align 1, !tbaa !992, !range !493, !noundef !141
  %i.cin = trunc nuw i8 %i.cim to i1
  br i1 %i.cin, label %bb.qs, label %bb.qr

bb.qr:                                            ; preds = %bb.qq
  %i.cio = getelementptr inbounds nuw i8, ptr %i.cik, i64 668
  %i.cip = load i8, ptr %i.cio, align 4, !tbaa !993, !range !493, !noundef !141
  %i.ciq = trunc nuw i8 %i.cip to i1
  br i1 %i.ciq, label %bb.qs, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qs:                                            ; preds = %bb.qr, %bb.qq
  %i.cir = getelementptr inbounds nuw i8, ptr %i.cik, i64 835
  %i.cis = load i8, ptr %i.cir, align 1, !tbaa !625, !range !493, !noundef !141
  %i.cit = trunc nuw i8 %i.cis to i1
  %i.ciu = xor i1 %i.cit, true
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qt:                                            ; preds = %bb.a
  %i.civ = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ciw = load ptr, ptr %i.civ, align 8, !tbaa !197 ; 2 uses
  %i.cix = getelementptr inbounds nuw i8, ptr %i.ciw, i64 668
  %i.ciy = load i8, ptr %i.cix, align 4, !tbaa !993, !range !493, !noundef !141
  %i.ciz = trunc nuw i8 %i.ciy to i1
  br i1 %i.ciz, label %bb.qu, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qu:                                            ; preds = %bb.qt
  %i.cja = getelementptr inbounds nuw i8, ptr %i.ciw, i64 835
  %i.cjb = load i8, ptr %i.cja, align 1, !tbaa !625, !range !493, !noundef !141
  %i.cjc = trunc nuw i8 %i.cjb to i1
  %i.cjd = xor i1 %i.cjc, true
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qv:                                            ; preds = %bb.a
  %i.cje = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cjf = load ptr, ptr %i.cje, align 8, !tbaa !647
  %i.cjg = getelementptr inbounds nuw i8, ptr %i.cjf, i64 40
  %i.cjh = load ptr, ptr %i.cjg, align 8, !tbaa !483
  %i.cji = getelementptr inbounds nuw i8, ptr %i.cjh, i64 144
  %.sroa.0.0.copyload.i71 = load i40, ptr %i.cji, align 8
  %.sroa.020.0.extract.trunc = trunc i40 %.sroa.0.0.copyload.i71 to i1
  %i.cjj = xor i1 %.sroa.020.0.extract.trunc, true
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qw:                                            ; preds = %bb.a
  %i.cjk = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cjl = load ptr, ptr %i.cjk, align 8, !tbaa !197 ; 2 uses
  %i.cjm = getelementptr inbounds nuw i8, ptr %i.cjl, i64 739
  %i.cjn = load i8, ptr %i.cjm, align 1, !tbaa !947, !range !493, !noundef !141
  %i.cjo = trunc nuw i8 %i.cjn to i1
  br i1 %i.cjo, label %bb.qx, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qx:                                            ; preds = %bb.qw
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cjl, i64 496
  %i.cjq = load i32, ptr %i.cjp, align 8, !tbaa !367 ; 2 uses
  %i.cjr = icmp ult i32 %i.cjq, 11
  br i1 %i.cjr, label %switch.lookup238, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qy:                                            ; preds = %bb.a
  %i.cjs = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cjt = load ptr, ptr %i.cjs, align 8, !tbaa !197
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cjt, i64 496
  %i.cjv = load i32, ptr %i.cju, align 8, !tbaa !367 ; 2 uses
  %i.cjw = icmp ult i32 %i.cjv, 11
  br i1 %i.cjw, label %switch.lookup243, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.qz:                                            ; preds = %bb.a
  %i.cjx = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cjy = load ptr, ptr %i.cjx, align 8, !tbaa !197
  %i.cjz = getelementptr inbounds nuw i8, ptr %i.cjy, i64 680
  %i.cka = load i8, ptr %i.cjz, align 8, !tbaa !1006, !range !493, !noundef !141
  %i.ckb = trunc nuw i8 %i.cka to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.ra:                                            ; preds = %bb.a
  %i.ckc = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ckd = load ptr, ptr %i.ckc, align 8, !tbaa !197 ; 2 uses
  %i.cke = getelementptr inbounds nuw i8, ptr %i.ckd, i64 679
  %i.ckf = load i8, ptr %i.cke, align 1, !tbaa !1007, !range !493, !noundef !141
  %i.ckg = trunc nuw i8 %i.ckf to i1
  br i1 %i.ckg, label %bb.rb, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.rb:                                            ; preds = %bb.ra
  %i.ckh = getelementptr inbounds nuw i8, ptr %i.ckd, i64 739
  %i.cki = load i8, ptr %i.ckh, align 1, !tbaa !947, !range !493, !noundef !141
  %i.ckj = trunc nuw i8 %i.cki to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.rc:                                            ; preds = %bb.a
  %i.ckk = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ckl = load ptr, ptr %i.ckk, align 8, !tbaa !197
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.ckl, i64 679
  %i.ckn = load i8, ptr %i.ckm, align 1, !tbaa !1007, !range !493, !noundef !141
  %i.cko = trunc nuw i8 %i.ckn to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.rd:                                            ; preds = %bb.a
  %i.ckp = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ckq = load ptr, ptr %i.ckp, align 8, !tbaa !197
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.ckq, i64 496
  %i.cks = load i32, ptr %i.ckr, align 8, !tbaa !367
  %i.ckt = icmp sgt i32 %i.cks, 5
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.re:                                            ; preds = %bb.a
  %i.cku = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ckv = load ptr, ptr %i.cku, align 8, !tbaa !197 ; 3 uses
  %i.ckw = getelementptr inbounds nuw i8, ptr %i.ckv, i64 872
  %i.ckx = load i8, ptr %i.ckw, align 8, !tbaa !636, !range !493, !noundef !141
  %i.cky = trunc nuw i8 %i.ckx to i1
  %i.ckz = getelementptr inbounds nuw i8, ptr %i.ckv, i64 647
  %i.cla = load i8, ptr %i.ckz, align 1, !range !493
  %i.clb = trunc nuw i8 %i.cla to i1
  %i.clc = select i1 %i.cky, i1 %i.clb, i1 false
  br i1 %i.clc, label %bb.rf, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.rf:                                            ; preds = %bb.re
  %i.cld = getelementptr inbounds nuw i8, ptr %i.ckv, i64 496
  %i.cle = load i32, ptr %i.cld, align 8, !tbaa !367
  %i.clf = icmp sgt i32 %i.cle, 8
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.rg:                                            ; preds = %bb.a
  %i.clg = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.clh = load ptr, ptr %i.clg, align 8, !tbaa !197 ; 3 uses
  %i.cli = getelementptr inbounds nuw i8, ptr %i.clh, i64 872
  %i.clj = load i8, ptr %i.cli, align 8, !tbaa !636, !range !493, !noundef !141
  %i.clk = trunc nuw i8 %i.clj to i1
  br i1 %i.clk, label %bb.rh, label %_ZNK4llvm12DenormalModeeqES0_.exit
end_hunk_1
begin_hunk_2_@_ZNK4llvm18AMDGPUDAGToDAGISel21CheckPatternPredicateEj:bb.a
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.xx:                                            ; preds = %bb.a
  %i.dpp = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dpq = load ptr, ptr %i.dpp, align 8, !tbaa !197 ; 2 uses
  %i.dpr = getelementptr inbounds nuw i8, ptr %i.dpq, i64 760
  %i.dps = load i8, ptr %i.dpr, align 8, !tbaa !1040, !range !493, !noundef !141
  %i.dpt = trunc nuw i8 %i.dps to i1
  br i1 %i.dpt, label %bb.xy, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.xy:                                            ; preds = %bb.xx
  %i.dpu = getelementptr inbounds nuw i8, ptr %i.dpq, i64 384
  %i.dpv = load i8, ptr %i.dpu, align 8, !tbaa !613
  %i.dpw = icmp eq i8 %i.dpv, 5
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.xz:                                            ; preds = %bb.a
  %i.dpx = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dpy = load ptr, ptr %i.dpx, align 8, !tbaa !197
  %i.dpz = getelementptr inbounds nuw i8, ptr %i.dpy, i64 836
  %i.dqa = load i8, ptr %i.dpz, align 4, !tbaa !614, !range !493, !noundef !141
  %i.dqb = trunc nuw i8 %i.dqa to i1
  %i.dqc = xor i1 %i.dqb, true
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.ya:                                            ; preds = %bb.a
  %i.dqd = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dqe = load ptr, ptr %i.dqd, align 8, !tbaa !197
  %i.dqf = getelementptr inbounds nuw i8, ptr %i.dqe, i64 838
  %i.dqg = load i8, ptr %i.dqf, align 2, !tbaa !1041, !range !493, !noundef !141
  %i.dqh = trunc nuw i8 %i.dqg to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.yb:                                            ; preds = %bb.a
  %i.dqi = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dqj = load ptr, ptr %i.dqi, align 8, !tbaa !197
  %i.dqk = getelementptr inbounds nuw i8, ptr %i.dqj, i64 759
  %i.dql = load i8, ptr %i.dqk, align 1, !tbaa !629, !range !493, !noundef !141
  %i.dqm = trunc nuw i8 %i.dql to i1
  %i.dqn = xor i1 %i.dqm, true
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.yc:                                            ; preds = %bb.a
  %i.dqo = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dqp = load ptr, ptr %i.dqo, align 8, !tbaa !197
  %i.dqq = getelementptr inbounds nuw i8, ptr %i.dqp, i64 860
  %i.dqr = load i8, ptr %i.dqq, align 4, !tbaa !1042, !range !493, !noundef !141
  %i.dqs = trunc nuw i8 %i.dqr to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.yd:                                            ; preds = %bb.a
  %i.dqt = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dqu = load ptr, ptr %i.dqt, align 8, !tbaa !197 ; 3 uses
  %i.dqv = getelementptr inbounds nuw i8, ptr %i.dqu, i64 767
  %i.dqw = load i8, ptr %i.dqv, align 1, !tbaa !635, !range !493, !noundef !141
  %i.dqx = trunc nuw i8 %i.dqw to i1
  %i.dqy = getelementptr inbounds nuw i8, ptr %i.dqu, i64 759
  %i.dqz = load i8, ptr %i.dqy, align 1, !range !493
  %i.dra = trunc nuw i8 %i.dqz to i1
  %i.drb = select i1 %i.dqx, i1 true, i1 %i.dra
  br i1 %i.drb, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.ye

bb.ye:                                            ; preds = %bb.yd
  %i.drc = getelementptr inbounds nuw i8, ptr %i.dqu, i64 496
  %i.drd = load i32, ptr %i.drc, align 8, !tbaa !367
  %i.dre = icmp sgt i32 %i.drd, 9
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.yf:                                            ; preds = %bb.a
  %i.drf = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.drg = load ptr, ptr %i.drf, align 8, !tbaa !197 ; 3 uses
  %i.drh = getelementptr inbounds nuw i8, ptr %i.drg, i64 767
  %i.dri = load i8, ptr %i.drh, align 1, !tbaa !635, !range !493, !noundef !141
  %i.drj = trunc nuw i8 %i.dri to i1
  %i.drk = getelementptr inbounds nuw i8, ptr %i.drg, i64 759
  %i.drl = load i8, ptr %i.drk, align 1, !range !493
  %i.drm = trunc nuw i8 %i.drl to i1
  %i.drn = select i1 %i.drj, i1 true, i1 %i.drm
  br i1 %i.drn, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.dro = getelementptr inbounds nuw i8, ptr %i.drg, i64 496
  %i.drp = load i32, ptr %i.dro, align 8, !tbaa !367
  %i.drq = icmp sgt i32 %i.drp, 10
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.yh:                                            ; preds = %bb.a
  %i.drr = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.drs = load ptr, ptr %i.drr, align 8, !tbaa !197
  %i.drt = getelementptr inbounds nuw i8, ptr %i.drs, i64 496
  %i.dru = load i32, ptr %i.drt, align 8, !tbaa !367
  %.off191 = add i32 %i.dru, -6
  %switch192 = icmp ult i32 %.off191, 3
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.yi:                                            ; preds = %bb.a
  %i.drv = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.drw = load ptr, ptr %i.drv, align 8, !tbaa !197
  %i.drx = getelementptr inbounds nuw i8, ptr %i.drw, i64 771
  %i.dry = load i8, ptr %i.drx, align 1, !tbaa !1043, !range !493, !noundef !141
  %i.drz = trunc nuw i8 %i.dry to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.yj:                                            ; preds = %bb.a
  %i.dsa = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dsb = load ptr, ptr %i.dsa, align 8, !tbaa !197
  %i.dsc = getelementptr inbounds nuw i8, ptr %i.dsb, i64 656
  %i.dsd = load i8, ptr %i.dsc, align 8, !tbaa !492, !range !493, !noundef !141
  %i.dse = trunc nuw i8 %i.dsd to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.yk:                                            ; preds = %bb.a
  %i.dsf = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dsg = load ptr, ptr %i.dsf, align 8, !tbaa !197
  %i.dsh = getelementptr inbounds nuw i8, ptr %i.dsg, i64 759
  %i.dsi = load i8, ptr %i.dsh, align 1, !tbaa !629, !range !493, !noundef !141
  %i.dsj = trunc nuw i8 %i.dsi to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.yl:                                            ; preds = %bb.a
  %i.dsk = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dsl = load ptr, ptr %i.dsk, align 8, !tbaa !197
  %i.dsm = getelementptr inbounds nuw i8, ptr %i.dsl, i64 863
  %i.dsn = load i8, ptr %i.dsm, align 1, !tbaa !1044, !range !493, !noundef !141
  %i.dso = trunc nuw i8 %i.dsn to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.ym:                                            ; preds = %bb.a
  %i.dsp = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dsq = load ptr, ptr %i.dsp, align 8, !tbaa !197
  %i.dsr = getelementptr inbounds nuw i8, ptr %i.dsq, i64 862
  %i.dss = load i8, ptr %i.dsr, align 2, !tbaa !1045, !range !493, !noundef !141
  %i.dst = trunc nuw i8 %i.dss to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.yn:                                            ; preds = %bb.a
  %i.dsu = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dsv = load ptr, ptr %i.dsu, align 8, !tbaa !197 ; 3 uses
  %i.dsw = getelementptr inbounds nuw i8, ptr %i.dsv, i64 683
  %i.dsx = load i8, ptr %i.dsw, align 1, !tbaa !971, !range !493, !noundef !141
  %i.dsy = trunc nuw i8 %i.dsx to i1
  br i1 %i.dsy, label %bb.yo, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.yo:                                            ; preds = %bb.yn
  %i.dsz = getelementptr inbounds nuw i8, ptr %i.dsv, i64 872
  %i.dta = load i8, ptr %i.dsz, align 8, !tbaa !636, !range !493, !noundef !141
  %i.dtb = trunc nuw i8 %i.dta to i1
  %i.dtc = getelementptr inbounds nuw i8, ptr %i.dsv, i64 647
  %i.dtd = load i8, ptr %i.dtc, align 1, !range !493
  %i.dte = trunc nuw i8 %i.dtd to i1
  %i.dtf = select i1 %i.dtb, i1 %i.dte, i1 false
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.yp:                                            ; preds = %bb.a
  %i.dtg = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dth = load ptr, ptr %i.dtg, align 8, !tbaa !197
  %i.dti = getelementptr inbounds nuw i8, ptr %i.dth, i64 747
  %i.dtj = load i8, ptr %i.dti, align 1, !tbaa !1046, !range !493, !noundef !141
  %i.dtk = trunc nuw i8 %i.dtj to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.yq:                                            ; preds = %bb.a
  %i.dtl = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dtm = load ptr, ptr %i.dtl, align 8, !tbaa !197 ; 2 uses
  %i.dtn = getelementptr inbounds nuw i8, ptr %i.dtm, i64 496
  %i.dto = load i32, ptr %i.dtn, align 8, !tbaa !367
  %i.dtp = icmp sgt i32 %i.dto, 7
  br i1 %i.dtp, label %bb.yr, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.yr:                                            ; preds = %bb.yq
  %i.dtq = getelementptr inbounds nuw i8, ptr %i.dtm, i64 774
  %i.dtr = load i8, ptr %i.dtq, align 2, !tbaa !959, !range !493, !noundef !141
  %i.dts = trunc nuw i8 %i.dtr to i1
  %i.dtt = xor i1 %i.dts, true
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.ys:                                            ; preds = %bb.a
  %i.dtu = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dtv = load ptr, ptr %i.dtu, align 8, !tbaa !197 ; 2 uses
  %i.dtw = getelementptr inbounds nuw i8, ptr %i.dtv, i64 774
  %i.dtx = load i8, ptr %i.dtw, align 2, !tbaa !959, !range !493, !noundef !141
  %i.dty = trunc nuw i8 %i.dtx to i1
  br i1 %i.dty, label %bb.yt, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.yt:                                            ; preds = %bb.ys
  %i.dtz = getelementptr inbounds nuw i8, ptr %i.dtv, i64 496
  %i.dua = load i32, ptr %i.dtz, align 8, !tbaa !367
  %i.dub = icmp sgt i32 %i.dua, 7
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.yu:                                            ; preds = %bb.a
  %i.duc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dud = load ptr, ptr %i.duc, align 8, !tbaa !647
  %i.due = getelementptr inbounds nuw i8, ptr %i.dud, i64 40
  %i.duf = load ptr, ptr %i.due, align 8, !tbaa !483
  %i.dug = getelementptr inbounds nuw i8, ptr %i.duf, i64 144
  %.sroa.0.0.copyload.i78 = load i40, ptr %i.dug, align 8 ; 2 uses
  %i.duh = and i40 %.sroa.0.0.copyload.i78, 4278190080
  %i.dui = icmp ne i40 %i.duh, 16777216
  %i.duj = ashr i40 %.sroa.0.0.copyload.i78, 32
  %2 = trunc nsw i40 %i.duj to i16
  %i.duk = icmp ne i16 %2, 1
  %or.cond164 = select i1 %i.dui, i1 true, i1 %i.duk
  br i1 %or.cond164, label %_ZNK4llvm12DenormalModeneES0_.exit.thread, label %_ZNK4llvm12DenormalModeeqES0_.exit

_ZNK4llvm12DenormalModeneES0_.exit.thread:        ; preds = %bb.yu
  %i.dul = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dum = load ptr, ptr %i.dul, align 8, !tbaa !197 ; 2 uses
  %i.dun = getelementptr inbounds nuw i8, ptr %i.dum, i64 774
  %i.duo = load i8, ptr %i.dun, align 2, !tbaa !959, !range !493, !noundef !141
  %i.dup = trunc nuw i8 %i.duo to i1
  br i1 %i.dup, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.yv

bb.yv:                                            ; preds = %_ZNK4llvm12DenormalModeneES0_.exit.thread
  %i.duq = getelementptr inbounds nuw i8, ptr %i.dum, i64 496
  %i.dur = load i32, ptr %i.duq, align 8, !tbaa !367
  %i.dus = icmp slt i32 %i.dur, 8
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.yw:                                            ; preds = %bb.a
  %i.dut = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.duu = load ptr, ptr %i.dut, align 8, !tbaa !647
  %i.duv = getelementptr inbounds nuw i8, ptr %i.duu, i64 40
  %i.duw = load ptr, ptr %i.duv, align 8, !tbaa !483
  %i.dux = getelementptr inbounds nuw i8, ptr %i.duw, i64 144
  %.sroa.0.0.copyload.i79.a = load i40, ptr %i.dux, align 8 ; 2 uses
  %i.duy = and i40 %.sroa.0.0.copyload.i79.a, 4278190080
  %i.duz = icmp ne i40 %i.duy, 16777216
  %i.dva = ashr i40 %.sroa.0.0.copyload.i79.a, 32
  %3 = trunc nsw i40 %i.dva to i16
  %i.dvb = icmp ne i16 %3, 1
  %or.cond166 = select i1 %i.duz, i1 true, i1 %i.dvb
  br i1 %or.cond166, label %_ZNK4llvm12DenormalModeneES0_.exit80.thread, label %_ZNK4llvm12DenormalModeeqES0_.exit

_ZNK4llvm12DenormalModeneES0_.exit80.thread:      ; preds = %bb.yw
  %i.dvc = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dvd = load ptr, ptr %i.dvc, align 8, !tbaa !197 ; 2 uses
  %i.dve = getelementptr inbounds nuw i8, ptr %i.dvd, i64 774
  %i.dvf = load i8, ptr %i.dve, align 2, !tbaa !959, !range !493, !noundef !141
  %i.dvg = trunc nuw i8 %i.dvf to i1
  br i1 %i.dvg, label %bb.yx, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.yx:                                            ; preds = %_ZNK4llvm12DenormalModeneES0_.exit80.thread
  %i.dvh = getelementptr inbounds nuw i8, ptr %i.dvd, i64 496
  %i.dvi = load i32, ptr %i.dvh, align 8, !tbaa !367
  %i.dvj = icmp slt i32 %i.dvi, 8
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.yy:                                            ; preds = %bb.a
  %i.dvk = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dvl = load ptr, ptr %i.dvk, align 8, !tbaa !197 ; 3 uses
  %i.dvm = getelementptr inbounds nuw i8, ptr %i.dvl, i64 654
  %i.dvn = load i8, ptr %i.dvm, align 2, !tbaa !946, !range !493, !noundef !141
  %i.dvo = trunc nuw i8 %i.dvn to i1
  br i1 %i.dvo, label %bb.yz, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.yz:                                            ; preds = %bb.yy
  %i.dvp = getelementptr inbounds nuw i8, ptr %i.dvl, i64 496
  %i.dvq = load i32, ptr %i.dvp, align 8, !tbaa !367
  %i.dvr = icmp sgt i32 %i.dvq, 7
  br i1 %i.dvr, label %bb.za, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.za:                                            ; preds = %bb.yz
  %i.dvs = getelementptr inbounds nuw i8, ptr %i.dvl, i64 872
  %i.dvt = load i8, ptr %i.dvs, align 8, !tbaa !636, !range !493, !noundef !141
  %i.dvu = trunc nuw i8 %i.dvt to i1
  %i.dvv = xor i1 %i.dvu, true
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.zb:                                            ; preds = %bb.a
  %i.dvw = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dvx = load ptr, ptr %i.dvw, align 8, !tbaa !197 ; 4 uses
  %i.dvy = getelementptr inbounds nuw i8, ptr %i.dvx, i64 654
  %i.dvz = load i8, ptr %i.dvy, align 2, !tbaa !946, !range !493, !noundef !141
  %i.dwa = trunc nuw i8 %i.dvz to i1
  br i1 %i.dwa, label %bb.zc, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.zc:                                            ; preds = %bb.zb
  %i.dwb = getelementptr inbounds nuw i8, ptr %i.dvx, i64 496
  %i.dwc = load i32, ptr %i.dwb, align 8, !tbaa !367
  %i.dwd = icmp sgt i32 %i.dwc, 7
  br i1 %i.dwd, label %bb.zd, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.zd:                                            ; preds = %bb.zc
  %i.dwe = getelementptr inbounds nuw i8, ptr %i.dvx, i64 872
  %i.dwf = load i8, ptr %i.dwe, align 8, !tbaa !636, !range !493, !noundef !141
  %i.dwg = trunc nuw i8 %i.dwf to i1
  %i.dwh = getelementptr inbounds nuw i8, ptr %i.dvx, i64 647
  %i.dwi = load i8, ptr %i.dwh, align 1, !range !493
  %i.dwj = trunc nuw i8 %i.dwi to i1
  %i.dwk = select i1 %i.dwg, i1 %i.dwj, i1 false
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.ze:                                            ; preds = %bb.a
  %i.dwl = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dwm = load ptr, ptr %i.dwl, align 8, !tbaa !197 ; 4 uses
  %i.dwn = getelementptr inbounds nuw i8, ptr %i.dwm, i64 654
  %i.dwo = load i8, ptr %i.dwn, align 2, !tbaa !946, !range !493, !noundef !141
  %i.dwp = trunc nuw i8 %i.dwo to i1
  br i1 %i.dwp, label %bb.zf, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.zf:                                            ; preds = %bb.ze
  %i.dwq = getelementptr inbounds nuw i8, ptr %i.dwm, i64 496
  %i.dwr = load i32, ptr %i.dwq, align 8, !tbaa !367
  %i.dws = icmp sgt i32 %i.dwr, 7
  br i1 %i.dws, label %bb.zg, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.zg:                                            ; preds = %bb.zf
  %i.dwt = getelementptr inbounds nuw i8, ptr %i.dwm, i64 872
  %i.dwu = load i8, ptr %i.dwt, align 8, !tbaa !636, !range !493, !noundef !141
  %i.dwv = trunc nuw i8 %i.dwu to i1
  br i1 %i.dwv, label %bb.zh, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.zh:                                            ; preds = %bb.zg
  %i.dww = getelementptr inbounds nuw i8, ptr %i.dwm, i64 647
  %i.dwx = load i8, ptr %i.dww, align 1, !range !493
  %i.dwy = trunc nuw i8 %i.dwx to i1
  %i.dwz = xor i1 %i.dwy, true
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.zi:                                            ; preds = %bb.a
  %i.dxa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dxb = load ptr, ptr %i.dxa, align 8, !tbaa !647
  %i.dxc = getelementptr inbounds nuw i8, ptr %i.dxb, i64 40
  %i.dxd = load ptr, ptr %i.dxc, align 8, !tbaa !483
  %i.dxe = getelementptr inbounds nuw i8, ptr %i.dxd, i64 144
  %.sroa.0.0.copyload.i81.a = load i40, ptr %i.dxe, align 8 ; 2 uses
  %i.dxf = and i40 %.sroa.0.0.copyload.i81.a, 4278190080
  %i.dxg = icmp ne i40 %i.dxf, 16777216
  %i.dxh = ashr i40 %.sroa.0.0.copyload.i81.a, 32
  %4 = trunc nsw i40 %i.dxh to i16
  %i.dxi = icmp ne i16 %4, 1
  %or.cond168 = select i1 %i.dxg, i1 true, i1 %i.dxi
  br i1 %or.cond168, label %_ZNK4llvm12DenormalModeneES0_.exit82.thread, label %_ZNK4llvm12DenormalModeeqES0_.exit

_ZNK4llvm12DenormalModeneES0_.exit82.thread:      ; preds = %bb.zi
  %i.dxj = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dxk = load ptr, ptr %i.dxj, align 8, !tbaa !197 ; 3 uses
  %i.dxl = getelementptr inbounds nuw i8, ptr %i.dxk, i64 654
  %i.dxm = load i8, ptr %i.dxl, align 2, !tbaa !946, !range !493, !noundef !141
  %i.dxn = trunc nuw i8 %i.dxm to i1
  br i1 %i.dxn, label %bb.zj, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.zj:                                            ; preds = %_ZNK4llvm12DenormalModeneES0_.exit82.thread
  %i.dxo = getelementptr inbounds nuw i8, ptr %i.dxk, i64 496
  %i.dxp = load i32, ptr %i.dxo, align 8, !tbaa !367
  %i.dxq = icmp sgt i32 %i.dxp, 7
  br i1 %i.dxq, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.zk

bb.zk:                                            ; preds = %bb.zj
  %i.dxr = getelementptr inbounds nuw i8, ptr %i.dxk, i64 872
  %i.dxs = load i8, ptr %i.dxr, align 8, !tbaa !636, !range !493, !noundef !141
  %i.dxt = trunc nuw i8 %i.dxs to i1
  %i.dxu = xor i1 %i.dxt, true
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.zl:                                            ; preds = %bb.a
  %i.dxv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dxw = load ptr, ptr %i.dxv, align 8, !tbaa !647
  %i.dxx = getelementptr inbounds nuw i8, ptr %i.dxw, i64 40
  %i.dxy = load ptr, ptr %i.dxx, align 8, !tbaa !483
  %i.dxz = getelementptr inbounds nuw i8, ptr %i.dxy, i64 144
  %.sroa.0.0.copyload.i83.a = load i40, ptr %i.dxz, align 8 ; 2 uses
  %i.dya = and i40 %.sroa.0.0.copyload.i83.a, 4278190080
  %i.dyb = icmp ne i40 %i.dya, 16777216
  %i.dyc = ashr i40 %.sroa.0.0.copyload.i83.a, 32
  %5 = trunc nsw i40 %i.dyc to i16
  %i.dyd = icmp ne i16 %5, 1
  %or.cond170 = select i1 %i.dyb, i1 true, i1 %i.dyd
  br i1 %or.cond170, label %_ZNK4llvm12DenormalModeneES0_.exit84.thread, label %_ZNK4llvm12DenormalModeeqES0_.exit

_ZNK4llvm12DenormalModeneES0_.exit84.thread:      ; preds = %bb.zl
  %i.dye = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dyf = load ptr, ptr %i.dye, align 8, !tbaa !197 ; 4 uses
  %i.dyg = getelementptr inbounds nuw i8, ptr %i.dyf, i64 654
  %i.dyh = load i8, ptr %i.dyg, align 2, !tbaa !946, !range !493, !noundef !141
  %i.dyi = trunc nuw i8 %i.dyh to i1
  br i1 %i.dyi, label %bb.zm, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.zm:                                            ; preds = %_ZNK4llvm12DenormalModeneES0_.exit84.thread
  %i.dyj = getelementptr inbounds nuw i8, ptr %i.dyf, i64 496
  %i.dyk = load i32, ptr %i.dyj, align 8, !tbaa !367
  %i.dyl = icmp sgt i32 %i.dyk, 7
  br i1 %i.dyl, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.zn

bb.zn:                                            ; preds = %bb.zm
  %i.dym = getelementptr inbounds nuw i8, ptr %i.dyf, i64 872
  %i.dyn = load i8, ptr %i.dym, align 8, !tbaa !636, !range !493, !noundef !141
  %i.dyo = trunc nuw i8 %i.dyn to i1
  %i.dyp = getelementptr inbounds nuw i8, ptr %i.dyf, i64 647
  %i.dyq = load i8, ptr %i.dyp, align 1, !range !493
  %i.dyr = trunc nuw i8 %i.dyq to i1
  %i.dys = select i1 %i.dyo, i1 %i.dyr, i1 false
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.zo:                                            ; preds = %bb.a
  %i.dyt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dyu = load ptr, ptr %i.dyt, align 8, !tbaa !647
  %i.dyv = getelementptr inbounds nuw i8, ptr %i.dyu, i64 40
  %i.dyw = load ptr, ptr %i.dyv, align 8, !tbaa !483
  %i.dyx = getelementptr inbounds nuw i8, ptr %i.dyw, i64 144
  %.sroa.0.0.copyload.i85.a = load i40, ptr %i.dyx, align 8 ; 2 uses
  %i.dyy = and i40 %.sroa.0.0.copyload.i85.a, 4278190080
  %i.dyz = icmp ne i40 %i.dyy, 16777216
  %i.dza = ashr i40 %.sroa.0.0.copyload.i85.a, 32
  %6 = trunc nsw i40 %i.dza to i16
  %i.dzb = icmp ne i16 %6, 1
  %or.cond172 = select i1 %i.dyz, i1 true, i1 %i.dzb
  br i1 %or.cond172, label %_ZNK4llvm12DenormalModeneES0_.exit86.thread, label %_ZNK4llvm12DenormalModeeqES0_.exit

_ZNK4llvm12DenormalModeneES0_.exit86.thread:      ; preds = %bb.zo
  %i.dzc = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dzd = load ptr, ptr %i.dzc, align 8, !tbaa !197 ; 4 uses
  %i.dze = getelementptr inbounds nuw i8, ptr %i.dzd, i64 654
  %i.dzf = load i8, ptr %i.dze, align 2, !tbaa !946, !range !493, !noundef !141
  %i.dzg = trunc nuw i8 %i.dzf to i1
  br i1 %i.dzg, label %bb.zp, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.zp:                                            ; preds = %_ZNK4llvm12DenormalModeneES0_.exit86.thread
  %i.dzh = getelementptr inbounds nuw i8, ptr %i.dzd, i64 496
  %i.dzi = load i32, ptr %i.dzh, align 8, !tbaa !367
  %i.dzj = icmp sgt i32 %i.dzi, 7
  br i1 %i.dzj, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.zq

bb.zq:                                            ; preds = %bb.zp
  %i.dzk = getelementptr inbounds nuw i8, ptr %i.dzd, i64 872
  %i.dzl = load i8, ptr %i.dzk, align 8, !tbaa !636, !range !493, !noundef !141
  %i.dzm = trunc nuw i8 %i.dzl to i1
  br i1 %i.dzm, label %bb.zr, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.zr:                                            ; preds = %bb.zq
  %i.dzn = getelementptr inbounds nuw i8, ptr %i.dzd, i64 647
  %i.dzo = load i8, ptr %i.dzn, align 1, !range !493
  %i.dzp = trunc nuw i8 %i.dzo to i1
  %i.dzq = xor i1 %i.dzp, true
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.zs:                                            ; preds = %bb.a
  %i.dzr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dzs = load ptr, ptr %i.dzr, align 8, !tbaa !647
  %i.dzt = getelementptr inbounds nuw i8, ptr %i.dzs, i64 40
  %i.dzu = load ptr, ptr %i.dzt, align 8, !tbaa !483
  %i.dzv = getelementptr inbounds nuw i8, ptr %i.dzu, i64 144
  %.sroa.0.0.copyload.i87.a = load i40, ptr %i.dzv, align 8 ; 2 uses
  %i.dzw = and i40 %.sroa.0.0.copyload.i87.a, 4278190080
  %i.dzx = icmp ne i40 %i.dzw, 16777216
  %i.dzy = ashr i40 %.sroa.0.0.copyload.i87.a, 32
  %7 = trunc nsw i40 %i.dzy to i16
  %i.dzz = icmp ne i16 %7, 1
  %or.cond174 = select i1 %i.dzx, i1 true, i1 %i.dzz
  br i1 %or.cond174, label %_ZNK4llvm12DenormalModeneES0_.exit88.thread, label %_ZNK4llvm12DenormalModeeqES0_.exit

_ZNK4llvm12DenormalModeneES0_.exit88.thread:      ; preds = %bb.zs
  %i.eaa = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.eab = load ptr, ptr %i.eaa, align 8, !tbaa !197
  %i.eac = getelementptr inbounds nuw i8, ptr %i.eab, i64 496
  %i.ead = load i32, ptr %i.eac, align 8, !tbaa !367
  %i.eae = icmp slt i32 %i.ead, 8
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.zt:                                            ; preds = %bb.a
  %i.eaf = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.eag = load ptr, ptr %i.eaf, align 8, !tbaa !197 ; 2 uses
  %i.eah = getelementptr inbounds nuw i8, ptr %i.eag, i64 496
  %i.eai = load i32, ptr %i.eah, align 8, !tbaa !367
  %i.eaj = icmp sgt i32 %i.eai, 7
  br i1 %i.eaj, label %bb.zu, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.zu:                                            ; preds = %bb.zt
  %i.eak = getelementptr inbounds nuw i8, ptr %i.eag, i64 818
  %i.eal = load i8, ptr %i.eak, align 2, !tbaa !974, !range !493, !noundef !141
  %i.eam = trunc nuw i8 %i.eal to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.zv:                                            ; preds = %bb.a
  %i.ean = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eao = load ptr, ptr %i.ean, align 8, !tbaa !647
  %i.eap = getelementptr inbounds nuw i8, ptr %i.eao, i64 40
  %i.eaq = load ptr, ptr %i.eap, align 8, !tbaa !483
  %i.ear = getelementptr inbounds nuw i8, ptr %i.eaq, i64 144
  %.sroa.0.0.copyload.i89 = load i40, ptr %i.ear, align 8 ; 2 uses
  %i.eas = and i40 %.sroa.0.0.copyload.i89, 4278190080
  %i.eat = icmp ne i40 %i.eas, 16777216
  %i.eau = ashr i40 %.sroa.0.0.copyload.i89, 32
  %8 = trunc nsw i40 %i.eau to i16
  %i.eav = icmp ne i16 %8, 1
  %or.cond176 = select i1 %i.eat, i1 true, i1 %i.eav
  br i1 %or.cond176, label %_ZNK4llvm12DenormalModeneES0_.exit90.thread, label %_ZNK4llvm12DenormalModeeqES0_.exit

_ZNK4llvm12DenormalModeneES0_.exit90.thread:      ; preds = %bb.zv
  %i.eaw = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.eax = load ptr, ptr %i.eaw, align 8, !tbaa !197 ; 2 uses
  %i.eay = getelementptr inbounds nuw i8, ptr %i.eax, i64 818
  %i.eaz = load i8, ptr %i.eay, align 2, !tbaa !974, !range !493, !noundef !141
  %i.eba = trunc nuw i8 %i.eaz to i1
  br i1 %i.eba, label %bb.zw, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.zw:                                            ; preds = %_ZNK4llvm12DenormalModeneES0_.exit90.thread
  %i.ebb = getelementptr inbounds nuw i8, ptr %i.eax, i64 496
  %i.ebc = load i32, ptr %i.ebb, align 8, !tbaa !367
  %i.ebd = icmp slt i32 %i.ebc, 8
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

switch.lookup:                                    ; preds = %bb.qf
  %switch.cast = trunc nuw i32 %i.cgf to i10
  %switch.downshift = lshr i10 -416, %switch.cast
  %switch.masked = trunc i10 %switch.downshift to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

switch.lookup238:                                 ; preds = %bb.qx
  %switch.cast239 = trunc nuw i32 %i.cjq to i11
  %switch.downshift241 = lshr i11 -448, %switch.cast239
  %switch.masked242 = trunc i11 %switch.downshift241 to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

switch.lookup243:                                 ; preds = %bb.qy
  %switch.cast244 = trunc nuw i32 %i.cjv to i11
  %switch.downshift246 = lshr i11 -448, %switch.cast244
  %switch.masked247 = trunc i11 %switch.downshift246 to i1
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

_ZNK4llvm12DenormalModeeqES0_.exit:               ; preds = %bb.qf, %bb.qx, %bb.qy, %switch.lookup243, %switch.lookup238, %switch.lookup, %bb.pp, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit65, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit49, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit31, %._ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit65.thread_crit_edge, %._ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit49.thread_crit_edge, %._ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit31.thread_crit_edge, %bb.ne, %bb.nd, %bb.nc, %bb.na, %bb.mz, %bb.my, %bb.dy, %bb.dx, %bb.dw, %bb.du, %bb.dt, %bb.ds, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.yh, %bb.uz, %bb.ux, %bb.pt, %bb.un, %bb.sk, %bb.rw, %bb.rv, %bb.rr, %bb.pr, %bb.lr, %bb.el, %bb.dk, %bb.cq, %bb.bz, %bb.sg, %bb.se, %bb.nj, %bb.nh, %bb.mt, %bb.ld, %bb.id, %bb.gi, %bb.gf, %bb.fq, %bb.fn, %bb.fl, %bb.fi, %bb.fg, %bb.cl, %bb.bt, %bb.zv, %_ZNK4llvm12DenormalModeneES0_.exit90.thread, %bb.zw, %bb.zs, %_ZNK4llvm12DenormalModeneES0_.exit88.thread, %bb.zo, %_ZNK4llvm12DenormalModeneES0_.exit86.thread, %bb.zp, %bb.zr, %bb.zq, %bb.zl, %_ZNK4llvm12DenormalModeneES0_.exit84.thread, %bb.zm, %bb.zn, %bb.zi, %_ZNK4llvm12DenormalModeneES0_.exit82.thread, %bb.zj, %bb.zk, %bb.yw, %_ZNK4llvm12DenormalModeneES0_.exit80.thread, %bb.yx, %bb.yu, %_ZNK4llvm12DenormalModeneES0_.exit.thread, %bb.yv, %bb.qg, %bb.qh, %bb.qd, %bb.qe, %bb.fd, %bb.fe, %bb.zt, %bb.zu, %bb.ze, %bb.zf, %bb.zh, %bb.zg, %bb.zb, %bb.zc, %bb.zd, %bb.yy, %bb.yz, %bb.za, %bb.ys, %bb.yt, %bb.yq, %bb.yr, %bb.a, %bb.yn, %bb.yo, %bb.yf, %bb.yg, %bb.yd, %bb.ye, %bb.xx, %bb.xy, %bb.xv, %bb.xw, %bb.xs, %bb.xu, %bb.xt, %bb.xp, %bb.xq, %bb.xr, %bb.xl, %bb.xm, %bb.xn, %bb.xj, %bb.xk, %bb.xf, %bb.xh, %bb.xi, %bb.xg, %bb.xd, %bb.xe, %bb.xb, %bb.xc, %bb.wy, %bb.wz, %bb.wr, %bb.ws, %bb.wt, %bb.wk, %bb.wm, %bb.wl, %bb.wi, %bb.wj, %bb.wg, %bb.wh, %bb.wb, %bb.wc, %bb.vz, %bb.wa, %bb.vw, %bb.vx, %bb.vu, %bb.vv, %bb.vs, %bb.vt, %bb.vq, %bb.vr, %bb.vm, %bb.vn, %bb.vp, %bb.vo, %bb.vj, %bb.vk, %bb.vl, %bb.vg, %bb.vh, %bb.vi, %bb.ve, %bb.vf, %bb.vc, %bb.vd, %bb.va, %bb.vb, %bb.uy, %bb.uw, %bb.ut, %bb.uu, %bb.uq, %bb.ur, %bb.us, %bb.uj, %bb.uk, %bb.uh, %bb.ui, %bb.ue, %bb.uf, %bb.uc, %bb.ud, %bb.ty, %bb.tz, %bb.tv, %bb.tx, %bb.tw, %bb.tt, %bb.tu, %bb.tr, %bb.ts, %bb.to, %bb.tq, %bb.tp, %bb.tl, %bb.tm, %bb.tn, %bb.tj, %bb.tk, %bb.tb, %bb.tc, %bb.te, %bb.td, %bb.sy, %bb.ta, %bb.sz, %bb.sv, %bb.sx, %bb.sw, %bb.ss, %bb.st, %bb.su, %bb.so, %bb.sp, %bb.sq, %bb.sr, %bb.sl, %bb.sm, %bb.sn, %bb.si, %bb.sj, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit73, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit73.thread, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit73.thread.thread, %bb.sh, %bb.sc, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit72, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit72.thread, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit72.thread.thread, %bb.rz, %bb.sa, %bb.rx, %bb.ry, %bb.rs, %bb.rt, %bb.ru, %bb.rq, %bb.rm, %bb.ro, %bb.rn, %bb.rg, %bb.rh, %bb.ri, %bb.re, %bb.rf, %bb.ra, %bb.rb, %bb.qw, %bb.qt, %bb.qu, %bb.qr, %bb.qs, %bb.qo, %bb.qp, %bb.qm, %bb.qn, %bb.qk, %bb.ql, %bb.qi, %bb.qj, %bb.py, %bb.pz, %bb.pw, %bb.px, %bb.pu, %bb.pv, %bb.ps, %bb.pq, %bb.pn, %bb.po, %bb.pl, %bb.pm, %bb.pj, %bb.pk, %bb.ph, %bb.pi, %bb.pe, %bb.pf, %bb.pa, %bb.pc, %bb.pb, %bb.ov, %bb.ow, %bb.ox, %bb.or, %bb.os, %bb.ot, %bb.ou, %bb.oo, %bb.op, %bb.oq, %bb.oj, %bb.ok, %bb.ol, %bb.om, %bb.on, %bb.of, %bb.og, %bb.oh, %bb.oi, %bb.ob, %bb.oc, %bb.od, %bb.nx, %bb.ny, %bb.nz, %bb.oa, %bb.nv, %bb.nw, %bb.ns, %bb.nt, %bb.np, %bb.nq, %bb.nr, %bb.nn, %bb.no, %bb.nl, %bb.nm, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit66, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit66.thread, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit66.thread.thread, %bb.nf, %bb.nb, %bb.mw, %bb.mx, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit61, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit61.thread, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit61.thread.thread, %bb.mv, %bb.mu, %bb.mp, %bb.mq, %bb.mr, %bb.ml, %bb.mm, %bb.mh, %bb.mj, %bb.mk, %bb.mc, %bb.md, %bb.ly, %bb.lz, %bb.lw, %bb.lx, %bb.lu, %bb.lv, %bb.ls, %bb.lt, %bb.lq, %bb.lm, %bb.ln, %bb.lk, %bb.ll, %bb.lh, %bb.lj, %bb.li, %bb.lf, %bb.lg, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit59, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit59.thread, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit59.thread.thread, %bb.le, %bb.la, %bb.lb, %bb.kv, %bb.kx, %bb.kw, %bb.kt, %bb.ku, %bb.kr, %bb.ks, %bb.kn, %bb.ko, %bb.kl, %bb.km, %bb.ki, %bb.kj, %bb.kg, %bb.kh, %bb.kc, %bb.kd, %bb.ke, %bb.jy, %bb.jz, %bb.ka, %bb.kb, %bb.jv, %bb.jw, %bb.jx, %bb.jr, %bb.js, %bb.jt, %bb.ju, %bb.jp, %bb.jq, %bb.jm, %bb.jn, %bb.jk, %bb.jl, %bb.jh, %bb.ji, %bb.jj, %bb.jf, %bb.jg, %bb.jd, %bb.je, %bb.jb, %bb.jc, %bb.iz, %bb.ja, %bb.ix, %bb.iy, %bb.iu, %bb.iw, %bb.iv, %bb.ir, %bb.is, %bb.it, %bb.io, %bb.iq, %bb.ip, %bb.ik, %bb.il, %bb.im, %bb.in, %bb.ih, %bb.ij, %bb.ii, %bb.if, %bb.ig, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit51, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit51.thread, %bb.ie, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit51.thread.thread, %bb.ht, %bb.hv, %bb.hu, %bb.hr, %bb.hs, %bb.hm, %bb.hn, %bb.hh, %bb.hi, %bb.hj, %bb.hf, %bb.hg, %bb.hd, %bb.he, %bb.gy, %bb.gz, %bb.hb, %bb.hc, %bb.gt, %bb.gu, %bb.gw, %bb.gx, %bb.gr, %bb.gs, %bb.gp, %bb.gq, %bb.gn, %bb.go, %bb.gl, %bb.gm, %bb.gj, %bb.gk, %bb.gg, %bb.gd, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit47, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit47.thread, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit47.thread.thread, %bb.fv, %bb.fw, %bb.ft, %bb.fu, %bb.fr, %bb.fs, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit45, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit45.thread, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit45.thread.thread, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit44, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit44.thread135, %bb.fk, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit43, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit43.thread134, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit42, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit42.thread133, %bb.ff, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit41, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit41.thread132, %bb.fb, %bb.fc, %bb.ev, %bb.ew, %bb.es, %bb.eu, %bb.et, %bb.ep, %bb.eq, %bb.er, %bb.en, %bb.eo, %bb.ej, %bb.ek, %bb.eg, %bb.eh, %bb.ei, %bb.ee, %bb.ef, %bb.ea, %bb.eb, %bb.dv, %bb.dq, %bb.dr, %bb.dn, %bb.do, %bb.dl, %bb.dm, %bb.dj, %bb.dh, %bb.di, %bb.df, %bb.dg, %bb.dc, %bb.dd, %bb.da, %bb.db, %bb.cy, %bb.cz, %bb.cw, %bb.cx, %bb.cu, %bb.cv, %bb.cr, %bb.cs, %bb.ct, %bb.cm, %bb.cn, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit32, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit32.thread, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit32.thread.thread, %bb.ch, %bb.ci, %bb.ce, %bb.cf, %bb.cg, %bb.cc, %bb.cd, %bb.ca, %bb.cb, %bb.bp, %bb.bq, %bb.bn, %bb.bo, %bb.bk, %bb.bl, %bb.bm, %bb.bh, %bb.bi, %bb.ba, %bb.ax, %bb.ay, %bb.az, %bb.av, %bb.aw, %bb.as, %bb.at, %bb.ap, %bb.aq, %bb.ar, %bb.al, %bb.an, %bb.am, %bb.aj, %bb.ak, %bb.ag, %bb.ah, %bb.ac, %bb.ad, %bb.y, %bb.z, %bb.v, %bb.w, %bb.q, %bb.r, %bb.k, %bb.m, %bb.l, %bb.i, %bb.j, %bb.g, %bb.h, %bb.c, %bb.d, %bb.yp, %bb.ym, %bb.yl, %bb.yk, %bb.yj, %bb.yi, %bb.yc, %bb.yb, %bb.ya, %bb.xz, %bb.xo, %bb.xa, %bb.wx, %bb.ww, %bb.wv, %bb.wu, %bb.wq, %bb.wp, %bb.wo, %bb.wn, %bb.wf, %bb.we, %bb.wd, %bb.vy, %bb.uv, %bb.up, %bb.uo, %bb.um, %bb.ul, %bb.ug, %bb.ub, %bb.ua, %bb.ti, %bb.th, %bb.tg, %bb.tf, %bb.sb, %bb.rp, %bb.rl, %bb.rk, %bb.rj, %bb.rd, %bb.rc, %bb.qz, %bb.qv, %bb.qc, %bb.qb, %bb.qa, %bb.pg, %bb.pd, %bb.oz, %bb.oy, %bb.oe, %bb.nu, %bb.nk, %bb.mo, %bb.mn, %bb.mg, %bb.mf, %bb.me, %bb.mb, %bb.ma, %bb.lp, %bb.lo, %bb.kz, %bb.ky, %bb.kq, %bb.kp, %bb.kk, %bb.kf, %bb.jo, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hq, %bb.hp, %bb.ho, %bb.hl, %bb.hk, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.em, %bb.ed, %bb.ec, %bb.dz, %bb.dp, %bb.de, %bb.cp, %bb.co, %bb.cj, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.br, %bb.bj, %bb.au, %bb.ao, %bb.ai, %bb.af, %bb.ae, %bb.ab, %bb.aa, %bb.x, %bb.u, %bb.t, %bb.s, %bb.p, %bb.o, %bb.n, %bb.f, %bb.e
  %.0 = phi i1 [ %i.eae, %_ZNK4llvm12DenormalModeneES0_.exit88.thread ], [ %i.m, %bb.e ], [ %i.s, %bb.f ], [ %i.h, %bb.d ], [ %i.ab, %bb.h ], [ %i.an, %bb.j ], [ %i.bi, %bb.n ], [ %i.bn, %bb.o ], [ %i.bs, %bb.p ], [ %i.az, %bb.m ], [ %i.cg, %bb.s ], [ %i.cl, %bb.t ], [ %spec.select.i.i, %bb.u ], [ %i.cb, %bb.r ], [ %i.dd, %bb.x ], [ %i.cy, %bb.w ], [ %i.dr, %bb.aa ], [ %i.dw, %bb.ab ], [ %i.dm, %bb.z ], [ %i.ej, %bb.ae ], [ %i.eo, %bb.af ], [ %i.ee, %bb.ad ], [ %i.fc, %bb.ai ], [ %i.ex, %bb.ah ], [ %i.fk, %bb.ak ], [ %i.gb, %bb.ao ], [ %i.fw, %bb.an ], [ %i.gm, %bb.ar ], [ %i.he, %bb.au ], [ %i.gu, %bb.at ], [ %i.hq, %bb.aw ], [ %i.ib, %bb.az ], [ %i.iq, %bb.bd ], [ %i.ach, %bb.fe ], [ %i.jq, %bb.bj ], [ %i.jl, %bb.bi ], [ %i.kc, %bb.bm ], [ %i.kl, %bb.bo ], [ %i.lc, %bb.br ], [ %i.kx, %bb.bq ], [ %i.lt, %bb.bu ], [ %i.ly, %bb.bv ], [ %i.md, %bb.bw ], [ %i.mi, %bb.bx ], [ %i.mn, %bb.by ], [ %i.bsn, %bb.ne ], [ false, %bb.sg ], [ %i.na, %bb.cb ], [ %i.nm, %bb.cd ], [ %i.nx, %bb.cg ], [ %i.ok, %bb.cj ], [ %i.of, %bb.ci ], [ %i.pd, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit32.thread.thread ], [ %i.pq, %bb.co ], [ %i.pw, %bb.cp ], [ %i.pl, %bb.cn ], [ false, %bb.fi ], [ %i.qn, %bb.ct ], [ %i.qw, %bb.cv ], [ %i.re, %bb.cx ], [ %i.rm, %bb.cz ], [ %i.ru, %bb.db ], [ %i.sl, %bb.de ], [ %i.sc, %bb.dd ], [ %i.tb, %bb.dg ], [ %i.tk, %bb.di ], [ false, %bb.cl ], [ %i.uf, %bb.dm ], [ %i.us, %bb.dp ], [ %i.un, %bb.do ], [ %i.jc, %bb.bg ], [ %i.wm, %bb.dz ], [ %i.vo, %bb.du ], [ %i.xg, %bb.ec ], [ %i.xl, %bb.ed ], [ %.not204, %bb.eb ], [ %i.xx, %bb.ef ], [ %i.yi, %bb.ei ], [ %i.yq, %bb.ek ], [ %i.za, %bb.em ], [ false, %_ZNK4llvm12DenormalModeneES0_.exit82.thread ], [ %i.zj, %bb.eo ], [ %i.zv, %bb.er ], [ %i.aah, %bb.eu ], [ %i.aay, %bb.ex ], [ %i.abd, %bb.ey ], [ %i.abi, %bb.ez ], [ %i.abn, %bb.fa ], [ %i.aat, %bb.ew ], [ false, %bb.bt ], [ %i.abv, %bb.fc ], [ %i.add, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit41.thread132 ], [ %i.adw, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit42.thread133 ], [ %i.aer, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit43.thread134 ], [ %i.afj, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit44.thread135 ], [ %i.agd, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit45.thread.thread ], [ %i.agq, %bb.fs ], [ %i.ahd, %bb.fu ], [ %i.ahv, %bb.fx ], [ %i.aia, %bb.fy ], [ %i.aif, %bb.fz ], [ %i.aik, %bb.ga ], [ %i.aip, %bb.gb ], [ %i.aiu, %bb.gc ], [ %i.ahq, %bb.fw ], [ %i.aju, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit47.thread.thread ], [ %i.bsw, %._ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit65.thread_crit_edge ], [ %i.akz, %bb.gk ], [ %i.alh, %bb.gm ], [ %i.alp, %bb.go ], [ %i.amc, %bb.gq ], [ %i.amo, %bb.gs ], [ %i.and, %bb.gx ], [ %i.ans, %bb.hc ], [ %i.aoa, %bb.he ], [ %i.aoi, %bb.hg ], [ %i.aoy, %bb.hk ], [ %i.apd, %bb.hl ], [ %i.aot, %bb.hj ], [ %i.apq, %bb.ho ], [ %i.apv, %bb.hp ], [ %i.aqa, %bb.hq ], [ %i.apl, %bb.hn ], [ %i.aqm, %bb.hs ], [ %i.ard, %bb.hw ], [ %i.ari, %bb.hx ], [ %i.arn, %bb.hy ], [ %i.art, %bb.hz ], [ %i.ary, %bb.ia ], [ %i.asd, %bb.ib ], [ %i.aqy, %bb.hv ], [ %.not202, %bb.ie ], [ %i.ats, %bb.ig ], [ %spec.select.i.i54.not, %bb.ij ], [ %i.avd, %bb.in ], [ %.not200, %bb.iq ], [ %i.awo, %bb.it ], [ %.not198, %bb.iw ], [ %i.axt, %bb.iy ], [ %i.ayf, %bb.ja ], [ %i.ayr, %bb.jc ], [ %i.ayz, %bb.je ], [ %i.azl, %bb.jg ], [ %i.azw, %bb.jj ], [ %i.bae, %bb.jl ], [ %i.bar, %bb.jo ], [ %i.bam, %bb.jn ], [ %i.baz, %bb.jq ], [ %i.bbs, %bb.ju ], [ %i.bci, %bb.jx ], [ %i.bda, %bb.kb ], [ %i.bdu, %bb.kf ], [ %i.bdp, %bb.ke ], [ %i.bed, %bb.kh ], [ %i.ber, %bb.kk ], [ %i.bem, %bb.kj ], [ %i.bez, %bb.km ], [ %i.bfm, %bb.kp ], [ %i.bfr, %bb.kq ], [ %i.bfh, %bb.ko ], [ %i.bge, %bb.ks ], [ %i.bgn, %bb.ku ], [ %i.bhe, %bb.ky ], [ %i.bhj, %bb.kz ], [ %i.bgz, %bb.kx ], [ %i.bhr, %bb.lb ], [ %i.bis, %bb.le ], [ %i.bjb, %bb.lg ], [ %i.bjn, %bb.lj ], [ %i.bjz, %bb.ll ], [ %i.bkm, %bb.lo ], [ %i.bkr, %bb.lp ], [ %i.bkh, %bb.ln ], [ %switch.selectcmp181, %bb.un ], [ %i.bll, %bb.lt ], [ %i.blt, %bb.lv ], [ %i.bmg, %bb.lx ], [ %i.bmy, %bb.ma ], [ %i.bnd, %bb.mb ], [ %i.bmt, %bb.lz ], [ %i.bnq, %bb.me ], [ %i.bnv, %bb.mf ], [ %i.boa, %bb.mg ], [ %i.bnl, %bb.md ], [ %i.bol, %bb.mk ], [ %i.boy, %bb.mn ], [ %i.bpd, %bb.mo ], [ %i.bot, %bb.mm ], [ %i.bqa, %bb.mr ], [ %.not195, %bb.mv ], [ %i.wh, %bb.dy ], [ %i.bry, %bb.na ], [ %i.li, %._ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit31.thread_crit_edge ], [ %i.bua, %bb.nk ], [ %i.btv, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit66.thread.thread ], [ %i.bui, %bb.nm ], [ %i.buu, %bb.no ], [ %i.bvj, %bb.nr ], [ %i.bwa, %bb.nu ], [ %i.bvv, %bb.nt ], [ %i.bwi, %bb.nw ], [ %i.bww, %bb.oa ], [ %i.bxq, %bb.oe ], [ %i.bxl, %bb.od ], [ %i.bye, %bb.oi ], [ %i.byv, %bb.on ], [ %i.bzk, %bb.oq ], [ %i.cac, %bb.ou ], [ %i.cas, %bb.oy ], [ %i.cax, %bb.oz ], [ %i.can, %bb.ox ], [ %i.cbl, %bb.pd ], [ %i.cbg, %bb.pc ], [ %i.cby, %bb.pg ], [ %i.cbt, %bb.pf ], [ %i.cch, %bb.pi ], [ %i.ccp, %bb.pk ], [ %i.ccx, %bb.pm ], [ %i.cdf, %bb.po ], [ %switch.masked, %switch.lookup ], [ false, %bb.zp ], [ false, %_ZNK4llvm12DenormalModeneES0_.exit.thread ], [ %i.cef, %bb.pv ], [ %i.cer, %bb.px ], [ %i.cfi, %bb.qa ], [ %i.cfn, %bb.qb ], [ %i.cfs, %bb.qc ], [ false, %bb.gf ], [ true, %bb.bf ], [ %i.cfd, %bb.pz ], [ %i.che, %bb.qj ], [ %i.chq, %bb.ql ], [ %i.chz, %bb.qn ], [ %i.cii, %bb.qp ], [ %i.ciu, %bb.qs ], [ %i.cjj, %bb.qv ], [ %i.cjd, %bb.qu ], [ true, %bb.nd ], [ %i.ckb, %bb.qz ], [ false, %bb.nc ], [ %i.cko, %bb.rc ], [ %i.ckt, %bb.rd ], [ %i.ckj, %bb.rb ], [ %i.clf, %bb.rf ], [ %i.clv, %bb.rj ], [ %i.cma, %bb.rk ], [ %i.cmf, %bb.rl ], [ %i.clq, %bb.ri ], [ %i.cmw, %bb.rp ], [ %i.cmr, %bb.ro ], [ false, %bb.zv ], [ %i.cnp, %bb.ru ], [ false, %bb.zo ], [ %switch.selectcmp179, %bb.rv ], [ %i.coh, %bb.ry ], [ %i.cou, %bb.sb ], [ %i.cop, %bb.sa ], [ %i.cpq, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit72.thread.thread ], [ %i.cqq, %bb.sh ], [ %i.cqy, %bb.sj ], [ false, %_ZNK4llvm12DenormalModeneES0_.exit86.thread ], [ %i.cro, %bb.sn ], [ %i.csc, %bb.sr ], [ %i.csn, %bb.su ], [ %i.csy, %bb.sx ], [ %i.ctn, %bb.ta ], [ %i.cug, %bb.tf ], [ %i.cul, %bb.tg ], [ %i.cur, %bb.th ], [ %i.cuw, %bb.ti ], [ %i.cub, %bb.te ], [ %i.cve, %bb.tk ], [ %i.cvq, %bb.tn ], [ %i.cwb, %bb.tq ], [ %i.cwk, %bb.ts ], [ %i.cww, %bb.tu ], [ %i.cxi, %bb.tx ], [ %i.cxv, %bb.ua ], [ %i.cya, %bb.ub ], [ %i.cxq, %bb.tz ], [ %i.cyi, %bb.ud ], [ %i.cyz, %bb.ug ], [ %i.cyq, %bb.uf ], [ %i.czh, %bb.ui ], [ %i.czu, %bb.ul ], [ %i.daa, %bb.um ], [ %i.czp, %bb.uk ], [ %i.dak, %bb.uo ], [ %i.dap, %bb.up ], [ false, %bb.zi ], [ %i.dba, %bb.us ], [ %i.dbn, %bb.uv ], [ %i.dbi, %bb.uu ], [ true, %bb.mz ], [ false, %bb.fq ], [ %i.dcv, %bb.vb ], [ %i.ddd, %bb.vd ], [ %i.ddm, %bb.vf ], [ %i.dea, %bb.vi ], [ %i.der, %bb.vl ], [ %i.dfi, %bb.vp ], [ %i.dft, %bb.vr ], [ %i.dgb, %bb.vt ], [ %i.dgj, %bb.vv ], [ %i.dha, %bb.vy ], [ %i.dgr, %bb.vx ], [ %i.dhi, %bb.wa ], [ %i.dhv, %bb.wd ], [ %i.dia, %bb.we ], [ %i.dif, %bb.wf ], [ %i.dhq, %bb.wc ], [ %i.dio, %bb.wh ], [ %i.dja, %bb.wj ], [ %i.djs, %bb.wn ], [ %i.djx, %bb.wo ], [ %i.dkc, %bb.wp ], [ %i.dkh, %bb.wq ], [ %i.djm, %bb.wm ], [ %i.dkx, %bb.wu ], [ %i.dlc, %bb.wv ], [ %i.dlh, %bb.ww ], [ %i.dlm, %bb.wx ], [ %i.dks, %bb.wt ], [ %i.dlz, %bb.xa ], [ %i.dlu, %bb.wz ], [ %i.dmi, %bb.xc ], [ %i.dmr, %bb.xe ], [ %i.dne, %bb.xi ], [ %i.dnn, %bb.xk ], [ %i.doe, %bb.xo ], [ %i.dnz, %bb.xn ], [ %i.doq, %bb.xr ], [ %i.dpc, %bb.xu ], [ %i.dpo, %bb.xw ], [ %i.dqc, %bb.xz ], [ %i.dqh, %bb.ya ], [ %i.dqn, %bb.yb ], [ %i.dqs, %bb.yc ], [ %i.dpw, %bb.xy ], [ %i.dre, %bb.ye ], [ %i.drq, %bb.yg ], [ %i.drz, %bb.yi ], [ %i.dse, %bb.yj ], [ %i.dsj, %bb.yk ], [ %i.dso, %bb.yl ], [ %i.dst, %bb.ym ], [ false, %bb.fl ], [ %i.dtk, %bb.yp ], [ %i.dtf, %bb.yo ], [ false, %bb.a ], [ %i.dtt, %bb.yr ], [ false, %bb.se ], [ %i.dus, %bb.yv ], [ %i.dub, %bb.yt ], [ %i.dvv, %bb.za ], [ %i.dwk, %bb.zd ], [ %i.dvj, %bb.yx ], [ %i.dxu, %bb.zk ], [ %i.dys, %bb.zn ], [ %i.dzq, %bb.zr ], [ %i.dwz, %bb.zh ], [ true, %bb.c ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.q ], [ false, %bb.v ], [ false, %bb.y ], [ false, %bb.ac ], [ false, %bb.ag ], [ false, %bb.aj ], [ false, %bb.al ], [ false, %bb.am ], [ false, %bb.aq ], [ false, %bb.ap ], [ false, %bb.as ], [ false, %bb.av ], [ false, %bb.ay ], [ false, %bb.ax ], [ false, %bb.ba ], [ false, %bb.bh ], [ false, %bb.bl ], [ false, %bb.bk ], [ false, %bb.bn ], [ false, %bb.bp ], [ %i.lo, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit31 ], [ %spec.select, %bb.bz ], [ false, %bb.ca ], [ false, %bb.cc ], [ false, %bb.cf ], [ false, %bb.ce ], [ false, %bb.ch ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit32.thread ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit32 ], [ false, %bb.cm ], [ %spec.select146, %bb.cq ], [ false, %bb.cs ], [ false, %bb.cr ], [ false, %bb.cu ], [ false, %bb.cw ], [ false, %bb.cy ], [ false, %bb.da ], [ false, %bb.dc ], [ false, %bb.df ], [ false, %bb.dh ], [ false, %bb.dj ], [ %spec.select147.a, %bb.dk ], [ false, %bb.dl ], [ false, %bb.dn ], [ false, %bb.dr ], [ false, %bb.dq ], [ false, %bb.dv ], [ false, %bb.ea ], [ false, %bb.ee ], [ false, %bb.eh ], [ false, %bb.eg ], [ false, %bb.ej ], [ %i.yv, %bb.el ], [ false, %bb.en ], [ false, %bb.eq ], [ false, %bb.ep ], [ false, %bb.es ], [ false, %bb.et ], [ false, %bb.ev ], [ false, %bb.fb ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit41 ], [ false, %bb.ff ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit42 ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit43 ], [ false, %bb.fk ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit44 ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit45.thread ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit45 ], [ false, %bb.fr ], [ false, %bb.ft ], [ false, %bb.fv ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit47.thread ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit47 ], [ false, %bb.gd ], [ %i.akn, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit49 ], [ false, %bb.gg ], [ false, %bb.gj ], [ false, %bb.gl ], [ false, %bb.gn ], [ false, %bb.gp ], [ false, %bb.gr ], [ false, %bb.gw ], [ false, %bb.gu ], [ false, %bb.gt ], [ false, %bb.hb ], [ false, %bb.gz ], [ false, %bb.gy ], [ false, %bb.hd ], [ false, %bb.hf ], [ false, %bb.hi ], [ false, %bb.hh ], [ false, %bb.hm ], [ false, %bb.hr ], [ false, %bb.ht ], [ false, %bb.hu ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit51.thread ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit51 ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit51.thread.thread ], [ false, %bb.gi ], [ false, %bb.if ], [ false, %bb.ih ], [ false, %bb.ii ], [ false, %bb.im ], [ false, %bb.il ], [ false, %bb.ik ], [ false, %bb.io ], [ false, %bb.ip ], [ false, %bb.is ], [ false, %bb.ir ], [ false, %bb.iu ], [ false, %bb.iv ], [ false, %bb.ix ], [ false, %bb.iz ], [ false, %bb.jb ], [ false, %bb.jd ], [ false, %bb.jf ], [ false, %bb.ji ], [ false, %bb.jh ], [ false, %bb.jk ], [ false, %bb.jm ], [ false, %bb.jp ], [ false, %bb.jt ], [ false, %bb.js ], [ false, %bb.jr ], [ false, %bb.jw ], [ false, %bb.jv ], [ false, %bb.ka ], [ false, %bb.jz ], [ false, %bb.jy ], [ false, %bb.kd ], [ false, %bb.kc ], [ false, %bb.kg ], [ false, %bb.ki ], [ false, %bb.kl ], [ false, %bb.kn ], [ false, %bb.kr ], [ false, %bb.kt ], [ false, %bb.kv ], [ false, %bb.kw ], [ false, %bb.la ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit59.thread.thread ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit59.thread ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit59 ], [ false, %bb.lf ], [ false, %bb.lh ], [ false, %bb.li ], [ false, %bb.lk ], [ false, %bb.lm ], [ false, %bb.lq ], [ %spec.select149, %bb.lr ], [ false, %bb.ls ], [ false, %bb.lu ], [ false, %bb.lw ], [ false, %bb.ly ], [ true, %bb.mc ], [ false, %bb.mj ], [ false, %bb.mh ], [ false, %bb.ml ], [ false, %bb.mq ], [ false, %bb.mp ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit61.thread.thread ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit61.thread ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit61 ], [ false, %bb.mu ], [ false, %bb.mx ], [ false, %bb.mw ], [ false, %bb.nb ], [ %i.akh, %._ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit49.thread_crit_edge ], [ false, %bb.nf ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit66.thread ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit66 ], [ false, %bb.nl ], [ false, %bb.nn ], [ false, %bb.nq ], [ false, %bb.np ], [ false, %bb.ns ], [ false, %bb.nv ], [ false, %bb.nz ], [ false, %bb.ny ], [ false, %bb.nx ], [ false, %bb.oc ], [ false, %bb.ob ], [ false, %bb.oh ], [ false, %bb.og ], [ false, %bb.of ], [ false, %bb.om ], [ false, %bb.ol ], [ false, %bb.ok ], [ false, %bb.oj ], [ false, %bb.op ], [ false, %bb.oo ], [ false, %bb.ot ], [ false, %bb.os ], [ false, %bb.or ], [ false, %bb.ow ], [ false, %bb.ov ], [ false, %bb.pa ], [ true, %bb.pb ], [ false, %bb.pe ], [ false, %bb.ph ], [ false, %bb.pj ], [ false, %bb.pl ], [ false, %bb.pn ], [ %spec.select237, %bb.pp ], [ false, %bb.nh ], [ %switch.selectcmp, %bb.rr ], [ %switch.masked242, %switch.lookup238 ], [ false, %bb.fg ], [ false, %bb.pq ], [ %i.btc, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit65 ], [ false, %bb.id ], [ false, %bb.ld ], [ false, %bb.mt ], [ false, %bb.ps ], [ false, %bb.zj ], [ false, %bb.yw ], [ false, %_ZNK4llvm12DenormalModeneES0_.exit80.thread ], [ false, %bb.yu ], [ false, %bb.pu ], [ false, %bb.pw ], [ false, %bb.py ], [ false, %bb.qi ], [ false, %bb.qk ], [ false, %bb.qm ], [ false, %bb.qo ], [ false, %bb.qr ], [ false, %bb.qt ], [ false, %bb.qw ], [ true, %bb.dx ], [ false, %bb.dw ], [ %switch.masked247, %switch.lookup243 ], [ true, %bb.dt ], [ false, %bb.ra ], [ false, %bb.re ], [ false, %bb.rh ], [ false, %bb.rg ], [ false, %bb.rm ], [ false, %bb.rn ], [ false, %bb.rq ], [ %spec.select150, %bb.pr ], [ %switch183, %bb.pt ], [ false, %bb.ds ], [ false, %bb.rt ], [ false, %bb.rs ], [ false, %bb.zq ], [ false, %bb.zs ], [ false, %_ZNK4llvm12DenormalModeneES0_.exit90.thread ], [ %spec.select157, %bb.rw ], [ false, %bb.rx ], [ false, %bb.rz ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit72.thread ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit72 ], [ false, %bb.sc ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit73.thread.thread ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit73.thread ], [ false, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit73 ], [ false, %bb.si ], [ %spec.select158, %bb.sk ], [ false, %bb.sm ], [ false, %bb.sl ], [ false, %bb.sq ], [ false, %bb.sp ], [ false, %bb.so ], [ false, %bb.st ], [ false, %bb.ss ], [ false, %bb.sv ], [ false, %bb.sw ], [ false, %bb.sy ], [ false, %bb.sz ], [ false, %bb.tc ], [ false, %bb.tb ], [ false, %bb.td ], [ false, %bb.tj ], [ false, %bb.tm ], [ false, %bb.tl ], [ false, %bb.to ], [ false, %bb.tp ], [ false, %bb.tr ], [ false, %bb.tt ], [ false, %bb.tv ], [ false, %bb.tw ], [ false, %bb.ty ], [ false, %bb.uc ], [ false, %bb.ue ], [ false, %bb.uh ], [ false, %bb.uj ], [ false, %bb.zm ], [ false, %_ZNK4llvm12DenormalModeneES0_.exit84.thread ], [ false, %bb.zl ], [ false, %bb.ur ], [ false, %bb.uq ], [ false, %bb.ut ], [ false, %bb.uw ], [ false, %bb.nj ], [ %i.cgs, %bb.qh ], [ false, %bb.qg ], [ %switch186, %bb.ux ], [ false, %bb.uy ], [ false, %bb.my ], [ false, %bb.qd ], [ false, %bb.qe ], [ %switch189, %bb.uz ], [ false, %bb.va ], [ false, %bb.vc ], [ false, %bb.ve ], [ false, %bb.vh ], [ false, %bb.vg ], [ false, %bb.vk ], [ false, %bb.vj ], [ false, %bb.vn ], [ false, %bb.vm ], [ false, %bb.vo ], [ false, %bb.vq ], [ false, %bb.vs ], [ false, %bb.vu ], [ false, %bb.vw ], [ false, %bb.vz ], [ false, %bb.wb ], [ false, %bb.wg ], [ false, %bb.wi ], [ false, %bb.wk ], [ false, %bb.wl ], [ false, %bb.ws ], [ false, %bb.wr ], [ false, %bb.wy ], [ false, %bb.xb ], [ false, %bb.xd ], [ false, %bb.xf ], [ false, %bb.xg ], [ true, %bb.xh ], [ false, %bb.xj ], [ false, %bb.xm ], [ false, %bb.xl ], [ false, %bb.xq ], [ false, %bb.xp ], [ false, %bb.xs ], [ false, %bb.xt ], [ false, %bb.xv ], [ false, %bb.xx ], [ false, %bb.yd ], [ false, %bb.yf ], [ false, %bb.fn ], [ %switch192, %bb.yh ], [ false, %bb.yn ], [ false, %bb.yq ], [ false, %bb.ys ], [ false, %bb.yz ], [ false, %bb.yy ], [ false, %bb.zc ], [ false, %bb.zb ], [ false, %bb.zf ], [ false, %bb.ze ], [ false, %bb.zg ], [ false, %bb.zt ], [ %i.eam, %bb.zu ], [ %i.ebd, %bb.zw ], [ false, %bb.fd ], [ false, %bb.bb ], [ true, %bb.bc ], [ false, %bb.be ], [ false, %bb.qy ], [ false, %bb.qx ], [ false, %bb.qf ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18AMDGPUDAGToDAGISel18CheckNodePredicateENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(965) %0, ptr %1, i32 %2, i32 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %5 = alloca %"struct.llvm::KnownBits", align 8  ; 5 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %7 = alloca %"struct.llvm::KnownBits", align 8  ; 5 uses
  switch i32 %3, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
    i32 9, label %bb.m
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.q
    i32 13, label %bb.r
    i32 14, label %bb.u
    i32 15, label %bb.w
    i32 16, label %bb.x
    i32 17, label %bb.aa
    i32 18, label %bb.ac
    i32 19, label %bb.ad
    i32 20, label %bb.af
    i32 21, label %bb.ag
    i32 22, label %bb.ah
    i32 23, label %bb.ai
    i32 24, label %bb.aj
    i32 25, label %bb.al
    i32 26, label %bb.an
    i32 27, label %bb.ao
    i32 28, label %bb.ap
    i32 29, label %bb.as
    i32 30, label %bb.at
    i32 31, label %bb.av
    i32 32, label %bb.ax
    i32 33, label %bb.az
    i32 34, label %bb.ba
    i32 35, label %bb.bd
    i32 36, label %bb.be
    i32 37, label %bb.bh
    i32 38, label %bb.bk
    i32 39, label %bb.bl
    i32 40, label %bb.bm
    i32 41, label %bb.bn
    i32 42, label %bb.bp
    i32 43, label %bb.bs
    i32 44, label %bb.bu
    i32 45, label %bb.bw
    i32 46, label %bb.bz
    i32 47, label %bb.ca
    i32 48, label %bb.cd
    i32 49, label %_ZN4llvm13isPowerOf2_32Ej.exit
    i32 50, label %bb.cf
    i32 51, label %bb.ci
    i32 52, label %bb.cj
    i32 53, label %bb.ck
    i32 54, label %bb.cl
    i32 55, label %bb.cn
    i32 56, label %bb.cp
    i32 57, label %bb.cq
    i32 58, label %bb.cr
    i32 59, label %bb.ct
    i32 60, label %bb.cv
    i32 61, label %bb.cy
    i32 62, label %bb.db
    i32 63, label %bb.dd
    i32 64, label %bb.df
    i32 65, label %bb.dh
    i32 66, label %bb.dk
    i32 67, label %bb.dn
    i32 68, label %bb.do
    i32 69, label %bb.dq
    i32 70, label %bb.dr
    i32 71, label %bb.ds
    i32 72, label %bb.du
    i32 73, label %bb.dv
    i32 74, label %bb.dy
    i32 75, label %bb.ea
    i32 76, label %bb.ec
    i32 77, label %bb.ee
    i32 78, label %bb.eh
    i32 79, label %bb.ej
    i32 80, label %bb.ek
    i32 81, label %bb.el
    i32 82, label %bb.en
    i32 83, label %bb.eo
    i32 84, label %bb.eq
    i32 85, label %bb.es
    i32 86, label %bb.eu
    i32 87, label %bb.ex
    i32 88, label %bb.ez
    i32 89, label %bb.fc
    i32 90, label %bb.fe
    i32 91, label %bb.fh
    i32 92, label %bb.fj
    i32 93, label %bb.fl
    i32 94, label %bb.fo
    i32 95, label %bb.fp
    i32 96, label %bb.fq
    i32 97, label %bb.ft
    i32 98, label %bb.fv
    i32 99, label %bb.fx
    i32 100, label %bb.ga
    i32 101, label %bb.gb
    i32 102, label %bb.ge
    i32 103, label %bb.gg
    i32 104, label %bb.gj
    i32 105, label %bb.gk
    i32 106, label %bb.gl
    i32 107, label %bb.go
    i32 108, label %bb.gq
    i32 109, label %bb.gr
    i32 110, label %bb.gt
    i32 111, label %bb.gv
    i32 112, label %bb.gx
    i32 113, label %bb.ha
    i32 114, label %bb.hb
    i32 115, label %bb.he
    i32 116, label %bb.hf
    i32 117, label %bb.hi
    i32 118, label %bb.hk
    i32 119, label %bb.hn
    i32 120, label %bb.hp
    i32 121, label %bb.hs
    i32 122, label %bb.hv
    i32 123, label %bb.hx
    i32 124, label %bb.hz
    i32 125, label %bb.ic
    i32 126, label %bb.if
    i32 127, label %bb.ih
    i32 128, label %bb.ij
    i32 129, label %bb.il
    i32 130, label %bb.in
    i32 131, label %bb.ip
    i32 132, label %bb.is
    i32 133, label %bb.iv
    i32 134, label %bb.iy
    i32 135, label %bb.iz
    i32 136, label %bb.jb
    i32 137, label %bb.jc
    i32 138, label %bb.jf
    i32 139, label %bb.jg
    i32 140, label %bb.jj
    i32 141, label %bb.jl
    i32 142, label %bb.jm
    i32 143, label %bb.jo
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.018.022.i = load ptr, ptr %i.a, align 8, !tbaa !385 ; 2 uses
  %.not23.i = icmp eq ptr %.sroa.018.022.i, null
  br i1 %.not23.i, label %_ZN4llvm13isPowerOf2_32Ej.exit, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i, i64 32
  %.sroa.018.0.i = load ptr, ptr %i.b, align 8, !tbaa !385 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.018.0.i, null
  br i1 %.not.i, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.018.025.i = phi ptr [ %.sroa.018.0.i, %bb.d ], [ %.sroa.018.022.i, %bb.c ] ; 2 uses
  %.01224.i = phi i32 [ %.214.i, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !387
  %i.e = icmp ne i32 %i.d, 0                      ; 2 uses
  %i.f = icmp ne i32 %.01224.i, 0
  %.214.i = select i1 %i.e, i32 %.01224.i, i32 0  ; 2 uses
  %cond.i = select i1 %i.e, i1 true, i1 %i.f      ; 2 uses
  br i1 %cond.i, label %bb.d, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit

_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit: ; preds = %.lr.ph.i, %bb.d
  %i.g = icmp eq i32 %.214.i, 0
  %i.h = select i1 %cond.i, i1 %i.g, i1 false
  br label %_ZN4llvm13isPowerOf2_32Ej.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !388
  %i.k = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG15isKnownNeverNaNENS_7SDValueEbj(ptr noundef nonnull align 8 dereferenceable(920) %i.j, ptr %1, i32 0, i1 noundef zeroext false, i32 noundef 0) #24
  br label %_ZN4llvm13isPowerOf2_32Ej.exit

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload.i = load i16, ptr %i.l, align 8, !tbaa !379
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !395
  %.not.i728 = icmp eq i16 %.sroa.0.0.copyload.i, 5
end_hunk_2
