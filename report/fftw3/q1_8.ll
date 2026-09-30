Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/q1_8?download=true
begin_hunk_0_@q1_8:bb.a
  %i.aeu = extractelement <2 x double> %i.aet, i64 0
  store double %i.aeu, ptr %i.vm, align 8, !tbaa !13
  %i.aev = extractelement <2 x double> %i.aet, i64 1
  store double %i.aev, ptr %i.vn, align 8, !tbaa !13
  %i.aew = load <2 x double>, ptr %i.lx, align 8, !tbaa !13 ; 2 uses
  %i.aex = shufflevector <2 x double> %i.aew, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aey = fmul <2 x double> %i.wo, %i.aex
  %i.aez = shufflevector <2 x double> %i.aew, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aez, <2 x double> %i.wm, <2 x double> %i.aey) ; 2 uses
  %i.afb = extractelement <2 x double> %i.afa, i64 0
  store double %i.afb, ptr %i.vo, align 8, !tbaa !13
  %i.afc = extractelement <2 x double> %i.afa, i64 1
  store double %i.afc, ptr %i.wp, align 8, !tbaa !13
  %i.afd = load <2 x double>, ptr %i.lx, align 8, !tbaa !13 ; 2 uses
  %i.afe = shufflevector <2 x double> %i.afd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aff = fmul <2 x double> %i.abe, %i.afe
  %i.afg = shufflevector <2 x double> %i.afd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afg, <2 x double> %i.abc, <2 x double> %i.aff) ; 2 uses
  %i.afi = extractelement <2 x double> %i.afh, i64 0
  store double %i.afi, ptr %i.wq, align 8, !tbaa !13
  %i.afj = extractelement <2 x double> %i.afh, i64 1
  store double %i.afj, ptr %i.abf, align 8, !tbaa !13
  %i.afk = load <2 x double>, ptr %i.pq, align 8, !tbaa !13 ; 2 uses
  %i.afl = shufflevector <2 x double> %i.afk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.afm = shufflevector <2 x double> %i.ach, <2 x double> %i.acg, <2 x i32> <i32 0, i32 2>
  %i.afn = fmul <2 x double> %i.afl, %i.afm
  %i.afo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afk, <2 x double> %i.abu, <2 x double> %i.afn) ; 2 uses
  %i.afp = extractelement <2 x double> %i.afo, i64 0
  store double %i.afp, ptr %i.abg, align 8, !tbaa !13
  %i.afq = extractelement <2 x double> %i.afo, i64 1
  store double %i.afq, ptr %i.abh, align 8, !tbaa !13
  %i.afr = load <2 x double>, ptr %i.pq, align 8, !tbaa !13 ; 2 uses
  %i.afs = shufflevector <2 x double> %i.afr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aft = shufflevector <2 x double> %i.ach, <2 x double> %i.acg, <2 x i32> <i32 1, i32 3>
  %i.afu = fmul <2 x double> %i.afs, %i.aft
  %i.afv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afr, <2 x double> %i.acn, <2 x double> %i.afu) ; 2 uses
  %i.afw = extractelement <2 x double> %i.afv, i64 0
  store double %i.afw, ptr %i.acm, align 8, !tbaa !13
  %i.afx = extractelement <2 x double> %i.afv, i64 1
  store double %i.afx, ptr %i.aco, align 8, !tbaa !13
  %i.afy = load <2 x double>, ptr %i.pq, align 8, !tbaa !13 ; 2 uses
  %i.afz = shufflevector <2 x double> %i.afy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aga = shufflevector <2 x double> %i.adq, <2 x double> %i.adp, <2 x i32> <i32 0, i32 2>
  %i.agb = fmul <2 x double> %i.afz, %i.aga
  %i.agc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afy, <2 x double> %i.add, <2 x double> %i.agb) ; 2 uses
  %i.agd = extractelement <2 x double> %i.agc, i64 0
  store double %i.agd, ptr %i.acp, align 8, !tbaa !13
  %i.age = extractelement <2 x double> %i.agc, i64 1
  store double %i.age, ptr %i.acq, align 8, !tbaa !13
  %i.agf = getelementptr [8 x i8], ptr %i.fv, i64 %i.at
  %i.agg = load <2 x double>, ptr %i.pq, align 8, !tbaa !13 ; 2 uses
  %i.agh = shufflevector <2 x double> %i.agg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.agi = shufflevector <2 x double> %i.adq, <2 x double> %i.adp, <2 x i32> <i32 1, i32 3>
  %i.agj = fmul <2 x double> %i.agh, %i.agi
  %i.agk = shufflevector <2 x double> %i.adc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.agl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agg, <2 x double> %i.agk, <2 x double> %i.agj) ; 2 uses
  %i.agm = extractelement <2 x double> %i.agl, i64 0
  store double %i.agm, ptr %i.agf, align 8, !tbaa !13
  %i.agn = getelementptr [8 x i8], ptr %i.fq, i64 %i.at
  %i.ago = extractelement <2 x double> %i.agl, i64 1
  store double %i.ago, ptr %i.agn, align 8, !tbaa !13
  %i.agp = getelementptr inbounds nuw i8, ptr %.021092116, i64 96 ; 8 uses
  %i.agq = getelementptr [8 x i8], ptr %i.fa, i64 %i.f
  %i.agr = load <2 x double>, ptr %i.agp, align 8, !tbaa !13 ; 2 uses
  %i.ags = getelementptr [8 x i8], ptr %i.ev, i64 %i.f
  %i.agt = getelementptr inbounds nuw i8, ptr %.021092116, i64 32 ; 8 uses
  %i.agu = getelementptr [8 x i8], ptr %i.jv, i64 %i.f
  %i.agv = getelementptr [8 x i8], ptr %i.jq, i64 %i.f
  %i.agw = getelementptr inbounds nuw i8, ptr %.021092116, i64 64 ; 8 uses
  %i.agx = getelementptr [8 x i8], ptr %i.ld, i64 %i.ao
  %i.agy = insertelement <2 x double> %i.lz, double %i.ck, i64 1
  %i.agz = insertelement <2 x double> %i.mb, double %i.cn, i64 1
  %i.aha = fsub <2 x double> %i.agy, %i.agz       ; 3 uses
  %i.ahb = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.ahc = insertelement <2 x double> %i.ahb, double %i.cp, i64 1
  %i.ahd = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.ahe = insertelement <2 x double> %i.ahd, double %i.cr, i64 1
  %i.ahf = fsub <2 x double> %i.ahc, %i.ahe       ; 3 uses
  %i.ahg = fadd <2 x double> %i.aha, %i.ahf       ; 3 uses
  %foldExtExtBinop2139 = fsub <2 x double> %i.ahf, %i.aha ; 2 uses
  %i.ahh = getelementptr [8 x i8], ptr %i.li, i64 %i.ao
  %i.ahi = getelementptr [8 x i8], ptr %i.di, i64 %i.ao
  %i.ahj = fsub <2 x double> %i.ml, %i.mn         ; 4 uses
  %i.ahk = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.ahl = insertelement <2 x double> %i.ahk, double %i.fg, i64 1
  %i.ahm = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.ahn = insertelement <2 x double> %i.ahm, double %i.fj, i64 1
  %i.aho = fsub <2 x double> %i.ahl, %i.ahn       ; 4 uses
  %foldExtExtBinop2141 = fsub <2 x double> %i.ahj, %i.aho
  %i.ahp = extractelement <2 x double> %foldExtExtBinop2141, i64 0 ; 2 uses
  %i.ahq = fadd <2 x double> %i.ahj, %i.aho
  %i.ahr = fsub <2 x double> %i.ahj, %i.aho
  %i.ahs = shufflevector <2 x double> %i.ahq, <2 x double> %i.ahr, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.aht = getelementptr [8 x i8], ptr %i.dn, i64 %i.ao
  %i.ahu = getelementptr [8 x i8], ptr %i.fa, i64 %i.m
  %i.ahv = getelementptr [8 x i8], ptr %i.ev, i64 %i.m
  %i.ahw = getelementptr [8 x i8], ptr %i.jv, i64 %i.m
  %i.ahx = getelementptr [8 x i8], ptr %i.jq, i64 %i.m
  %i.ahy = getelementptr [8 x i8], ptr %i.ld, i64 %i.f
  %i.ahz = insertelement <2 x double> %i.uu, double %i.kv, i64 1
  %i.aia = insertelement <2 x double> %i.uw, double %i.ky, i64 1
  %i.aib = fsub <2 x double> %i.ahz, %i.aia       ; 3 uses
  %i.aic = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.aid = insertelement <2 x double> %i.aic, double %i.la, i64 1
  %i.aie = insertelement <2 x double> poison, double %i.ks, i64 0
  %i.aif = insertelement <2 x double> %i.aie, double %i.lc, i64 1
  %i.aig = fsub <2 x double> %i.aid, %i.aif       ; 3 uses
  %i.aih = fadd <2 x double> %i.aib, %i.aig       ; 3 uses
  %foldExtExtBinop2143 = fsub <2 x double> %i.aig, %i.aib ; 2 uses
  %shift = shufflevector <2 x double> %i.aih, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2145 = fsub <2 x double> %foldExtExtBinop2143, %shift
  %i.aii = extractelement <2 x double> %foldExtExtBinop2145, i64 0
  %i.aij = fmul double %i.aii, f0x3FE6A09E667F3BCD ; 2 uses
  %i.aik = getelementptr [8 x i8], ptr %i.li, i64 %i.f
  %i.ail = getelementptr [8 x i8], ptr %i.di, i64 %i.f
  %i.aim = fsub <2 x double> %i.uk, %i.um         ; 4 uses
  %i.ain = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.aio = insertelement <2 x double> %i.ain, double %i.hs, i64 1
  %i.aip = insertelement <2 x double> poison, double %i.hz, i64 0
  %i.aiq = insertelement <2 x double> %i.aip, double %i.hv, i64 1
  %i.air = fsub <2 x double> %i.aio, %i.aiq       ; 4 uses
  %foldExtExtBinop2147 = fsub <2 x double> %i.aim, %i.air
  %i.ais = extractelement <2 x double> %foldExtExtBinop2147, i64 0 ; 2 uses
  %i.ait = fadd <2 x double> %i.aim, %i.air
  %i.aiu = fsub <2 x double> %i.aim, %i.air
  %i.aiv = shufflevector <2 x double> %i.ait, <2 x double> %i.aiu, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.aiw = fsub double %i.ais, %i.aij             ; 2 uses
  %i.aix = fadd double %i.ais, %i.aij             ; 2 uses
  %i.aiy = fneg double %i.aiw
  %i.aiz = insertelement <2 x double> poison, double %i.aiw, i64 0
  %i.aja = insertelement <2 x double> %i.aiz, double %i.aiy, i64 1
  %i.ajb = fmul <2 x double> %i.agr, %i.aja
  %i.ajc = shufflevector <2 x double> %i.ajb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ajd = fneg double %i.aix
  %i.aje = insertelement <2 x double> poison, double %i.aix, i64 0
  %i.ajf = insertelement <2 x double> %i.aje, double %i.ajd, i64 1
  %i.ajg = getelementptr [8 x i8], ptr %i.dn, i64 %i.f
  %i.ajh = getelementptr [8 x i8], ptr %i.ld, i64 %i.af
  %i.aji = insertelement <2 x double> %i.vp, double %i.io, i64 1
  %i.ajj = insertelement <2 x double> %i.vr, double %i.ir, i64 1
  %i.ajk = fsub <2 x double> %i.aji, %i.ajj       ; 3 uses
  %i.ajl = insertelement <2 x double> poison, double %i.ij, i64 0
  %i.ajm = insertelement <2 x double> %i.ajl, double %i.it, i64 1
  %i.ajn = insertelement <2 x double> poison, double %i.il, i64 0
  %i.ajo = insertelement <2 x double> %i.ajn, double %i.iv, i64 1
  %i.ajp = fsub <2 x double> %i.ajm, %i.ajo       ; 3 uses
  %i.ajq = fadd <2 x double> %i.ajk, %i.ajp       ; 3 uses
  %foldExtExtBinop2149 = fsub <2 x double> %i.ajp, %i.ajk ; 2 uses
  %i.ajr = getelementptr [8 x i8], ptr %i.li, i64 %i.af
  %i.ajs = getelementptr [8 x i8], ptr %i.di, i64 %i.af
  %i.ajt = fsub <2 x double> %i.wb, %i.wd         ; 4 uses
  %i.aju = insertelement <2 x double> poison, double %i.lt, i64 0
  %i.ajv = insertelement <2 x double> %i.aju, double %i.lo, i64 1
  %i.ajw = insertelement <2 x double> poison, double %i.lv, i64 0
  %i.ajx = insertelement <2 x double> %i.ajw, double %i.lr, i64 1
  %i.ajy = fsub <2 x double> %i.ajv, %i.ajx       ; 4 uses
  %foldExtExtBinop2151 = fsub <2 x double> %i.ajt, %i.ajy
  %i.ajz = extractelement <2 x double> %foldExtExtBinop2151, i64 0 ; 2 uses
  %i.aka = fadd <2 x double> %i.ajt, %i.ajy
  %i.akb = fsub <2 x double> %i.ajt, %i.ajy
  %i.akc = shufflevector <2 x double> %i.aka, <2 x double> %i.akb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.akd = getelementptr [8 x i8], ptr %i.dn, i64 %i.af
  %i.ake = getelementptr [8 x i8], ptr %i.fa, i64 %i.q
  %i.akf = getelementptr [8 x i8], ptr %i.ev, i64 %i.q
  %i.akg = getelementptr [8 x i8], ptr %i.jv, i64 %i.q
  %i.akh = getelementptr [8 x i8], ptr %i.jq, i64 %i.q
  %i.aki = getelementptr [8 x i8], ptr %i.ld, i64 %i.at
  %i.akj = insertelement <2 x double> %i.tg, double %i.gx, i64 1
  %i.akk = insertelement <2 x double> %i.ti, double %i.ha, i64 1
  %i.akl = fsub <2 x double> %i.akj, %i.akk       ; 3 uses
  %i.akm = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.akn = insertelement <2 x double> %i.akm, double %i.hc, i64 1
  %i.ako = insertelement <2 x double> poison, double %i.gu, i64 0
  %i.akp = insertelement <2 x double> %i.ako, double %i.he, i64 1
  %i.akq = fsub <2 x double> %i.akn, %i.akp       ; 3 uses
  %i.akr = fadd <2 x double> %i.akl, %i.akq       ; 3 uses
  %foldExtExtBinop2153 = fsub <2 x double> %i.akq, %i.akl ; 2 uses
  %i.aks = getelementptr [8 x i8], ptr %i.li, i64 %i.at
  %i.akt = getelementptr [8 x i8], ptr %i.di, i64 %i.at
  %i.aku = fsub <2 x double> %i.ts, %i.tu         ; 4 uses
  %i.akv = insertelement <2 x double> poison, double %i.kg, i64 0
  %i.akw = insertelement <2 x double> %i.akv, double %i.kb, i64 1
  %i.akx = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.aky = insertelement <2 x double> %i.akx, double %i.ke, i64 1
  %i.akz = fsub <2 x double> %i.akw, %i.aky       ; 4 uses
  %foldExtExtBinop2155 = fsub <2 x double> %i.aku, %i.akz
  %i.ala = extractelement <2 x double> %foldExtExtBinop2155, i64 0 ; 2 uses
  %i.alb = fadd <2 x double> %i.aku, %i.akz
  %i.alc = fsub <2 x double> %i.aku, %i.akz
  %i.ald = shufflevector <2 x double> %i.alb, <2 x double> %i.alc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ale = getelementptr [8 x i8], ptr %i.dn, i64 %i.at
  %i.alf = insertelement <2 x double> %i.rf, double %i.db, i64 1
  %i.alg = insertelement <2 x double> %i.rh, double %i.dd, i64 1
  %i.alh = fsub <2 x double> %i.alf, %i.alg       ; 3 uses
  %i.ali = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.alj = insertelement <2 x double> %i.ali, double %i.df, i64 1
  %i.alk = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.all = insertelement <2 x double> %i.alk, double %i.dh, i64 1
  %i.alm = fsub <2 x double> %i.alj, %i.all       ; 3 uses
  %i.aln = fadd <2 x double> %i.alh, %i.alm       ; 3 uses
  %foldExtExtBinop2160 = fsub <2 x double> %i.alm, %i.alh ; 2 uses
  %i.alo = fsub <2 x double> %i.qu, %i.qw         ; 4 uses
  %i.alp = insertelement <2 x double> poison, double %i.u, i64 0
  %i.alq = insertelement <2 x double> %i.alp, double %i.o, i64 1
  %i.alr = insertelement <2 x double> poison, double %i.w, i64 0
  %i.als = insertelement <2 x double> %i.alr, double %i.s, i64 1
  %i.alt = fsub <2 x double> %i.alq, %i.als       ; 4 uses
  %foldExtExtBinop2162 = fsub <2 x double> %i.alo, %i.alt
  %i.alu = extractelement <2 x double> %foldExtExtBinop2162, i64 0 ; 2 uses
  %i.alv = fadd <2 x double> %i.alo, %i.alt
  %i.alw = fsub <2 x double> %i.alo, %i.alt
  %i.alx = shufflevector <2 x double> %i.alv, <2 x double> %i.alw, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.aly = shufflevector <2 x double> %i.aib, <2 x double> %i.alh, <2 x i32> <i32 1, i32 3>
  %i.alz = shufflevector <2 x double> %i.aig, <2 x double> %i.alm, <2 x i32> <i32 1, i32 3>
  %i.ama = fsub <2 x double> %i.aly, %i.alz       ; 3 uses
  %i.amb = shufflevector <2 x double> %i.ama, <2 x double> %foldExtExtBinop2143, <2 x i32> <i32 0, i32 2>
  %i.amc = fadd <2 x double> %i.aih, %i.amb
  %i.amd = fmul <2 x double> %i.amc, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.ame = shufflevector <2 x double> %i.aih, <2 x double> %i.aln, <2 x i32> <i32 0, i32 2>
  %i.amf = fsub <2 x double> %i.ama, %i.ame
  %i.amg = fmul <2 x double> %i.amf, splat (double f0x3FE6A09E667F3BCD) ; 3 uses
  %i.amh = shufflevector <2 x double> %i.aim, <2 x double> %i.alo, <2 x i32> <i32 1, i32 3>
  %i.ami = shufflevector <2 x double> %i.air, <2 x double> %i.alt, <2 x i32> <i32 1, i32 3>
  %i.amj = fadd <2 x double> %i.amh, %i.ami       ; 3 uses
  %foldExtExtBinop2164 = fsub <2 x double> %i.amj, %i.amg
  %i.amk = shufflevector <2 x double> %foldExtExtBinop2164, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aml = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agr, <2 x double> %i.amk, <2 x double> %i.ajc) ; 2 uses
  %i.amm = extractelement <2 x double> %i.aml, i64 0
  store double %i.amm, ptr %i.agq, align 8, !tbaa !13
  %i.amn = extractelement <2 x double> %i.aml, i64 1
  store double %i.amn, ptr %i.ags, align 8, !tbaa !13
  %i.amo = load <2 x double>, ptr %i.agt, align 8, !tbaa !13 ; 2 uses
  %i.amp = fmul <2 x double> %i.amo, %i.ajf
  %i.amq = shufflevector <2 x double> %i.amp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.amr = fadd <2 x double> %i.amj, %i.amg       ; 2 uses
  %i.ams = shufflevector <2 x double> %i.amr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.amt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.amo, <2 x double> %i.ams, <2 x double> %i.amq) ; 2 uses
  %i.amu = extractelement <2 x double> %i.amt, i64 0
  store double %i.amu, ptr %i.agu, align 8, !tbaa !13
  %i.amv = extractelement <2 x double> %i.amt, i64 1
  store double %i.amv, ptr %i.agv, align 8, !tbaa !13
  %i.amw = load <2 x double>, ptr %i.agp, align 8, !tbaa !13 ; 2 uses
  %i.amx = fsub <2 x double> %i.aiv, %i.amd       ; 3 uses
  %i.amy = fadd <2 x double> %i.aiv, %i.amd       ; 3 uses
  %i.amz = fneg <2 x double> %i.amx
  %i.ana = shufflevector <2 x double> %i.amx, <2 x double> %i.amz, <2 x i32> <i32 1, i32 2>
  %i.anb = fneg <2 x double> %i.amy
  %i.anc = shufflevector <2 x double> %i.amy, <2 x double> %i.anb, <2 x i32> <i32 1, i32 2>
  %i.and = shufflevector <2 x double> %i.ama, <2 x double> %foldExtExtBinop2160, <2 x i32> <i32 1, i32 2>
  %i.ane = fadd <2 x double> %i.aln, %i.and
  %i.anf = fmul <2 x double> %i.ane, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %8 = shufflevector <2 x double> %foldExtExtBinop2160, <2 x double> %i.amj, <2 x i32> <i32 0, i32 3>
  %9 = shufflevector <2 x double> %i.aln, <2 x double> %i.amg, <2 x i32> <i32 1, i32 3>
  %foldExtExtBinop2166 = fsub <2 x double> %8, %9 ; 2 uses
  %10 = extractelement <2 x double> %foldExtExtBinop2166, i64 0
  %11 = fmul double %10, f0x3FE6A09E667F3BCD      ; 2 uses
  %i.ang = fsub double %i.alu, %11                ; 2 uses
  %i.anh = fadd double %i.alu, %11                ; 2 uses
  %i.ani = fneg double %i.ang
  %i.anj = insertelement <2 x double> poison, double %i.ang, i64 0
  %i.ank = insertelement <2 x double> %i.anj, double %i.ani, i64 1
  %i.anl = shufflevector <2 x double> %foldExtExtBinop2166, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.anm = fneg double %i.anh
  %i.ann = insertelement <2 x double> poison, double %i.anh, i64 0
  %i.ano = insertelement <2 x double> %i.ann, double %i.anm, i64 1
  %i.anp = shufflevector <2 x double> %i.amr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.anq = fmul <2 x double> %i.amw, %i.ank
  %i.anr = shufflevector <2 x double> %i.anq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ans = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.amw, <2 x double> %i.anl, <2 x double> %i.anr) ; 2 uses
  %i.ant = extractelement <2 x double> %i.ans, i64 0
  store double %i.ant, ptr %i.fa, align 8, !tbaa !13
  %i.anu = extractelement <2 x double> %i.ans, i64 1
  store double %i.anu, ptr %i.ev, align 8, !tbaa !13
  %i.anv = load <2 x double>, ptr %i.agt, align 8, !tbaa !13 ; 2 uses
  %i.anw = fmul <2 x double> %i.anv, %i.ano
  %i.anx = shufflevector <2 x double> %i.anw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.any = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.anv, <2 x double> %i.anp, <2 x double> %i.anx) ; 2 uses
  %i.anz = extractelement <2 x double> %i.any, i64 0
  store double %i.anz, ptr %i.jv, align 8, !tbaa !13
  %i.aoa = extractelement <2 x double> %i.any, i64 1
  store double %i.aoa, ptr %i.jq, align 8, !tbaa !13
  %i.aob = load <2 x double>, ptr %i.agw, align 8, !tbaa !13 ; 2 uses
  %i.aoc = shufflevector <2 x double> %i.aob, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aod = shufflevector <2 x double> %i.aob, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aoe = fsub <2 x double> %i.alx, %i.anf       ; 3 uses
  %i.aof = fadd <2 x double> %i.alx, %i.anf       ; 3 uses
  %i.aog = fneg <2 x double> %i.aoe
  %i.aoh = shufflevector <2 x double> %i.aoe, <2 x double> %i.aog, <2 x i32> <i32 1, i32 2>
  %i.aoi = fneg <2 x double> %i.aof
  %i.aoj = shufflevector <2 x double> %i.aof, <2 x double> %i.aoi, <2 x i32> <i32 1, i32 2>
  %i.aok = insertelement <2 x double> %i.oj, double %i.ar, i64 1
  %i.aol = insertelement <2 x double> %i.ol, double %i.aw, i64 1
  %i.aom = fsub <2 x double> %i.aok, %i.aol       ; 3 uses
  %i.aon = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.aoo = insertelement <2 x double> %i.aon, double %i.ay, i64 1
  %i.aop = insertelement <2 x double> poison, double %i.am, i64 0
  %i.aoq = insertelement <2 x double> %i.aop, double %i.ba, i64 1
  %i.aor = fsub <2 x double> %i.aoo, %i.aoq       ; 3 uses
  %i.aos = fadd <2 x double> %i.aom, %i.aor       ; 3 uses
  %foldExtExtBinop2168 = fsub <2 x double> %i.aor, %i.aom ; 2 uses
  %i.aot = fsub <2 x double> %i.ow, %i.oy         ; 4 uses
  %i.aou = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.aov = insertelement <2 x double> %i.aou, double %i.dt, i64 1
  %i.aow = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.aox = insertelement <2 x double> %i.aow, double %i.dw, i64 1
  %i.aoy = fsub <2 x double> %i.aov, %i.aox       ; 4 uses
  %foldExtExtBinop2170.a = fsub <2 x double> %i.aot, %i.aoy
  %i.aoz = extractelement <2 x double> %foldExtExtBinop2170.a, i64 0 ; 2 uses
  %i.apa = fadd <2 x double> %i.aot, %i.aoy
  %i.apb = fsub <2 x double> %i.aot, %i.aoy
  %i.apc = shufflevector <2 x double> %i.apa, <2 x double> %i.apb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.apd = shufflevector <2 x double> %i.aha, <2 x double> %i.ajk, <2 x i32> <i32 1, i32 3>
  %i.ape = shufflevector <2 x double> %i.ahf, <2 x double> %i.ajp, <2 x i32> <i32 1, i32 3>
  %i.apf = fsub <2 x double> %i.apd, %i.ape       ; 3 uses
  %i.apg = shufflevector <2 x double> %i.apf, <2 x double> %foldExtExtBinop2139, <2 x i32> <i32 0, i32 2>
  %i.aph = fadd <2 x double> %i.ahg, %i.apg
  %i.api = fmul <2 x double> %i.aph, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.apj = fsub <2 x double> %i.ahs, %i.api       ; 3 uses
  %i.apk = fadd <2 x double> %i.api, %i.ahs       ; 3 uses
  %i.apl = fneg <2 x double> %i.apj
  %i.apm = shufflevector <2 x double> %i.apj, <2 x double> %i.apl, <2 x i32> <i32 1, i32 2>
  %i.apn = fneg <2 x double> %i.apk
  %i.apo = shufflevector <2 x double> %i.apk, <2 x double> %i.apn, <2 x i32> <i32 1, i32 2>
  %i.app = shufflevector <2 x double> %i.apf, <2 x double> %foldExtExtBinop2149, <2 x i32> <i32 1, i32 2>
  %i.apq = fadd <2 x double> %i.ajq, %i.app
  %i.apr = fmul <2 x double> %i.apq, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.aps = shufflevector <2 x double> %i.ahj, <2 x double> %i.ajt, <2 x i32> <i32 1, i32 3>
  %i.apt = shufflevector <2 x double> %i.aho, <2 x double> %i.ajy, <2 x i32> <i32 1, i32 3>
  %i.apu = fadd <2 x double> %i.aps, %i.apt       ; 3 uses
  %i.apv = fsub <2 x double> %i.akc, %i.apr       ; 3 uses
  %i.apw = fadd <2 x double> %i.apr, %i.akc       ; 3 uses
  %i.apx = fneg <2 x double> %i.apv
  %i.apy = shufflevector <2 x double> %i.apv, <2 x double> %i.apx, <2 x i32> <i32 1, i32 2>
  %i.apz = fneg <2 x double> %i.apw
  %i.aqa = shufflevector <2 x double> %i.apw, <2 x double> %i.apz, <2 x i32> <i32 1, i32 2>
  %i.aqb = fmul <2 x double> %i.apm, %i.aoc
  %i.aqc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aod, <2 x double> %i.apj, <2 x double> %i.aqb) ; 2 uses
  %i.aqd = extractelement <2 x double> %i.aqc, i64 0
  store double %i.aqd, ptr %i.agx, align 8, !tbaa !13
  %i.aqe = extractelement <2 x double> %i.aqc, i64 1
  store double %i.aqe, ptr %i.ahh, align 8, !tbaa !13
  %i.aqf = load <2 x double>, ptr %.021092116, align 8, !tbaa !13 ; 2 uses
  %i.aqg = shufflevector <2 x double> %i.aqf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aqh = fmul <2 x double> %i.apo, %i.aqg
  %i.aqi = shufflevector <2 x double> %i.aqf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aqj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aqi, <2 x double> %i.apk, <2 x double> %i.aqh) ; 2 uses
  %i.aqk = extractelement <2 x double> %i.aqj, i64 0
  store double %i.aqk, ptr %i.ahi, align 8, !tbaa !13
  %i.aql = extractelement <2 x double> %i.aqj, i64 1
  store double %i.aql, ptr %i.aht, align 8, !tbaa !13
  %i.aqm = load <2 x double>, ptr %i.agp, align 8, !tbaa !13 ; 2 uses
  %i.aqn = shufflevector <2 x double> %i.ahg, <2 x double> %i.ajq, <2 x i32> <i32 0, i32 2>
  %i.aqo = fsub <2 x double> %i.apf, %i.aqn
  %i.aqp = fmul <2 x double> %i.aqo, splat (double f0x3FE6A09E667F3BCD) ; 3 uses
  %12 = shufflevector <2 x double> %i.apu, <2 x double> %foldExtExtBinop2139, <2 x i32> <i32 0, i32 2>
  %13 = shufflevector <2 x double> %i.aqp, <2 x double> %i.ahg, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop2180 = fsub <2 x double> %12, %13 ; 2 uses
  %i.aqq = extractelement <2 x double> %foldExtExtBinop2180, i64 1
  %i.aqr = fmul double %i.aqq, f0x3FE6A09E667F3BCD ; 2 uses
  %i.aqs = fsub double %i.ahp, %i.aqr             ; 2 uses
  %i.aqt = fadd double %i.aqr, %i.ahp             ; 2 uses
  %i.aqu = fneg double %i.aqs
  %i.aqv = insertelement <2 x double> poison, double %i.aqs, i64 0
  %i.aqw = insertelement <2 x double> %i.aqv, double %i.aqu, i64 1
  %14 = fneg double %i.aqt
  %15 = insertelement <2 x double> poison, double %i.aqt, i64 0
  %i.aqx = insertelement <2 x double> %15, double %14, i64 1
  %16 = shufflevector <2 x double> %foldExtExtBinop2180, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = fadd <2 x double> %i.aqp, %i.apu          ; 2 uses
  %18 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %19 = shufflevector <2 x double> %i.apu, <2 x double> %foldExtExtBinop2149, <2 x i32> <i32 1, i32 2>
  %20 = shufflevector <2 x double> %i.aqp, <2 x double> %i.ajq, <2 x i32> <i32 1, i32 3>
  %foldExtExtBinop2183 = fsub <2 x double> %19, %20 ; 2 uses
  %i.aqy = extractelement <2 x double> %foldExtExtBinop2183, i64 1
  %i.aqz = fmul double %i.aqy, f0x3FE6A09E667F3BCD ; 2 uses
  %i.ara = fsub double %i.ajz, %i.aqz             ; 2 uses
  %i.arb = fadd double %i.aqz, %i.ajz             ; 2 uses
  %i.arc = fneg double %i.ara
  %i.ard = insertelement <2 x double> poison, double %i.ara, i64 0
  %i.are = insertelement <2 x double> %i.ard, double %i.arc, i64 1
  %21 = shufflevector <2 x double> %foldExtExtBinop2183, <2 x double> poison, <2 x i32> zeroinitializer
  %i.arf = fneg double %i.arb
  %i.arg = insertelement <2 x double> poison, double %i.arb, i64 0
  %i.arh = insertelement <2 x double> %i.arg, double %i.arf, i64 1
  %22 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ari = shufflevector <2 x double> %i.aom, <2 x double> %i.akl, <2 x i32> <i32 1, i32 3>
  %i.arj = shufflevector <2 x double> %i.aor, <2 x double> %i.akq, <2 x i32> <i32 1, i32 3>
  %i.ark = fsub <2 x double> %i.ari, %i.arj       ; 3 uses
  %i.arl = shufflevector <2 x double> %i.ark, <2 x double> %foldExtExtBinop2153, <2 x i32> <i32 1, i32 2>
  %i.arm = fadd <2 x double> %i.akr, %i.arl
  %i.arn = fmul <2 x double> %i.arm, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.aro = fsub <2 x double> %i.ald, %i.arn       ; 3 uses
  %i.arp = fadd <2 x double> %i.arn, %i.ald       ; 3 uses
  %i.arq = fneg <2 x double> %i.aro
  %i.arr = shufflevector <2 x double> %i.aro, <2 x double> %i.arq, <2 x i32> <i32 1, i32 2>
  %i.ars = fneg <2 x double> %i.arp
  %i.art = shufflevector <2 x double> %i.arp, <2 x double> %i.ars, <2 x i32> <i32 1, i32 2>
  %i.aru = shufflevector <2 x double> %i.ark, <2 x double> %foldExtExtBinop2168, <2 x i32> <i32 0, i32 2>
  %i.arv = fadd <2 x double> %i.aos, %i.aru
  %i.arw = fmul <2 x double> %i.arv, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.arx = shufflevector <2 x double> %i.aot, <2 x double> %i.aku, <2 x i32> <i32 1, i32 3>
  %i.ary = shufflevector <2 x double> %i.aoy, <2 x double> %i.akz, <2 x i32> <i32 1, i32 3>
  %i.arz = fadd <2 x double> %i.arx, %i.ary       ; 3 uses
  %i.asa = fsub <2 x double> %i.apc, %i.arw       ; 3 uses
  %i.asb = fadd <2 x double> %i.arw, %i.apc       ; 3 uses
  %i.asc = fneg <2 x double> %i.asa
  %i.asd = shufflevector <2 x double> %i.asa, <2 x double> %i.asc, <2 x i32> <i32 1, i32 2>
  %i.ase = fneg <2 x double> %i.asb
  %i.asf = shufflevector <2 x double> %i.asb, <2 x double> %i.ase, <2 x i32> <i32 1, i32 2>
  %i.asg = shufflevector <2 x double> %i.aos, <2 x double> %i.akr, <2 x i32> <i32 0, i32 2>
  %i.ash = fsub <2 x double> %i.ark, %i.asg
  %i.asi = fmul <2 x double> %i.ash, splat (double f0x3FE6A09E667F3BCD) ; 3 uses
  %23 = shufflevector <2 x double> %i.arz, <2 x double> %foldExtExtBinop2168, <2 x i32> <i32 0, i32 2>
  %24 = shufflevector <2 x double> %i.asi, <2 x double> %i.aos, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop2185 = fsub <2 x double> %23, %24 ; 2 uses
  %25 = extractelement <2 x double> %foldExtExtBinop2185, i64 1
  %26 = fmul double %25, f0x3FE6A09E667F3BCD      ; 2 uses
  %27 = fsub double %i.aoz, %26                   ; 2 uses
  %28 = fadd double %26, %i.aoz                   ; 2 uses
  %29 = fneg double %27
  %30 = insertelement <2 x double> poison, double %27, i64 0
  %31 = insertelement <2 x double> %30, double %29, i64 1
  %32 = fneg double %28
  %33 = insertelement <2 x double> poison, double %28, i64 0
  %34 = insertelement <2 x double> %33, double %32, i64 1
  %i.asj = shufflevector <2 x double> %foldExtExtBinop2185, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ask = fadd <2 x double> %i.asi, %i.arz       ; 2 uses
  %i.asl = shufflevector <2 x double> %i.ask, <2 x double> poison, <2 x i32> zeroinitializer
  %35 = shufflevector <2 x double> %i.arz, <2 x double> %foldExtExtBinop2153, <2 x i32> <i32 1, i32 2>
  %36 = shufflevector <2 x double> %i.asi, <2 x double> %i.akr, <2 x i32> <i32 1, i32 3>
  %foldExtExtBinop2190 = fsub <2 x double> %35, %36 ; 2 uses
  %i.asm = extractelement <2 x double> %foldExtExtBinop2190, i64 1
  %i.asn = fmul double %i.asm, f0x3FE6A09E667F3BCD ; 2 uses
  %i.aso = fsub double %i.ala, %i.asn             ; 2 uses
  %i.asp = fadd double %i.asn, %i.ala             ; 2 uses
  %i.asq = fneg double %i.aso
  %i.asr = insertelement <2 x double> poison, double %i.aso, i64 0
  %i.ass = insertelement <2 x double> %i.asr, double %i.asq, i64 1
  %37 = shufflevector <2 x double> %foldExtExtBinop2190, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ast = fneg double %i.asp
  %i.asu = insertelement <2 x double> poison, double %i.asp, i64 0
  %i.asv = insertelement <2 x double> %i.asu, double %i.ast, i64 1
  %i.asw = shufflevector <2 x double> %i.ask, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.asx = insertelement <2 x double> %i.xc, double %i.ji, i64 1
  %i.asy = insertelement <2 x double> %i.xe, double %i.jl, i64 1
  %i.asz = fsub <2 x double> %i.asx, %i.asy       ; 3 uses
  %i.ata = insertelement <2 x double> poison, double %i.jd, i64 0
  %i.atb = insertelement <2 x double> %i.ata, double %i.jn, i64 1
  %i.atc = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.atd = insertelement <2 x double> %i.atc, double %i.jp, i64 1
  %i.ate = fsub <2 x double> %i.atb, %i.atd       ; 3 uses
  %i.atf = fadd <2 x double> %i.asz, %i.ate       ; 3 uses
  %foldExtExtBinop2192 = fsub <2 x double> %i.ate, %i.asz ; 2 uses
  %shift2194 = shufflevector <2 x double> %i.atf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2195 = fsub <2 x double> %foldExtExtBinop2192, %shift2194
  %i.atg = extractelement <2 x double> %foldExtExtBinop2195, i64 0
  %i.ath = fmul double %i.atg, f0x3FE6A09E667F3BCD ; 2 uses
  %i.ati = fsub <2 x double> %i.ws, %i.wu         ; 4 uses
  %i.atj = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.atk = insertelement <2 x double> %i.atj, double %i.gb, i64 1
  %i.atl = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.atm = insertelement <2 x double> %i.atl, double %i.ge, i64 1
  %i.atn = fsub <2 x double> %i.atk, %i.atm       ; 4 uses
  %foldExtExtBinop2197 = fsub <2 x double> %i.ati, %i.atn
  %i.ato = extractelement <2 x double> %foldExtExtBinop2197, i64 0 ; 2 uses
  %i.atp = fadd <2 x double> %i.ati, %i.atn
  %i.atq = fsub <2 x double> %i.ati, %i.atn
  %i.atr = shufflevector <2 x double> %i.atp, <2 x double> %i.atq, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ats = fsub double %i.ato, %i.ath             ; 2 uses
  %i.att = fadd double %i.ato, %i.ath             ; 2 uses
  %i.atu = fneg double %i.ats
  %i.atv = insertelement <2 x double> poison, double %i.ats, i64 0
  %i.atw = insertelement <2 x double> %i.atv, double %i.atu, i64 1
  %i.atx = fneg double %i.att
  %i.aty = insertelement <2 x double> poison, double %i.att, i64 0
  %i.atz = insertelement <2 x double> %i.aty, double %i.atx, i64 1
  %i.aua = fmul <2 x double> %i.aqm, %i.atw
  %i.aub = shufflevector <2 x double> %i.aua, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.auc = insertelement <2 x double> %i.ns, double %i.en, i64 1
  %i.aud = insertelement <2 x double> %i.nu, double %i.eq, i64 1
  %i.aue = fsub <2 x double> %i.auc, %i.aud       ; 3 uses
  %i.auf = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.aug = insertelement <2 x double> %i.auf, double %i.es, i64 1
  %i.auh = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.aui = insertelement <2 x double> %i.auh, double %i.eu, i64 1
  %i.auj = fsub <2 x double> %i.aug, %i.aui       ; 3 uses
  %i.auk = fadd <2 x double> %i.aue, %i.auj       ; 3 uses
  %foldExtExtBinop2202 = fsub <2 x double> %i.auj, %i.aue ; 2 uses
  %i.aul = fsub <2 x double> %i.ni, %i.nk         ; 4 uses
  %i.aum = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.aun = insertelement <2 x double> %i.aum, double %i.bo, i64 1
  %i.auo = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.aup = insertelement <2 x double> %i.auo, double %i.br, i64 1
  %i.auq = fsub <2 x double> %i.aun, %i.aup       ; 4 uses
  %foldExtExtBinop2204 = fsub <2 x double> %i.aul, %i.auq
  %i.aur = extractelement <2 x double> %foldExtExtBinop2204, i64 0 ; 2 uses
  %i.aus = fadd <2 x double> %i.aul, %i.auq
  %i.aut = fsub <2 x double> %i.aul, %i.auq
  %i.auu = shufflevector <2 x double> %i.aus, <2 x double> %i.aut, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.auv = shufflevector <2 x double> %i.asz, <2 x double> %i.aue, <2 x i32> <i32 1, i32 3>
  %i.auw = shufflevector <2 x double> %i.ate, <2 x double> %i.auj, <2 x i32> <i32 1, i32 3>
  %i.aux = fsub <2 x double> %i.auv, %i.auw       ; 3 uses
  %i.auy = shufflevector <2 x double> %i.aux, <2 x double> %foldExtExtBinop2192, <2 x i32> <i32 0, i32 2>
  %i.auz = fadd <2 x double> %i.atf, %i.auy
  %i.ava = fmul <2 x double> %i.auz, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.avb = shufflevector <2 x double> %i.atf, <2 x double> %i.auk, <2 x i32> <i32 0, i32 2>
  %i.avc = fsub <2 x double> %i.aux, %i.avb
  %i.avd = fmul <2 x double> %i.avc, splat (double f0x3FE6A09E667F3BCD) ; 3 uses
  %i.ave = shufflevector <2 x double> %i.ati, <2 x double> %i.aul, <2 x i32> <i32 1, i32 3>
  %i.avf = shufflevector <2 x double> %i.atn, <2 x double> %i.auq, <2 x i32> <i32 1, i32 3>
  %i.avg = fadd <2 x double> %i.ave, %i.avf       ; 3 uses
  %foldExtExtBinop2206 = fsub <2 x double> %i.avg, %i.avd
  %i.avh = shufflevector <2 x double> %foldExtExtBinop2206, <2 x double> poison, <2 x i32> zeroinitializer
  %i.avi = fadd <2 x double> %i.avg, %i.avd       ; 2 uses
  %i.avj = shufflevector <2 x double> %i.avi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.avk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aqm, <2 x double> %i.avh, <2 x double> %i.aub) ; 2 uses
  %i.avl = extractelement <2 x double> %i.avk, i64 0
  store double %i.avl, ptr %i.ahu, align 8, !tbaa !13
  %i.avm = extractelement <2 x double> %i.avk, i64 1
  store double %i.avm, ptr %i.ahv, align 8, !tbaa !13
  %i.avn = load <2 x double>, ptr %i.agt, align 8, !tbaa !13 ; 2 uses
  %i.avo = fmul <2 x double> %i.avn, %i.atz
  %i.avp = shufflevector <2 x double> %i.avo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.avq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avn, <2 x double> %i.avj, <2 x double> %i.avp) ; 2 uses
  %i.avr = extractelement <2 x double> %i.avq, i64 0
  store double %i.avr, ptr %i.ahw, align 8, !tbaa !13
  %i.avs = extractelement <2 x double> %i.avq, i64 1
  store double %i.avs, ptr %i.ahx, align 8, !tbaa !13
  %i.avt = load <2 x double>, ptr %i.agw, align 8, !tbaa !13 ; 2 uses
  %i.avu = shufflevector <2 x double> %i.avt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.avv = fmul <2 x double> %i.ana, %i.avu
  %i.avw = shufflevector <2 x double> %i.avt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.avx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avw, <2 x double> %i.amx, <2 x double> %i.avv) ; 2 uses
  %i.avy = extractelement <2 x double> %i.avx, i64 0
  store double %i.avy, ptr %i.ahy, align 8, !tbaa !13
  %i.avz = extractelement <2 x double> %i.avx, i64 1
  store double %i.avz, ptr %i.aik, align 8, !tbaa !13
  %i.awa = load <2 x double>, ptr %.021092116, align 8, !tbaa !13 ; 2 uses
  %i.awb = shufflevector <2 x double> %i.awa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.awc = fmul <2 x double> %i.anc, %i.awb
  %i.awd = shufflevector <2 x double> %i.awa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.awe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.awd, <2 x double> %i.amy, <2 x double> %i.awc) ; 2 uses
  %i.awf = extractelement <2 x double> %i.awe, i64 0
  store double %i.awf, ptr %i.ail, align 8, !tbaa !13
  %i.awg = extractelement <2 x double> %i.awe, i64 1
  store double %i.awg, ptr %i.ajg, align 8, !tbaa !13
  %i.awh = load <2 x double>, ptr %i.agw, align 8, !tbaa !13 ; 2 uses
  %i.awi = shufflevector <2 x double> %i.awh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.awj = shufflevector <2 x double> %i.awh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.awk = fmul <2 x double> %i.apy, %i.awi
  %i.awl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.awj, <2 x double> %i.apv, <2 x double> %i.awk) ; 2 uses
  %i.awm = extractelement <2 x double> %i.awl, i64 0
  store double %i.awm, ptr %i.ajh, align 8, !tbaa !13
  %i.awn = extractelement <2 x double> %i.awl, i64 1
  store double %i.awn, ptr %i.ajr, align 8, !tbaa !13
  %i.awo = load <2 x double>, ptr %.021092116, align 8, !tbaa !13 ; 2 uses
  %i.awp = shufflevector <2 x double> %i.awo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.awq = fmul <2 x double> %i.aqa, %i.awp
  %i.awr = shufflevector <2 x double> %i.awo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aws = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.awr, <2 x double> %i.apw, <2 x double> %i.awq) ; 2 uses
  %i.awt = extractelement <2 x double> %i.aws, i64 0
  store double %i.awt, ptr %i.ajs, align 8, !tbaa !13
  %i.awu = extractelement <2 x double> %i.aws, i64 1
  store double %i.awu, ptr %i.akd, align 8, !tbaa !13
  %i.awv = load <2 x double>, ptr %i.agp, align 8, !tbaa !13 ; 2 uses
  %i.aww = fsub <2 x double> %i.atr, %i.ava       ; 3 uses
  %i.awx = fadd <2 x double> %i.atr, %i.ava       ; 3 uses
  %i.awy = fneg <2 x double> %i.aww
  %i.awz = shufflevector <2 x double> %i.aww, <2 x double> %i.awy, <2 x i32> <i32 1, i32 2>
  %i.axa = fneg <2 x double> %i.awx
  %i.axb = shufflevector <2 x double> %i.awx, <2 x double> %i.axa, <2 x i32> <i32 1, i32 2>
  %i.axc = shufflevector <2 x double> %i.aux, <2 x double> %foldExtExtBinop2202, <2 x i32> <i32 1, i32 2>
  %i.axd = fadd <2 x double> %i.auk, %i.axc
  %i.axe = fmul <2 x double> %i.axd, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %38 = shufflevector <2 x double> %foldExtExtBinop2202, <2 x double> %i.avg, <2 x i32> <i32 0, i32 3>
  %39 = shufflevector <2 x double> %i.auk, <2 x double> %i.avd, <2 x i32> <i32 1, i32 3>
  %foldExtExtBinop2208 = fsub <2 x double> %38, %39 ; 2 uses
  %40 = extractelement <2 x double> %foldExtExtBinop2208, i64 0
  %41 = fmul double %40, f0x3FE6A09E667F3BCD      ; 2 uses
  %i.axf = fsub double %i.aur, %41                ; 2 uses
  %i.axg = fadd double %i.aur, %41                ; 2 uses
  %i.axh = fneg double %i.axf
  %i.axi = insertelement <2 x double> poison, double %i.axf, i64 0
  %i.axj = insertelement <2 x double> %i.axi, double %i.axh, i64 1
  %i.axk = shufflevector <2 x double> %foldExtExtBinop2208, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.axl = fneg double %i.axg
  %i.axm = insertelement <2 x double> poison, double %i.axg, i64 0
  %i.axn = insertelement <2 x double> %i.axm, double %i.axl, i64 1
  %i.axo = shufflevector <2 x double> %i.avi, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.axp = fmul <2 x double> %i.awv, %i.axj
  %i.axq = shufflevector <2 x double> %i.axp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.axr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.awv, <2 x double> %i.axk, <2 x double> %i.axq) ; 2 uses
  %i.axs = extractelement <2 x double> %i.axr, i64 0
  store double %i.axs, ptr %i.ake, align 8, !tbaa !13
  %i.axt = extractelement <2 x double> %i.axr, i64 1
  store double %i.axt, ptr %i.akf, align 8, !tbaa !13
  %i.axu = load <2 x double>, ptr %i.agt, align 8, !tbaa !13 ; 2 uses
  %i.axv = fmul <2 x double> %i.axu, %i.axn
  %i.axw = shufflevector <2 x double> %i.axv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.axx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axu, <2 x double> %i.axo, <2 x double> %i.axw) ; 2 uses
  %i.axy = extractelement <2 x double> %i.axx, i64 0
  store double %i.axy, ptr %i.akg, align 8, !tbaa !13
  %i.axz = extractelement <2 x double> %i.axx, i64 1
  store double %i.axz, ptr %i.akh, align 8, !tbaa !13
  %i.aya = load <2 x double>, ptr %i.agw, align 8, !tbaa !13 ; 2 uses
  %i.ayb = shufflevector <2 x double> %i.aya, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ayc = shufflevector <2 x double> %i.aya, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ayd = fmul <2 x double> %i.arr, %i.ayb
  %i.aye = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ayc, <2 x double> %i.aro, <2 x double> %i.ayd) ; 2 uses
  %i.ayf = extractelement <2 x double> %i.aye, i64 0
  store double %i.ayf, ptr %i.aki, align 8, !tbaa !13
  %i.ayg = extractelement <2 x double> %i.aye, i64 1
  store double %i.ayg, ptr %i.aks, align 8, !tbaa !13
  %i.ayh = load <2 x double>, ptr %.021092116, align 8, !tbaa !13 ; 2 uses
  %i.ayi = shufflevector <2 x double> %i.ayh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ayj = fmul <2 x double> %i.art, %i.ayi
  %i.ayk = shufflevector <2 x double> %i.ayh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ayl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ayk, <2 x double> %i.arp, <2 x double> %i.ayj) ; 2 uses
  %i.aym = extractelement <2 x double> %i.ayl, i64 0
  store double %i.aym, ptr %i.akt, align 8, !tbaa !13
  %i.ayn = extractelement <2 x double> %i.ayl, i64 1
  store double %i.ayn, ptr %i.ale, align 8, !tbaa !13
  %i.ayo = load <2 x double>, ptr %i.agw, align 8, !tbaa !13 ; 2 uses
  %i.ayp = shufflevector <2 x double> %i.ayo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ayq = fmul <2 x double> %i.aoh, %i.ayp
  %i.ayr = shufflevector <2 x double> %i.ayo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ays = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ayr, <2 x double> %i.aoe, <2 x double> %i.ayq) ; 2 uses
  %i.ayt = extractelement <2 x double> %i.ays, i64 0
  store double %i.ayt, ptr %i.ld, align 8, !tbaa !13
  %i.ayu = extractelement <2 x double> %i.ays, i64 1
  store double %i.ayu, ptr %i.li, align 8, !tbaa !13
  %i.ayv = load <2 x double>, ptr %.021092116, align 8, !tbaa !13 ; 2 uses
  %i.ayw = shufflevector <2 x double> %i.ayv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ayx = fmul <2 x double> %i.aoj, %i.ayw
  %i.ayy = shufflevector <2 x double> %i.ayv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ayz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ayy, <2 x double> %i.aof, <2 x double> %i.ayx) ; 2 uses
  %i.aza = extractelement <2 x double> %i.ayz, i64 0
  store double %i.aza, ptr %i.di, align 8, !tbaa !13
  %i.azb = extractelement <2 x double> %i.ayz, i64 1
  store double %i.azb, ptr %i.dn, align 8, !tbaa !13
  %i.azc = load i64, ptr %i.ia, align 8, !tbaa !11 ; 2 uses
  %i.azd = load i64, ptr %i.z, align 8, !tbaa !11 ; 8 uses
  %i.aze = getelementptr [8 x i8], ptr %.02118, i64 %i.azc ; 3 uses
  %i.azf = getelementptr [8 x i8], ptr %i.aze, i64 %i.azd
  %i.azg = load <2 x double>, ptr %i.agw, align 8, !tbaa !13 ; 2 uses
  %i.azh = shufflevector <2 x double> %i.azg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.azi = shufflevector <2 x double> %i.azg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.azj = getelementptr [8 x i8], ptr %.021082117, i64 %i.azc ; 3 uses
  %i.azk = getelementptr [8 x i8], ptr %i.azj, i64 %i.azd
  %i.azl = load i64, ptr %i.x, align 8, !tbaa !11 ; 2 uses
  %i.azm = getelementptr [8 x i8], ptr %.02118, i64 %i.azl ; 3 uses
  %i.azn = getelementptr [8 x i8], ptr %i.azm, i64 %i.azd
  %i.azo = fmul <2 x double> %i.asd, %i.azh
  %i.azp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.azi, <2 x double> %i.asa, <2 x double> %i.azo) ; 2 uses
  %i.azq = extractelement <2 x double> %i.azp, i64 0
  store double %i.azq, ptr %i.azf, align 8, !tbaa !13
  %i.azr = extractelement <2 x double> %i.azp, i64 1
  store double %i.azr, ptr %i.azk, align 8, !tbaa !13
  %i.azs = load <2 x double>, ptr %.021092116, align 8, !tbaa !13 ; 2 uses
  %i.azt = shufflevector <2 x double> %i.azs, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.azu = fmul <2 x double> %i.asf, %i.azt
  %i.azv = shufflevector <2 x double> %i.azs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.azw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.azv, <2 x double> %i.asb, <2 x double> %i.azu) ; 2 uses
  %i.azx = extractelement <2 x double> %i.azw, i64 0
  store double %i.azx, ptr %i.azn, align 8, !tbaa !13
  %i.azy = getelementptr [8 x i8], ptr %.021082117, i64 %i.azl ; 3 uses
  %i.azz = getelementptr [8 x i8], ptr %i.azy, i64 %i.azd
  %i.baa = extractelement <2 x double> %i.azw, i64 1
  store double %i.baa, ptr %i.azz, align 8, !tbaa !13
  %i.bab = load i64, ptr %i.bw, align 8, !tbaa !11 ; 2 uses
  %i.bac = load i64, ptr %i.an, align 8, !tbaa !11 ; 4 uses
  %i.bad = getelementptr [8 x i8], ptr %.021082117, i64 %i.bab ; 4 uses
  %i.bae = getelementptr [8 x i8], ptr %i.bad, i64 %i.bac
  %i.baf = load <2 x double>, ptr %i.agp, align 8, !tbaa !13 ; 2 uses
  %i.bag = fmul <2 x double> %i.baf, %i.aqw
  %i.bah = shufflevector <2 x double> %i.bag, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.baf, <2 x double> %16, <2 x double> %i.bah) ; 2 uses
  %i.baj = extractelement <2 x double> %i.bai, i64 0
  store double %i.baj, ptr %i.bae, align 8, !tbaa !13
  %i.bak = getelementptr [8 x i8], ptr %.02118, i64 %i.bab ; 4 uses
  %i.bal = getelementptr [8 x i8], ptr %i.bak, i64 %i.bac
  %i.bam = extractelement <2 x double> %i.bai, i64 1
  store double %i.bam, ptr %i.bal, align 8, !tbaa !13
  %i.ban = load i64, ptr %i.gj, align 8, !tbaa !11 ; 2 uses
  %i.bao = getelementptr [8 x i8], ptr %.021082117, i64 %i.ban ; 4 uses
  %i.bap = getelementptr [8 x i8], ptr %i.bao, i64 %i.bac
  %i.baq = load <2 x double>, ptr %i.agt, align 8, !tbaa !13 ; 2 uses
  %i.bar = fmul <2 x double> %i.baq, %i.aqx
  %i.bas = shufflevector <2 x double> %i.bar, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bat = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.baq, <2 x double> %18, <2 x double> %i.bas) ; 2 uses
  %i.bau = extractelement <2 x double> %i.bat, i64 0
  store double %i.bau, ptr %i.bap, align 8, !tbaa !13
  %i.bav = getelementptr [8 x i8], ptr %.02118, i64 %i.ban ; 4 uses
  %i.baw = getelementptr [8 x i8], ptr %i.bav, i64 %i.bac
  %i.bax = extractelement <2 x double> %i.bat, i64 1
  store double %i.bax, ptr %i.baw, align 8, !tbaa !13
  %i.bay = load i64, ptr %i.ae, align 8, !tbaa !11 ; 4 uses
  %i.baz = getelementptr [8 x i8], ptr %i.bad, i64 %i.bay
  %i.bba = load <2 x double>, ptr %i.agp, align 8, !tbaa !13 ; 2 uses
  %i.bbb = fmul <2 x double> %i.bba, %i.are
  %i.bbc = shufflevector <2 x double> %i.bbb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bbd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bba, <2 x double> %21, <2 x double> %i.bbc) ; 2 uses
  %i.bbe = extractelement <2 x double> %i.bbd, i64 0
  store double %i.bbe, ptr %i.baz, align 8, !tbaa !13
  %i.bbf = getelementptr [8 x i8], ptr %i.bak, i64 %i.bay
  %i.bbg = extractelement <2 x double> %i.bbd, i64 1
  store double %i.bbg, ptr %i.bbf, align 8, !tbaa !13
  %i.bbh = getelementptr [8 x i8], ptr %i.bao, i64 %i.bay
  %i.bbi = load <2 x double>, ptr %i.agt, align 8, !tbaa !13 ; 2 uses
  %i.bbj = fmul <2 x double> %i.bbi, %i.arh
  %i.bbk = shufflevector <2 x double> %i.bbj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bbl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bbi, <2 x double> %22, <2 x double> %i.bbk) ; 2 uses
  %i.bbm = extractelement <2 x double> %i.bbl, i64 0
  store double %i.bbm, ptr %i.bbh, align 8, !tbaa !13
  %i.bbn = getelementptr [8 x i8], ptr %i.bav, i64 %i.bay
  %i.bbo = extractelement <2 x double> %i.bbl, i64 1
  store double %i.bbo, ptr %i.bbn, align 8, !tbaa !13
  %i.bbp = getelementptr [8 x i8], ptr %i.bad, i64 %i.azd
  %i.bbq = load <2 x double>, ptr %i.agp, align 8, !tbaa !13 ; 2 uses
  %i.bbr = fmul <2 x double> %i.bbq, %31
  %i.bbs = shufflevector <2 x double> %i.bbr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bbt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bbq, <2 x double> %i.asj, <2 x double> %i.bbs) ; 2 uses
  %i.bbu = extractelement <2 x double> %i.bbt, i64 0
  store double %i.bbu, ptr %i.bbp, align 8, !tbaa !13
  %i.bbv = getelementptr [8 x i8], ptr %i.bak, i64 %i.azd
  %i.bbw = extractelement <2 x double> %i.bbt, i64 1
  store double %i.bbw, ptr %i.bbv, align 8, !tbaa !13
  %i.bbx = getelementptr [8 x i8], ptr %i.bao, i64 %i.azd
  %i.bby = load <2 x double>, ptr %i.agt, align 8, !tbaa !13 ; 2 uses
  %i.bbz = fmul <2 x double> %i.bby, %34
  %i.bca = shufflevector <2 x double> %i.bbz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bcb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bby, <2 x double> %i.asl, <2 x double> %i.bca) ; 2 uses
  %i.bcc = extractelement <2 x double> %i.bcb, i64 0
  store double %i.bcc, ptr %i.bbx, align 8, !tbaa !13
  %i.bcd = getelementptr [8 x i8], ptr %i.bav, i64 %i.azd
  %i.bce = extractelement <2 x double> %i.bcb, i64 1
  store double %i.bce, ptr %i.bcd, align 8, !tbaa !13
  %i.bcf = load i64, ptr %i.as, align 8, !tbaa !11 ; 4 uses
  %i.bcg = getelementptr [8 x i8], ptr %i.bad, i64 %i.bcf
  %i.bch = load <2 x double>, ptr %i.agp, align 8, !tbaa !13 ; 2 uses
  %i.bci = fmul <2 x double> %i.bch, %i.ass
  %i.bcj = shufflevector <2 x double> %i.bci, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bch, <2 x double> %37, <2 x double> %i.bcj) ; 2 uses
  %i.bcl = extractelement <2 x double> %i.bck, i64 0
  store double %i.bcl, ptr %i.bcg, align 8, !tbaa !13
  %i.bcm = getelementptr [8 x i8], ptr %i.bak, i64 %i.bcf
  %i.bcn = extractelement <2 x double> %i.bck, i64 1
  store double %i.bcn, ptr %i.bcm, align 8, !tbaa !13
  %i.bco = getelementptr [8 x i8], ptr %i.bao, i64 %i.bcf
  %i.bcp = load <2 x double>, ptr %i.agt, align 8, !tbaa !13 ; 2 uses
  %i.bcq = fmul <2 x double> %i.bcp, %i.asv
  %i.bcr = shufflevector <2 x double> %i.bcq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bcs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bcp, <2 x double> %i.asw, <2 x double> %i.bcr) ; 2 uses
  %i.bct = extractelement <2 x double> %i.bcs, i64 0
  store double %i.bct, ptr %i.bco, align 8, !tbaa !13
  %i.bcu = getelementptr [8 x i8], ptr %i.bav, i64 %i.bcf
  %i.bcv = extractelement <2 x double> %i.bcs, i64 1
  store double %i.bcv, ptr %i.bcu, align 8, !tbaa !13
  %i.bcw = load <2 x double>, ptr %i.agw, align 8, !tbaa !13 ; 2 uses
  %i.bcx = load i64, ptr %i.l, align 8, !tbaa !11 ; 4 uses
  %i.bcy = getelementptr [8 x i8], ptr %i.aze, i64 %i.bcx
  %i.bcz = shufflevector <2 x double> %i.bcw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bda = fmul <2 x double> %i.awz, %i.bcz
  %i.bdb = shufflevector <2 x double> %i.bcw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bdc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bdb, <2 x double> %i.aww, <2 x double> %i.bda) ; 2 uses
  %i.bdd = extractelement <2 x double> %i.bdc, i64 0
  store double %i.bdd, ptr %i.bcy, align 8, !tbaa !13
  %i.bde = getelementptr [8 x i8], ptr %i.azj, i64 %i.bcx
  %i.bdf = extractelement <2 x double> %i.bdc, i64 1
  store double %i.bdf, ptr %i.bde, align 8, !tbaa !13
  %i.bdg = load <2 x double>, ptr %.021092116, align 8, !tbaa !13 ; 2 uses
  %i.bdh = getelementptr [8 x i8], ptr %i.azm, i64 %i.bcx
  %i.bdi = shufflevector <2 x double> %i.bdg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bdj = fmul <2 x double> %i.axb, %i.bdi
  %i.bdk = shufflevector <2 x double> %i.bdg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bdl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bdk, <2 x double> %i.awx, <2 x double> %i.bdj) ; 2 uses
  %i.bdm = extractelement <2 x double> %i.bdl, i64 0
  store double %i.bdm, ptr %i.bdh, align 8, !tbaa !13
  %i.bdn = getelementptr [8 x i8], ptr %i.azy, i64 %i.bcx
  %i.bdo = extractelement <2 x double> %i.bdl, i64 1
  store double %i.bdo, ptr %i.bdn, align 8, !tbaa !13
  %i.bdp = fsub <2 x double> %i.auu, %i.axe       ; 3 uses
  %i.bdq = fadd <2 x double> %i.auu, %i.axe       ; 3 uses
  %i.bdr = load <2 x double>, ptr %i.agw, align 8, !tbaa !13 ; 2 uses
  %i.bds = load i64, ptr %i.p, align 8, !tbaa !11 ; 4 uses
  %i.bdt = getelementptr [8 x i8], ptr %i.aze, i64 %i.bds
  %i.bdu = fneg <2 x double> %i.bdp
  %i.bdv = shufflevector <2 x double> %i.bdp, <2 x double> %i.bdu, <2 x i32> <i32 1, i32 2>
  %i.bdw = shufflevector <2 x double> %i.bdr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bdx = fmul <2 x double> %i.bdv, %i.bdw
  %i.bdy = shufflevector <2 x double> %i.bdr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bdz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bdy, <2 x double> %i.bdp, <2 x double> %i.bdx) ; 2 uses
  %i.bea = extractelement <2 x double> %i.bdz, i64 0
  store double %i.bea, ptr %i.bdt, align 8, !tbaa !13
  %i.beb = getelementptr [8 x i8], ptr %i.azj, i64 %i.bds
  %i.bec = extractelement <2 x double> %i.bdz, i64 1
  store double %i.bec, ptr %i.beb, align 8, !tbaa !13
  %i.bed = load <2 x double>, ptr %.021092116, align 8, !tbaa !13 ; 2 uses
  %i.bee = getelementptr [8 x i8], ptr %i.azm, i64 %i.bds
  %i.bef = fneg <2 x double> %i.bdq
  %i.beg = shufflevector <2 x double> %i.bdq, <2 x double> %i.bef, <2 x i32> <i32 1, i32 2>
  %i.beh = shufflevector <2 x double> %i.bed, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bei = fmul <2 x double> %i.beg, %i.beh
  %i.bej = shufflevector <2 x double> %i.bed, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bej, <2 x double> %i.bdq, <2 x double> %i.bei) ; 2 uses
  %i.bel = extractelement <2 x double> %i.bek, i64 0
  store double %i.bel, ptr %i.bee, align 8, !tbaa !13
  %i.bem = getelementptr [8 x i8], ptr %i.azy, i64 %i.bds
  %i.ben = extractelement <2 x double> %i.bek, i64 1
  store double %i.ben, ptr %i.bem, align 8, !tbaa !13
  %i.beo = add nsw i64 %.021122113, 1             ; 2 uses
  %i.bep = getelementptr inbounds [8 x i8], ptr %.02118, i64 %7
  %i.beq = getelementptr inbounds [8 x i8], ptr %.021082117, i64 %7
  %i.ber = getelementptr inbounds nuw i8, ptr %.021092116, i64 112
  %i.bes = getelementptr inbounds [8 x i8], ptr %.021102115, i64 %i.c
  %i.bet = getelementptr inbounds [8 x i8], ptr %.021112114, i64 %i.c
  %exitcond.not = icmp eq i64 %i.beo, %6
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !14}
!10 = !{!"long", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
end_hunk_0
