Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/gimli-3e7b4f451eed5746.gimli.d2cf5f70e100ae54-cgu.00?download=true
begin_hunk_0_@_RNvMs3_NtCsi68uqYEhoRA_5gimli4archNtB5_3Arm16name_to_register:bb.a
  %i.ans = icmp ne i16 %i.anr, 0
  %i.ant = zext i1 %i.ans to i32
  %i.anu = icmp eq i32 %i.ant, 0
  br i1 %i.anu, label %bb.fc, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.anv = load i16, ptr %0, align 1
  %i.anw = xor i16 %i.anv, 12627
  %i.anx = getelementptr i8, ptr %0, i64 2
  %i.any = load i8, ptr %i.anx, align 1
  %i.anz = zext i8 %i.any to i16
  %i.aoa = xor i16 %i.anz, 55
  %i.aob = or i16 %i.anw, %i.aoa
  %i.aoc = icmp ne i16 %i.aob, 0
  %i.aod = zext i1 %i.aoc to i32
  %i.aoe = icmp eq i32 %i.aod, 0
  br i1 %i.aoe, label %bb.fc, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.aof = load i16, ptr %0, align 1
  %i.aog = xor i16 %i.aof, 12627
  %i.aoh = getelementptr i8, ptr %0, i64 2
  %i.aoi = load i8, ptr %i.aoh, align 1
  %i.aoj = zext i8 %i.aoi to i16
  %i.aok = xor i16 %i.aoj, 56
  %i.aol = or i16 %i.aog, %i.aok
  %i.aom = icmp ne i16 %i.aol, 0
  %i.aon = zext i1 %i.aom to i32
  %i.aoo = icmp eq i32 %i.aon, 0
  br i1 %i.aoo, label %bb.fc, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.aop = load i16, ptr %0, align 1
  %i.aoq = xor i16 %i.aop, 12627
  %i.aor = getelementptr i8, ptr %0, i64 2
  %i.aos = load i8, ptr %i.aor, align 1
  %i.aot = zext i8 %i.aos to i16
  %i.aou = xor i16 %i.aot, 57
  %i.aov = or i16 %i.aoq, %i.aou
  %i.aow = icmp ne i16 %i.aov, 0
  %i.aox = zext i1 %i.aow to i32
  %i.aoy = icmp eq i32 %i.aox, 0
  br i1 %i.aoy, label %bb.fc, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aoz = load i16, ptr %0, align 1
  %i.apa = xor i16 %i.aoz, 12883
  %i.apb = getelementptr i8, ptr %0, i64 2
  %i.apc = load i8, ptr %i.apb, align 1
  %i.apd = zext i8 %i.apc to i16
  %i.ape = xor i16 %i.apd, 48
  %i.apf = or i16 %i.apa, %i.ape
  %i.apg = icmp ne i16 %i.apf, 0
  %i.aph = zext i1 %i.apg to i32
  %i.api = icmp eq i32 %i.aph, 0
  br i1 %i.api, label %bb.fc, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.apj = load i16, ptr %0, align 1
  %i.apk = xor i16 %i.apj, 12883
  %i.apl = getelementptr i8, ptr %0, i64 2
  %i.apm = load i8, ptr %i.apl, align 1
  %i.apn = zext i8 %i.apm to i16
  %i.apo = xor i16 %i.apn, 49
  %i.app = or i16 %i.apk, %i.apo
  %i.apq = icmp ne i16 %i.app, 0
  %i.apr = zext i1 %i.apq to i32
  %i.aps = icmp eq i32 %i.apr, 0
  br i1 %i.aps, label %bb.fc, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.apt = load i16, ptr %0, align 1
  %i.apu = xor i16 %i.apt, 12883
  %i.apv = getelementptr i8, ptr %0, i64 2
  %i.apw = load i8, ptr %i.apv, align 1
  %i.apx = zext i8 %i.apw to i16
  %i.apy = xor i16 %i.apx, 50
  %i.apz = or i16 %i.apu, %i.apy
  %i.aqa = icmp ne i16 %i.apz, 0
  %i.aqb = zext i1 %i.aqa to i32
  %i.aqc = icmp eq i32 %i.aqb, 0
  br i1 %i.aqc, label %bb.fc, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.aqd = load i16, ptr %0, align 1
  %i.aqe = xor i16 %i.aqd, 12883
  %i.aqf = getelementptr i8, ptr %0, i64 2
  %i.aqg = load i8, ptr %i.aqf, align 1
  %i.aqh = zext i8 %i.aqg to i16
  %i.aqi = xor i16 %i.aqh, 51
  %i.aqj = or i16 %i.aqe, %i.aqi
  %i.aqk = icmp ne i16 %i.aqj, 0
  %i.aql = zext i1 %i.aqk to i32
  %i.aqm = icmp eq i32 %i.aql, 0
  br i1 %i.aqm, label %bb.fc, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aqn = load i16, ptr %0, align 1
  %i.aqo = xor i16 %i.aqn, 12883
  %i.aqp = getelementptr i8, ptr %0, i64 2
  %i.aqq = load i8, ptr %i.aqp, align 1
  %i.aqr = zext i8 %i.aqq to i16
  %i.aqs = xor i16 %i.aqr, 52
  %i.aqt = or i16 %i.aqo, %i.aqs
  %i.aqu = icmp ne i16 %i.aqt, 0
  %i.aqv = zext i1 %i.aqu to i32
  %i.aqw = icmp eq i32 %i.aqv, 0
  br i1 %i.aqw, label %bb.fc, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.aqx = load i16, ptr %0, align 1
  %i.aqy = xor i16 %i.aqx, 12883
  %i.aqz = getelementptr i8, ptr %0, i64 2
  %i.ara = load i8, ptr %i.aqz, align 1
  %i.arb = zext i8 %i.ara to i16
  %i.arc = xor i16 %i.arb, 53
  %i.ard = or i16 %i.aqy, %i.arc
  %i.are = icmp ne i16 %i.ard, 0
  %i.arf = zext i1 %i.are to i32
  %i.arg = icmp eq i32 %i.arf, 0
  br i1 %i.arg, label %bb.fc, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.arh = load i16, ptr %0, align 1
  %i.ari = xor i16 %i.arh, 12883
  %i.arj = getelementptr i8, ptr %0, i64 2
  %i.ark = load i8, ptr %i.arj, align 1
  %i.arl = zext i8 %i.ark to i16
  %i.arm = xor i16 %i.arl, 54
  %i.arn = or i16 %i.ari, %i.arm
  %i.aro = icmp ne i16 %i.arn, 0
  %i.arp = zext i1 %i.aro to i32
  %i.arq = icmp eq i32 %i.arp, 0
  br i1 %i.arq, label %bb.fc, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.arr = load i16, ptr %0, align 1
  %i.ars = xor i16 %i.arr, 12883
  %i.art = getelementptr i8, ptr %0, i64 2
  %i.aru = load i8, ptr %i.art, align 1
  %i.arv = zext i8 %i.aru to i16
  %i.arw = xor i16 %i.arv, 55
  %i.arx = or i16 %i.ars, %i.arw
  %i.ary = icmp ne i16 %i.arx, 0
  %i.arz = zext i1 %i.ary to i32
  %i.asa = icmp eq i32 %i.arz, 0
  br i1 %i.asa, label %bb.fc, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.asb = load i16, ptr %0, align 1
  %i.asc = xor i16 %i.asb, 12883
  %i.asd = getelementptr i8, ptr %0, i64 2
  %i.ase = load i8, ptr %i.asd, align 1
  %i.asf = zext i8 %i.ase to i16
  %i.asg = xor i16 %i.asf, 56
  %i.ash = or i16 %i.asc, %i.asg
  %i.asi = icmp ne i16 %i.ash, 0
  %i.asj = zext i1 %i.asi to i32
  %i.ask = icmp eq i32 %i.asj, 0
  br i1 %i.ask, label %bb.fc, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.asl = load i16, ptr %0, align 1
  %i.asm = xor i16 %i.asl, 12883
  %i.asn = getelementptr i8, ptr %0, i64 2
  %i.aso = load i8, ptr %i.asn, align 1
  %i.asp = zext i8 %i.aso to i16
  %i.asq = xor i16 %i.asp, 57
  %i.asr = or i16 %i.asm, %i.asq
  %i.ass = icmp ne i16 %i.asr, 0
  %i.ast = zext i1 %i.ass to i32
  %i.asu = icmp eq i32 %i.ast, 0
  br i1 %i.asu, label %bb.fc, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.asv = load i16, ptr %0, align 1
  %i.asw = xor i16 %i.asv, 13139
  %i.asx = getelementptr i8, ptr %0, i64 2
  %i.asy = load i8, ptr %i.asx, align 1
  %i.asz = zext i8 %i.asy to i16
  %i.ata = xor i16 %i.asz, 48
  %i.atb = or i16 %i.asw, %i.ata
  %i.atc = icmp ne i16 %i.atb, 0
  %i.atd = zext i1 %i.atc to i32
  %i.ate = icmp eq i32 %i.atd, 0
  br i1 %i.ate, label %bb.fc, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.atf = load i16, ptr %0, align 1
  %i.atg = xor i16 %i.atf, 13139
  %i.ath = getelementptr i8, ptr %0, i64 2
  %i.ati = load i8, ptr %i.ath, align 1
  %i.atj = zext i8 %i.ati to i16
  %i.atk = xor i16 %i.atj, 49
  %i.atl = or i16 %i.atg, %i.atk
  %i.atm = icmp ne i16 %i.atl, 0
  %i.atn = zext i1 %i.atm to i32
  %i.ato = icmp eq i32 %i.atn, 0
  br i1 %i.ato, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.dj, %bb.di, %bb.av, %bb.ee, %bb.du, %bb.dh, %bb.y, %bb.a, %bb.fa
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.fb
  %.sroa.158.0 = phi i16 [ undef, %bb.fb ], [ 271, %bb.ez ], [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 8, %bb.j ], [ 9, %bb.k ], [ 10, %bb.l ], [ 11, %bb.m ], [ 12, %bb.n ], [ 13, %bb.o ], [ 14, %bb.p ], [ 15, %bb.q ], [ 104, %bb.r ], [ 105, %bb.s ], [ 106, %bb.t ], [ 107, %bb.u ], [ 108, %bb.v ], [ 109, %bb.w ], [ 110, %bb.x ], [ 111, %bb.y ], [ 112, %bb.z ], [ 113, %bb.aa ], [ 114, %bb.ab ], [ 115, %bb.ac ], [ 116, %bb.ad ], [ 117, %bb.ae ], [ 118, %bb.af ], [ 119, %bb.ag ], [ 120, %bb.ah ], [ 121, %bb.ai ], [ 122, %bb.aj ], [ 123, %bb.ak ], [ 124, %bb.al ], [ 125, %bb.am ], [ 126, %bb.an ], [ 127, %bb.ao ], [ 128, %bb.ap ], [ 129, %bb.aq ], [ 130, %bb.ar ], [ 131, %bb.as ], [ 132, %bb.at ], [ 133, %bb.au ], [ 143, %bb.av ], [ 144, %bb.aw ], [ 145, %bb.ax ], [ 146, %bb.ay ], [ 147, %bb.az ], [ 148, %bb.ba ], [ 149, %bb.bb ], [ 150, %bb.bc ], [ 151, %bb.bd ], [ 152, %bb.be ], [ 153, %bb.bf ], [ 154, %bb.bg ], [ 155, %bb.bh ], [ 156, %bb.bi ], [ 157, %bb.bj ], [ 158, %bb.bk ], [ 159, %bb.bl ], [ 160, %bb.bm ], [ 161, %bb.bn ], [ 162, %bb.bo ], [ 163, %bb.bp ], [ 164, %bb.bq ], [ 165, %bb.br ], [ 192, %bb.bs ], [ 193, %bb.bt ], [ 194, %bb.bu ], [ 195, %bb.bv ], [ 196, %bb.bw ], [ 197, %bb.bx ], [ 198, %bb.by ], [ 199, %bb.bz ], [ 256, %bb.ca ], [ 257, %bb.cb ], [ 258, %bb.cc ], [ 259, %bb.cd ], [ 260, %bb.ce ], [ 261, %bb.cf ], [ 262, %bb.cg ], [ 263, %bb.ch ], [ 264, %bb.ci ], [ 265, %bb.cj ], [ 266, %bb.ck ], [ 267, %bb.cl ], [ 268, %bb.cm ], [ 269, %bb.cn ], [ 270, %bb.co ], [ 271, %bb.cp ], [ 272, %bb.cq ], [ 273, %bb.cr ], [ 274, %bb.cs ], [ 275, %bb.ct ], [ 276, %bb.cu ], [ 277, %bb.cv ], [ 278, %bb.cw ], [ 279, %bb.cx ], [ 280, %bb.cy ], [ 281, %bb.cz ], [ 282, %bb.da ], [ 283, %bb.db ], [ 284, %bb.dc ], [ 285, %bb.dd ], [ 286, %bb.de ], [ 287, %bb.df ], [ 320, %bb.dg ], [ 321, %bb.dh ], [ 322, %bb.di ], [ 323, %bb.dj ], [ 13, %bb.dk ], [ 14, %bb.dl ], [ 15, %bb.dm ], [ 104, %bb.dn ], [ 105, %bb.do ], [ 106, %bb.dp ], [ 107, %bb.dq ], [ 108, %bb.dr ], [ 109, %bb.ds ], [ 110, %bb.dt ], [ 111, %bb.du ], [ 256, %bb.dv ], [ 256, %bb.dw ], [ 257, %bb.dx ], [ 257, %bb.dy ], [ 258, %bb.dz ], [ 258, %bb.ea ], [ 259, %bb.eb ], [ 259, %bb.ec ], [ 260, %bb.ed ], [ 260, %bb.ee ], [ 261, %bb.ef ], [ 261, %bb.eg ], [ 262, %bb.eh ], [ 262, %bb.ei ], [ 263, %bb.ej ], [ 263, %bb.ek ], [ 264, %bb.el ], [ 264, %bb.em ], [ 265, %bb.en ], [ 265, %bb.eo ], [ 266, %bb.ep ], [ 266, %bb.eq ], [ 267, %bb.er ], [ 267, %bb.es ], [ 268, %bb.et ], [ 268, %bb.eu ], [ 269, %bb.ev ], [ 269, %bb.ew ], [ 270, %bb.ex ], [ 270, %bb.ey ], [ 271, %bb.fa ]
  %.sroa.0.0 = phi i16 [ 0, %bb.fb ], [ 1, %bb.ez ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ 1, %bb.z ], [ 1, %bb.aa ], [ 1, %bb.ab ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ 1, %bb.ak ], [ 1, %bb.al ], [ 1, %bb.am ], [ 1, %bb.an ], [ 1, %bb.ao ], [ 1, %bb.ap ], [ 1, %bb.aq ], [ 1, %bb.ar ], [ 1, %bb.as ], [ 1, %bb.at ], [ 1, %bb.au ], [ 1, %bb.av ], [ 1, %bb.aw ], [ 1, %bb.ax ], [ 1, %bb.ay ], [ 1, %bb.az ], [ 1, %bb.ba ], [ 1, %bb.bb ], [ 1, %bb.bc ], [ 1, %bb.bd ], [ 1, %bb.be ], [ 1, %bb.bf ], [ 1, %bb.bg ], [ 1, %bb.bh ], [ 1, %bb.bi ], [ 1, %bb.bj ], [ 1, %bb.bk ], [ 1, %bb.bl ], [ 1, %bb.bm ], [ 1, %bb.bn ], [ 1, %bb.bo ], [ 1, %bb.bp ], [ 1, %bb.bq ], [ 1, %bb.br ], [ 1, %bb.bs ], [ 1, %bb.bt ], [ 1, %bb.bu ], [ 1, %bb.bv ], [ 1, %bb.bw ], [ 1, %bb.bx ], [ 1, %bb.by ], [ 1, %bb.bz ], [ 1, %bb.ca ], [ 1, %bb.cb ], [ 1, %bb.cc ], [ 1, %bb.cd ], [ 1, %bb.ce ], [ 1, %bb.cf ], [ 1, %bb.cg ], [ 1, %bb.ch ], [ 1, %bb.ci ], [ 1, %bb.cj ], [ 1, %bb.ck ], [ 1, %bb.cl ], [ 1, %bb.cm ], [ 1, %bb.cn ], [ 1, %bb.co ], [ 1, %bb.cp ], [ 1, %bb.cq ], [ 1, %bb.cr ], [ 1, %bb.cs ], [ 1, %bb.ct ], [ 1, %bb.cu ], [ 1, %bb.cv ], [ 1, %bb.cw ], [ 1, %bb.cx ], [ 1, %bb.cy ], [ 1, %bb.cz ], [ 1, %bb.da ], [ 1, %bb.db ], [ 1, %bb.dc ], [ 1, %bb.dd ], [ 1, %bb.de ], [ 1, %bb.df ], [ 1, %bb.dg ], [ 1, %bb.dh ], [ 1, %bb.di ], [ 1, %bb.dj ], [ 1, %bb.dk ], [ 1, %bb.dl ], [ 1, %bb.dm ], [ 1, %bb.dn ], [ 1, %bb.do ], [ 1, %bb.dp ], [ 1, %bb.dq ], [ 1, %bb.dr ], [ 1, %bb.ds ], [ 1, %bb.dt ], [ 1, %bb.du ], [ 1, %bb.dv ], [ 1, %bb.dw ], [ 1, %bb.dx ], [ 1, %bb.dy ], [ 1, %bb.dz ], [ 1, %bb.ea ], [ 1, %bb.eb ], [ 1, %bb.ec ], [ 1, %bb.ed ], [ 1, %bb.ee ], [ 1, %bb.ef ], [ 1, %bb.eg ], [ 1, %bb.eh ], [ 1, %bb.ei ], [ 1, %bb.ej ], [ 1, %bb.ek ], [ 1, %bb.el ], [ 1, %bb.em ], [ 1, %bb.en ], [ 1, %bb.eo ], [ 1, %bb.ep ], [ 1, %bb.eq ], [ 1, %bb.er ], [ 1, %bb.es ], [ 1, %bb.et ], [ 1, %bb.eu ], [ 1, %bb.ev ], [ 1, %bb.ew ], [ 1, %bb.ex ], [ 1, %bb.ey ], [ 1, %bb.fa ]
  %i.atp = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.atq = insertvalue { i16, i16 } %i.atp, i16 %.sroa.158.0, 1
  ret { i16, i16 } %i.atq
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvMs9_NtCsi68uqYEhoRA_5gimli4archNtB5_7AArch6413register_name(i16 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i16 %0, 128
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i16 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs9_NtCsi68uqYEhoRA_5gimli4archNtB5_7AArch6413register_name, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i16 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMs9_NtCsi68uqYEhoRA_5gimli4archNtB5_7AArch6413register_name.2, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.124.0 = phi i64 [ undef, %bb.a ], [ %switch.ext, %switch.lookup ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %switch.load2, %switch.lookup ]
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.sroa.124.0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i16, i16 } @_RNvMs9_NtCsi68uqYEhoRA_5gimli4archNtB5_7AArch6416name_to_register(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  switch i64 %1, label %bb.dt [
    i64 2, label %bb.b
    i64 3, label %bb.l
    i64 8, label %bb.ai
    i64 13, label %bb.aj
    i64 11, label %bb.ak
    i64 9, label %bb.al
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 1
  %i.b = icmp ne i16 %i.a, 12376
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.du, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i16, ptr %0, align 1
  %i.f = icmp ne i16 %i.e, 12632
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.du, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i16, ptr %0, align 1
  %i.j = icmp ne i16 %i.i, 12888
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.du, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i16, ptr %0, align 1
  %i.n = icmp ne i16 %i.m, 13144
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.du, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i16, ptr %0, align 1
  %i.r = icmp ne i16 %i.q, 13400
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.du, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i16, ptr %0, align 1
  %i.v = icmp ne i16 %i.u, 13656
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.du, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load i16, ptr %0, align 1
  %i.z = icmp ne i16 %i.y, 13912
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.du, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i16, ptr %0, align 1
  %i.ad = icmp ne i16 %i.ac, 14168
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.du, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load i16, ptr %0, align 1
  %i.ah = icmp ne i16 %i.ag, 14424
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.du, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load i16, ptr %0, align 1
  %i.al = icmp ne i16 %i.ak, 14680
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.du, label %bb.ag

bb.l:                                             ; preds = %bb.a
  %i.ao = load i16, ptr %0, align 1
  %i.ap = xor i16 %i.ao, 12632
  %i.aq = getelementptr i8, ptr %0, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i16
  %i.at = xor i16 %i.as, 48
  %i.au = or i16 %i.ap, %i.at
  %i.av = icmp ne i16 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.du, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load i16, ptr %0, align 1
  %i.az = xor i16 %i.ay, 12632
  %i.ba = getelementptr i8, ptr %0, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i16
  %i.bd = xor i16 %i.bc, 49
  %i.be = or i16 %i.az, %i.bd
  %i.bf = icmp ne i16 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.du, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = load i16, ptr %0, align 1
  %i.bj = xor i16 %i.bi, 12632
  %i.bk = getelementptr i8, ptr %0, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i16
  %i.bn = xor i16 %i.bm, 50
  %i.bo = or i16 %i.bj, %i.bn
  %i.bp = icmp ne i16 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.du, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = load i16, ptr %0, align 1
  %i.bt = xor i16 %i.bs, 12632
  %i.bu = getelementptr i8, ptr %0, i64 2
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i16
  %i.bx = xor i16 %i.bw, 51
  %i.by = or i16 %i.bt, %i.bx
  %i.bz = icmp ne i16 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.du, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load i16, ptr %0, align 1
  %i.cd = xor i16 %i.cc, 12632
  %i.ce = getelementptr i8, ptr %0, i64 2
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i16
  %i.ch = xor i16 %i.cg, 52
  %i.ci = or i16 %i.cd, %i.ch
  %i.cj = icmp ne i16 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.du, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = load i16, ptr %0, align 1
  %i.cn = xor i16 %i.cm, 12632
  %i.co = getelementptr i8, ptr %0, i64 2
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i16
  %i.cr = xor i16 %i.cq, 53
  %i.cs = or i16 %i.cn, %i.cr
  %i.ct = icmp ne i16 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.du, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = load i16, ptr %0, align 1
  %i.cx = xor i16 %i.cw, 12632
  %i.cy = getelementptr i8, ptr %0, i64 2
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i16
  %i.db = xor i16 %i.da, 54
  %i.dc = or i16 %i.cx, %i.db
  %i.dd = icmp ne i16 %i.dc, 0
  %i.de = zext i1 %i.dd to i32
  %i.df = icmp eq i32 %i.de, 0
end_hunk_0
begin_hunk_1_@_RNvMs9_NtCsi68uqYEhoRA_5gimli4archNtB5_7AArch6416name_to_register:bb.a
  %i.adv = icmp ne i16 %i.adu, 0
  %i.adw = zext i1 %i.adv to i32
  %i.adx = icmp eq i32 %i.adw, 0
  br i1 %i.adx, label %bb.du, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ady = load i16, ptr %0, align 1
  %i.adz = xor i16 %i.ady, 12634
  %i.aea = getelementptr i8, ptr %0, i64 2
  %i.aeb = load i8, ptr %i.aea, align 1
  %i.aec = zext i8 %i.aeb to i16
  %i.aed = xor i16 %i.aec, 55
  %i.aee = or i16 %i.adz, %i.aed
  %i.aef = icmp ne i16 %i.aee, 0
  %i.aeg = zext i1 %i.aef to i32
  %i.aeh = icmp eq i32 %i.aeg, 0
  br i1 %i.aeh, label %bb.du, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.aei = load i16, ptr %0, align 1
  %i.aej = xor i16 %i.aei, 12634
  %i.aek = getelementptr i8, ptr %0, i64 2
  %i.ael = load i8, ptr %i.aek, align 1
  %i.aem = zext i8 %i.ael to i16
  %i.aen = xor i16 %i.aem, 56
  %i.aeo = or i16 %i.aej, %i.aen
  %i.aep = icmp ne i16 %i.aeo, 0
  %i.aeq = zext i1 %i.aep to i32
  %i.aer = icmp eq i32 %i.aeq, 0
  br i1 %i.aer, label %bb.du, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.aes = load i16, ptr %0, align 1
  %i.aet = xor i16 %i.aes, 12634
  %i.aeu = getelementptr i8, ptr %0, i64 2
  %i.aev = load i8, ptr %i.aeu, align 1
  %i.aew = zext i8 %i.aev to i16
  %i.aex = xor i16 %i.aew, 57
  %i.aey = or i16 %i.aet, %i.aex
  %i.aez = icmp ne i16 %i.aey, 0
  %i.afa = zext i1 %i.aez to i32
  %i.afb = icmp eq i32 %i.afa, 0
  br i1 %i.afb, label %bb.du, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.afc = load i16, ptr %0, align 1
  %i.afd = xor i16 %i.afc, 12890
  %i.afe = getelementptr i8, ptr %0, i64 2
  %i.aff = load i8, ptr %i.afe, align 1
  %i.afg = zext i8 %i.aff to i16
  %i.afh = xor i16 %i.afg, 48
  %i.afi = or i16 %i.afd, %i.afh
  %i.afj = icmp ne i16 %i.afi, 0
  %i.afk = zext i1 %i.afj to i32
  %i.afl = icmp eq i32 %i.afk, 0
  br i1 %i.afl, label %bb.du, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.afm = load i16, ptr %0, align 1
  %i.afn = xor i16 %i.afm, 12890
  %i.afo = getelementptr i8, ptr %0, i64 2
  %i.afp = load i8, ptr %i.afo, align 1
  %i.afq = zext i8 %i.afp to i16
  %i.afr = xor i16 %i.afq, 49
  %i.afs = or i16 %i.afn, %i.afr
  %i.aft = icmp ne i16 %i.afs, 0
  %i.afu = zext i1 %i.aft to i32
  %i.afv = icmp eq i32 %i.afu, 0
  br i1 %i.afv, label %bb.du, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.afw = load i16, ptr %0, align 1
  %i.afx = xor i16 %i.afw, 12890
  %i.afy = getelementptr i8, ptr %0, i64 2
  %i.afz = load i8, ptr %i.afy, align 1
  %i.aga = zext i8 %i.afz to i16
  %i.agb = xor i16 %i.aga, 50
  %i.agc = or i16 %i.afx, %i.agb
  %i.agd = icmp ne i16 %i.agc, 0
  %i.age = zext i1 %i.agd to i32
  %i.agf = icmp eq i32 %i.age, 0
  br i1 %i.agf, label %bb.du, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.agg = load i16, ptr %0, align 1
  %i.agh = xor i16 %i.agg, 12890
  %i.agi = getelementptr i8, ptr %0, i64 2
  %i.agj = load i8, ptr %i.agi, align 1
  %i.agk = zext i8 %i.agj to i16
  %i.agl = xor i16 %i.agk, 51
  %i.agm = or i16 %i.agh, %i.agl
  %i.agn = icmp ne i16 %i.agm, 0
  %i.ago = zext i1 %i.agn to i32
  %i.agp = icmp eq i32 %i.ago, 0
  br i1 %i.agp, label %bb.du, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.agq = load i16, ptr %0, align 1
  %i.agr = xor i16 %i.agq, 12890
  %i.ags = getelementptr i8, ptr %0, i64 2
  %i.agt = load i8, ptr %i.ags, align 1
  %i.agu = zext i8 %i.agt to i16
  %i.agv = xor i16 %i.agu, 52
  %i.agw = or i16 %i.agr, %i.agv
  %i.agx = icmp ne i16 %i.agw, 0
  %i.agy = zext i1 %i.agx to i32
  %i.agz = icmp eq i32 %i.agy, 0
  br i1 %i.agz, label %bb.du, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.aha = load i16, ptr %0, align 1
  %i.ahb = xor i16 %i.aha, 12890
  %i.ahc = getelementptr i8, ptr %0, i64 2
  %i.ahd = load i8, ptr %i.ahc, align 1
  %i.ahe = zext i8 %i.ahd to i16
  %i.ahf = xor i16 %i.ahe, 53
  %i.ahg = or i16 %i.ahb, %i.ahf
  %i.ahh = icmp ne i16 %i.ahg, 0
  %i.ahi = zext i1 %i.ahh to i32
  %i.ahj = icmp eq i32 %i.ahi, 0
  br i1 %i.ahj, label %bb.du, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ahk = load i16, ptr %0, align 1
  %i.ahl = xor i16 %i.ahk, 12890
  %i.ahm = getelementptr i8, ptr %0, i64 2
  %i.ahn = load i8, ptr %i.ahm, align 1
  %i.aho = zext i8 %i.ahn to i16
  %i.ahp = xor i16 %i.aho, 54
  %i.ahq = or i16 %i.ahl, %i.ahp
  %i.ahr = icmp ne i16 %i.ahq, 0
  %i.ahs = zext i1 %i.ahr to i32
  %i.aht = icmp eq i32 %i.ahs, 0
  br i1 %i.aht, label %bb.du, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ahu = load i16, ptr %0, align 1
  %i.ahv = xor i16 %i.ahu, 12890
  %i.ahw = getelementptr i8, ptr %0, i64 2
  %i.ahx = load i8, ptr %i.ahw, align 1
  %i.ahy = zext i8 %i.ahx to i16
  %i.ahz = xor i16 %i.ahy, 55
  %i.aia = or i16 %i.ahv, %i.ahz
  %i.aib = icmp ne i16 %i.aia, 0
  %i.aic = zext i1 %i.aib to i32
  %i.aid = icmp eq i32 %i.aic, 0
  br i1 %i.aid, label %bb.du, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.aie = load i16, ptr %0, align 1
  %i.aif = xor i16 %i.aie, 12890
  %i.aig = getelementptr i8, ptr %0, i64 2
  %i.aih = load i8, ptr %i.aig, align 1
  %i.aii = zext i8 %i.aih to i16
  %i.aij = xor i16 %i.aii, 56
  %i.aik = or i16 %i.aif, %i.aij
  %i.ail = icmp ne i16 %i.aik, 0
  %i.aim = zext i1 %i.ail to i32
  %i.ain = icmp eq i32 %i.aim, 0
  br i1 %i.ain, label %bb.du, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aio = load i16, ptr %0, align 1
  %i.aip = xor i16 %i.aio, 12890
  %i.aiq = getelementptr i8, ptr %0, i64 2
  %i.air = load i8, ptr %i.aiq, align 1
  %i.ais = zext i8 %i.air to i16
  %i.ait = xor i16 %i.ais, 57
  %i.aiu = or i16 %i.aip, %i.ait
  %i.aiv = icmp ne i16 %i.aiu, 0
  %i.aiw = zext i1 %i.aiv to i32
  %i.aix = icmp eq i32 %i.aiw, 0
  br i1 %i.aix, label %bb.du, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.aiy = load i16, ptr %0, align 1
  %i.aiz = xor i16 %i.aiy, 13146
  %i.aja = getelementptr i8, ptr %0, i64 2
  %i.ajb = load i8, ptr %i.aja, align 1
  %i.ajc = zext i8 %i.ajb to i16
  %i.ajd = xor i16 %i.ajc, 48
  %i.aje = or i16 %i.aiz, %i.ajd
  %i.ajf = icmp ne i16 %i.aje, 0
  %i.ajg = zext i1 %i.ajf to i32
  %i.ajh = icmp eq i32 %i.ajg, 0
  br i1 %i.ajh, label %bb.du, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.aji = load i16, ptr %0, align 1
  %i.ajj = xor i16 %i.aji, 13146
  %i.ajk = getelementptr i8, ptr %0, i64 2
  %i.ajl = load i8, ptr %i.ajk, align 1
  %i.ajm = zext i8 %i.ajl to i16
  %i.ajn = xor i16 %i.ajm, 49
  %i.ajo = or i16 %i.ajj, %i.ajn
  %i.ajp = icmp ne i16 %i.ajo, 0
  %i.ajq = zext i1 %i.ajp to i32
  %i.ajr = icmp eq i32 %i.ajq, 0
  br i1 %i.ajr, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.cw, %bb.ao, %bb.a, %bb.ds
  br label %bb.du

bb.du:                                            ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.dt
  %.sroa.124.0 = phi i16 [ undef, %bb.dt ], [ 126, %bb.dr ], [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 8, %bb.j ], [ 9, %bb.k ], [ 10, %bb.l ], [ 11, %bb.m ], [ 12, %bb.n ], [ 13, %bb.o ], [ 14, %bb.p ], [ 15, %bb.q ], [ 16, %bb.r ], [ 17, %bb.s ], [ 18, %bb.t ], [ 19, %bb.u ], [ 20, %bb.v ], [ 21, %bb.w ], [ 22, %bb.x ], [ 23, %bb.y ], [ 24, %bb.z ], [ 25, %bb.aa ], [ 26, %bb.ab ], [ 27, %bb.ac ], [ 28, %bb.ad ], [ 29, %bb.ae ], [ 30, %bb.af ], [ 31, %bb.ag ], [ 32, %bb.ah ], [ 33, %bb.ai ], [ 34, %bb.aj ], [ 35, %bb.ak ], [ 36, %bb.al ], [ 37, %bb.am ], [ 38, %bb.an ], [ 39, %bb.ao ], [ 46, %bb.ap ], [ 47, %bb.aq ], [ 48, %bb.ar ], [ 49, %bb.as ], [ 50, %bb.at ], [ 51, %bb.au ], [ 52, %bb.av ], [ 53, %bb.aw ], [ 54, %bb.ax ], [ 55, %bb.ay ], [ 56, %bb.az ], [ 57, %bb.ba ], [ 58, %bb.bb ], [ 59, %bb.bc ], [ 60, %bb.bd ], [ 61, %bb.be ], [ 62, %bb.bf ], [ 63, %bb.bg ], [ 64, %bb.bh ], [ 65, %bb.bi ], [ 66, %bb.bj ], [ 67, %bb.bk ], [ 68, %bb.bl ], [ 69, %bb.bm ], [ 70, %bb.bn ], [ 71, %bb.bo ], [ 72, %bb.bp ], [ 73, %bb.bq ], [ 74, %bb.br ], [ 75, %bb.bs ], [ 76, %bb.bt ], [ 77, %bb.bu ], [ 78, %bb.bv ], [ 79, %bb.bw ], [ 80, %bb.bx ], [ 81, %bb.by ], [ 82, %bb.bz ], [ 83, %bb.ca ], [ 84, %bb.cb ], [ 85, %bb.cc ], [ 86, %bb.cd ], [ 87, %bb.ce ], [ 88, %bb.cf ], [ 89, %bb.cg ], [ 90, %bb.ch ], [ 91, %bb.ci ], [ 92, %bb.cj ], [ 93, %bb.ck ], [ 94, %bb.cl ], [ 95, %bb.cm ], [ 96, %bb.cn ], [ 97, %bb.co ], [ 98, %bb.cp ], [ 99, %bb.cq ], [ 100, %bb.cr ], [ 101, %bb.cs ], [ 102, %bb.ct ], [ 103, %bb.cu ], [ 104, %bb.cv ], [ 105, %bb.cw ], [ 106, %bb.cx ], [ 107, %bb.cy ], [ 108, %bb.cz ], [ 109, %bb.da ], [ 110, %bb.db ], [ 111, %bb.dc ], [ 112, %bb.dd ], [ 113, %bb.de ], [ 114, %bb.df ], [ 115, %bb.dg ], [ 116, %bb.dh ], [ 117, %bb.di ], [ 118, %bb.dj ], [ 119, %bb.dk ], [ 120, %bb.dl ], [ 121, %bb.dm ], [ 122, %bb.dn ], [ 123, %bb.do ], [ 124, %bb.dp ], [ 125, %bb.dq ], [ 127, %bb.ds ]
  %.sroa.0.0 = phi i16 [ 0, %bb.dt ], [ 1, %bb.dr ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ 1, %bb.z ], [ 1, %bb.aa ], [ 1, %bb.ab ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ 1, %bb.ak ], [ 1, %bb.al ], [ 1, %bb.am ], [ 1, %bb.an ], [ 1, %bb.ao ], [ 1, %bb.ap ], [ 1, %bb.aq ], [ 1, %bb.ar ], [ 1, %bb.as ], [ 1, %bb.at ], [ 1, %bb.au ], [ 1, %bb.av ], [ 1, %bb.aw ], [ 1, %bb.ax ], [ 1, %bb.ay ], [ 1, %bb.az ], [ 1, %bb.ba ], [ 1, %bb.bb ], [ 1, %bb.bc ], [ 1, %bb.bd ], [ 1, %bb.be ], [ 1, %bb.bf ], [ 1, %bb.bg ], [ 1, %bb.bh ], [ 1, %bb.bi ], [ 1, %bb.bj ], [ 1, %bb.bk ], [ 1, %bb.bl ], [ 1, %bb.bm ], [ 1, %bb.bn ], [ 1, %bb.bo ], [ 1, %bb.bp ], [ 1, %bb.bq ], [ 1, %bb.br ], [ 1, %bb.bs ], [ 1, %bb.bt ], [ 1, %bb.bu ], [ 1, %bb.bv ], [ 1, %bb.bw ], [ 1, %bb.bx ], [ 1, %bb.by ], [ 1, %bb.bz ], [ 1, %bb.ca ], [ 1, %bb.cb ], [ 1, %bb.cc ], [ 1, %bb.cd ], [ 1, %bb.ce ], [ 1, %bb.cf ], [ 1, %bb.cg ], [ 1, %bb.ch ], [ 1, %bb.ci ], [ 1, %bb.cj ], [ 1, %bb.ck ], [ 1, %bb.cl ], [ 1, %bb.cm ], [ 1, %bb.cn ], [ 1, %bb.co ], [ 1, %bb.cp ], [ 1, %bb.cq ], [ 1, %bb.cr ], [ 1, %bb.cs ], [ 1, %bb.ct ], [ 1, %bb.cu ], [ 1, %bb.cv ], [ 1, %bb.cw ], [ 1, %bb.cx ], [ 1, %bb.cy ], [ 1, %bb.cz ], [ 1, %bb.da ], [ 1, %bb.db ], [ 1, %bb.dc ], [ 1, %bb.dd ], [ 1, %bb.de ], [ 1, %bb.df ], [ 1, %bb.dg ], [ 1, %bb.dh ], [ 1, %bb.di ], [ 1, %bb.dj ], [ 1, %bb.dk ], [ 1, %bb.dl ], [ 1, %bb.dm ], [ 1, %bb.dn ], [ 1, %bb.do ], [ 1, %bb.dp ], [ 1, %bb.dq ], [ 1, %bb.ds ]
  %i.ajs = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.ajt = insertvalue { i16, i16 } %i.ajs, i16 %.sroa.124.0, 1
  ret { i16, i16 } %i.ajt
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvMsD_NtCsi68uqYEhoRA_5gimli4archNtB5_6X86_6413register_name(i16 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i16 %0, 155
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i16 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMsD_NtCsi68uqYEhoRA_5gimli4archNtB5_6X86_6413register_name, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i16 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMsD_NtCsi68uqYEhoRA_5gimli4archNtB5_6X86_6413register_name.3, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.114.0 = phi i64 [ undef, %bb.a ], [ %switch.ext, %switch.lookup ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %switch.load2, %switch.lookup ]
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.sroa.114.0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i16, i16 } @_RNvMsD_NtCsi68uqYEhoRA_5gimli4archNtB5_6X86_6416name_to_register(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  switch i64 %1, label %bb.dj [
    i64 3, label %bb.b
    i64 2, label %bb.j
    i64 4, label %bb.s
    i64 5, label %bb.ac
    i64 6, label %bb.ay
    i64 7, label %bb.bf
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 1
  %i.b = xor i16 %i.a, 24946
  %i.c = getelementptr i8, ptr %0, i64 2
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i16
  %i.f = xor i16 %i.e, 120
  %i.g = or i16 %i.b, %i.f
  %i.h = icmp ne i16 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.dk, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i16, ptr %0, align 1
  %i.l = xor i16 %i.k, 25714
  %i.m = getelementptr i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i16
  %i.p = xor i16 %i.o, 120
  %i.q = or i16 %i.l, %i.p
  %i.r = icmp ne i16 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.dk, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i16, ptr %0, align 1
  %i.v = xor i16 %i.u, 25458
  %i.w = getelementptr i8, ptr %0, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i16
  %i.z = xor i16 %i.y, 120
  %i.aa = or i16 %i.v, %i.z
  %i.ab = icmp ne i16 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.dk, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load i16, ptr %0, align 1
  %i.af = xor i16 %i.ae, 25202
  %i.ag = getelementptr i8, ptr %0, i64 2
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i16
  %i.aj = xor i16 %i.ai, 120
  %i.ak = or i16 %i.af, %i.aj
  %i.al = icmp ne i16 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.dk, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load i16, ptr %0, align 1
  %i.ap = xor i16 %i.ao, 29554
  %i.aq = getelementptr i8, ptr %0, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i16
  %i.at = xor i16 %i.as, 105
  %i.au = or i16 %i.ap, %i.at
  %i.av = icmp ne i16 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.dk, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load i16, ptr %0, align 1
  %i.az = xor i16 %i.ay, 25714
  %i.ba = getelementptr i8, ptr %0, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i16
  %i.bd = xor i16 %i.bc, 105
  %i.be = or i16 %i.az, %i.bd
  %i.bf = icmp ne i16 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.dk, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = load i16, ptr %0, align 1
  %i.bj = xor i16 %i.bi, 25202
  %i.bk = getelementptr i8, ptr %0, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i16
  %i.bn = xor i16 %i.bm, 112
  %i.bo = or i16 %i.bj, %i.bn
  %i.bp = icmp ne i16 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.dk, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load i16, ptr %0, align 1
  %i.bt = xor i16 %i.bs, 29554
  %i.bu = getelementptr i8, ptr %0, i64 2
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i16
  %i.bx = xor i16 %i.bw, 112
  %i.by = or i16 %i.bt, %i.bx
  %i.bz = icmp ne i16 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.dk, label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.cc = load i16, ptr %0, align 1
  %i.cd = icmp ne i16 %i.cc, 14450
  %i.ce = zext i1 %i.cd to i32
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.dk, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = load i16, ptr %0, align 1
  %i.ch = icmp ne i16 %i.cg, 14706
  %i.ci = zext i1 %i.ch to i32
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.dk, label %bb.r

bb.l:                                             ; preds = %bb.i
  %i.ck = load i16, ptr %0, align 1
  %i.cl = xor i16 %i.ck, 12658
  %i.cm = getelementptr i8, ptr %0, i64 2
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i16
  %i.cp = xor i16 %i.co, 48
  %i.cq = or i16 %i.cl, %i.cp
  %i.cr = icmp ne i16 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.dk, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cu = load i16, ptr %0, align 1
  %i.cv = xor i16 %i.cu, 12658
  %i.cw = getelementptr i8, ptr %0, i64 2
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = zext i8 %i.cx to i16
  %i.cz = xor i16 %i.cy, 49
  %i.da = or i16 %i.cv, %i.cz
  %i.db = icmp ne i16 %i.da, 0
  %i.dc = zext i1 %i.db to i32
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.dk, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = load i16, ptr %0, align 1
  %i.df = xor i16 %i.de, 12658
  %i.dg = getelementptr i8, ptr %0, i64 2
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = zext i8 %i.dh to i16
  %i.dj = xor i16 %i.di, 50
  %i.dk = or i16 %i.df, %i.dj
  %i.dl = icmp ne i16 %i.dk, 0
  %i.dm = zext i1 %i.dl to i32
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.dk, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.do = load i16, ptr %0, align 1
end_hunk_1
begin_hunk_2_@_RNvMsD_NtCsi68uqYEhoRA_5gimli4archNtB5_6X86_6416name_to_register:bb.a
  %i.acb = xor i16 %i.aca, 12914
  %i.acc = getelementptr i8, ptr %0, i64 2
  %i.acd = load i8, ptr %i.acc, align 1
  %i.ace = zext i8 %i.acd to i16
  %i.acf = xor i16 %i.ace, 50
  %i.acg = or i16 %i.acb, %i.acf
  %i.ach = icmp ne i16 %i.acg, 0
  %i.aci = zext i1 %i.ach to i32
  %i.acj = icmp eq i32 %i.aci, 0
  br i1 %i.acj, label %bb.dk, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ack = load i16, ptr %0, align 1
  %i.acl = xor i16 %i.ack, 12914
  %i.acm = getelementptr i8, ptr %0, i64 2
  %i.acn = load i8, ptr %i.acm, align 1
  %i.aco = zext i8 %i.acn to i16
  %i.acp = xor i16 %i.aco, 51
  %i.acq = or i16 %i.acl, %i.acp
  %i.acr = icmp ne i16 %i.acq, 0
  %i.acs = zext i1 %i.acr to i32
  %i.act = icmp eq i32 %i.acs, 0
  br i1 %i.act, label %bb.dk, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.acu = load i16, ptr %0, align 1
  %i.acv = xor i16 %i.acu, 12914
  %i.acw = getelementptr i8, ptr %0, i64 2
  %i.acx = load i8, ptr %i.acw, align 1
  %i.acy = zext i8 %i.acx to i16
  %i.acz = xor i16 %i.acy, 52
  %i.ada = or i16 %i.acv, %i.acz
  %i.adb = icmp ne i16 %i.ada, 0
  %i.adc = zext i1 %i.adb to i32
  %i.add = icmp eq i32 %i.adc, 0
  br i1 %i.add, label %bb.dk, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ade = load i16, ptr %0, align 1
  %i.adf = xor i16 %i.ade, 12914
  %i.adg = getelementptr i8, ptr %0, i64 2
  %i.adh = load i8, ptr %i.adg, align 1
  %i.adi = zext i8 %i.adh to i16
  %i.adj = xor i16 %i.adi, 53
  %i.adk = or i16 %i.adf, %i.adj
  %i.adl = icmp ne i16 %i.adk, 0
  %i.adm = zext i1 %i.adl to i32
  %i.adn = icmp eq i32 %i.adm, 0
  br i1 %i.adn, label %bb.dk, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ado = load i16, ptr %0, align 1
  %i.adp = xor i16 %i.ado, 12914
  %i.adq = getelementptr i8, ptr %0, i64 2
  %i.adr = load i8, ptr %i.adq, align 1
  %i.ads = zext i8 %i.adr to i16
  %i.adt = xor i16 %i.ads, 54
  %i.adu = or i16 %i.adp, %i.adt
  %i.adv = icmp ne i16 %i.adu, 0
  %i.adw = zext i1 %i.adv to i32
  %i.adx = icmp eq i32 %i.adw, 0
  br i1 %i.adx, label %bb.dk, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ady = load i16, ptr %0, align 1
  %i.adz = xor i16 %i.ady, 12914
  %i.aea = getelementptr i8, ptr %0, i64 2
  %i.aeb = load i8, ptr %i.aea, align 1
  %i.aec = zext i8 %i.aeb to i16
  %i.aed = xor i16 %i.aec, 55
  %i.aee = or i16 %i.adz, %i.aed
  %i.aef = icmp ne i16 %i.aee, 0
  %i.aeg = zext i1 %i.aef to i32
  %i.aeh = icmp eq i32 %i.aeg, 0
  br i1 %i.aeh, label %bb.dk, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.aei = load i16, ptr %0, align 1
  %i.aej = xor i16 %i.aei, 12914
  %i.aek = getelementptr i8, ptr %0, i64 2
  %i.ael = load i8, ptr %i.aek, align 1
  %i.aem = zext i8 %i.ael to i16
  %i.aen = xor i16 %i.aem, 56
  %i.aeo = or i16 %i.aej, %i.aen
  %i.aep = icmp ne i16 %i.aeo, 0
  %i.aeq = zext i1 %i.aep to i32
  %i.aer = icmp eq i32 %i.aeq, 0
  br i1 %i.aer, label %bb.dk, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.aes = load i16, ptr %0, align 1
  %i.aet = xor i16 %i.aes, 12914
  %i.aeu = getelementptr i8, ptr %0, i64 2
  %i.aev = load i8, ptr %i.aeu, align 1
  %i.aew = zext i8 %i.aev to i16
  %i.aex = xor i16 %i.aew, 57
  %i.aey = or i16 %i.aet, %i.aex
  %i.aez = icmp ne i16 %i.aey, 0
  %i.afa = zext i1 %i.aez to i32
  %i.afb = icmp eq i32 %i.afa, 0
  br i1 %i.afb, label %bb.dk, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.afc = load i16, ptr %0, align 1
  %i.afd = xor i16 %i.afc, 13170
  %i.afe = getelementptr i8, ptr %0, i64 2
  %i.aff = load i8, ptr %i.afe, align 1
  %i.afg = zext i8 %i.aff to i16
  %i.afh = xor i16 %i.afg, 48
  %i.afi = or i16 %i.afd, %i.afh
  %i.afj = icmp ne i16 %i.afi, 0
  %i.afk = zext i1 %i.afj to i32
  %i.afl = icmp eq i32 %i.afk, 0
  br i1 %i.afl, label %bb.dk, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.afm = load i16, ptr %0, align 1
  %i.afn = xor i16 %i.afm, 13170
  %i.afo = getelementptr i8, ptr %0, i64 2
  %i.afp = load i8, ptr %i.afo, align 1
  %i.afq = zext i8 %i.afp to i16
  %i.afr = xor i16 %i.afq, 49
  %i.afs = or i16 %i.afn, %i.afr
  %i.aft = icmp ne i16 %i.afs, 0
  %i.afu = zext i1 %i.aft to i32
  %i.afv = icmp eq i32 %i.afu, 0
  br i1 %i.afv, label %bb.dk, label %bb.dj

bb.da:                                            ; preds = %bb.bi
  %i.afw = load i32, ptr %0, align 1
  %i.afx = icmp ne i32 %i.afw, 812477812
  %i.afy = zext i1 %i.afx to i32
  %i.afz = icmp eq i32 %i.afy, 0
  br i1 %i.afz, label %bb.dk, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.aga = load i32, ptr %0, align 1
  %i.agb = icmp ne i32 %i.aga, 829255028
  %i.agc = zext i1 %i.agb to i32
  %i.agd = icmp eq i32 %i.agc, 0
  br i1 %i.agd, label %bb.dk, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.age = load i32, ptr %0, align 1
  %i.agf = icmp ne i32 %i.age, 846032244
  %i.agg = zext i1 %i.agf to i32
  %i.agh = icmp eq i32 %i.agg, 0
  br i1 %i.agh, label %bb.dk, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.agi = load i32, ptr %0, align 1
  %i.agj = icmp ne i32 %i.agi, 862809460
  %i.agk = zext i1 %i.agj to i32
  %i.agl = icmp eq i32 %i.agk, 0
  br i1 %i.agl, label %bb.dk, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.agm = load i32, ptr %0, align 1
  %i.agn = icmp ne i32 %i.agm, 879586676
  %i.ago = zext i1 %i.agn to i32
  %i.agp = icmp eq i32 %i.ago, 0
  br i1 %i.agp, label %bb.dk, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.agq = load i32, ptr %0, align 1
  %i.agr = icmp ne i32 %i.agq, 896363892
  %i.ags = zext i1 %i.agr to i32
  %i.agt = icmp eq i32 %i.ags, 0
  br i1 %i.agt, label %bb.dk, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.agu = load i32, ptr %0, align 1
  %i.agv = icmp ne i32 %i.agu, 913141108
  %i.agw = zext i1 %i.agv to i32
  %i.agx = icmp eq i32 %i.agw, 0
  br i1 %i.agx, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.agy = load i32, ptr %0, align 1
  %i.agz = icmp ne i32 %i.agy, 929918324
  %i.aha = zext i1 %i.agz to i32
  %i.ahb = icmp eq i32 %i.aha, 0
  br i1 %i.ahb, label %bb.dk, label %bb.dj

bb.di:                                            ; preds = %bb.bg
  %i.ahc = load i32, ptr %0, align 1
  %i.ahd = xor i32 %i.ahc, 1701603700
  %i.ahe = getelementptr i8, ptr %0, i64 3
  %i.ahf = load i32, ptr %i.ahe, align 1
  %i.ahg = xor i32 %i.ahf, 1734763365
  %i.ahh = or i32 %i.ahd, %i.ahg
  %i.ahi = icmp ne i32 %i.ahh, 0
  %i.ahj = zext i1 %i.ahi to i32
  %i.ahk = icmp eq i32 %i.ahj, 0
  br i1 %i.ahk, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.ay, %bb.dh, %bb.cz, %bb.cj, %bb.cb, %bb.a, %bb.di
  br label %bb.dk

bb.dk:                                            ; preds = %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.dj
  %.sroa.114.0 = phi i16 [ undef, %bb.dj ], [ 153, %bb.dh ], [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 8, %bb.j ], [ 9, %bb.k ], [ 10, %bb.l ], [ 11, %bb.m ], [ 12, %bb.n ], [ 13, %bb.o ], [ 14, %bb.p ], [ 15, %bb.q ], [ 16, %bb.r ], [ 17, %bb.s ], [ 18, %bb.t ], [ 19, %bb.u ], [ 20, %bb.v ], [ 21, %bb.w ], [ 22, %bb.x ], [ 23, %bb.y ], [ 24, %bb.z ], [ 25, %bb.aa ], [ 26, %bb.ab ], [ 27, %bb.ac ], [ 28, %bb.ad ], [ 29, %bb.ae ], [ 30, %bb.af ], [ 31, %bb.ag ], [ 32, %bb.ah ], [ 33, %bb.ai ], [ 34, %bb.aj ], [ 35, %bb.ak ], [ 36, %bb.al ], [ 37, %bb.am ], [ 38, %bb.an ], [ 39, %bb.ao ], [ 40, %bb.ap ], [ 41, %bb.aq ], [ 42, %bb.ar ], [ 43, %bb.as ], [ 44, %bb.at ], [ 45, %bb.au ], [ 46, %bb.av ], [ 47, %bb.aw ], [ 48, %bb.ax ], [ 49, %bb.ay ], [ 50, %bb.az ], [ 51, %bb.ba ], [ 52, %bb.bb ], [ 53, %bb.bc ], [ 54, %bb.bd ], [ 55, %bb.be ], [ 58, %bb.bf ], [ 59, %bb.bg ], [ 62, %bb.bh ], [ 63, %bb.bi ], [ 64, %bb.bj ], [ 65, %bb.bk ], [ 66, %bb.bl ], [ 67, %bb.bm ], [ 68, %bb.bn ], [ 69, %bb.bo ], [ 70, %bb.bp ], [ 71, %bb.bq ], [ 72, %bb.br ], [ 73, %bb.bs ], [ 74, %bb.bt ], [ 75, %bb.bu ], [ 76, %bb.bv ], [ 77, %bb.bw ], [ 78, %bb.bx ], [ 79, %bb.by ], [ 80, %bb.bz ], [ 81, %bb.ca ], [ 82, %bb.cb ], [ 118, %bb.cc ], [ 119, %bb.cd ], [ 120, %bb.ce ], [ 121, %bb.cf ], [ 122, %bb.cg ], [ 123, %bb.ch ], [ 124, %bb.ci ], [ 125, %bb.cj ], [ 130, %bb.ck ], [ 131, %bb.cl ], [ 132, %bb.cm ], [ 133, %bb.cn ], [ 134, %bb.co ], [ 135, %bb.cp ], [ 136, %bb.cq ], [ 137, %bb.cr ], [ 138, %bb.cs ], [ 139, %bb.ct ], [ 140, %bb.cu ], [ 141, %bb.cv ], [ 142, %bb.cw ], [ 143, %bb.cx ], [ 144, %bb.cy ], [ 145, %bb.cz ], [ 146, %bb.da ], [ 147, %bb.db ], [ 148, %bb.dc ], [ 149, %bb.dd ], [ 150, %bb.de ], [ 151, %bb.df ], [ 152, %bb.dg ], [ 154, %bb.di ]
  %.sroa.0.0 = phi i16 [ 0, %bb.dj ], [ 1, %bb.dh ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ 1, %bb.z ], [ 1, %bb.aa ], [ 1, %bb.ab ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ 1, %bb.ak ], [ 1, %bb.al ], [ 1, %bb.am ], [ 1, %bb.an ], [ 1, %bb.ao ], [ 1, %bb.ap ], [ 1, %bb.aq ], [ 1, %bb.ar ], [ 1, %bb.as ], [ 1, %bb.at ], [ 1, %bb.au ], [ 1, %bb.av ], [ 1, %bb.aw ], [ 1, %bb.ax ], [ 1, %bb.ay ], [ 1, %bb.az ], [ 1, %bb.ba ], [ 1, %bb.bb ], [ 1, %bb.bc ], [ 1, %bb.bd ], [ 1, %bb.be ], [ 1, %bb.bf ], [ 1, %bb.bg ], [ 1, %bb.bh ], [ 1, %bb.bi ], [ 1, %bb.bj ], [ 1, %bb.bk ], [ 1, %bb.bl ], [ 1, %bb.bm ], [ 1, %bb.bn ], [ 1, %bb.bo ], [ 1, %bb.bp ], [ 1, %bb.bq ], [ 1, %bb.br ], [ 1, %bb.bs ], [ 1, %bb.bt ], [ 1, %bb.bu ], [ 1, %bb.bv ], [ 1, %bb.bw ], [ 1, %bb.bx ], [ 1, %bb.by ], [ 1, %bb.bz ], [ 1, %bb.ca ], [ 1, %bb.cb ], [ 1, %bb.cc ], [ 1, %bb.cd ], [ 1, %bb.ce ], [ 1, %bb.cf ], [ 1, %bb.cg ], [ 1, %bb.ch ], [ 1, %bb.ci ], [ 1, %bb.cj ], [ 1, %bb.ck ], [ 1, %bb.cl ], [ 1, %bb.cm ], [ 1, %bb.cn ], [ 1, %bb.co ], [ 1, %bb.cp ], [ 1, %bb.cq ], [ 1, %bb.cr ], [ 1, %bb.cs ], [ 1, %bb.ct ], [ 1, %bb.cu ], [ 1, %bb.cv ], [ 1, %bb.cw ], [ 1, %bb.cx ], [ 1, %bb.cy ], [ 1, %bb.cz ], [ 1, %bb.da ], [ 1, %bb.db ], [ 1, %bb.dc ], [ 1, %bb.dd ], [ 1, %bb.de ], [ 1, %bb.df ], [ 1, %bb.dg ], [ 1, %bb.di ]
  %i.ahl = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.ahm = insertvalue { i16, i16 } %i.ahl, i16 %.sroa.114.0, 1
  ret { i16, i16 } %i.ahm
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvMsJ_NtCsi68uqYEhoRA_5gimli4archNtB5_9PowerPc6413register_name(i16 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i16 %0, 117
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i16 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMsJ_NtCsi68uqYEhoRA_5gimli4archNtB5_9PowerPc6413register_name, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i16 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMsJ_NtCsi68uqYEhoRA_5gimli4archNtB5_9PowerPc6413register_name.4, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.113.0 = phi i64 [ undef, %bb.a ], [ %switch.ext, %switch.lookup ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %switch.load2, %switch.lookup ]
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.sroa.113.0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i16, i16 } @_RNvMsJ_NtCsi68uqYEhoRA_5gimli4archNtB5_9PowerPc6416name_to_register(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  switch i64 %1, label %bb.di [
    i64 2, label %bb.b
    i64 3, label %bb.l
    i64 4, label %bb.ci
    i64 5, label %bb.df
    i64 6, label %bb.dh
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 1
  %i.b = icmp ne i16 %i.a, 12402
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.dj, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i16, ptr %0, align 1
  %i.f = icmp ne i16 %i.e, 12658
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.dj, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i16, ptr %0, align 1
  %i.j = icmp ne i16 %i.i, 12914
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.dj, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i16, ptr %0, align 1
  %i.n = icmp ne i16 %i.m, 13170
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.dj, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i16, ptr %0, align 1
  %i.r = icmp ne i16 %i.q, 13426
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.dj, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i16, ptr %0, align 1
  %i.v = icmp ne i16 %i.u, 13682
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.dj, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load i16, ptr %0, align 1
  %i.z = icmp ne i16 %i.y, 13938
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.dj, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i16, ptr %0, align 1
  %i.ad = icmp ne i16 %i.ac, 14194
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.dj, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load i16, ptr %0, align 1
  %i.ah = icmp ne i16 %i.ag, 14450
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.dj, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load i16, ptr %0, align 1
  %i.al = icmp ne i16 %i.ak, 14706
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.dj, label %bb.ah

bb.l:                                             ; preds = %bb.a
  %i.ao = load i16, ptr %0, align 1
  %i.ap = xor i16 %i.ao, 12658
  %i.aq = getelementptr i8, ptr %0, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i16
  %i.at = xor i16 %i.as, 48
  %i.au = or i16 %i.ap, %i.at
  %i.av = icmp ne i16 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.dj, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load i16, ptr %0, align 1
  %i.az = xor i16 %i.ay, 12658
  %i.ba = getelementptr i8, ptr %0, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i16
  %i.bd = xor i16 %i.bc, 49
  %i.be = or i16 %i.az, %i.bd
  %i.bf = icmp ne i16 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.dj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = load i16, ptr %0, align 1
  %i.bj = xor i16 %i.bi, 12658
  %i.bk = getelementptr i8, ptr %0, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i16
  %i.bn = xor i16 %i.bm, 50
  %i.bo = or i16 %i.bj, %i.bn
  %i.bp = icmp ne i16 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.dj, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = load i16, ptr %0, align 1
  %i.bt = xor i16 %i.bs, 12658
  %i.bu = getelementptr i8, ptr %0, i64 2
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i16
  %i.bx = xor i16 %i.bw, 51
  %i.by = or i16 %i.bt, %i.bx
  %i.bz = icmp ne i16 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.dj, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load i16, ptr %0, align 1
  %i.cd = xor i16 %i.cc, 12658
  %i.ce = getelementptr i8, ptr %0, i64 2
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i16
  %i.ch = xor i16 %i.cg, 52
  %i.ci = or i16 %i.cd, %i.ch
  %i.cj = icmp ne i16 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.dj, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = load i16, ptr %0, align 1
  %i.cn = xor i16 %i.cm, 12658
  %i.co = getelementptr i8, ptr %0, i64 2
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i16
  %i.cr = xor i16 %i.cq, 53
  %i.cs = or i16 %i.cn, %i.cr
  %i.ct = icmp ne i16 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.dj, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = load i16, ptr %0, align 1
  %i.cx = xor i16 %i.cw, 12658
  %i.cy = getelementptr i8, ptr %0, i64 2
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i16
  %i.db = xor i16 %i.da, 54
  %i.dc = or i16 %i.cx, %i.db
  %i.dd = icmp ne i16 %i.dc, 0
  %i.de = zext i1 %i.dd to i32
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.dj, label %bb.s
end_hunk_2
begin_hunk_3_@_RNvMsJ_NtCsi68uqYEhoRA_5gimli4archNtB5_9PowerPc6416name_to_register:bb.a
  %i.aaz = icmp eq i32 %i.aay, 0
  br i1 %i.aaz, label %bb.dj, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.aba = load i32, ptr %0, align 1
  %i.abb = icmp ne i32 %i.aba, 825324150
  %i.abc = zext i1 %i.abb to i32
  %i.abd = icmp eq i32 %i.abc, 0
  br i1 %i.abd, label %bb.dj, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.abe = load i32, ptr %0, align 1
  %i.abf = icmp ne i32 %i.abe, 842101366
  %i.abg = zext i1 %i.abf to i32
  %i.abh = icmp eq i32 %i.abg, 0
  br i1 %i.abh, label %bb.dj, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.abi = load i32, ptr %0, align 1
  %i.abj = icmp ne i32 %i.abi, 858878582
  %i.abk = zext i1 %i.abj to i32
  %i.abl = icmp eq i32 %i.abk, 0
  br i1 %i.abl, label %bb.dj, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.abm = load i32, ptr %0, align 1
  %i.abn = icmp ne i32 %i.abm, 875655798
  %i.abo = zext i1 %i.abn to i32
  %i.abp = icmp eq i32 %i.abo, 0
  br i1 %i.abp, label %bb.dj, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.abq = load i32, ptr %0, align 1
  %i.abr = icmp ne i32 %i.abq, 892433014
  %i.abs = zext i1 %i.abr to i32
  %i.abt = icmp eq i32 %i.abs, 0
  br i1 %i.abt, label %bb.dj, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.abu = load i32, ptr %0, align 1
  %i.abv = icmp ne i32 %i.abu, 909210230
  %i.abw = zext i1 %i.abv to i32
  %i.abx = icmp eq i32 %i.abw, 0
  br i1 %i.abx, label %bb.dj, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aby = load i32, ptr %0, align 1
  %i.abz = icmp ne i32 %i.aby, 925987446
  %i.aca = zext i1 %i.abz to i32
  %i.acb = icmp eq i32 %i.aca, 0
  br i1 %i.acb, label %bb.dj, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.acc = load i32, ptr %0, align 1
  %i.acd = icmp ne i32 %i.acc, 942764662
  %i.ace = zext i1 %i.acd to i32
  %i.acf = icmp eq i32 %i.ace, 0
  br i1 %i.acf, label %bb.dj, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.acg = load i32, ptr %0, align 1
  %i.ach = icmp ne i32 %i.acg, 959541878
  %i.aci = zext i1 %i.ach to i32
  %i.acj = icmp eq i32 %i.aci, 0
  br i1 %i.acj, label %bb.dj, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ack = load i32, ptr %0, align 1
  %i.acl = icmp ne i32 %i.ack, 808612470
  %i.acm = zext i1 %i.acl to i32
  %i.acn = icmp eq i32 %i.acm, 0
  br i1 %i.acn, label %bb.dj, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.aco = load i32, ptr %0, align 1
  %i.acp = icmp ne i32 %i.aco, 825389686
  %i.acq = zext i1 %i.acp to i32
  %i.acr = icmp eq i32 %i.acq, 0
  br i1 %i.acr, label %bb.dj, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.acs = load i32, ptr %0, align 1
  %i.act = icmp ne i32 %i.acs, 842166902
  %i.acu = zext i1 %i.act to i32
  %i.acv = icmp eq i32 %i.acu, 0
  br i1 %i.acv, label %bb.dj, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.acw = load i32, ptr %0, align 1
  %i.acx = icmp ne i32 %i.acw, 858944118
  %i.acy = zext i1 %i.acx to i32
  %i.acz = icmp eq i32 %i.acy, 0
  br i1 %i.acz, label %bb.dj, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ada = load i32, ptr %0, align 1
  %i.adb = icmp ne i32 %i.ada, 875721334
  %i.adc = zext i1 %i.adb to i32
  %i.add = icmp eq i32 %i.adc, 0
  br i1 %i.add, label %bb.dj, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ade = load i32, ptr %0, align 1
  %i.adf = icmp ne i32 %i.ade, 892498550
  %i.adg = zext i1 %i.adf to i32
  %i.adh = icmp eq i32 %i.adg, 0
  br i1 %i.adh, label %bb.dj, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.adi = load i32, ptr %0, align 1
  %i.adj = icmp ne i32 %i.adi, 909275766
  %i.adk = zext i1 %i.adj to i32
  %i.adl = icmp eq i32 %i.adk, 0
  br i1 %i.adl, label %bb.dj, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.adm = load i32, ptr %0, align 1
  %i.adn = icmp ne i32 %i.adm, 926052982
  %i.ado = zext i1 %i.adn to i32
  %i.adp = icmp eq i32 %i.ado, 0
  br i1 %i.adp, label %bb.dj, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.adq = load i32, ptr %0, align 1
  %i.adr = icmp ne i32 %i.adq, 942830198
  %i.ads = zext i1 %i.adr to i32
  %i.adt = icmp eq i32 %i.ads, 0
  br i1 %i.adt, label %bb.dj, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.adu = load i32, ptr %0, align 1
  %i.adv = icmp ne i32 %i.adu, 959607414
  %i.adw = zext i1 %i.adv to i32
  %i.adx = icmp eq i32 %i.adw, 0
  br i1 %i.adx, label %bb.dj, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ady = load i32, ptr %0, align 1
  %i.adz = icmp ne i32 %i.ady, 808678006
  %i.aea = zext i1 %i.adz to i32
  %i.aeb = icmp eq i32 %i.aea, 0
  br i1 %i.aeb, label %bb.dj, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.aec = load i32, ptr %0, align 1
  %i.aed = icmp ne i32 %i.aec, 825455222
  %i.aee = zext i1 %i.aed to i32
  %i.aef = icmp eq i32 %i.aee, 0
  br i1 %i.aef, label %bb.dj, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.aeg = load i32, ptr %0, align 1
  %i.aeh = icmp ne i32 %i.aeg, 1919120246
  %i.aei = zext i1 %i.aeh to i32
  %i.aej = icmp eq i32 %i.aei, 0
  br i1 %i.aej, label %bb.dj, label %bb.di

bb.df:                                            ; preds = %bb.a
  %i.aek = load i32, ptr %0, align 1
  %i.ael = xor i32 %i.aek, 1634231924
  %i.aem = getelementptr i8, ptr %0, i64 4
  %i.aen = load i8, ptr %i.aem, align 1
  %i.aeo = zext i8 %i.aen to i32
  %i.aep = xor i32 %i.aeo, 114
  %i.aeq = or i32 %i.ael, %i.aep
  %i.aer = icmp ne i32 %i.aeq, 0
  %i.aes = zext i1 %i.aer to i32
  %i.aet = icmp eq i32 %i.aes, 0
  br i1 %i.aet, label %bb.dj, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.aeu = load i32, ptr %0, align 1
  %i.aev = xor i32 %i.aeu, 1634297460
  %i.aew = getelementptr i8, ptr %0, i64 4
  %i.aex = load i8, ptr %i.aew, align 1
  %i.aey = zext i8 %i.aex to i32
  %i.aez = xor i32 %i.aey, 114
  %i.afa = or i32 %i.aev, %i.aez
  %i.afb = icmp ne i32 %i.afa, 0
  %i.afc = zext i1 %i.afb to i32
  %i.afd = icmp eq i32 %i.afc, 0
  br i1 %i.afd, label %bb.dj, label %bb.di

bb.dh:                                            ; preds = %bb.a
  %i.afe = load i32, ptr %0, align 1
  %i.aff = xor i32 %i.afe, 1635280244
  %i.afg = getelementptr i8, ptr %0, i64 4
  %i.afh = load i16, ptr %i.afg, align 1
  %i.afi = zext i16 %i.afh to i32
  %i.afj = xor i32 %i.afi, 29299
  %i.afk = or i32 %i.aff, %i.afj
  %i.afl = icmp ne i32 %i.afk, 0
  %i.afm = zext i1 %i.afl to i32
  %i.afn = icmp eq i32 %i.afm, 0
  br i1 %i.afn, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.bn, %bb.dg, %bb.de, %bb.ch, %bb.a, %bb.dh
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.di
  %.sroa.113.0 = phi i16 [ undef, %bb.di ], [ 115, %bb.dg ], [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 8, %bb.j ], [ 9, %bb.k ], [ 10, %bb.l ], [ 11, %bb.m ], [ 12, %bb.n ], [ 13, %bb.o ], [ 14, %bb.p ], [ 15, %bb.q ], [ 16, %bb.r ], [ 17, %bb.s ], [ 18, %bb.t ], [ 19, %bb.u ], [ 20, %bb.v ], [ 21, %bb.w ], [ 22, %bb.x ], [ 23, %bb.y ], [ 24, %bb.z ], [ 25, %bb.aa ], [ 26, %bb.ab ], [ 27, %bb.ac ], [ 28, %bb.ad ], [ 29, %bb.ae ], [ 30, %bb.af ], [ 31, %bb.ag ], [ 32, %bb.ah ], [ 33, %bb.ai ], [ 34, %bb.aj ], [ 35, %bb.ak ], [ 36, %bb.al ], [ 37, %bb.am ], [ 38, %bb.an ], [ 39, %bb.ao ], [ 40, %bb.ap ], [ 41, %bb.aq ], [ 42, %bb.ar ], [ 43, %bb.as ], [ 44, %bb.at ], [ 45, %bb.au ], [ 46, %bb.av ], [ 47, %bb.aw ], [ 48, %bb.ax ], [ 49, %bb.ay ], [ 50, %bb.az ], [ 51, %bb.ba ], [ 52, %bb.bb ], [ 53, %bb.bc ], [ 54, %bb.bd ], [ 55, %bb.be ], [ 56, %bb.bf ], [ 57, %bb.bg ], [ 58, %bb.bh ], [ 59, %bb.bi ], [ 60, %bb.bj ], [ 61, %bb.bk ], [ 62, %bb.bl ], [ 63, %bb.bm ], [ 65, %bb.bn ], [ 66, %bb.bo ], [ 68, %bb.bp ], [ 69, %bb.bq ], [ 70, %bb.br ], [ 71, %bb.bs ], [ 72, %bb.bt ], [ 73, %bb.bu ], [ 74, %bb.bv ], [ 75, %bb.bw ], [ 76, %bb.bx ], [ 77, %bb.by ], [ 78, %bb.bz ], [ 79, %bb.ca ], [ 80, %bb.cb ], [ 81, %bb.cc ], [ 82, %bb.cd ], [ 83, %bb.ce ], [ 84, %bb.cf ], [ 85, %bb.cg ], [ 86, %bb.ch ], [ 87, %bb.ci ], [ 88, %bb.cj ], [ 89, %bb.ck ], [ 90, %bb.cl ], [ 91, %bb.cm ], [ 92, %bb.cn ], [ 93, %bb.co ], [ 94, %bb.cp ], [ 95, %bb.cq ], [ 96, %bb.cr ], [ 97, %bb.cs ], [ 98, %bb.ct ], [ 99, %bb.cu ], [ 100, %bb.cv ], [ 101, %bb.cw ], [ 102, %bb.cx ], [ 103, %bb.cy ], [ 104, %bb.cz ], [ 105, %bb.da ], [ 106, %bb.db ], [ 107, %bb.dc ], [ 108, %bb.dd ], [ 110, %bb.de ], [ 114, %bb.df ], [ 116, %bb.dh ]
  %.sroa.0.0 = phi i16 [ 0, %bb.di ], [ 1, %bb.dg ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ 1, %bb.z ], [ 1, %bb.aa ], [ 1, %bb.ab ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ 1, %bb.ak ], [ 1, %bb.al ], [ 1, %bb.am ], [ 1, %bb.an ], [ 1, %bb.ao ], [ 1, %bb.ap ], [ 1, %bb.aq ], [ 1, %bb.ar ], [ 1, %bb.as ], [ 1, %bb.at ], [ 1, %bb.au ], [ 1, %bb.av ], [ 1, %bb.aw ], [ 1, %bb.ax ], [ 1, %bb.ay ], [ 1, %bb.az ], [ 1, %bb.ba ], [ 1, %bb.bb ], [ 1, %bb.bc ], [ 1, %bb.bd ], [ 1, %bb.be ], [ 1, %bb.bf ], [ 1, %bb.bg ], [ 1, %bb.bh ], [ 1, %bb.bi ], [ 1, %bb.bj ], [ 1, %bb.bk ], [ 1, %bb.bl ], [ 1, %bb.bm ], [ 1, %bb.bn ], [ 1, %bb.bo ], [ 1, %bb.bp ], [ 1, %bb.bq ], [ 1, %bb.br ], [ 1, %bb.bs ], [ 1, %bb.bt ], [ 1, %bb.bu ], [ 1, %bb.bv ], [ 1, %bb.bw ], [ 1, %bb.bx ], [ 1, %bb.by ], [ 1, %bb.bz ], [ 1, %bb.ca ], [ 1, %bb.cb ], [ 1, %bb.cc ], [ 1, %bb.cd ], [ 1, %bb.ce ], [ 1, %bb.cf ], [ 1, %bb.cg ], [ 1, %bb.ch ], [ 1, %bb.ci ], [ 1, %bb.cj ], [ 1, %bb.ck ], [ 1, %bb.cl ], [ 1, %bb.cm ], [ 1, %bb.cn ], [ 1, %bb.co ], [ 1, %bb.cp ], [ 1, %bb.cq ], [ 1, %bb.cr ], [ 1, %bb.cs ], [ 1, %bb.ct ], [ 1, %bb.cu ], [ 1, %bb.cv ], [ 1, %bb.cw ], [ 1, %bb.cx ], [ 1, %bb.cy ], [ 1, %bb.cz ], [ 1, %bb.da ], [ 1, %bb.db ], [ 1, %bb.dc ], [ 1, %bb.dd ], [ 1, %bb.de ], [ 1, %bb.df ], [ 1, %bb.dh ]
  %i.afo = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.afp = insertvalue { i16, i16 } %i.afo, i16 %.sroa.113.0, 1
  ret { i16, i16 } %i.afp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvMsf_NtCsi68uqYEhoRA_5gimli4archNtB5_9LoongArch13register_name(i16 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i16 %0, 72
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i16 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMsf_NtCsi68uqYEhoRA_5gimli4archNtB5_9LoongArch13register_name, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i16 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMsf_NtCsi68uqYEhoRA_5gimli4archNtB5_9LoongArch13register_name.5, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.74.0 = phi i64 [ undef, %bb.a ], [ %switch.ext, %switch.lookup ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %switch.load2, %switch.lookup ]
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.sroa.74.0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i16, i16 } @_RNvMsf_NtCsi68uqYEhoRA_5gimli4archNtB5_9LoongArch16name_to_register(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  switch i64 %1, label %bb.eg [
    i64 3, label %bb.b
    i64 4, label %bb.l
    i64 5, label %bb.bn
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 1
  %i.b = xor i16 %i.a, 29220
  %i.c = getelementptr i8, ptr %0, i64 2
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i16
  %i.f = xor i16 %i.e, 48
  %i.g = or i16 %i.b, %i.f
  %i.h = icmp ne i16 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.eh, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i16, ptr %0, align 1
  %i.l = xor i16 %i.k, 29220
  %i.m = getelementptr i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i16
  %i.p = xor i16 %i.o, 49
  %i.q = or i16 %i.l, %i.p
  %i.r = icmp ne i16 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.eh, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i16, ptr %0, align 1
  %i.v = xor i16 %i.u, 29220
  %i.w = getelementptr i8, ptr %0, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i16
  %i.z = xor i16 %i.y, 50
  %i.aa = or i16 %i.v, %i.z
  %i.ab = icmp ne i16 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.eh, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load i16, ptr %0, align 1
  %i.af = xor i16 %i.ae, 29220
  %i.ag = getelementptr i8, ptr %0, i64 2
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i16
  %i.aj = xor i16 %i.ai, 51
  %i.ak = or i16 %i.af, %i.aj
  %i.al = icmp ne i16 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.eh, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load i16, ptr %0, align 1
  %i.ap = xor i16 %i.ao, 29220
  %i.aq = getelementptr i8, ptr %0, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i16
  %i.at = xor i16 %i.as, 52
  %i.au = or i16 %i.ap, %i.at
  %i.av = icmp ne i16 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.eh, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load i16, ptr %0, align 1
  %i.az = xor i16 %i.ay, 29220
  %i.ba = getelementptr i8, ptr %0, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i16
  %i.bd = xor i16 %i.bc, 53
  %i.be = or i16 %i.az, %i.bd
  %i.bf = icmp ne i16 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.eh, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = load i16, ptr %0, align 1
  %i.bj = xor i16 %i.bi, 29220
  %i.bk = getelementptr i8, ptr %0, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i16
  %i.bn = xor i16 %i.bm, 54
  %i.bo = or i16 %i.bj, %i.bn
  %i.bp = icmp ne i16 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.eh, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load i16, ptr %0, align 1
  %i.bt = xor i16 %i.bs, 29220
  %i.bu = getelementptr i8, ptr %0, i64 2
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i16
  %i.bx = xor i16 %i.bw, 55
  %i.by = or i16 %i.bt, %i.bx
  %i.bz = icmp ne i16 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.eh, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = load i16, ptr %0, align 1
  %i.cd = xor i16 %i.cc, 29220
  %i.ce = getelementptr i8, ptr %0, i64 2
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i16
  %i.ch = xor i16 %i.cg, 56
  %i.ci = or i16 %i.cd, %i.ch
  %i.cj = icmp ne i16 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.eh, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cm = load i16, ptr %0, align 1
  %i.cn = xor i16 %i.cm, 29220
  %i.co = getelementptr i8, ptr %0, i64 2
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i16
  %i.cr = xor i16 %i.cq, 57
  %i.cs = or i16 %i.cn, %i.cr
  %i.ct = icmp ne i16 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.eh, label %bb.ah

bb.l:                                             ; preds = %bb.a
  %i.cw = load i32, ptr %0, align 1
  %i.cx = icmp ne i32 %i.cw, 808546852
  %i.cy = zext i1 %i.cx to i32
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.eh, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = load i32, ptr %0, align 1
  %i.db = icmp ne i32 %i.da, 825324068
  %i.dc = zext i1 %i.db to i32
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.eh, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = load i32, ptr %0, align 1
  %i.df = icmp ne i32 %i.de, 842101284
  %i.dg = zext i1 %i.df to i32
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.eh, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.di = load i32, ptr %0, align 1
  %i.dj = icmp ne i32 %i.di, 858878500
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.eh, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dm = load i32, ptr %0, align 1
  %i.dn = icmp ne i32 %i.dm, 875655716
  %i.do = zext i1 %i.dn to i32
end_hunk_3
begin_hunk_4_@_RNvMsf_NtCsi68uqYEhoRA_5gimli4archNtB5_9LoongArch16name_to_register:bb.a
  %i.adv = icmp eq i32 %i.adu, 0
  br i1 %i.adv, label %bb.eh, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.adw = load i32, ptr %0, align 1
  %i.adx = icmp ne i32 %i.adw, 829711908
  %i.ady = zext i1 %i.adx to i32
  %i.adz = icmp eq i32 %i.ady, 0
  br i1 %i.adz, label %bb.eh, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.aea = load i32, ptr %0, align 1
  %i.aeb = icmp ne i32 %i.aea, 846489124
  %i.aec = zext i1 %i.aeb to i32
  %i.aed = icmp eq i32 %i.aec, 0
  br i1 %i.aed, label %bb.eh, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.aee = load i32, ptr %0, align 1
  %i.aef = icmp ne i32 %i.aee, 863266340
  %i.aeg = zext i1 %i.aef to i32
  %i.aeh = icmp eq i32 %i.aeg, 0
  br i1 %i.aeh, label %bb.eh, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.aei = load i32, ptr %0, align 1
  %i.aej = icmp ne i32 %i.aei, 880043556
  %i.aek = zext i1 %i.aej to i32
  %i.ael = icmp eq i32 %i.aek, 0
  br i1 %i.ael, label %bb.eh, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.aem = load i32, ptr %0, align 1
  %i.aen = icmp ne i32 %i.aem, 896820772
  %i.aeo = zext i1 %i.aen to i32
  %i.aep = icmp eq i32 %i.aeo, 0
  br i1 %i.aep, label %bb.eh, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aeq = load i32, ptr %0, align 1
  %i.aer = icmp ne i32 %i.aeq, 913597988
  %i.aes = zext i1 %i.aer to i32
  %i.aet = icmp eq i32 %i.aes, 0
  br i1 %i.aet, label %bb.eh, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.aeu = load i32, ptr %0, align 1
  %i.aev = icmp ne i32 %i.aeu, 930375204
  %i.aew = zext i1 %i.aev to i32
  %i.aex = icmp eq i32 %i.aew, 0
  br i1 %i.aex, label %bb.eh, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aey = load i32, ptr %0, align 1
  %i.aez = icmp ne i32 %i.aey, 947152420
  %i.afa = zext i1 %i.aez to i32
  %i.afb = icmp eq i32 %i.afa, 0
  br i1 %i.afb, label %bb.eh, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.afc = load i32, ptr %0, align 1
  %i.afd = icmp ne i32 %i.afc, 963929636
  %i.afe = zext i1 %i.afd to i32
  %i.aff = icmp eq i32 %i.afe, 0
  br i1 %i.aff, label %bb.eh, label %bb.dy

bb.ds:                                            ; preds = %bb.bv
  %i.afg = load i32, ptr %0, align 1
  %i.afh = xor i32 %i.afg, 829711908
  %i.afi = getelementptr i8, ptr %0, i64 4
  %i.afj = load i8, ptr %i.afi, align 1
  %i.afk = zext i8 %i.afj to i32
  %i.afl = xor i32 %i.afk, 48
  %i.afm = or i32 %i.afh, %i.afl
  %i.afn = icmp ne i32 %i.afm, 0
  %i.afo = zext i1 %i.afn to i32
  %i.afp = icmp eq i32 %i.afo, 0
  br i1 %i.afp, label %bb.eh, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.afq = load i32, ptr %0, align 1
  %i.afr = xor i32 %i.afq, 829711908
  %i.afs = getelementptr i8, ptr %0, i64 4
  %i.aft = load i8, ptr %i.afs, align 1
  %i.afu = zext i8 %i.aft to i32
  %i.afv = xor i32 %i.afu, 49
  %i.afw = or i32 %i.afr, %i.afv
  %i.afx = icmp ne i32 %i.afw, 0
  %i.afy = zext i1 %i.afx to i32
  %i.afz = icmp eq i32 %i.afy, 0
  br i1 %i.afz, label %bb.eh, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.aga = load i32, ptr %0, align 1
  %i.agb = xor i32 %i.aga, 829711908
  %i.agc = getelementptr i8, ptr %0, i64 4
  %i.agd = load i8, ptr %i.agc, align 1
  %i.age = zext i8 %i.agd to i32
  %i.agf = xor i32 %i.age, 50
  %i.agg = or i32 %i.agb, %i.agf
  %i.agh = icmp ne i32 %i.agg, 0
  %i.agi = zext i1 %i.agh to i32
  %i.agj = icmp eq i32 %i.agi, 0
  br i1 %i.agj, label %bb.eh, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.agk = load i32, ptr %0, align 1
  %i.agl = xor i32 %i.agk, 829711908
  %i.agm = getelementptr i8, ptr %0, i64 4
  %i.agn = load i8, ptr %i.agm, align 1
  %i.ago = zext i8 %i.agn to i32
  %i.agp = xor i32 %i.ago, 51
  %i.agq = or i32 %i.agl, %i.agp
  %i.agr = icmp ne i32 %i.agq, 0
  %i.ags = zext i1 %i.agr to i32
  %i.agt = icmp eq i32 %i.ags, 0
  br i1 %i.agt, label %bb.eh, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.agu = load i32, ptr %0, align 1
  %i.agv = xor i32 %i.agu, 829711908
  %i.agw = getelementptr i8, ptr %0, i64 4
  %i.agx = load i8, ptr %i.agw, align 1
  %i.agy = zext i8 %i.agx to i32
  %i.agz = xor i32 %i.agy, 52
  %i.aha = or i32 %i.agv, %i.agz
  %i.ahb = icmp ne i32 %i.aha, 0
  %i.ahc = zext i1 %i.ahb to i32
  %i.ahd = icmp eq i32 %i.ahc, 0
  br i1 %i.ahd, label %bb.eh, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ahe = load i32, ptr %0, align 1
  %i.ahf = xor i32 %i.ahe, 829711908
  %i.ahg = getelementptr i8, ptr %0, i64 4
  %i.ahh = load i8, ptr %i.ahg, align 1
  %i.ahi = zext i8 %i.ahh to i32
  %i.ahj = xor i32 %i.ahi, 53
  %i.ahk = or i32 %i.ahf, %i.ahj
  %i.ahl = icmp ne i32 %i.ahk, 0
  %i.ahm = zext i1 %i.ahl to i32
  %i.ahn = icmp eq i32 %i.ahm, 0
  br i1 %i.ahn, label %bb.eh, label %bb.eg

bb.dy:                                            ; preds = %bb.dr
  %i.aho = load i32, ptr %0, align 1
  %i.ahp = icmp ne i32 %i.aho, 812869156
  %i.ahq = zext i1 %i.ahp to i32
  %i.ahr = icmp eq i32 %i.ahq, 0
  br i1 %i.ahr, label %bb.eh, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ahs = load i32, ptr %0, align 1
  %i.aht = icmp ne i32 %i.ahs, 829646372
  %i.ahu = zext i1 %i.aht to i32
  %i.ahv = icmp eq i32 %i.ahu, 0
  br i1 %i.ahv, label %bb.eh, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ahw = load i32, ptr %0, align 1
  %i.ahx = icmp ne i32 %i.ahw, 846423588
  %i.ahy = zext i1 %i.ahx to i32
  %i.ahz = icmp eq i32 %i.ahy, 0
  br i1 %i.ahz, label %bb.eh, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.aia = load i32, ptr %0, align 1
  %i.aib = icmp ne i32 %i.aia, 863200804
  %i.aic = zext i1 %i.aib to i32
  %i.aid = icmp eq i32 %i.aic, 0
  br i1 %i.aid, label %bb.eh, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aie = load i32, ptr %0, align 1
  %i.aif = icmp ne i32 %i.aie, 879978020
  %i.aig = zext i1 %i.aif to i32
  %i.aih = icmp eq i32 %i.aig, 0
  br i1 %i.aih, label %bb.eh, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.aii = load i32, ptr %0, align 1
  %i.aij = icmp ne i32 %i.aii, 896755236
  %i.aik = zext i1 %i.aij to i32
  %i.ail = icmp eq i32 %i.aik, 0
  br i1 %i.ail, label %bb.eh, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.aim = load i32, ptr %0, align 1
  %i.ain = icmp ne i32 %i.aim, 913532452
  %i.aio = zext i1 %i.ain to i32
  %i.aip = icmp eq i32 %i.aio, 0
  br i1 %i.aip, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.aiq = load i32, ptr %0, align 1
  %i.air = icmp ne i32 %i.aiq, 930309668
  %i.ais = zext i1 %i.air to i32
  %i.ait = icmp eq i32 %i.ais, 0
  br i1 %i.ait, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.dx, %bb.cz, %bb.a, %bb.ef
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.eg
  %.sroa.137.0 = phi i16 [ undef, %bb.eg ], [ 62, %bb.ee ], [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 8, %bb.j ], [ 9, %bb.k ], [ 10, %bb.l ], [ 11, %bb.m ], [ 12, %bb.n ], [ 13, %bb.o ], [ 14, %bb.p ], [ 15, %bb.q ], [ 16, %bb.r ], [ 17, %bb.s ], [ 18, %bb.t ], [ 19, %bb.u ], [ 20, %bb.v ], [ 21, %bb.w ], [ 22, %bb.x ], [ 23, %bb.y ], [ 24, %bb.z ], [ 25, %bb.aa ], [ 26, %bb.ab ], [ 27, %bb.ac ], [ 28, %bb.ad ], [ 29, %bb.ae ], [ 30, %bb.af ], [ 31, %bb.ag ], [ 32, %bb.ah ], [ 33, %bb.ai ], [ 34, %bb.aj ], [ 35, %bb.ak ], [ 36, %bb.al ], [ 37, %bb.am ], [ 38, %bb.an ], [ 39, %bb.ao ], [ 40, %bb.ap ], [ 41, %bb.aq ], [ 42, %bb.ar ], [ 43, %bb.as ], [ 44, %bb.at ], [ 45, %bb.au ], [ 46, %bb.av ], [ 47, %bb.aw ], [ 48, %bb.ax ], [ 49, %bb.ay ], [ 50, %bb.az ], [ 51, %bb.ba ], [ 52, %bb.bb ], [ 53, %bb.bc ], [ 54, %bb.bd ], [ 55, %bb.be ], [ 56, %bb.bf ], [ 57, %bb.bg ], [ 58, %bb.bh ], [ 59, %bb.bi ], [ 60, %bb.bj ], [ 61, %bb.bk ], [ 62, %bb.bl ], [ 63, %bb.bm ], [ 64, %bb.bn ], [ 65, %bb.bo ], [ 66, %bb.bp ], [ 67, %bb.bq ], [ 68, %bb.br ], [ 69, %bb.bs ], [ 70, %bb.bt ], [ 71, %bb.bu ], [ 0, %bb.bv ], [ 1, %bb.bw ], [ 2, %bb.bx ], [ 3, %bb.by ], [ 4, %bb.bz ], [ 5, %bb.ca ], [ 6, %bb.cb ], [ 7, %bb.cc ], [ 8, %bb.cd ], [ 9, %bb.ce ], [ 10, %bb.cf ], [ 11, %bb.cg ], [ 12, %bb.ch ], [ 13, %bb.ci ], [ 14, %bb.cj ], [ 15, %bb.ck ], [ 16, %bb.cl ], [ 17, %bb.cm ], [ 18, %bb.cn ], [ 19, %bb.co ], [ 20, %bb.cp ], [ 22, %bb.cq ], [ 23, %bb.cr ], [ 24, %bb.cs ], [ 25, %bb.ct ], [ 26, %bb.cu ], [ 27, %bb.cv ], [ 28, %bb.cw ], [ 29, %bb.cx ], [ 30, %bb.cy ], [ 31, %bb.cz ], [ 32, %bb.da ], [ 33, %bb.db ], [ 34, %bb.dc ], [ 35, %bb.dd ], [ 36, %bb.de ], [ 37, %bb.df ], [ 38, %bb.dg ], [ 39, %bb.dh ], [ 40, %bb.di ], [ 41, %bb.dj ], [ 42, %bb.dk ], [ 43, %bb.dl ], [ 44, %bb.dm ], [ 45, %bb.dn ], [ 46, %bb.do ], [ 47, %bb.dp ], [ 48, %bb.dq ], [ 49, %bb.dr ], [ 50, %bb.ds ], [ 51, %bb.dt ], [ 52, %bb.du ], [ 53, %bb.dv ], [ 54, %bb.dw ], [ 55, %bb.dx ], [ 56, %bb.dy ], [ 57, %bb.dz ], [ 58, %bb.ea ], [ 59, %bb.eb ], [ 60, %bb.ec ], [ 61, %bb.ed ], [ 63, %bb.ef ]
  %.sroa.0.0 = phi i16 [ 0, %bb.eg ], [ 1, %bb.ee ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ 1, %bb.z ], [ 1, %bb.aa ], [ 1, %bb.ab ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ 1, %bb.ak ], [ 1, %bb.al ], [ 1, %bb.am ], [ 1, %bb.an ], [ 1, %bb.ao ], [ 1, %bb.ap ], [ 1, %bb.aq ], [ 1, %bb.ar ], [ 1, %bb.as ], [ 1, %bb.at ], [ 1, %bb.au ], [ 1, %bb.av ], [ 1, %bb.aw ], [ 1, %bb.ax ], [ 1, %bb.ay ], [ 1, %bb.az ], [ 1, %bb.ba ], [ 1, %bb.bb ], [ 1, %bb.bc ], [ 1, %bb.bd ], [ 1, %bb.be ], [ 1, %bb.bf ], [ 1, %bb.bg ], [ 1, %bb.bh ], [ 1, %bb.bi ], [ 1, %bb.bj ], [ 1, %bb.bk ], [ 1, %bb.bl ], [ 1, %bb.bm ], [ 1, %bb.bn ], [ 1, %bb.bo ], [ 1, %bb.bp ], [ 1, %bb.bq ], [ 1, %bb.br ], [ 1, %bb.bs ], [ 1, %bb.bt ], [ 1, %bb.bu ], [ 1, %bb.bv ], [ 1, %bb.bw ], [ 1, %bb.bx ], [ 1, %bb.by ], [ 1, %bb.bz ], [ 1, %bb.ca ], [ 1, %bb.cb ], [ 1, %bb.cc ], [ 1, %bb.cd ], [ 1, %bb.ce ], [ 1, %bb.cf ], [ 1, %bb.cg ], [ 1, %bb.ch ], [ 1, %bb.ci ], [ 1, %bb.cj ], [ 1, %bb.ck ], [ 1, %bb.cl ], [ 1, %bb.cm ], [ 1, %bb.cn ], [ 1, %bb.co ], [ 1, %bb.cp ], [ 1, %bb.cq ], [ 1, %bb.cr ], [ 1, %bb.cs ], [ 1, %bb.ct ], [ 1, %bb.cu ], [ 1, %bb.cv ], [ 1, %bb.cw ], [ 1, %bb.cx ], [ 1, %bb.cy ], [ 1, %bb.cz ], [ 1, %bb.da ], [ 1, %bb.db ], [ 1, %bb.dc ], [ 1, %bb.dd ], [ 1, %bb.de ], [ 1, %bb.df ], [ 1, %bb.dg ], [ 1, %bb.dh ], [ 1, %bb.di ], [ 1, %bb.dj ], [ 1, %bb.dk ], [ 1, %bb.dl ], [ 1, %bb.dm ], [ 1, %bb.dn ], [ 1, %bb.do ], [ 1, %bb.dp ], [ 1, %bb.dq ], [ 1, %bb.dr ], [ 1, %bb.ds ], [ 1, %bb.dt ], [ 1, %bb.du ], [ 1, %bb.dv ], [ 1, %bb.dw ], [ 1, %bb.dx ], [ 1, %bb.dy ], [ 1, %bb.dz ], [ 1, %bb.ea ], [ 1, %bb.eb ], [ 1, %bb.ec ], [ 1, %bb.ed ], [ 1, %bb.ef ]
  %i.aiu = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.aiv = insertvalue { i16, i16 } %i.aiu, i16 %.sroa.137.0, 1
  ret { i16, i16 } %i.aiv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvMsl_NtCsi68uqYEhoRA_5gimli4archNtB5_4MIPS13register_name(i16 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i16 %0, 66
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i16 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMsl_NtCsi68uqYEhoRA_5gimli4archNtB5_4MIPS13register_name, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i16 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMsl_NtCsi68uqYEhoRA_5gimli4archNtB5_4MIPS13register_name.6, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.68.0 = phi i64 [ undef, %bb.a ], [ %switch.ext, %switch.lookup ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %switch.load2, %switch.lookup ]
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.sroa.68.0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i16, i16 } @_RNvMsl_NtCsi68uqYEhoRA_5gimli4archNtB5_4MIPS16name_to_register(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  switch i64 %1, label %bb.cw [
    i64 2, label %bb.b
    i64 3, label %bb.l
    i64 4, label %bb.ar
    i64 5, label %bb.bp
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 1
  %i.b = icmp ne i16 %i.a, 12324
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.cx, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i16, ptr %0, align 1
  %i.f = icmp ne i16 %i.e, 12580
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.cx, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i16, ptr %0, align 1
  %i.j = icmp ne i16 %i.i, 12836
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.cx, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i16, ptr %0, align 1
  %i.n = icmp ne i16 %i.m, 13092
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.cx, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i16, ptr %0, align 1
  %i.r = icmp ne i16 %i.q, 13348
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.cx, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i16, ptr %0, align 1
  %i.v = icmp ne i16 %i.u, 13604
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.cx, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load i16, ptr %0, align 1
  %i.z = icmp ne i16 %i.y, 13860
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.cx, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i16, ptr %0, align 1
  %i.ad = icmp ne i16 %i.ac, 14116
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.cx, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load i16, ptr %0, align 1
  %i.ah = icmp ne i16 %i.ag, 14372
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.cx, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load i16, ptr %0, align 1
  %i.al = icmp ne i16 %i.ak, 14628
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.cx, label %bb.cw

bb.l:                                             ; preds = %bb.a
  %i.ao = load i16, ptr %0, align 1
  %i.ap = xor i16 %i.ao, 12580
  %i.aq = getelementptr i8, ptr %0, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i16
  %i.at = xor i16 %i.as, 48
  %i.au = or i16 %i.ap, %i.at
  %i.av = icmp ne i16 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.cx, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load i16, ptr %0, align 1
  %i.az = xor i16 %i.ay, 12580
  %i.ba = getelementptr i8, ptr %0, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i16
  %i.bd = xor i16 %i.bc, 49
  %i.be = or i16 %i.az, %i.bd
  %i.bf = icmp ne i16 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.cx, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = load i16, ptr %0, align 1
  %i.bj = xor i16 %i.bi, 12580
  %i.bk = getelementptr i8, ptr %0, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i16
  %i.bn = xor i16 %i.bm, 50
  %i.bo = or i16 %i.bj, %i.bn
  %i.bp = icmp ne i16 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.cx, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = load i16, ptr %0, align 1
  %i.bt = xor i16 %i.bs, 12580
  %i.bu = getelementptr i8, ptr %0, i64 2
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i16
  %i.bx = xor i16 %i.bw, 51
  %i.by = or i16 %i.bt, %i.bx
  %i.bz = icmp ne i16 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.cx, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load i16, ptr %0, align 1
  %i.cd = xor i16 %i.cc, 12580
  %i.ce = getelementptr i8, ptr %0, i64 2
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i16
  %i.ch = xor i16 %i.cg, 52
  %i.ci = or i16 %i.cd, %i.ch
  %i.cj = icmp ne i16 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.cx, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = load i16, ptr %0, align 1
  %i.cn = xor i16 %i.cm, 12580
  %i.co = getelementptr i8, ptr %0, i64 2
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i16
  %i.cr = xor i16 %i.cq, 53
  %i.cs = or i16 %i.cn, %i.cr
  %i.ct = icmp ne i16 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.cx, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = load i16, ptr %0, align 1
  %i.cx = xor i16 %i.cw, 12580
  %i.cy = getelementptr i8, ptr %0, i64 2
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i16
  %i.db = xor i16 %i.da, 54
  %i.dc = or i16 %i.cx, %i.db
  %i.dd = icmp ne i16 %i.dc, 0
  %i.de = zext i1 %i.dd to i32
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.cx, label %bb.s

end_hunk_4
begin_hunk_5_@_RNvMsl_NtCsi68uqYEhoRA_5gimli4archNtB5_4MIPS16name_to_register:bb.a
  %i.xv = icmp ne i16 %i.xu, 0
  %i.xw = zext i1 %i.xv to i32
  %i.xx = icmp eq i32 %i.xw, 0
  br i1 %i.xx, label %bb.cx, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.xy = load i16, ptr %0, align 1
  %i.xz = xor i16 %i.xy, 29476
  %i.ya = getelementptr i8, ptr %0, i64 2
  %i.yb = load i8, ptr %i.ya, align 1
  %i.yc = zext i8 %i.yb to i16
  %i.yd = xor i16 %i.yc, 50
  %i.ye = or i16 %i.xz, %i.yd
  %i.yf = icmp ne i16 %i.ye, 0
  %i.yg = zext i1 %i.yf to i32
  %i.yh = icmp eq i32 %i.yg, 0
  br i1 %i.yh, label %bb.cx, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.yi = load i16, ptr %0, align 1
  %i.yj = xor i16 %i.yi, 29476
  %i.yk = getelementptr i8, ptr %0, i64 2
  %i.yl = load i8, ptr %i.yk, align 1
  %i.ym = zext i8 %i.yl to i16
  %i.yn = xor i16 %i.ym, 51
  %i.yo = or i16 %i.yj, %i.yn
  %i.yp = icmp ne i16 %i.yo, 0
  %i.yq = zext i1 %i.yp to i32
  %i.yr = icmp eq i32 %i.yq, 0
  br i1 %i.yr, label %bb.cx, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ys = load i16, ptr %0, align 1
  %i.yt = xor i16 %i.ys, 29476
  %i.yu = getelementptr i8, ptr %0, i64 2
  %i.yv = load i8, ptr %i.yu, align 1
  %i.yw = zext i8 %i.yv to i16
  %i.yx = xor i16 %i.yw, 52
  %i.yy = or i16 %i.yt, %i.yx
  %i.yz = icmp ne i16 %i.yy, 0
  %i.za = zext i1 %i.yz to i32
  %i.zb = icmp eq i32 %i.za, 0
  br i1 %i.zb, label %bb.cx, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.zc = load i16, ptr %0, align 1
  %i.zd = xor i16 %i.zc, 29476
  %i.ze = getelementptr i8, ptr %0, i64 2
  %i.zf = load i8, ptr %i.ze, align 1
  %i.zg = zext i8 %i.zf to i16
  %i.zh = xor i16 %i.zg, 53
  %i.zi = or i16 %i.zd, %i.zh
  %i.zj = icmp ne i16 %i.zi, 0
  %i.zk = zext i1 %i.zj to i32
  %i.zl = icmp eq i32 %i.zk, 0
  br i1 %i.zl, label %bb.cx, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.zm = load i16, ptr %0, align 1
  %i.zn = xor i16 %i.zm, 29476
  %i.zo = getelementptr i8, ptr %0, i64 2
  %i.zp = load i8, ptr %i.zo, align 1
  %i.zq = zext i8 %i.zp to i16
  %i.zr = xor i16 %i.zq, 54
  %i.zs = or i16 %i.zn, %i.zr
  %i.zt = icmp ne i16 %i.zs, 0
  %i.zu = zext i1 %i.zt to i32
  %i.zv = icmp eq i32 %i.zu, 0
  br i1 %i.zv, label %bb.cx, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.zw = load i16, ptr %0, align 1
  %i.zx = xor i16 %i.zw, 29476
  %i.zy = getelementptr i8, ptr %0, i64 2
  %i.zz = load i8, ptr %i.zy, align 1
  %i.aaa = zext i8 %i.zz to i16
  %i.aab = xor i16 %i.aaa, 55
  %i.aac = or i16 %i.zx, %i.aab
  %i.aad = icmp ne i16 %i.aac, 0
  %i.aae = zext i1 %i.aad to i32
  %i.aaf = icmp eq i32 %i.aae, 0
  br i1 %i.aaf, label %bb.cx, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.aag = load i16, ptr %0, align 1
  %i.aah = xor i16 %i.aag, 29732
  %i.aai = getelementptr i8, ptr %0, i64 2
  %i.aaj = load i8, ptr %i.aai, align 1
  %i.aak = zext i8 %i.aaj to i16
  %i.aal = xor i16 %i.aak, 56
  %i.aam = or i16 %i.aah, %i.aal
  %i.aan = icmp ne i16 %i.aam, 0
  %i.aao = zext i1 %i.aan to i32
  %i.aap = icmp eq i32 %i.aao, 0
  br i1 %i.aap, label %bb.cx, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.aaq = load i16, ptr %0, align 1
  %i.aar = xor i16 %i.aaq, 29732
  %i.aas = getelementptr i8, ptr %0, i64 2
  %i.aat = load i8, ptr %i.aas, align 1
  %i.aau = zext i8 %i.aat to i16
  %i.aav = xor i16 %i.aau, 57
  %i.aaw = or i16 %i.aar, %i.aav
  %i.aax = icmp ne i16 %i.aaw, 0
  %i.aay = zext i1 %i.aax to i32
  %i.aaz = icmp eq i32 %i.aay, 0
  br i1 %i.aaz, label %bb.cx, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aba = load i16, ptr %0, align 1
  %i.abb = xor i16 %i.aba, 27428
  %i.abc = getelementptr i8, ptr %0, i64 2
  %i.abd = load i8, ptr %i.abc, align 1
  %i.abe = zext i8 %i.abd to i16
  %i.abf = xor i16 %i.abe, 48
  %i.abg = or i16 %i.abb, %i.abf
  %i.abh = icmp ne i16 %i.abg, 0
  %i.abi = zext i1 %i.abh to i32
  %i.abj = icmp eq i32 %i.abi, 0
  br i1 %i.abj, label %bb.cx, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.abk = load i16, ptr %0, align 1
  %i.abl = xor i16 %i.abk, 27428
  %i.abm = getelementptr i8, ptr %0, i64 2
  %i.abn = load i8, ptr %i.abm, align 1
  %i.abo = zext i8 %i.abn to i16
  %i.abp = xor i16 %i.abo, 49
  %i.abq = or i16 %i.abl, %i.abp
  %i.abr = icmp ne i16 %i.abq, 0
  %i.abs = zext i1 %i.abr to i32
  %i.abt = icmp eq i32 %i.abs, 0
  br i1 %i.abt, label %bb.cx, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.abu = load i16, ptr %0, align 1
  %i.abv = xor i16 %i.abu, 26404
  %i.abw = getelementptr i8, ptr %0, i64 2
  %i.abx = load i8, ptr %i.abw, align 1
  %i.aby = zext i8 %i.abx to i16
  %i.abz = xor i16 %i.aby, 112
  %i.aca = or i16 %i.abv, %i.abz
  %i.acb = icmp ne i16 %i.aca, 0
  %i.acc = zext i1 %i.acb to i32
  %i.acd = icmp eq i32 %i.acc, 0
  br i1 %i.acd, label %bb.cx, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ace = load i16, ptr %0, align 1
  %i.acf = xor i16 %i.ace, 29476
  %i.acg = getelementptr i8, ptr %0, i64 2
  %i.ach = load i8, ptr %i.acg, align 1
  %i.aci = zext i8 %i.ach to i16
  %i.acj = xor i16 %i.aci, 112
  %i.ack = or i16 %i.acf, %i.acj
  %i.acl = icmp ne i16 %i.ack, 0
  %i.acm = zext i1 %i.acl to i32
  %i.acn = icmp eq i32 %i.acm, 0
  br i1 %i.acn, label %bb.cx, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.aco = load i16, ptr %0, align 1
  %i.acp = xor i16 %i.aco, 26148
  %i.acq = getelementptr i8, ptr %0, i64 2
  %i.acr = load i8, ptr %i.acq, align 1
  %i.acs = zext i8 %i.acr to i16
  %i.act = xor i16 %i.acs, 112
  %i.acu = or i16 %i.acp, %i.act
  %i.acv = icmp ne i16 %i.acu, 0
  %i.acw = zext i1 %i.acv to i32
  %i.acx = icmp eq i32 %i.acw, 0
  br i1 %i.acx, label %bb.cx, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.acy = load i16, ptr %0, align 1
  %i.acz = xor i16 %i.acy, 29220
  %i.ada = getelementptr i8, ptr %0, i64 2
  %i.adb = load i8, ptr %i.ada, align 1
  %i.adc = zext i8 %i.adb to i16
  %i.add = xor i16 %i.adc, 97
  %i.ade = or i16 %i.acz, %i.add
  %i.adf = icmp ne i16 %i.ade, 0
  %i.adg = zext i1 %i.adf to i32
  %i.adh = icmp eq i32 %i.adg, 0
  br i1 %i.adh, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.adi = load i16, ptr %0, align 1
  %i.adj = xor i16 %i.adi, 29476
  %i.adk = getelementptr i8, ptr %0, i64 2
  %i.adl = load i8, ptr %i.adk, align 1
  %i.adm = zext i8 %i.adl to i16
  %i.adn = xor i16 %i.adm, 56
  %i.ado = or i16 %i.adj, %i.adn
  %i.adp = icmp ne i16 %i.ado, 0
  %i.adq = zext i1 %i.adp to i32
  %i.adr = icmp eq i32 %i.adq, 0
  br i1 %i.adr, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.bp, %bb.bm, %bb.k, %bb.a, %bb.cv
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.cw
  %.sroa.101.0 = phi i16 [ undef, %bb.cw ], [ 31, %bb.cu ], [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 8, %bb.j ], [ 9, %bb.k ], [ 10, %bb.l ], [ 11, %bb.m ], [ 12, %bb.n ], [ 13, %bb.o ], [ 14, %bb.p ], [ 15, %bb.q ], [ 16, %bb.r ], [ 17, %bb.s ], [ 18, %bb.t ], [ 19, %bb.u ], [ 20, %bb.v ], [ 21, %bb.w ], [ 22, %bb.x ], [ 23, %bb.y ], [ 24, %bb.z ], [ 25, %bb.aa ], [ 26, %bb.ab ], [ 27, %bb.ac ], [ 28, %bb.ad ], [ 29, %bb.ae ], [ 30, %bb.af ], [ 31, %bb.ag ], [ 32, %bb.ah ], [ 33, %bb.ai ], [ 34, %bb.aj ], [ 35, %bb.ak ], [ 36, %bb.al ], [ 37, %bb.am ], [ 38, %bb.an ], [ 39, %bb.ao ], [ 40, %bb.ap ], [ 41, %bb.aq ], [ 42, %bb.ar ], [ 43, %bb.as ], [ 44, %bb.at ], [ 45, %bb.au ], [ 46, %bb.av ], [ 47, %bb.aw ], [ 48, %bb.ax ], [ 49, %bb.ay ], [ 50, %bb.az ], [ 51, %bb.ba ], [ 52, %bb.bb ], [ 53, %bb.bc ], [ 54, %bb.bd ], [ 55, %bb.be ], [ 56, %bb.bf ], [ 57, %bb.bg ], [ 58, %bb.bh ], [ 59, %bb.bi ], [ 60, %bb.bj ], [ 61, %bb.bk ], [ 62, %bb.bl ], [ 63, %bb.bm ], [ 64, %bb.bn ], [ 65, %bb.bo ], [ 0, %bb.bp ], [ 1, %bb.bq ], [ 2, %bb.br ], [ 3, %bb.bs ], [ 4, %bb.bt ], [ 5, %bb.bu ], [ 6, %bb.bv ], [ 7, %bb.bw ], [ 8, %bb.bx ], [ 9, %bb.by ], [ 10, %bb.bz ], [ 11, %bb.ca ], [ 12, %bb.cb ], [ 13, %bb.cc ], [ 14, %bb.cd ], [ 15, %bb.ce ], [ 16, %bb.cf ], [ 17, %bb.cg ], [ 18, %bb.ch ], [ 19, %bb.ci ], [ 20, %bb.cj ], [ 21, %bb.ck ], [ 22, %bb.cl ], [ 23, %bb.cm ], [ 24, %bb.cn ], [ 25, %bb.co ], [ 26, %bb.cp ], [ 27, %bb.cq ], [ 28, %bb.cr ], [ 29, %bb.cs ], [ 30, %bb.ct ], [ 30, %bb.cv ]
  %.sroa.0.0 = phi i16 [ 0, %bb.cw ], [ 1, %bb.cu ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ 1, %bb.z ], [ 1, %bb.aa ], [ 1, %bb.ab ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ 1, %bb.ak ], [ 1, %bb.al ], [ 1, %bb.am ], [ 1, %bb.an ], [ 1, %bb.ao ], [ 1, %bb.ap ], [ 1, %bb.aq ], [ 1, %bb.ar ], [ 1, %bb.as ], [ 1, %bb.at ], [ 1, %bb.au ], [ 1, %bb.av ], [ 1, %bb.aw ], [ 1, %bb.ax ], [ 1, %bb.ay ], [ 1, %bb.az ], [ 1, %bb.ba ], [ 1, %bb.bb ], [ 1, %bb.bc ], [ 1, %bb.bd ], [ 1, %bb.be ], [ 1, %bb.bf ], [ 1, %bb.bg ], [ 1, %bb.bh ], [ 1, %bb.bi ], [ 1, %bb.bj ], [ 1, %bb.bk ], [ 1, %bb.bl ], [ 1, %bb.bm ], [ 1, %bb.bn ], [ 1, %bb.bo ], [ 1, %bb.bp ], [ 1, %bb.bq ], [ 1, %bb.br ], [ 1, %bb.bs ], [ 1, %bb.bt ], [ 1, %bb.bu ], [ 1, %bb.bv ], [ 1, %bb.bw ], [ 1, %bb.bx ], [ 1, %bb.by ], [ 1, %bb.bz ], [ 1, %bb.ca ], [ 1, %bb.cb ], [ 1, %bb.cc ], [ 1, %bb.cd ], [ 1, %bb.ce ], [ 1, %bb.cf ], [ 1, %bb.cg ], [ 1, %bb.ch ], [ 1, %bb.ci ], [ 1, %bb.cj ], [ 1, %bb.ck ], [ 1, %bb.cl ], [ 1, %bb.cm ], [ 1, %bb.cn ], [ 1, %bb.co ], [ 1, %bb.cp ], [ 1, %bb.cq ], [ 1, %bb.cr ], [ 1, %bb.cs ], [ 1, %bb.ct ], [ 1, %bb.cv ]
  %i.ads = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.adt = insertvalue { i16, i16 } %i.ads, i16 %.sroa.101.0, 1
  ret { i16, i16 } %i.adt
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvMsr_NtCsi68uqYEhoRA_5gimli4archNtB5_5RiscV13register_name(i16 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i16 %0, 128
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i16 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMsr_NtCsi68uqYEhoRA_5gimli4archNtB5_5RiscV13register_name, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i16 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMsr_NtCsi68uqYEhoRA_5gimli4archNtB5_5RiscV13register_name.7, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.99.0 = phi i64 [ undef, %bb.a ], [ %switch.ext, %switch.lookup ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %switch.load2, %switch.lookup ]
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.sroa.99.0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i16, i16 } @_RNvMsr_NtCsi68uqYEhoRA_5gimli4archNtB5_5RiscV16name_to_register(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  switch i64 %1, label %bb.fh [
    i64 2, label %bb.b
    i64 3, label %bb.l
    i64 4, label %bb.bn
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 1
  %i.b = icmp ne i16 %i.a, 12408
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.fi, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i16, ptr %0, align 1
  %i.f = icmp ne i16 %i.e, 12664
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.fi, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i16, ptr %0, align 1
  %i.j = icmp ne i16 %i.i, 12920
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.fi, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i16, ptr %0, align 1
  %i.n = icmp ne i16 %i.m, 13176
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.fi, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i16, ptr %0, align 1
  %i.r = icmp ne i16 %i.q, 13432
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.fi, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i16, ptr %0, align 1
  %i.v = icmp ne i16 %i.u, 13688
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.fi, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load i16, ptr %0, align 1
  %i.z = icmp ne i16 %i.y, 13944
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.fi, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i16, ptr %0, align 1
  %i.ad = icmp ne i16 %i.ac, 14200
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.fi, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load i16, ptr %0, align 1
  %i.ah = icmp ne i16 %i.ag, 14456
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.fi, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load i16, ptr %0, align 1
  %i.al = icmp ne i16 %i.ak, 14712
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.fi, label %bb.ah

bb.l:                                             ; preds = %bb.a
  %i.ao = load i16, ptr %0, align 1
  %i.ap = xor i16 %i.ao, 12664
  %i.aq = getelementptr i8, ptr %0, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i16
  %i.at = xor i16 %i.as, 48
  %i.au = or i16 %i.ap, %i.at
  %i.av = icmp ne i16 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.fi, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load i16, ptr %0, align 1
  %i.az = xor i16 %i.ay, 12664
  %i.ba = getelementptr i8, ptr %0, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i16
  %i.bd = xor i16 %i.bc, 49
  %i.be = or i16 %i.az, %i.bd
  %i.bf = icmp ne i16 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.fi, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = load i16, ptr %0, align 1
  %i.bj = xor i16 %i.bi, 12664
  %i.bk = getelementptr i8, ptr %0, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i16
  %i.bn = xor i16 %i.bm, 50
  %i.bo = or i16 %i.bj, %i.bn
  %i.bp = icmp ne i16 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.fi, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = load i16, ptr %0, align 1
  %i.bt = xor i16 %i.bs, 12664
  %i.bu = getelementptr i8, ptr %0, i64 2
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i16
  %i.bx = xor i16 %i.bw, 51
  %i.by = or i16 %i.bt, %i.bx
  %i.bz = icmp ne i16 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.fi, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load i16, ptr %0, align 1
  %i.cd = xor i16 %i.cc, 12664
  %i.ce = getelementptr i8, ptr %0, i64 2
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i16
  %i.ch = xor i16 %i.cg, 52
  %i.ci = or i16 %i.cd, %i.ch
  %i.cj = icmp ne i16 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.fi, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = load i16, ptr %0, align 1
  %i.cn = xor i16 %i.cm, 12664
  %i.co = getelementptr i8, ptr %0, i64 2
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i16
  %i.cr = xor i16 %i.cq, 53
  %i.cs = or i16 %i.cn, %i.cr
  %i.ct = icmp ne i16 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.fi, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = load i16, ptr %0, align 1
  %i.cx = xor i16 %i.cw, 12664
  %i.cy = getelementptr i8, ptr %0, i64 2
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i16
  %i.db = xor i16 %i.da, 54
  %i.dc = or i16 %i.cx, %i.db
  %i.dd = icmp ne i16 %i.dc, 0
  %i.de = zext i1 %i.dd to i32
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.fi, label %bb.s

bb.s:                                             ; preds = %bb.r
end_hunk_5
begin_hunk_6_@_RNvMsr_NtCsi68uqYEhoRA_5gimli4archNtB5_5RiscV16name_to_register:bb.a
  %i.aom = load i16, ptr %0, align 1
  %i.aon = xor i16 %i.aom, 24934
  %i.aoo = getelementptr i8, ptr %0, i64 2
  %i.aop = load i8, ptr %i.aoo, align 1
  %i.aoq = zext i8 %i.aop to i16
  %i.aor = xor i16 %i.aoq, 53
  %i.aos = or i16 %i.aon, %i.aor
  %i.aot = icmp ne i16 %i.aos, 0
  %i.aou = zext i1 %i.aot to i32
  %i.aov = icmp eq i32 %i.aou, 0
  br i1 %i.aov, label %bb.fi, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.aow = load i16, ptr %0, align 1
  %i.aox = xor i16 %i.aow, 24934
  %i.aoy = getelementptr i8, ptr %0, i64 2
  %i.aoz = load i8, ptr %i.aoy, align 1
  %i.apa = zext i8 %i.aoz to i16
  %i.apb = xor i16 %i.apa, 54
  %i.apc = or i16 %i.aox, %i.apb
  %i.apd = icmp ne i16 %i.apc, 0
  %i.ape = zext i1 %i.apd to i32
  %i.apf = icmp eq i32 %i.ape, 0
  br i1 %i.apf, label %bb.fi, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.apg = load i16, ptr %0, align 1
  %i.aph = xor i16 %i.apg, 24934
  %i.api = getelementptr i8, ptr %0, i64 2
  %i.apj = load i8, ptr %i.api, align 1
  %i.apk = zext i8 %i.apj to i16
  %i.apl = xor i16 %i.apk, 55
  %i.apm = or i16 %i.aph, %i.apl
  %i.apn = icmp ne i16 %i.apm, 0
  %i.apo = zext i1 %i.apn to i32
  %i.app = icmp eq i32 %i.apo, 0
  br i1 %i.app, label %bb.fi, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.apq = load i16, ptr %0, align 1
  %i.apr = xor i16 %i.apq, 29542
  %i.aps = getelementptr i8, ptr %0, i64 2
  %i.apt = load i8, ptr %i.aps, align 1
  %i.apu = zext i8 %i.apt to i16
  %i.apv = xor i16 %i.apu, 50
  %i.apw = or i16 %i.apr, %i.apv
  %i.apx = icmp ne i16 %i.apw, 0
  %i.apy = zext i1 %i.apx to i32
  %i.apz = icmp eq i32 %i.apy, 0
  br i1 %i.apz, label %bb.fi, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.aqa = load i16, ptr %0, align 1
  %i.aqb = xor i16 %i.aqa, 29542
  %i.aqc = getelementptr i8, ptr %0, i64 2
  %i.aqd = load i8, ptr %i.aqc, align 1
  %i.aqe = zext i8 %i.aqd to i16
  %i.aqf = xor i16 %i.aqe, 51
  %i.aqg = or i16 %i.aqb, %i.aqf
  %i.aqh = icmp ne i16 %i.aqg, 0
  %i.aqi = zext i1 %i.aqh to i32
  %i.aqj = icmp eq i32 %i.aqi, 0
  br i1 %i.aqj, label %bb.fi, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.aqk = load i16, ptr %0, align 1
  %i.aql = xor i16 %i.aqk, 29542
  %i.aqm = getelementptr i8, ptr %0, i64 2
  %i.aqn = load i8, ptr %i.aqm, align 1
  %i.aqo = zext i8 %i.aqn to i16
  %i.aqp = xor i16 %i.aqo, 52
  %i.aqq = or i16 %i.aql, %i.aqp
  %i.aqr = icmp ne i16 %i.aqq, 0
  %i.aqs = zext i1 %i.aqr to i32
  %i.aqt = icmp eq i32 %i.aqs, 0
  br i1 %i.aqt, label %bb.fi, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.aqu = load i16, ptr %0, align 1
  %i.aqv = xor i16 %i.aqu, 29542
  %i.aqw = getelementptr i8, ptr %0, i64 2
  %i.aqx = load i8, ptr %i.aqw, align 1
  %i.aqy = zext i8 %i.aqx to i16
  %i.aqz = xor i16 %i.aqy, 53
  %i.ara = or i16 %i.aqv, %i.aqz
  %i.arb = icmp ne i16 %i.ara, 0
  %i.arc = zext i1 %i.arb to i32
  %i.ard = icmp eq i32 %i.arc, 0
  br i1 %i.ard, label %bb.fi, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.are = load i16, ptr %0, align 1
  %i.arf = xor i16 %i.are, 29542
  %i.arg = getelementptr i8, ptr %0, i64 2
  %i.arh = load i8, ptr %i.arg, align 1
  %i.ari = zext i8 %i.arh to i16
  %i.arj = xor i16 %i.ari, 54
  %i.ark = or i16 %i.arf, %i.arj
  %i.arl = icmp ne i16 %i.ark, 0
  %i.arm = zext i1 %i.arl to i32
  %i.arn = icmp eq i32 %i.arm, 0
  br i1 %i.arn, label %bb.fi, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aro = load i16, ptr %0, align 1
  %i.arp = xor i16 %i.aro, 29542
  %i.arq = getelementptr i8, ptr %0, i64 2
  %i.arr = load i8, ptr %i.arq, align 1
  %i.ars = zext i8 %i.arr to i16
  %i.art = xor i16 %i.ars, 55
  %i.aru = or i16 %i.arp, %i.art
  %i.arv = icmp ne i16 %i.aru, 0
  %i.arw = zext i1 %i.arv to i32
  %i.arx = icmp eq i32 %i.arw, 0
  br i1 %i.arx, label %bb.fi, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ary = load i16, ptr %0, align 1
  %i.arz = xor i16 %i.ary, 29542
  %i.asa = getelementptr i8, ptr %0, i64 2
  %i.asb = load i8, ptr %i.asa, align 1
  %i.asc = zext i8 %i.asb to i16
  %i.asd = xor i16 %i.asc, 56
  %i.ase = or i16 %i.arz, %i.asd
  %i.asf = icmp ne i16 %i.ase, 0
  %i.asg = zext i1 %i.asf to i32
  %i.ash = icmp eq i32 %i.asg, 0
  br i1 %i.ash, label %bb.fi, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.asi = load i16, ptr %0, align 1
  %i.asj = xor i16 %i.asi, 29542
  %i.ask = getelementptr i8, ptr %0, i64 2
  %i.asl = load i8, ptr %i.ask, align 1
  %i.asm = zext i8 %i.asl to i16
  %i.asn = xor i16 %i.asm, 57
  %i.aso = or i16 %i.asj, %i.asn
  %i.asp = icmp ne i16 %i.aso, 0
  %i.asq = zext i1 %i.asp to i32
  %i.asr = icmp eq i32 %i.asq, 0
  br i1 %i.asr, label %bb.fi, label %bb.fd

bb.fb:                                            ; preds = %bb.cu
  %i.ass = load i32, ptr %0, align 1
  %i.ast = icmp ne i32 %i.ass, 808547174
  %i.asu = zext i1 %i.ast to i32
  %i.asv = icmp eq i32 %i.asu, 0
  br i1 %i.asv, label %bb.fi, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.asw = load i32, ptr %0, align 1
  %i.asx = icmp ne i32 %i.asw, 825324390
  %i.asy = zext i1 %i.asx to i32
  %i.asz = icmp eq i32 %i.asy, 0
  br i1 %i.asz, label %bb.fi, label %bb.ff

bb.fd:                                            ; preds = %bb.fa
  %i.ata = load i16, ptr %0, align 1
  %i.atb = xor i16 %i.ata, 29798
  %i.atc = getelementptr i8, ptr %0, i64 2
  %i.atd = load i8, ptr %i.atc, align 1
  %i.ate = zext i8 %i.atd to i16
  %i.atf = xor i16 %i.ate, 56
  %i.atg = or i16 %i.atb, %i.atf
  %i.ath = icmp ne i16 %i.atg, 0
  %i.ati = zext i1 %i.ath to i32
  %i.atj = icmp eq i32 %i.ati, 0
  br i1 %i.atj, label %bb.fi, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.atk = load i16, ptr %0, align 1
  %i.atl = xor i16 %i.atk, 29798
  %i.atm = getelementptr i8, ptr %0, i64 2
  %i.atn = load i8, ptr %i.atm, align 1
  %i.ato = zext i8 %i.atn to i16
  %i.atp = xor i16 %i.ato, 57
  %i.atq = or i16 %i.atl, %i.atp
  %i.atr = icmp ne i16 %i.atq, 0
  %i.ats = zext i1 %i.atr to i32
  %i.att = icmp eq i32 %i.ats, 0
  br i1 %i.att, label %bb.fi, label %bb.fh

bb.ff:                                            ; preds = %bb.fc
  %i.atu = load i32, ptr %0, align 1
  %i.atv = icmp ne i32 %i.atu, 808547430
  %i.atw = zext i1 %i.atv to i32
  %i.atx = icmp eq i32 %i.atw, 0
  br i1 %i.atx, label %bb.fi, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aty = load i32, ptr %0, align 1
  %i.atz = icmp ne i32 %i.aty, 825324646
  %i.aua = zext i1 %i.atz to i32
  %i.aub = icmp eq i32 %i.aua, 0
  br i1 %i.aub, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fe, %bb.ea, %bb.a, %bb.fg
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.fh
  %.sroa.164.0 = phi i16 [ undef, %bb.fh ], [ 62, %bb.ff ], [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 8, %bb.j ], [ 9, %bb.k ], [ 10, %bb.l ], [ 11, %bb.m ], [ 12, %bb.n ], [ 13, %bb.o ], [ 14, %bb.p ], [ 15, %bb.q ], [ 16, %bb.r ], [ 17, %bb.s ], [ 18, %bb.t ], [ 19, %bb.u ], [ 20, %bb.v ], [ 21, %bb.w ], [ 22, %bb.x ], [ 23, %bb.y ], [ 24, %bb.z ], [ 25, %bb.aa ], [ 26, %bb.ab ], [ 27, %bb.ac ], [ 28, %bb.ad ], [ 29, %bb.ae ], [ 30, %bb.af ], [ 31, %bb.ag ], [ 32, %bb.ah ], [ 33, %bb.ai ], [ 34, %bb.aj ], [ 35, %bb.ak ], [ 36, %bb.al ], [ 37, %bb.am ], [ 38, %bb.an ], [ 39, %bb.ao ], [ 40, %bb.ap ], [ 41, %bb.aq ], [ 42, %bb.ar ], [ 43, %bb.as ], [ 44, %bb.at ], [ 45, %bb.au ], [ 46, %bb.av ], [ 47, %bb.aw ], [ 48, %bb.ax ], [ 49, %bb.ay ], [ 50, %bb.az ], [ 51, %bb.ba ], [ 52, %bb.bb ], [ 53, %bb.bc ], [ 54, %bb.bd ], [ 55, %bb.be ], [ 56, %bb.bf ], [ 57, %bb.bg ], [ 58, %bb.bh ], [ 59, %bb.bi ], [ 60, %bb.bj ], [ 61, %bb.bk ], [ 62, %bb.bl ], [ 63, %bb.bm ], [ 64, %bb.bn ], [ 96, %bb.bo ], [ 97, %bb.bp ], [ 98, %bb.bq ], [ 99, %bb.br ], [ 100, %bb.bs ], [ 101, %bb.bt ], [ 102, %bb.bu ], [ 103, %bb.bv ], [ 104, %bb.bw ], [ 105, %bb.bx ], [ 106, %bb.by ], [ 107, %bb.bz ], [ 108, %bb.ca ], [ 109, %bb.cb ], [ 110, %bb.cc ], [ 111, %bb.cd ], [ 112, %bb.ce ], [ 113, %bb.cf ], [ 114, %bb.cg ], [ 115, %bb.ch ], [ 116, %bb.ci ], [ 117, %bb.cj ], [ 118, %bb.ck ], [ 119, %bb.cl ], [ 120, %bb.cm ], [ 121, %bb.cn ], [ 122, %bb.co ], [ 123, %bb.cp ], [ 124, %bb.cq ], [ 125, %bb.cr ], [ 126, %bb.cs ], [ 127, %bb.ct ], [ 0, %bb.cu ], [ 1, %bb.cv ], [ 2, %bb.cw ], [ 3, %bb.cx ], [ 4, %bb.cy ], [ 5, %bb.cz ], [ 6, %bb.da ], [ 7, %bb.db ], [ 8, %bb.dc ], [ 8, %bb.dd ], [ 9, %bb.de ], [ 10, %bb.df ], [ 11, %bb.dg ], [ 12, %bb.dh ], [ 13, %bb.di ], [ 14, %bb.dj ], [ 15, %bb.dk ], [ 16, %bb.dl ], [ 17, %bb.dm ], [ 18, %bb.dn ], [ 19, %bb.do ], [ 20, %bb.dp ], [ 21, %bb.dq ], [ 22, %bb.dr ], [ 23, %bb.ds ], [ 24, %bb.dt ], [ 25, %bb.du ], [ 26, %bb.dv ], [ 27, %bb.dw ], [ 28, %bb.dx ], [ 29, %bb.dy ], [ 30, %bb.dz ], [ 31, %bb.ea ], [ 32, %bb.eb ], [ 33, %bb.ec ], [ 34, %bb.ed ], [ 35, %bb.ee ], [ 36, %bb.ef ], [ 37, %bb.eg ], [ 38, %bb.eh ], [ 39, %bb.ei ], [ 40, %bb.ej ], [ 41, %bb.ek ], [ 42, %bb.el ], [ 43, %bb.em ], [ 44, %bb.en ], [ 45, %bb.eo ], [ 46, %bb.ep ], [ 47, %bb.eq ], [ 48, %bb.er ], [ 49, %bb.es ], [ 50, %bb.et ], [ 51, %bb.eu ], [ 52, %bb.ev ], [ 53, %bb.ew ], [ 54, %bb.ex ], [ 55, %bb.ey ], [ 56, %bb.ez ], [ 57, %bb.fa ], [ 58, %bb.fb ], [ 59, %bb.fc ], [ 60, %bb.fd ], [ 61, %bb.fe ], [ 63, %bb.fg ]
  %.sroa.0.0 = phi i16 [ 0, %bb.fh ], [ 1, %bb.ff ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ 1, %bb.z ], [ 1, %bb.aa ], [ 1, %bb.ab ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ 1, %bb.ak ], [ 1, %bb.al ], [ 1, %bb.am ], [ 1, %bb.an ], [ 1, %bb.ao ], [ 1, %bb.ap ], [ 1, %bb.aq ], [ 1, %bb.ar ], [ 1, %bb.as ], [ 1, %bb.at ], [ 1, %bb.au ], [ 1, %bb.av ], [ 1, %bb.aw ], [ 1, %bb.ax ], [ 1, %bb.ay ], [ 1, %bb.az ], [ 1, %bb.ba ], [ 1, %bb.bb ], [ 1, %bb.bc ], [ 1, %bb.bd ], [ 1, %bb.be ], [ 1, %bb.bf ], [ 1, %bb.bg ], [ 1, %bb.bh ], [ 1, %bb.bi ], [ 1, %bb.bj ], [ 1, %bb.bk ], [ 1, %bb.bl ], [ 1, %bb.bm ], [ 1, %bb.bn ], [ 1, %bb.bo ], [ 1, %bb.bp ], [ 1, %bb.bq ], [ 1, %bb.br ], [ 1, %bb.bs ], [ 1, %bb.bt ], [ 1, %bb.bu ], [ 1, %bb.bv ], [ 1, %bb.bw ], [ 1, %bb.bx ], [ 1, %bb.by ], [ 1, %bb.bz ], [ 1, %bb.ca ], [ 1, %bb.cb ], [ 1, %bb.cc ], [ 1, %bb.cd ], [ 1, %bb.ce ], [ 1, %bb.cf ], [ 1, %bb.cg ], [ 1, %bb.ch ], [ 1, %bb.ci ], [ 1, %bb.cj ], [ 1, %bb.ck ], [ 1, %bb.cl ], [ 1, %bb.cm ], [ 1, %bb.cn ], [ 1, %bb.co ], [ 1, %bb.cp ], [ 1, %bb.cq ], [ 1, %bb.cr ], [ 1, %bb.cs ], [ 1, %bb.ct ], [ 1, %bb.cu ], [ 1, %bb.cv ], [ 1, %bb.cw ], [ 1, %bb.cx ], [ 1, %bb.cy ], [ 1, %bb.cz ], [ 1, %bb.da ], [ 1, %bb.db ], [ 1, %bb.dc ], [ 1, %bb.dd ], [ 1, %bb.de ], [ 1, %bb.df ], [ 1, %bb.dg ], [ 1, %bb.dh ], [ 1, %bb.di ], [ 1, %bb.dj ], [ 1, %bb.dk ], [ 1, %bb.dl ], [ 1, %bb.dm ], [ 1, %bb.dn ], [ 1, %bb.do ], [ 1, %bb.dp ], [ 1, %bb.dq ], [ 1, %bb.dr ], [ 1, %bb.ds ], [ 1, %bb.dt ], [ 1, %bb.du ], [ 1, %bb.dv ], [ 1, %bb.dw ], [ 1, %bb.dx ], [ 1, %bb.dy ], [ 1, %bb.dz ], [ 1, %bb.ea ], [ 1, %bb.eb ], [ 1, %bb.ec ], [ 1, %bb.ed ], [ 1, %bb.ee ], [ 1, %bb.ef ], [ 1, %bb.eg ], [ 1, %bb.eh ], [ 1, %bb.ei ], [ 1, %bb.ej ], [ 1, %bb.ek ], [ 1, %bb.el ], [ 1, %bb.em ], [ 1, %bb.en ], [ 1, %bb.eo ], [ 1, %bb.ep ], [ 1, %bb.eq ], [ 1, %bb.er ], [ 1, %bb.es ], [ 1, %bb.et ], [ 1, %bb.eu ], [ 1, %bb.ev ], [ 1, %bb.ew ], [ 1, %bb.ex ], [ 1, %bb.ey ], [ 1, %bb.ez ], [ 1, %bb.fa ], [ 1, %bb.fb ], [ 1, %bb.fc ], [ 1, %bb.fd ], [ 1, %bb.fe ], [ 1, %bb.fg ]
  %i.auc = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.aud = insertvalue { i16, i16 } %i.auc, i16 %.sroa.164.0, 1
  ret { i16, i16 } %i.aud
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i16, i16 } @_RNvMsx_NtCsi68uqYEhoRA_5gimli4archNtB5_3X8616name_to_register(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  switch i64 %1, label %bb.at [
    i64 3, label %bb.b
    i64 2, label %bb.j
    i64 4, label %bb.s
    i64 5, label %bb.ai
    i64 7, label %bb.ar
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 1
  %i.b = xor i16 %i.a, 24933
  %i.c = getelementptr i8, ptr %0, i64 2
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i16
  %i.f = xor i16 %i.e, 120
  %i.g = or i16 %i.b, %i.f
  %i.h = icmp ne i16 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.au, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i16, ptr %0, align 1
  %i.l = xor i16 %i.k, 25445
  %i.m = getelementptr i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i16
  %i.p = xor i16 %i.o, 120
  %i.q = or i16 %i.l, %i.p
  %i.r = icmp ne i16 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.au, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i16, ptr %0, align 1
  %i.v = xor i16 %i.u, 25701
  %i.w = getelementptr i8, ptr %0, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i16
  %i.z = xor i16 %i.y, 120
  %i.aa = or i16 %i.v, %i.z
  %i.ab = icmp ne i16 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.au, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load i16, ptr %0, align 1
  %i.af = xor i16 %i.ae, 25189
  %i.ag = getelementptr i8, ptr %0, i64 2
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i16
  %i.aj = xor i16 %i.ai, 120
  %i.ak = or i16 %i.af, %i.aj
  %i.al = icmp ne i16 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.au, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load i16, ptr %0, align 1
  %i.ap = xor i16 %i.ao, 29541
  %i.aq = getelementptr i8, ptr %0, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i16
  %i.at = xor i16 %i.as, 112
  %i.au = or i16 %i.ap, %i.at
  %i.av = icmp ne i16 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.au, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load i16, ptr %0, align 1
  %i.az = xor i16 %i.ay, 25189
  %i.ba = getelementptr i8, ptr %0, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i16
  %i.bd = xor i16 %i.bc, 112
  %i.be = or i16 %i.az, %i.bd
  %i.bf = icmp ne i16 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.au, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = load i16, ptr %0, align 1
  %i.bj = xor i16 %i.bi, 29541
  %i.bk = getelementptr i8, ptr %0, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i16
  %i.bn = xor i16 %i.bm, 105
  %i.bo = or i16 %i.bj, %i.bn
  %i.bp = icmp ne i16 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.au, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load i16, ptr %0, align 1
  %i.bt = xor i16 %i.bs, 25701
  %i.bu = getelementptr i8, ptr %0, i64 2
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i16
  %i.bx = xor i16 %i.bw, 105
  %i.by = or i16 %i.bt, %i.bx
  %i.bz = icmp ne i16 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.au, label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.cc = load i16, ptr %0, align 1
  %i.cd = icmp ne i16 %i.cc, 16722
  %i.ce = zext i1 %i.cd to i32
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.au, label %bb.aj

bb.k:                                             ; preds = %bb.i
  %i.cg = load i16, ptr %0, align 1
  %i.ch = xor i16 %i.cg, 29811
  %i.ci = getelementptr i8, ptr %0, i64 2
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = zext i8 %i.cj to i16
  %i.cl = xor i16 %i.ck, 48
  %i.cm = or i16 %i.ch, %i.cl
  %i.cn = icmp ne i16 %i.cm, 0
  %i.co = zext i1 %i.cn to i32
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.au, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cq = load i16, ptr %0, align 1
  %i.cr = xor i16 %i.cq, 29811
  %i.cs = getelementptr i8, ptr %0, i64 2
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = zext i8 %i.ct to i16
  %i.cv = xor i16 %i.cu, 49
  %i.cw = or i16 %i.cr, %i.cv
  %i.cx = icmp ne i16 %i.cw, 0
  %i.cy = zext i1 %i.cx to i32
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.au, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = load i16, ptr %0, align 1
  %i.db = xor i16 %i.da, 29811
  %i.dc = getelementptr i8, ptr %0, i64 2
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = zext i8 %i.dd to i16
  %i.df = xor i16 %i.de, 50
  %i.dg = or i16 %i.db, %i.df
  %i.dh = icmp ne i16 %i.dg, 0
  %i.di = zext i1 %i.dh to i32
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.au, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dk = load i16, ptr %0, align 1
  %i.dl = xor i16 %i.dk, 29811
  %i.dm = getelementptr i8, ptr %0, i64 2
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = zext i8 %i.dn to i16
  %i.dp = xor i16 %i.do, 51
  %i.dq = or i16 %i.dl, %i.dp
  %i.dr = icmp ne i16 %i.dq, 0
  %i.ds = zext i1 %i.dr to i32
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.au, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.du = load i16, ptr %0, align 1
  %i.dv = xor i16 %i.du, 29811
  %i.dw = getelementptr i8, ptr %0, i64 2
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = zext i8 %i.dx to i16
  %i.dz = xor i16 %i.dy, 52
  %i.ea = or i16 %i.dv, %i.dz
  %i.eb = icmp ne i16 %i.ea, 0
  %i.ec = zext i1 %i.eb to i32
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.au, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ee = load i16, ptr %0, align 1
  %i.ef = xor i16 %i.ee, 29811
  %i.eg = getelementptr i8, ptr %0, i64 2
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = zext i8 %i.eh to i16
  %i.ej = xor i16 %i.ei, 53
  %i.ek = or i16 %i.ef, %i.ej
end_hunk_6
