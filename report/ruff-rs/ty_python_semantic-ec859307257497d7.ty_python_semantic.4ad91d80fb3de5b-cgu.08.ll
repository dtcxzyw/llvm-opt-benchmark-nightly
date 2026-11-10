Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.08?download=true
inline.NumInlined: 8661
inline.NumDeleted: 4050
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass22try_from_file_and_name:bb.a
  %i.abg = getelementptr i8, ptr %3, i64 16
  %i.abh = load i16, ptr %i.abg, align 1
  %i.abi = zext i16 %i.abh to i128
  %i.abj = xor i128 %i.abi, 27491
  %i.abk = or i128 %i.abf, %i.abj
  %i.abl = icmp ne i128 %i.abk, 0
  %i.abm = zext i1 %i.abl to i32
  %i.abn = icmp eq i32 %i.abm, 0
  br i1 %i.abn, label %bb.db, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit

bb.cl:                                            ; preds = %bb.bo
  %i.abo = load i64, ptr %3, align 1
  %i.abp = xor i64 %i.abo, 8103475894698205518
  %i.abq = getelementptr i8, ptr %3, i64 6
  %i.abr = load i64, ptr %i.abq, align 1
  %i.abs = xor i64 %i.abr, 7308050597178798197
  %i.abt = or i64 %i.abp, %i.abs
  %i.abu = icmp ne i64 %i.abt, 0
  %i.abv = zext i1 %i.abu to i32
  %i.abw = icmp eq i32 %i.abv, 0
  br i1 %i.abw, label %bb.db, label %bb.co

bb.cm:                                            ; preds = %bb.cf
  %i.abx = load i64, ptr %3, align 1
  %i.aby = xor i64 %i.abx, 7593476291201756995
  %i.abz = getelementptr i8, ptr %3, i64 5
  %i.aca = load i64, ptr %i.abz, align 1
  %i.acb = xor i64 %i.aca, 8387201640581128562
  %i.acc = or i64 %i.aby, %i.acb
  %i.acd = icmp ne i64 %i.acc, 0
  %i.ace = zext i1 %i.acd to i32
  %i.acf = icmp eq i32 %i.ace, 0
  br i1 %i.acf, label %bb.db, label %bb.cu

bb.cn:                                            ; preds = %bb.aq
  %i.acg = load i128, ptr %3, align 1
  %i.ach = xor i128 %i.acg, 144134661157891111549917599516576345923
  %i.aci = getelementptr i8, ptr %3, i64 5
  %i.acj = load i128, ptr %i.aci, align 1
  %i.ack = xor i128 %i.acj, 146793563367454182826005648316624888178
  %i.acl = or i128 %i.ach, %i.ack
  %i.acm = icmp ne i128 %i.acl, 0
  %i.acn = zext i1 %i.acm to i32
  %i.aco = icmp eq i32 %i.acn, 0
  br i1 %i.aco, label %bb.db, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit

bb.co:                                            ; preds = %bb.cl
  %i.acp = load i64, ptr %3, align 1
  %i.acq = xor i64 %i.acp, 4855840763284448583
  %i.acr = getelementptr i8, ptr %3, i64 6
  %i.acs = load i64, ptr %i.acr, align 1
  %i.act = xor i64 %i.acs, 8392569456348316515
  %i.acu = or i64 %i.acq, %i.act
  %i.acv = icmp ne i64 %i.acu, 0
  %i.acw = zext i1 %i.acv to i32
  %i.acx = icmp eq i32 %i.acw, 0
  br i1 %i.acx, label %bb.db, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.acy = load i64, ptr %3, align 1
  %i.acz = xor i64 %i.acy, 7596553776734236755
  %i.ada = getelementptr i8, ptr %3, i64 6
  %i.adb = load i64, ptr %i.ada, align 1
  %i.adc = xor i64 %i.adb, 7957695015159490924
  %i.add = or i64 %i.acz, %i.adc
  %i.ade = icmp ne i64 %i.add, 0
  %i.adf = zext i1 %i.ade to i32
  %i.adg = icmp eq i32 %i.adf, 0
  br i1 %i.adg, label %bb.db, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit

bb.cq:                                            ; preds = %bb.ap
  %i.adh = load i128, ptr %3, align 1
  %i.adi = xor i128 %i.adh, 132099220644309238679541695803055700308
  %i.adj = getelementptr i8, ptr %3, i64 16
  %i.adk = load i8, ptr %i.adj, align 1
  %i.adl = zext i8 %i.adk to i128
  %i.adm = xor i128 %i.adl, 107
  %i.adn = or i128 %i.adi, %i.adm
  %i.ado = icmp ne i128 %i.adn, 0
  %i.adp = zext i1 %i.ado to i32
  %i.adq = icmp eq i32 %i.adp, 0
  br i1 %i.adq, label %bb.db, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit

bb.cr:                                            ; preds = %bb.bt
  %i.adr = load i64, ptr %3, align 1
  %i.ads = icmp ne i64 %i.adr, 7310575213499737428
  %i.adt = zext i1 %i.ads to i32
  %i.adu = icmp eq i32 %i.adt, 0
  br i1 %i.adu, label %bb.db, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit

bb.cs:                                            ; preds = %bb.ca
  %i.adv = load i32, ptr %3, align 1
  %i.adw = icmp ne i32 %i.adv, 1752457552
  %i.adx = zext i1 %i.adw to i32
  %i.ady = icmp eq i32 %i.adx, 0
  br i1 %i.ady, label %bb.db, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit

bb.ct:                                            ; preds = %bb.cj
  %i.adz = load i32, ptr %3, align 1
  %i.aea = xor i32 %i.adz, 1953653104
  %i.aeb = getelementptr i8, ptr %3, i64 3
  %i.aec = load i32, ptr %i.aeb, align 1
  %i.aed = xor i32 %i.aec, 1818323316
  %i.aee = or i32 %i.aea, %i.aed
  %i.aef = icmp ne i32 %i.aee, 0
  %i.aeg = zext i1 %i.aef to i32
  %i.aeh = icmp eq i32 %i.aeg, 0
  br i1 %i.aeh, label %bb.db, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit

bb.cu:                                            ; preds = %bb.cm
  %i.aei = load i64, ptr %3, align 1
  %i.aej = xor i64 %i.aei, 8026381506781007967
  %i.aek = getelementptr i8, ptr %3, i64 5
  %i.ael = load i64, ptr %i.aek, align 1
  %i.aem = xor i64 %i.ael, 7022349102183572335
  %i.aen = or i64 %i.aej, %i.aem
  %i.aeo = icmp ne i64 %i.aen, 0
  %i.aep = zext i1 %i.aeo to i32
  %i.aeq = icmp eq i32 %i.aep, 0
  br i1 %i.aeq, label %bb.db, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit

bb.cv:                                            ; preds = %bb.an
  %i.aer = load i64, ptr %3, align 1
  %i.aes = xor i64 %i.aer, 7585298059240232031
  %i.aet = getelementptr i8, ptr %3, i64 8
  %i.aeu = load i16, ptr %i.aet, align 1
  %i.aev = zext i16 %i.aeu to i64
  %i.aew = xor i64 %i.aev, 29795
  %i.aex = or i64 %i.aes, %i.aew
  %i.aey = icmp ne i64 %i.aex, 0
  %i.aez = zext i1 %i.aey to i32
  %i.afa = icmp eq i32 %i.aez, 0
  br i1 %i.afa, label %bb.db, label %bb.cy

bb.cw:                                            ; preds = %bb.cc
  %i.afb = load i64, ptr %3, align 1
  %i.afc = xor i64 %i.afb, 7306086873707012418
  %i.afd = getelementptr i8, ptr %3, i64 8
  %i.afe = load i8, ptr %i.afd, align 1
  %i.aff = zext i8 %i.afe to i64
  %i.afg = xor i64 %i.aff, 108
  %i.afh = or i64 %i.afc, %i.afg
  %i.afi = icmp ne i64 %i.afh, 0
  %i.afj = zext i1 %i.afi to i32
  %i.afk = icmp eq i32 %i.afj, 0
  br i1 %i.afk, label %bb.db, label %bb.cz

bb.cx:                                            ; preds = %bb.cg
  %i.afl = load i64, ptr %3, align 1
  %i.afm = xor i64 %i.afl, 8391443414556827970
  %i.afn = getelementptr i8, ptr %3, i64 8
  %i.afo = load i32, ptr %i.afn, align 1
  %i.afp = zext i32 %i.afo to i64
  %i.afq = xor i64 %i.afp, 1936158313
  %i.afr = or i64 %i.afm, %i.afq
  %i.afs = icmp ne i64 %i.afr, 0
  %i.aft = zext i1 %i.afs to i32
  %i.afu = icmp eq i32 %i.aft, 0
  br i1 %i.afu, label %bb.db, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit

bb.cy:                                            ; preds = %bb.cv
  %i.afv = load i64, ptr %3, align 1
  %i.afw = xor i64 %i.afv, 7585301374786498371
  %i.afx = getelementptr i8, ptr %3, i64 8
  %i.afy = load i16, ptr %i.afx, align 1
  %i.afz = zext i16 %i.afy to i64
  %i.aga = xor i64 %i.afz, 29795
  %i.agb = or i64 %i.afw, %i.aga
  %i.agc = icmp ne i64 %i.agb, 0
  %i.agd = zext i1 %i.agc to i32
  %i.age = icmp eq i32 %i.agd, 0
  br i1 %i.age, label %bb.db, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit

bb.cz:                                            ; preds = %bb.cw
  %i.agf = load i64, ptr %3, align 1
  %i.agg = xor i64 %i.agf, 7306086873958412114
  %i.agh = getelementptr i8, ptr %3, i64 8
  %i.agi = load i8, ptr %i.agh, align 1
  %i.agj = zext i8 %i.agi to i64
  %i.agk = xor i64 %i.agj, 108
  %i.agl = or i64 %i.agg, %i.agk
  %i.agm = icmp ne i64 %i.agl, 0
  %i.agn = zext i1 %i.agm to i32
  %i.ago = icmp eq i32 %i.agn, 0
  br i1 %i.ago, label %bb.db, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit

bb.da:                                            ; preds = %bb.cb
  %i.agp = load i32, ptr %3, align 1
  %i.agq = xor i32 %i.agp, 1769108563
  %i.agr = getelementptr i8, ptr %3, i64 4
  %i.ags = load i16, ptr %i.agr, align 1
  %i.agt = zext i16 %i.ags to i32
  %i.agu = xor i32 %i.agt, 29795
  %i.agv = or i32 %i.agq, %i.agu
  %i.agw = icmp ne i32 %i.agv, 0
  %i.agx = zext i1 %i.agw to i32
  %i.agy = icmp eq i32 %i.agx, 0
  br i1 %i.agy, label %bb.db, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit

bb.db:                                            ; preds = %bb.bu, %bb.bw, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.104.0 = phi i64 [ 1, %bb.cz ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.r ], [ 2, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ 1, %bb.z ], [ 1, %bb.aa ], [ 1, %bb.ab ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ 1, %bb.ak ], [ 1, %bb.al ], [ 1, %bb.am ], [ 1, %bb.an ], [ 1, %bb.ao ], [ 1, %bb.ap ], [ 1, %bb.aq ], [ 1, %bb.ar ], [ 1, %bb.as ], [ 1, %bb.at ], [ 2, %bb.au ], [ 2, %bb.av ], [ 2, %bb.aw ], [ 1, %bb.ax ], [ 2, %bb.ay ], [ 1, %bb.az ], [ 1, %bb.ba ], [ 1, %bb.bb ], [ 2, %bb.bc ], [ 1, %bb.bd ], [ 1, %bb.be ], [ 2, %bb.bf ], [ 1, %bb.bg ], [ 1, %bb.bh ], [ 1, %bb.bi ], [ 1, %bb.bj ], [ 1, %bb.bk ], [ 1, %bb.bl ], [ 1, %bb.bm ], [ 1, %bb.bn ], [ 1, %bb.bo ], [ 1, %bb.bp ], [ 1, %bb.bq ], [ 1, %bb.br ], [ 1, %bb.bw ], [ 1, %bb.da ], [ 1, %bb.bs ], [ 1, %bb.bx ], [ 1, %bb.by ], [ 1, %bb.bz ], [ 1, %bb.ca ], [ 1, %bb.cb ], [ 1, %bb.cc ], [ 1, %bb.cd ], [ 1, %bb.ce ], [ 1, %bb.cf ], [ 1, %bb.cg ], [ 1, %bb.ch ], [ 1, %bb.ci ], [ 1, %bb.cj ], [ 1, %bb.ck ], [ 1, %bb.cl ], [ 1, %bb.cm ], [ 1, %bb.cn ], [ 1, %bb.co ], [ 1, %bb.cp ], [ 1, %bb.cq ], [ 1, %bb.cr ], [ 1, %bb.cs ], [ 1, %bb.ct ], [ 1, %bb.cu ], [ 1, %bb.cv ], [ 1, %bb.cw ], [ 1, %bb.cx ], [ 1, %bb.cy ], [ 1, %bb.bu ]
  %.sroa.01.0 = phi ptr [ @466, %bb.cz ], [ @69, %bb.b ], [ @70, %bb.c ], [ @562, %bb.d ], [ @561, %bb.e ], [ @560, %bb.f ], [ @559, %bb.g ], [ @558, %bb.h ], [ @557, %bb.i ], [ @556, %bb.j ], [ @555, %bb.k ], [ @554, %bb.l ], [ @553, %bb.m ], [ @552, %bb.n ], [ @551, %bb.o ], [ @550, %bb.p ], [ @549, %bb.q ], [ @548, %bb.r ], [ @547, %bb.s ], [ @546, %bb.t ], [ @545, %bb.u ], [ @544, %bb.v ], [ @93, %bb.w ], [ @543, %bb.x ], [ @542, %bb.y ], [ @541, %bb.z ], [ @540, %bb.aa ], [ @539, %bb.ab ], [ @538, %bb.ac ], [ @537, %bb.ad ], [ @536, %bb.ae ], [ @535, %bb.af ], [ @534, %bb.ag ], [ @533, %bb.ah ], [ @532, %bb.ai ], [ @531, %bb.aj ], [ @530, %bb.ak ], [ @529, %bb.al ], [ @528, %bb.am ], [ @527, %bb.an ], [ @526, %bb.ao ], [ @525, %bb.ap ], [ @524, %bb.aq ], [ @523, %bb.ar ], [ @522, %bb.as ], [ @521, %bb.at ], [ @520, %bb.au ], [ @519, %bb.av ], [ @518, %bb.aw ], [ @517, %bb.ax ], [ @516, %bb.ay ], [ @515, %bb.az ], [ @514, %bb.ba ], [ @513, %bb.bb ], [ @512, %bb.bc ], [ @511, %bb.bd ], [ @510, %bb.be ], [ @509, %bb.bf ], [ @508, %bb.bg ], [ @507, %bb.bh ], [ @506, %bb.bi ], [ @505, %bb.bj ], [ @504, %bb.bk ], [ @503, %bb.bl ], [ @502, %bb.bm ], [ @501, %bb.bn ], [ @500, %bb.bo ], [ @499, %bb.bp ], [ @498, %bb.bq ], [ @497, %bb.br ], [ @495, %bb.bw ], [ @465, %bb.da ], [ @496, %bb.bs ], [ @494, %bb.bx ], [ @493, %bb.by ], [ @492, %bb.bz ], [ @491, %bb.ca ], [ @490, %bb.cb ], [ @489, %bb.cc ], [ @488, %bb.cd ], [ @487, %bb.ce ], [ @486, %bb.cf ], [ @485, %bb.cg ], [ @484, %bb.ch ], [ @483, %bb.ci ], [ @482, %bb.cj ], [ @481, %bb.ck ], [ @480, %bb.cl ], [ @479, %bb.cm ], [ @478, %bb.cn ], [ @477, %bb.co ], [ @476, %bb.cp ], [ @475, %bb.cq ], [ @474, %bb.cr ], [ @473, %bb.cs ], [ @472, %bb.ct ], [ @471, %bb.cu ], [ @470, %bb.cv ], [ @469, %bb.cw ], [ @468, %bb.cx ], [ @467, %bb.cy ], [ @496, %bb.bu ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.agz = call { i32, i32 } @_RNvMs3_NtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB5_13ImportingFile13resolver_file(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1) ; 2 uses
  %i.aha = extractvalue { i32, i32 } %i.agz, 0
  %i.ahb = extractvalue { i32, i32 } %i.agz, 1
  call void @_RNvNtCsfDzkztWVnn_18ty_module_resolver7resolve14file_to_module(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1, i32 noundef %i.aha, i32 noundef %i.ahb)
  %i.ahc = load i32, ptr %i.d, align 4, !range !154, !noundef !108
  %.not = icmp eq i32 %i.ahc, 2
  br i1 %.not, label %bb.dd, label %bb.dc

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit: ; preds = %.backedge.i.us242.us285, %.split13.i.us241.us284, %.lr.ph.split.split.us.split.us280, %.backedge.i.us242.us, %.split13.i.us241.us, %.lr.ph.split.split.us.split.us, %.backedge.i.us242, %.split13.i.us241, %.backedge.i.us, %.split13.i.us, %.split12.i.us, %.split12.i.us, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.backedge.i.us270, %.split13.i.us269, %.lr.ph.split.split.split.us264, %.backedge.i.us257, %.split13.i.us256, %.lr.ph.split.split.split.us, %.backedge.i, %.split13.i, %bb.dd, %bb.dc, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMB15_B13_22try_from_file_and_name0E0E0B1b_.exit.i._RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit.loopexit_crit_edge.split.split.us, %bb.cz, %bb.cy, %bb.cx, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cn, %bb.ck, %bb.ci, %bb.bl, %bb.be, %bb.ar, %bb.ah, %bb.da, %bb.a, %bb.bw, %bb.bu, %bb.n, %bb.cp
  %.sroa.0.0 = phi i8 [ -1, %.backedge.i.us242 ], [ -1, %bb.cz ], [ -1, %bb.cp ], [ -1, %bb.n ], [ -1, %bb.bu ], [ -1, %bb.bw ], [ -1, %bb.cy ], [ -1, %bb.cn ], [ -1, %bb.cu ], [ -1, %bb.cs ], [ -1, %bb.cq ], [ -1, %bb.ct ], [ -1, %bb.ck ], [ -1, %bb.ci ], [ -1, %bb.ar ], [ -1, %bb.bl ], [ -1, %bb.ah ], [ -1, %bb.cx ], [ -1, %bb.be ], [ -1, %bb.a ], [ -1, %bb.da ], [ -1, %bb.cr ], [ 51, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMB15_B13_22try_from_file_and_name0E0E0B1b_.exit.i._RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit.loopexit_crit_edge.split.split.us ], [ -1, %bb.dc ], [ %.val9.i.us265, %.split13.i.us269 ], [ %.val9.i.us, %.lr.ph.split.us.split ], [ %.val9.i.us252, %.split13.i.us256 ], [ -1, %.backedge.i.us242.us ], [ %.val9.i, %.split13.i ], [ -1, %bb.dd ], [ -1, %.backedge.i ], [ %.val9.i.us252, %.lr.ph.split.split.split.us ], [ -1, %.backedge.i.us257 ], [ %.val9.i.us265, %.lr.ph.split.split.split.us264 ], [ -1, %.backedge.i.us270 ], [ %.val9.i.us, %.lr.ph.split.us.split ], [ -1, %.backedge.i.us ], [ %.val9.i.us, %.lr.ph.split.us.split ], [ %.val9.i.us, %.split13.i.us ], [ %.val9.i.us, %.lr.ph.split.us.split ], [ %.val9.i.us, %.lr.ph.split.us.split ], [ 56, %.split12.i.us ], [ %.val9.i.us, %.lr.ph.split.us.split ], [ %.val9.i.us, %.lr.ph.split.us.split ], [ %.val9.i.us, %.lr.ph.split.us.split ], [ 56, %.split12.i.us ], [ %.val9.i.us, %.lr.ph.split.us.split ], [ %.val9.i.us, %.lr.ph.split.us.split ], [ %.val9.i.us, %.lr.ph.split.us.split ], [ %.val9.i.us, %.lr.ph.split.us.split ], [ %.val9.i.us, %.lr.ph.split.us.split ], [ %.val9.i.us, %.lr.ph.split.us.split ], [ %.val9.i.us, %.lr.ph.split.us.split ], [ %.val9.i.us237, %.split13.i.us241 ], [ %.val9.i.us237.us, %.split13.i.us241.us ], [ %.val9.i.us237.us, %.lr.ph.split.split.us.split.us ], [ -1, %.backedge.i.us242.us285 ], [ %.val9.i.us237.us281, %.lr.ph.split.split.us.split.us280 ], [ %.val9.i.us237.us281, %.split13.i.us241.us284 ]
  ret i8 %.sroa.0.0

bb.dc:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ahd = call noundef i8 @_RNvMsb_NtCsfDzkztWVnn_18ty_module_resolver6moduleNtB5_6Module5known(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.c, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1) ; 8 uses
  %.not216 = icmp eq i8 %i.ahd, -1
  br i1 %.not216, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit, label %.lr.ph

bb.dd:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit

.lr.ph:                                           ; preds = %bb.dc
  %i.ahe = call { i8, i8 } @_RNvMs3_NtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB5_13ImportingFile14python_version(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %2, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1) ; 2 uses
  %i.ahf = extractvalue { i8, i8 } %i.ahe, 0      ; 7 uses
  %i.ahg = extractvalue { i8, i8 } %i.ahe, 1      ; 7 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 %.sroa.104.0 ; 7 uses
  %i.ahi = and i8 %i.ahd, 62
  switch i8 %i.ahi, label %.lr.ph.split.split [
    i8 4, label %.lr.ph.split.us.split
    i8 2, label %.lr.ph.split.split.us
  ]

.lr.ph.split.us.split:                            ; preds = %.lr.ph, %.backedge.i.us
  %i.ahj = phi ptr [ %i.ahk, %.backedge.i.us ], [ %.sroa.01.0, %.lr.ph ] ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 1 ; 2 uses
  %.val9.i.us = load i8, ptr %i.ahj, align 1, !range !184, !noalias !13347, !noundef !108 ; 18 uses
  switch i8 %.val9.i.us, label %default.unreachable [
    i8 0, label %.split13.i.us
    i8 1, label %.split13.i.us
    i8 2, label %.split13.i.us
    i8 3, label %.split13.i.us
    i8 4, label %.split13.i.us
    i8 5, label %.split13.i.us
    i8 6, label %.split13.i.us
    i8 7, label %.split13.i.us
    i8 8, label %.split13.i.us
    i8 9, label %.split13.i.us
    i8 10, label %.split13.i.us
    i8 11, label %.split13.i.us
    i8 12, label %.split13.i.us
    i8 13, label %.split13.i.us
    i8 14, label %.split13.i.us
    i8 15, label %.split13.i.us
    i8 16, label %.split13.i.us
    i8 17, label %.split13.i.us
    i8 18, label %.split13.i.us
    i8 19, label %.split13.i.us
    i8 20, label %.split13.i.us
    i8 21, label %.split13.i.us
    i8 22, label %.split13.i.us
    i8 23, label %.split13.i.us
    i8 24, label %.split13.i.us
    i8 25, label %.split13.i.us
    i8 26, label %.split13.i.us
    i8 27, label %.split13.i.us
    i8 28, label %.split13.i.us
    i8 29, label %.split13.i.us
    i8 30, label %.split13.i.us
    i8 31, label %.split13.i.us
    i8 32, label %.split13.i.us
    i8 33, label %.split13.i.us
    i8 34, label %.split13.i.us
    i8 35, label %.split13.i.us
    i8 36, label %.split13.i.us
    i8 37, label %.split13.i.us
    i8 38, label %.split13.i.us
    i8 39, label %.split13.i.us
    i8 40, label %.split13.i.us
    i8 41, label %.split13.i.us
    i8 42, label %.split13.i.us
    i8 43, label %.split13.i.us
    i8 44, label %.split13.i.us
    i8 45, label %.split13.i.us
    i8 46, label %.split13.i.us
    i8 47, label %.split13.i.us
    i8 48, label %.split13.i.us
    i8 49, label %.split13.i.us
    i8 50, label %.split13.i.us
    i8 51, label %.backedge.i.us
    i8 52, label %.split13.i.us
    i8 53, label %.split13.i.us
    i8 54, label %.split13.i.us
    i8 55, label %.split13.i.us
    i8 56, label %.split12.i.us
    i8 57, label %.split13.i.us
    i8 58, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit
    i8 59, label %.split13.i.us
    i8 60, label %.split13.i.us
    i8 61, label %.split13.i.us
    i8 62, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit
    i8 63, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit
    i8 64, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit
    i8 65, label %.split13.i.us
    i8 66, label %.split13.i.us
    i8 67, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit
    i8 68, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit
    i8 69, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit
    i8 70, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit
    i8 71, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit
    i8 72, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit
    i8 73, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit
    i8 74, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit
    i8 75, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit
    i8 76, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit
    i8 77, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit
    i8 78, label %.split13.i.us
    i8 79, label %.split13.i.us
    i8 80, label %.split13.i.us
    i8 81, label %.split13.i.us
    i8 82, label %.split13.i.us
    i8 83, label %.split13.i.us
    i8 84, label %.split13.i.us
    i8 85, label %.split13.i.us
    i8 86, label %.split13.i.us
    i8 87, label %.split13.i.us
    i8 88, label %.split13.i.us
    i8 89, label %.split13.i.us
    i8 90, label %.split13.i.us
    i8 91, label %.split13.i.us
    i8 92, label %.split13.i.us
    i8 93, label %.split13.i.us
    i8 94, label %.split13.i.us
    i8 95, label %.split13.i.us
    i8 96, label %.split13.i.us
    i8 97, label %.split13.i.us
    i8 98, label %.split13.i.us
    i8 99, label %.split13.i.us
    i8 100, label %.split13.i.us
    i8 101, label %.split13.i.us
    i8 102, label %.split13.i.us
    i8 103, label %.split13.i.us
    i8 104, label %.split13.i.us
    i8 105, label %.split13.i.us
    i8 106, label %.split13.i.us
    i8 107, label %.split13.i.us
  ]

.split12.i.us:                                    ; preds = %.lr.ph.split.us.split
  switch i8 %i.ahd, label %.backedge.i.us [
    i8 29, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit
    i8 4, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit
  ]

.split13.i.us:                                    ; preds = %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split
  %i.ahl = call fastcc noundef i8 @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16canonical_module(i8 noundef range(i8 0, 108) %.val9.i.us, i8 noundef %i.ahf, i8 noundef %i.ahg)
  %i.ahm = icmp eq i8 %i.ahd, %i.ahl
  br i1 %i.ahm, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit, label %.backedge.i.us

.backedge.i.us:                                   ; preds = %.lr.ph.split.us.split, %.split13.i.us, %.split12.i.us
  %i.ahn = icmp eq ptr %i.ahk, %i.ahh
  br i1 %i.ahn, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1T_4find5checkBJ_NCNvMBL_BJ_22try_from_file_and_name0E0E0B3u_EBR_.exit, label %.lr.ph.split.us.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph
  switch i8 %i.ahd, label %.lr.ph.split.split.us.split [
    i8 29, label %.lr.ph.split.split.us.split.us
    i8 4, label %.lr.ph.split.split.us.split.us280
  ]

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %.backedge.i.us242.us
  %i.aho = phi ptr [ %i.ahp, %.backedge.i.us242.us ], [ %.sroa.01.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 1 ; 2 uses
  %.val9.i.us237.us = load i8, ptr %i.aho, align 1, !range !184, !noalias !13347, !noundef !108 ; 4 uses
  switch i8 %.val9.i.us237.us, label %default.unreachable [
    i8 0, label %.split13.i.us241.us
    i8 1, label %.split13.i.us241.us
    i8 2, label %.split13.i.us241.us
    i8 3, label %.split13.i.us241.us
    i8 4, label %.split13.i.us241.us
    i8 5, label %.split13.i.us241.us
    i8 6, label %.split13.i.us241.us
    i8 7, label %.split13.i.us241.us
    i8 8, label %.split13.i.us241.us
    i8 9, label %.split13.i.us241.us
    i8 10, label %.split13.i.us241.us
    i8 11, label %.split13.i.us241.us
    i8 12, label %.split13.i.us241.us
    i8 13, label %.split13.i.us241.us
    i8 14, label %.split13.i.us241.us
    i8 15, label %.split13.i.us241.us
    i8 16, label %.split13.i.us241.us
    i8 17, label %.split13.i.us241.us
    i8 18, label %.split13.i.us241.us
    i8 19, label %.split13.i.us241.us
    i8 20, label %.split13.i.us241.us
    i8 21, label %.split13.i.us241.us
    i8 22, label %.split13.i.us241.us
    i8 23, label %.split13.i.us241.us
    i8 24, label %.split13.i.us241.us
    i8 25, label %.split13.i.us241.us
    i8 26, label %.split13.i.us241.us
    i8 27, label %.split13.i.us241.us
    i8 28, label %.split13.i.us241.us
    i8 29, label %.split13.i.us241.us
    i8 30, label %.split13.i.us241.us
    i8 31, label %.split13.i.us241.us
    i8 32, label %.split13.i.us241.us
    i8 33, label %.split13.i.us241.us
    i8 34, label %.split13.i.us241.us
end_hunk_0
begin_hunk_1_@_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB5_14ProtocolMember26uses_special_method_lookup:bb.a
  %i.ep = xor i64 %i.eo, 8391439123883515743
  %i.eq = getelementptr i8, ptr %i.a, i64 3
  %i.er = load i64, ptr %i.eq, align 1
  %i.es = xor i64 %i.er, 6872337400884980837
  %i.et = or i64 %i.ep, %i.es
  %i.eu = icmp ne i64 %i.et, 0
  %i.ev = zext i1 %i.eu to i32
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.dc, label %bb.u

bb.t:                                             ; preds = %bb.k
  %i.ex = load i64, ptr %i.a, align 1
  %i.ey = xor i64 %i.ex, 7310579611361107807
  %i.ez = getelementptr i8, ptr %i.a, i64 8
  %i.fa = load i16, ptr %i.ez, align 1
  %i.fb = zext i16 %i.fa to i64
  %i.fc = xor i64 %i.fb, 24415
  %i.fd = or i64 %i.ey, %i.fc
  %i.fe = icmp ne i64 %i.fd, 0
  %i.ff = zext i1 %i.fe to i32
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.dc, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.fh = load i64, ptr %i.a, align 1
  %i.fi = xor i64 %i.fh, 7310584009407618911
  %i.fj = getelementptr i8, ptr %i.a, i64 3
  %i.fk = load i64, ptr %i.fj, align 1
  %i.fl = xor i64 %i.fk, 6872331838902856805
  %i.fm = or i64 %i.fi, %i.fl
  %i.fn = icmp ne i64 %i.fm, 0
  %i.fo = zext i1 %i.fn to i32
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.dc, label %bb.ah

bb.v:                                             ; preds = %bb.r
  %i.fq = load i32, ptr %i.a, align 1
  %i.fr = xor i32 %i.fq, 1768185695
  %i.fs = getelementptr i8, ptr %i.a, i64 3
  %i.ft = load i32, ptr %i.fs, align 1
  %i.fu = xor i32 %i.ft, 1600090729
  %i.fv = or i32 %i.fr, %i.fu
  %i.fw = icmp ne i32 %i.fv, 0
  %i.fx = zext i1 %i.fw to i32
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.dc, label %bb.ag

bb.w:                                             ; preds = %bb.t
  %i.fz = load i64, ptr %i.a, align 1
  %i.ga = xor i64 %i.fz, 7237123481549430623
  %i.gb = getelementptr i8, ptr %i.a, i64 8
  %i.gc = load i16, ptr %i.gb, align 1
  %i.gd = zext i16 %i.gc to i64
  %i.ge = xor i64 %i.gd, 24415
  %i.gf = or i64 %i.ga, %i.ge
  %i.gg = icmp ne i64 %i.gf, 0
  %i.gh = zext i1 %i.gg to i32
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.dc, label %bb.ad

bb.x:                                             ; preds = %bb.l
  %i.gj = load i64, ptr %i.a, align 1
  %i.gk = xor i64 %i.gj, 6877671131690917727
  %i.gl = getelementptr i8, ptr %i.a, i64 8
  %i.gm = load i8, ptr %i.gl, align 1
  %i.gn = zext i8 %i.gm to i64
  %i.go = xor i64 %i.gn, 95
  %i.gp = or i64 %i.gk, %i.go
  %i.gq = icmp ne i64 %i.gp, 0
  %i.gr = zext i1 %i.gq to i32
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %bb.dc, label %bb.aa

bb.y:                                             ; preds = %bb.a
  %i.gt = load i32, ptr %i.a, align 1
  %i.gu = xor i32 %i.gt, 1902468959
  %i.gv = getelementptr i8, ptr %i.a, i64 4
  %i.gw = load i16, ptr %i.gv, align 1
  %i.gx = zext i16 %i.gw to i32
  %i.gy = xor i32 %i.gx, 24415
  %i.gz = or i32 %i.gu, %i.gy
  %i.ha = icmp ne i32 %i.gz, 0
  %i.hb = zext i1 %i.ha to i32
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.dc, label %bb.af

bb.z:                                             ; preds = %bb.q
  %i.hd = load i64, ptr %i.a, align 1
  %i.he = icmp ne i64 %i.hd, 6872339552730963807
  %i.hf = zext i1 %i.he to i32
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %bb.dc, label %bb.an

bb.aa:                                            ; preds = %bb.x
  %i.hh = load i64, ptr %i.a, align 1
  %i.hi = xor i64 %i.hh, 6878229662089502559
  %i.hj = getelementptr i8, ptr %i.a, i64 8
  %i.hk = load i8, ptr %i.hj, align 1
  %i.hl = zext i8 %i.hk to i64
  %i.hm = xor i64 %i.hl, 95
  %i.hn = or i64 %i.hi, %i.hm
  %i.ho = icmp ne i64 %i.hn, 0
  %i.hp = zext i1 %i.ho to i32
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %bb.dc, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hr = load i64, ptr %i.a, align 1
  %i.hs = xor i64 %i.hr, 6877682105298870111
  %i.ht = getelementptr i8, ptr %i.a, i64 8
  %i.hu = load i8, ptr %i.ht, align 1
  %i.hv = zext i8 %i.hu to i64
  %i.hw = xor i64 %i.hv, 95
  %i.hx = or i64 %i.hs, %i.hw
  %i.hy = icmp ne i64 %i.hx, 0
  %i.hz = zext i1 %i.hy to i32
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %bb.dc, label %bb.av

bb.ac:                                            ; preds = %bb.p
  %i.ib = load i64, ptr %i.a, align 1
  %i.ic = xor i64 %i.ib, 7237970075488509791
  %i.id = getelementptr i8, ptr %i.a, i64 8
  %i.ie = load i32, ptr %i.id, align 1
  %i.if = zext i32 %i.ie to i64
  %i.ig = xor i64 %i.if, 1600091753
  %i.ih = or i64 %i.ic, %i.ig
  %i.ii = icmp ne i64 %i.ih, 0
  %i.ij = zext i1 %i.ii to i32
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.dc, label %bb.bf

bb.ad:                                            ; preds = %bb.w
  %i.il = load i64, ptr %i.a, align 1
  %i.im = xor i64 %i.il, 8386104319403253599
  %i.in = getelementptr i8, ptr %i.a, i64 8
  %i.io = load i16, ptr %i.in, align 1
  %i.ip = zext i16 %i.io to i64
  %i.iq = xor i64 %i.ip, 24415
  %i.ir = or i64 %i.im, %i.iq
  %i.is = icmp ne i64 %i.ir, 0
  %i.it = zext i1 %i.is to i32
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %bb.dc, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.iv = load i64, ptr %i.a, align 1
  %i.iw = xor i64 %i.iv, 7526748012843261791
  %i.ix = getelementptr i8, ptr %i.a, i64 8
  %i.iy = load i16, ptr %i.ix, align 1
  %i.iz = zext i16 %i.iy to i64
  %i.ja = xor i64 %i.iz, 24415
  %i.jb = or i64 %i.iw, %i.ja
  %i.jc = icmp ne i64 %i.jb, 0
  %i.jd = zext i1 %i.jc to i32
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %bb.dc, label %bb.az

bb.af:                                            ; preds = %bb.y
  %i.jf = load i32, ptr %i.a, align 1
  %i.jg = xor i32 %i.jf, 1701273439
  %i.jh = getelementptr i8, ptr %i.a, i64 4
  %i.ji = load i16, ptr %i.jh, align 1
  %i.jj = zext i16 %i.ji to i32
  %i.jk = xor i32 %i.jj, 24415
  %i.jl = or i32 %i.jg, %i.jk
  %i.jm = icmp ne i32 %i.jl, 0
  %i.jn = zext i1 %i.jm to i32
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %bb.dc, label %bb.am

bb.ag:                                            ; preds = %bb.v
  %i.jp = load i32, ptr %i.a, align 1
  %i.jq = xor i32 %i.jp, 1701273439
  %i.jr = getelementptr i8, ptr %i.a, i64 3
  %i.js = load i32, ptr %i.jr, align 1
  %i.jt = xor i32 %i.js, 1600091237
  %i.ju = or i32 %i.jq, %i.jt
  %i.jv = icmp ne i32 %i.ju, 0
  %i.jw = zext i1 %i.jv to i32
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %bb.dc, label %bb.ay

bb.ah:                                            ; preds = %bb.u
  %i.jy = load i64, ptr %i.a, align 1
  %i.jz = xor i64 %i.jy, 8391439158243450719
  %i.ka = getelementptr i8, ptr %i.a, i64 3
  %i.kb = load i64, ptr %i.ka, align 1
  %i.kc = xor i64 %i.kb, 6872337400884982885
  %i.kd = or i64 %i.jz, %i.kc
  %i.ke = icmp ne i64 %i.kd, 0
  %i.kf = zext i1 %i.ke to i32
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %bb.dc, label %bb.aj

bb.ai:                                            ; preds = %bb.a
  %i.kh = load i128, ptr %i.a, align 1
  %i.ki = icmp ne i128 %i.kh, 126771985551293355863168618975187132255
  %i.kj = zext i1 %i.ki to i32
  %i.kk = icmp eq i32 %i.kj, 0
  br label %bb.dc

bb.aj:                                            ; preds = %bb.ah
  %i.kl = load i64, ptr %i.a, align 1
  %i.km = xor i64 %i.kl, 7310584043767553887
  %i.kn = getelementptr i8, ptr %i.a, i64 3
  %i.ko = load i64, ptr %i.kn, align 1
  %i.kp = xor i64 %i.ko, 6872331838902858853
  %i.kq = or i64 %i.km, %i.kp
  %i.kr = icmp ne i64 %i.kq, 0
  %i.ks = zext i1 %i.kr to i32
  %i.kt = icmp eq i32 %i.ks, 0
  br i1 %i.kt, label %bb.dc, label %bb.ar

bb.ak:                                            ; preds = %bb.a
  %i.ku = load i64, ptr %i.a, align 1
  %i.kv = xor i64 %i.ku, 8603404109357735775
  %i.kw = getelementptr i8, ptr %i.a, i64 6
  %i.kx = load i64, ptr %i.kw, align 1
  %i.ky = xor i64 %i.kx, 6872338444528482149
  %i.kz = or i64 %i.kv, %i.ky
  %i.la = icmp ne i64 %i.kz, 0
  %i.lb = zext i1 %i.la to i32
  %i.lc = icmp eq i32 %i.lb, 0
  br label %bb.dc

bb.al:                                            ; preds = %bb.a
  %i.ld = load i128, ptr %i.a, align 1
  %i.le = xor i128 %i.ld, 126901791308352430551701836452277477215
  %i.lf = getelementptr i8, ptr %i.a, i64 16
  %i.lg = load i8, ptr %i.lf, align 1
  %i.lh = zext i8 %i.lg to i128
  %i.li = xor i128 %i.lh, 95
  %i.lj = or i128 %i.le, %i.li
  %i.lk = icmp ne i128 %i.lj, 0
  %i.ll = zext i1 %i.lk to i32
  %i.lm = icmp eq i32 %i.ll, 0
  br i1 %i.lm, label %bb.dc, label %bb.ax

bb.am:                                            ; preds = %bb.af
  %i.ln = load i32, ptr %i.a, align 1
  %i.lo = xor i32 %i.ln, 1952931679
  %i.lp = getelementptr i8, ptr %i.a, i64 4
  %i.lq = load i16, ptr %i.lp, align 1
  %i.lr = zext i16 %i.lq to i32
  %i.ls = xor i32 %i.lr, 24415
  %i.lt = or i32 %i.lo, %i.ls
  %i.lu = icmp ne i32 %i.lt, 0
  %i.lv = zext i1 %i.lu to i32
  %i.lw = icmp eq i32 %i.lv, 0
  br i1 %i.lw, label %bb.dc, label %bb.bh

bb.an:                                            ; preds = %bb.z
  %i.lx = load i64, ptr %i.a, align 1
  %i.ly = icmp ne i64 %i.lx, 6872326401155424095
  %i.lz = zext i1 %i.ly to i32
  %i.ma = icmp eq i32 %i.lz, 0
  br i1 %i.ma, label %bb.dc, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.mb = load i64, ptr %i.a, align 1
  %i.mc = icmp ne i64 %i.mb, 6872321938684469087
  %i.md = zext i1 %i.mc to i32
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %bb.dc, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mf = load i64, ptr %i.a, align 1
  %i.mg = icmp ne i64 %i.mf, 6872321981634142047
  %i.mh = zext i1 %i.mg to i32
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %bb.dc, label %bb.at

bb.aq:                                            ; preds = %bb.a
  %i.mj = load i64, ptr %i.a, align 1
  %i.mk = xor i64 %i.mj, 8245931954104000351
  %i.ml = getelementptr i8, ptr %i.a, i64 5
  %i.mm = load i64, ptr %i.ml, align 1
  %i.mn = xor i64 %i.mm, 6872341751419531119
  %i.mo = or i64 %i.mk, %i.mn
  %i.mp = icmp ne i64 %i.mo, 0
  %i.mq = zext i1 %i.mp to i32
  %i.mr = icmp eq i32 %i.mq, 0
  br i1 %i.mr, label %bb.dc, label %bb.ce

bb.ar:                                            ; preds = %bb.aj
  %i.ms = load i64, ptr %i.a, align 1
  %i.mt = xor i64 %i.ms, 7379544309372641119
  %i.mu = getelementptr i8, ptr %i.a, i64 3
  %i.mv = load i64, ptr %i.mu, align 1
  %i.mw = xor i64 %i.mv, 6872339539594605420
  %i.mx = or i64 %i.mt, %i.mw
  %i.my = icmp ne i64 %i.mx, 0
  %i.mz = zext i1 %i.my to i32
  %i.na = icmp eq i32 %i.mz, 0
  br i1 %i.na, label %bb.dc, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.nb = load i64, ptr %i.a, align 1
  %i.nc = xor i64 %i.nb, 8461547236695301983
  %i.nd = getelementptr i8, ptr %i.a, i64 3
  %i.ne = load i64, ptr %i.nd, align 1
  %i.nf = xor i64 %i.ne, 6872330807993983341
  %i.ng = or i64 %i.nc, %i.nf
  %i.nh = icmp ne i64 %i.ng, 0
  %i.ni = zext i1 %i.nh to i32
  %i.nj = icmp eq i32 %i.ni, 0
  br i1 %i.nj, label %bb.dc, label %bb.bc

bb.at:                                            ; preds = %bb.ap
  %i.nk = load i64, ptr %i.a, align 1
  %i.nl = icmp ne i64 %i.nk, 6872321986130435935
  %i.nm = zext i1 %i.nl to i32
  %i.nn = icmp eq i32 %i.nm, 0
  br i1 %i.nn, label %bb.dc, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.no = load i64, ptr %i.a, align 1
  %i.np = icmp ne i64 %i.no, 6872330807993261919
  %i.nq = zext i1 %i.np to i32
  %i.nr = icmp eq i32 %i.nq, 0
  br i1 %i.nr, label %bb.dc, label %bb.aw

bb.av:                                            ; preds = %bb.ab
  %i.ns = load i64, ptr %i.a, align 1
  %i.nt = xor i64 %i.ns, 6879359912831967071
  %i.nu = getelementptr i8, ptr %i.a, i64 8
  %i.nv = load i8, ptr %i.nu, align 1
  %i.nw = zext i8 %i.nv to i64
  %i.nx = xor i64 %i.nw, 95
  %i.ny = or i64 %i.nt, %i.nx
  %i.nz = icmp ne i64 %i.ny, 0
  %i.oa = zext i1 %i.nz to i32
  %i.ob = icmp eq i32 %i.oa, 0
  br i1 %i.ob, label %bb.dc, label %bb.ck

bb.aw:                                            ; preds = %bb.au
  %i.oc = load i64, ptr %i.a, align 1
  %i.od = icmp ne i64 %i.oc, 6872339552563453791
  %i.oe = zext i1 %i.od to i32
  %i.of = icmp eq i32 %i.oe, 0
  br i1 %i.of, label %bb.dc, label %bb.bb

bb.ax:                                            ; preds = %bb.al
  %i.og = load i128, ptr %i.a, align 1
  %i.oh = xor i128 %i.og, 126834251356332013408942436582796386143
  %i.oi = getelementptr i8, ptr %i.a, i64 16
  %i.oj = load i8, ptr %i.oi, align 1
  %i.ok = zext i8 %i.oj to i128
  %i.ol = xor i128 %i.ok, 95
  %i.om = or i128 %i.oh, %i.ol
  %i.on = icmp ne i128 %i.om, 0
  %i.oo = zext i1 %i.on to i32
  %i.op = icmp eq i32 %i.oo, 0
  br i1 %i.op, label %bb.dc, label %bb.cy

bb.ay:                                            ; preds = %bb.ag
  %i.oq = load i32, ptr %i.a, align 1
  %i.or = xor i32 %i.oq, 1852399455
  %i.os = getelementptr i8, ptr %i.a, i64 3
  %i.ot = load i32, ptr %i.os, align 1
  %i.ou = xor i32 %i.ot, 1600091246
  %i.ov = or i32 %i.or, %i.ou
  %i.ow = icmp ne i32 %i.ov, 0
  %i.ox = zext i1 %i.ow to i32
  %i.oy = icmp eq i32 %i.ox, 0
  br i1 %i.oy, label %bb.dc, label %bb.ba

bb.az:                                            ; preds = %bb.ae
  %i.oz = load i64, ptr %i.a, align 1
  %i.pa = xor i64 %i.oz, 8390880615077601119
  %i.pb = getelementptr i8, ptr %i.a, i64 8
  %i.pc = load i16, ptr %i.pb, align 1
  %i.pd = zext i16 %i.pc to i64
  %i.pe = xor i64 %i.pd, 24415
  %i.pf = or i64 %i.pa, %i.pe
  %i.pg = icmp ne i64 %i.pf, 0
  %i.ph = zext i1 %i.pg to i32
  %i.pi = icmp eq i32 %i.ph, 0
  br i1 %i.pi, label %bb.dc, label %bb.bk

bb.ba:                                            ; preds = %bb.ay
  %i.pj = load i32, ptr %i.a, align 1
  %i.pk = xor i32 %i.pj, 1869176671
  %i.pl = getelementptr i8, ptr %i.a, i64 3
  %i.pm = load i32, ptr %i.pl, align 1
  %i.pn = xor i32 %i.pm, 1600090735
  %i.po = or i32 %i.pk, %i.pn
  %i.pp = icmp ne i32 %i.po, 0
  %i.pq = zext i1 %i.pp to i32
  %i.pr = icmp eq i32 %i.pq, 0
  br i1 %i.pr, label %bb.dc, label %bb.bi

bb.bb:                                            ; preds = %bb.aw
  %i.ps = load i64, ptr %i.a, align 1
  %i.pt = icmp ne i64 %i.ps, 6872342876901695327
  %i.pu = zext i1 %i.pt to i32
  %i.pv = icmp eq i32 %i.pu, 0
  br i1 %i.pv, label %bb.dc, label %bb.bd

bb.bc:                                            ; preds = %bb.as
  %i.pw = load i64, ptr %i.a, align 1
  %i.px = xor i64 %i.pw, 7379544309473304415
  %i.py = getelementptr i8, ptr %i.a, i64 3
  %i.pz = load i64, ptr %i.py, align 1
  %i.qa = xor i64 %i.pz, 6872339539594605426
  %i.qb = or i64 %i.px, %i.qa
  %i.qc = icmp ne i64 %i.qb, 0
  %i.qd = zext i1 %i.qc to i32
  %i.qe = icmp eq i32 %i.qd, 0
  br i1 %i.qe, label %bb.dc, label %bb.bn

bb.bd:                                            ; preds = %bb.bb
  %i.qf = load i64, ptr %i.a, align 1
  %i.qg = icmp ne i64 %i.qf, 6872319812977647455
  %i.qh = zext i1 %i.qg to i32
  %i.qi = icmp eq i32 %i.qh, 0
  br i1 %i.qi, label %bb.dc, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.qj = load i64, ptr %i.a, align 1
  %i.qk = icmp ne i64 %i.qj, 6872337336460992351
  %i.ql = zext i1 %i.qk to i32
  %i.qm = icmp eq i32 %i.ql, 0
  br i1 %i.qm, label %bb.dc, label %bb.bg

bb.bf:                                            ; preds = %bb.ac
  %i.qn = load i64, ptr %i.a, align 1
  %i.qo = xor i64 %i.qn, 7234317510880354143
  %i.qp = getelementptr i8, ptr %i.a, i64 8
  %i.qq = load i32, ptr %i.qp, align 1
  %i.qr = zext i32 %i.qq to i64
  %i.qs = xor i64 %i.qr, 1600091753
  %i.qt = or i64 %i.qo, %i.qs
  %i.qu = icmp ne i64 %i.qt, 0
  %i.qv = zext i1 %i.qu to i32
  %i.qw = icmp eq i32 %i.qv, 0
  br i1 %i.qw, label %bb.dc, label %bb.cd

bb.bg:                                            ; preds = %bb.be
  %i.qx = load i64, ptr %i.a, align 1
  %i.qy = icmp ne i64 %i.qx, 6872337379477774175
  %i.qz = zext i1 %i.qy to i32
  %i.ra = icmp eq i32 %i.qz, 0
  br i1 %i.ra, label %bb.dc, label %bb.bt

bb.bh:                                            ; preds = %bb.am
  %i.rb = load i32, ptr %i.a, align 1
  %i.rc = xor i32 %i.rb, 1701601119
  %i.rd = getelementptr i8, ptr %i.a, i64 4
  %i.re = load i16, ptr %i.rd, align 1
  %i.rf = zext i16 %i.re to i32
  %i.rg = xor i32 %i.rf, 24415
  %i.rh = or i32 %i.rc, %i.rg
  %i.ri = icmp ne i32 %i.rh, 0
  %i.rj = zext i1 %i.ri to i32
  %i.rk = icmp eq i32 %i.rj, 0
  br i1 %i.rk, label %bb.dc, label %bb.bl

bb.bi:                                            ; preds = %bb.ba
  %i.rl = load i32, ptr %i.a, align 1
  %i.rm = xor i32 %i.rl, 1701601119
  %i.rn = getelementptr i8, ptr %i.a, i64 3
  %i.ro = load i32, ptr %i.rn, align 1
  %i.rp = xor i32 %i.ro, 1600089701
  %i.rq = or i32 %i.rm, %i.rp
  %i.rr = icmp ne i32 %i.rq, 0
  %i.rs = zext i1 %i.rr to i32
  %i.rt = icmp eq i32 %i.rs, 0
  br i1 %i.rt, label %bb.dc, label %bb.bo

bb.bj:                                            ; preds = %bb.a
  %i.ru = load i64, ptr %i.a, align 1
  %i.rv = xor i64 %i.ru, 7526754601088606047
  %i.rw = getelementptr i8, ptr %i.a, i64 7
  %i.rx = load i64, ptr %i.rw, align 1
  %i.ry = xor i64 %i.rx, 6872339573954338664
  %i.rz = or i64 %i.rv, %i.ry
  %i.sa = icmp ne i64 %i.rz, 0
  %i.sb = zext i1 %i.sa to i32
  %i.sc = icmp eq i32 %i.sb, 0
  br label %bb.dc

bb.bk:                                            ; preds = %bb.az
  %i.sd = load i64, ptr %i.a, align 1
  %i.se = xor i64 %i.sd, 8387507253358124895
  %i.sf = getelementptr i8, ptr %i.a, i64 8
  %i.sg = load i16, ptr %i.sf, align 1
  %i.sh = zext i16 %i.sg to i64
  %i.si = xor i64 %i.sh, 24415
  %i.sj = or i64 %i.se, %i.si
  %i.sk = icmp ne i64 %i.sj, 0
  %i.sl = zext i1 %i.sk to i32
  %i.sm = icmp eq i32 %i.sl, 0
  br i1 %i.sm, label %bb.dc, label %bb.bm

bb.bl:                                            ; preds = %bb.bh
  %i.sn = load i32, ptr %i.a, align 1
  %i.so = xor i32 %i.sn, 1953259359
  %i.sp = getelementptr i8, ptr %i.a, i64 4
  %i.sq = load i16, ptr %i.sp, align 1
  %i.sr = zext i16 %i.sq to i32
  %i.ss = xor i32 %i.sr, 24415
  %i.st = or i32 %i.so, %i.ss
  %i.su = icmp ne i32 %i.st, 0
  %i.sv = zext i1 %i.su to i32
  %i.sw = icmp eq i32 %i.sv, 0
  br i1 %i.sw, label %bb.dc, label %bb.bq

bb.bm:                                            ; preds = %bb.bk
  %i.sx = load i64, ptr %i.a, align 1
  %i.sy = xor i64 %i.sx, 7815273074989555551
  %i.sz = getelementptr i8, ptr %i.a, i64 8
  %i.ta = load i16, ptr %i.sz, align 1
  %i.tb = zext i16 %i.ta to i64
  %i.tc = xor i64 %i.tb, 24415
  %i.td = or i64 %i.sy, %i.tc
  %i.te = icmp ne i64 %i.td, 0
  %i.tf = zext i1 %i.te to i32
  %i.tg = icmp eq i32 %i.tf, 0
  br i1 %i.tg, label %bb.dc, label %bb.cn

bb.bn:                                            ; preds = %bb.bc
  %i.th = load i64, ptr %i.a, align 1
  %i.ti = xor i64 %i.th, 7956017156253900639
  %i.tj = getelementptr i8, ptr %i.a, i64 3
  %i.tk = load i64, ptr %i.tj, align 1
  %i.tl = xor i64 %i.tk, 6872325280303903593
  %i.tm = or i64 %i.ti, %i.tl
  %i.tn = icmp ne i64 %i.tm, 0
  %i.to = zext i1 %i.tn to i32
  %i.tp = icmp eq i32 %i.to, 0
  br i1 %i.tp, label %bb.dc, label %bb.bz

bb.bo:                                            ; preds = %bb.bi
  %i.tq = load i32, ptr %i.a, align 1
  %i.tr = xor i32 %i.tq, 1869438815
  %i.ts = getelementptr i8, ptr %i.a, i64 3
  %i.tt = load i32, ptr %i.ts, align 1
  %i.tu = xor i32 %i.tt, 1600087151
  %i.tv = or i32 %i.tr, %i.tu
  %i.tw = icmp ne i32 %i.tv, 0
  %i.tx = zext i1 %i.tw to i32
  %i.ty = icmp eq i32 %i.tx, 0
  br i1 %i.ty, label %bb.dc, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.tz = load i32, ptr %i.a, align 1
  %i.ua = xor i32 %i.tz, 1970102111
  %i.ub = getelementptr i8, ptr %i.a, i64 3
  %i.uc = load i32, ptr %i.ub, align 1
  %i.ud = xor i32 %i.uc, 1600089205
  %i.ue = or i32 %i.ua, %i.ud
  %i.uf = icmp ne i32 %i.ue, 0
  %i.ug = zext i1 %i.uf to i32
  %i.uh = icmp eq i32 %i.ug, 0
  br i1 %i.uh, label %bb.dc, label %bb.br

bb.bq:                                            ; preds = %bb.bl
  %i.ui = load i32, ptr %i.a, align 1
  %i.uj = xor i32 %i.ui, 1701732191
  %i.uk = getelementptr i8, ptr %i.a, i64 4
  %i.ul = load i16, ptr %i.uk, align 1
  %i.um = zext i16 %i.ul to i32
  %i.un = xor i32 %i.um, 24415
  %i.uo = or i32 %i.uj, %i.un
  %i.up = icmp ne i32 %i.uo, 0
  %i.uq = zext i1 %i.up to i32
  %i.ur = icmp eq i32 %i.uq, 0
  br i1 %i.ur, label %bb.dc, label %bb.bu

bb.br:                                            ; preds = %bb.bp
  %i.us = load i32, ptr %i.a, align 1
  %i.ut = xor i32 %i.us, 1701732191
  %i.uu = getelementptr i8, ptr %i.a, i64 3
  %i.uv = load i32, ptr %i.uu, align 1
  %i.uw = xor i32 %i.uv, 1600087909
  %i.ux = or i32 %i.ut, %i.uw
  %i.uy = icmp ne i32 %i.ux, 0
  %i.uz = zext i1 %i.uy to i32
  %i.va = icmp eq i32 %i.uz, 0
  br i1 %i.va, label %bb.dc, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.vb = load i32, ptr %i.a, align 1
  %i.vc = xor i32 %i.vb, 1701732191
  %i.vd = getelementptr i8, ptr %i.a, i64 3
  %i.ve = load i32, ptr %i.vd, align 1
  %i.vf = xor i32 %i.ve, 1600092005
  %i.vg = or i32 %i.vc, %i.vf
  %i.vh = icmp ne i32 %i.vg, 0
  %i.vi = zext i1 %i.vh to i32
  %i.vj = icmp eq i32 %i.vi, 0
  br i1 %i.vj, label %bb.dc, label %bb.bv

bb.bt:                                            ; preds = %bb.bg
  %i.vk = load i64, ptr %i.a, align 1
  %i.vl = icmp ne i64 %i.vk, 6872339616837295967
  %i.vm = zext i1 %i.vl to i32
  %i.vn = icmp eq i32 %i.vm, 0
  br i1 %i.vn, label %bb.dc, label %bb.bx

bb.bu:                                            ; preds = %bb.bq
  %i.vo = load i32, ptr %i.a, align 1
  %i.vp = xor i32 %i.vo, 1919901535
  %i.vq = getelementptr i8, ptr %i.a, i64 4
  %i.vr = load i16, ptr %i.vq, align 1
  %i.vs = zext i16 %i.vr to i32
  %i.vt = xor i32 %i.vs, 24415
  %i.vu = or i32 %i.vp, %i.vt
  %i.vv = icmp ne i32 %i.vu, 0
  %i.vw = zext i1 %i.vv to i32
  %i.vx = icmp eq i32 %i.vw, 0
  br label %bb.dc

bb.bv:                                            ; preds = %bb.bs
  %i.vy = load i32, ptr %i.a, align 1
  %i.vz = xor i32 %i.vy, 1869635423
  %i.wa = getelementptr i8, ptr %i.a, i64 3
  %i.wb = load i32, ptr %i.wa, align 1
  %i.wc = xor i32 %i.wb, 1600090991
  %i.wd = or i32 %i.vz, %i.wc
  %i.we = icmp ne i32 %i.wd, 0
  %i.wf = zext i1 %i.we to i32
  %i.wg = icmp eq i32 %i.wf, 0
  br i1 %i.wg, label %bb.dc, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.wh = load i32, ptr %i.a, align 1
  %i.wi = xor i32 %i.wh, 1869635423
  %i.wj = getelementptr i8, ptr %i.a, i64 3
  %i.wk = load i32, ptr %i.wj, align 1
  %i.wl = xor i32 %i.wk, 1600092015
  %i.wm = or i32 %i.wi, %i.wl
  %i.wn = icmp ne i32 %i.wm, 0
  %i.wo = zext i1 %i.wn to i32
  %i.wp = icmp eq i32 %i.wo, 0
  br i1 %i.wp, label %bb.dc, label %bb.cj

bb.bx:                                            ; preds = %bb.bt
  %i.wq = load i64, ptr %i.a, align 1
  %i.wr = icmp ne i64 %i.wq, 6872321938685058911
  %i.ws = zext i1 %i.wr to i32
  %i.wt = icmp eq i32 %i.ws, 0
  br i1 %i.wt, label %bb.dc, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.wu = load i64, ptr %i.a, align 1
  %i.wv = icmp ne i64 %i.wu, 6872321981634731871
  %i.ww = zext i1 %i.wv to i32
  %i.wx = icmp eq i32 %i.ww, 0
  br i1 %i.wx, label %bb.dc, label %bb.cc

bb.bz:                                            ; preds = %bb.bn
  %i.wy = load i64, ptr %i.a, align 1
  %i.wz = xor i64 %i.wy, 8029203905700323167
  %i.xa = getelementptr i8, ptr %i.a, i64 3
  %i.xb = load i64, ptr %i.xa, align 1
  %i.xc = xor i64 %i.xb, 6872321986131290468
  %i.xd = or i64 %i.wz, %i.xc
  %i.xe = icmp ne i64 %i.xd, 0
  %i.xf = zext i1 %i.xe to i32
  %i.xg = icmp eq i32 %i.xf, 0
  br i1 %i.xg, label %bb.dc, label %bb.cb

bb.ca:                                            ; preds = %bb.a
  %i.xh = load i128, ptr %i.a, align 1
  %i.xi = xor i128 %i.xh, 152058490425573247402531930826540736351
  %i.xj = getelementptr i8, ptr %i.a, i64 16
  %i.xk = load i16, ptr %i.xj, align 1
  %i.xl = zext i16 %i.xk to i128
  %i.xm = xor i128 %i.xl, 24415
  %i.xn = or i128 %i.xi, %i.xm
  %i.xo = icmp ne i128 %i.xn, 0
  %i.xp = zext i1 %i.xo to i32
  %i.xq = icmp eq i32 %i.xp, 0
  br label %bb.dc

bb.cb:                                            ; preds = %bb.bz
  %i.xr = load i64, ptr %i.a, align 1
  %i.xs = xor i64 %i.xr, 7161124112489930591
  %i.xt = getelementptr i8, ptr %i.a, i64 3
  %i.xu = load i64, ptr %i.xt, align 1
  %i.xv = xor i64 %i.xu, 6872323033901330533
  %i.xw = or i64 %i.xs, %i.xv
  %i.xx = icmp ne i64 %i.xw, 0
  %i.xy = zext i1 %i.xx to i32
  %i.xz = icmp eq i32 %i.xy, 0
  br i1 %i.xz, label %bb.dc, label %bb.cf

bb.cc:                                            ; preds = %bb.by
  %i.ya = load i64, ptr %i.a, align 1
  %i.yb = icmp ne i64 %i.ya, 6872337383454564191
  %i.yc = zext i1 %i.yb to i32
  %i.yd = icmp eq i32 %i.yc, 0
  br i1 %i.yd, label %bb.dc, label %bb.ch

bb.cd:                                            ; preds = %bb.bf
  %i.ye = load i64, ptr %i.a, align 1
  %i.yf = xor i64 %i.ye, 8318823020889268063
  %i.yg = getelementptr i8, ptr %i.a, i64 8
  %i.yh = load i32, ptr %i.yg, align 1
  %i.yi = zext i32 %i.yh to i64
  %i.yj = xor i64 %i.yi, 1600087141
  %i.yk = or i64 %i.yf, %i.yj
  %i.yl = icmp ne i64 %i.yk, 0
  %i.ym = zext i1 %i.yl to i32
  %i.yn = icmp eq i32 %i.ym, 0
  br i1 %i.yn, label %bb.dc, label %bb.cp
end_hunk_1
begin_hunk_2_@_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB5_14ProtocolMember26uses_special_method_lookup:bb.a
  %i.aan = icmp ne i64 %i.aam, 0
  %i.aao = zext i1 %i.aan to i32
  %i.aap = icmp eq i32 %i.aao, 0
  br i1 %i.aap, label %bb.dc, label %bb.da

bb.cl:                                            ; preds = %bb.ci
  %i.aaq = load i64, ptr %i.a, align 1
  %i.aar = icmp ne i64 %i.aaq, 6872342876902285151
  %i.aas = zext i1 %i.aar to i32
  %i.aat = icmp eq i32 %i.aas, 0
  br i1 %i.aat, label %bb.dc, label %bb.co

bb.cm:                                            ; preds = %bb.cg
  %i.aau = load i64, ptr %i.a, align 1
  %i.aav = xor i64 %i.aau, 7379544309473894239
  %i.aaw = getelementptr i8, ptr %i.a, i64 3
  %i.aax = load i64, ptr %i.aaw, align 1
  %i.aay = xor i64 %i.aax, 6872339539594605426
  %i.aaz = or i64 %i.aav, %i.aay
  %i.aba = icmp ne i64 %i.aaz, 0
  %i.abb = zext i1 %i.aba to i32
  %i.abc = icmp eq i32 %i.abb, 0
  br i1 %i.abc, label %bb.dc, label %bb.ct

bb.cn:                                            ; preds = %bb.bm
  %i.abd = load i64, ptr %i.a, align 1
  %i.abe = xor i64 %i.abd, 8387507253358518111
  %i.abf = getelementptr i8, ptr %i.a, i64 8
  %i.abg = load i16, ptr %i.abf, align 1
  %i.abh = zext i16 %i.abg to i64
  %i.abi = xor i64 %i.abh, 24415
  %i.abj = or i64 %i.abe, %i.abi
  %i.abk = icmp ne i64 %i.abj, 0
  %i.abl = zext i1 %i.abk to i32
  %i.abm = icmp eq i32 %i.abl, 0
  br i1 %i.abm, label %bb.dc, label %bb.cv

bb.co:                                            ; preds = %bb.cl
  %i.abn = load i64, ptr %i.a, align 1
  %i.abo = icmp ne i64 %i.abn, 6872319812978237279
  %i.abp = zext i1 %i.abo to i32
  %i.abq = icmp eq i32 %i.abp, 0
  br i1 %i.abq, label %bb.dc, label %bb.cq

bb.cp:                                            ; preds = %bb.cd
  %i.abr = load i64, ptr %i.a, align 1
  %i.abs = xor i64 %i.abr, 7234317510880943967
  %i.abt = getelementptr i8, ptr %i.a, i64 8
  %i.abu = load i32, ptr %i.abt, align 1
  %i.abv = zext i32 %i.abu to i64
  %i.abw = xor i64 %i.abv, 1600091753
  %i.abx = or i64 %i.abs, %i.abw
  %i.aby = icmp ne i64 %i.abx, 0
  %i.abz = zext i1 %i.aby to i32
  %i.aca = icmp eq i32 %i.abz, 0
  br i1 %i.aca, label %bb.dc, label %bb.cs

bb.cq:                                            ; preds = %bb.co
  %i.acb = load i64, ptr %i.a, align 1
  %i.acc = icmp ne i64 %i.acb, 6872337379478363999
  %i.acd = zext i1 %i.acc to i32
  %i.ace = icmp eq i32 %i.acd, 0
  br label %bb.dc

bb.cr:                                            ; preds = %bb.cj
  %i.acf = load i32, ptr %i.a, align 1
  %i.acg = xor i32 %i.acf, 1702059871
  %i.ach = getelementptr i8, ptr %i.a, i64 3
  %i.aci = load i32, ptr %i.ach, align 1
  %i.acj = xor i32 %i.aci, 1600091237
  %i.ack = or i32 %i.acg, %i.acj
  %i.acl = icmp ne i32 %i.ack, 0
  %i.acm = zext i1 %i.acl to i32
  %i.acn = icmp eq i32 %i.acm, 0
  br i1 %i.acn, label %bb.dc, label %bb.cw

bb.cs:                                            ; preds = %bb.cp
  %i.aco = load i64, ptr %i.a, align 1
  %i.acp = xor i64 %i.aco, 7020653822640086879
  %i.acq = getelementptr i8, ptr %i.a, i64 8
  %i.acr = load i32, ptr %i.acq, align 1
  %i.acs = zext i32 %i.acr to i64
  %i.act = xor i64 %i.acs, 1600087405
  %i.acu = or i64 %i.acp, %i.act
  %i.acv = icmp ne i64 %i.acu, 0
  %i.acw = zext i1 %i.acv to i32
  %i.acx = icmp eq i32 %i.acw, 0
  br label %bb.dc

bb.ct:                                            ; preds = %bb.cm
  %i.acy = load i64, ptr %i.a, align 1
  %i.acz = xor i64 %i.acy, 8391439158244237151
  %i.ada = getelementptr i8, ptr %i.a, i64 3
  %i.adb = load i64, ptr %i.ada, align 1
  %i.adc = xor i64 %i.adb, 6872337400884982885
  %i.add = or i64 %i.acz, %i.adc
  %i.ade = icmp ne i64 %i.add, 0
  %i.adf = zext i1 %i.ade to i32
  %i.adg = icmp eq i32 %i.adf, 0
  br i1 %i.adg, label %bb.dc, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.adh = load i64, ptr %i.a, align 1
  %i.adi = xor i64 %i.adh, 7310584043768340319
  %i.adj = getelementptr i8, ptr %i.a, i64 3
  %i.adk = load i64, ptr %i.adj, align 1
  %i.adl = xor i64 %i.adk, 6872331838902858853
  %i.adm = or i64 %i.adi, %i.adl
  %i.adn = icmp ne i64 %i.adm, 0
  %i.ado = zext i1 %i.adn to i32
  %i.adp = icmp eq i32 %i.ado, 0
  br i1 %i.adp, label %bb.dc, label %bb.cz

bb.cv:                                            ; preds = %bb.cn
  %i.adq = load i64, ptr %i.a, align 1
  %i.adr = xor i64 %i.adq, 7381229890713116511
  %i.ads = getelementptr i8, ptr %i.a, i64 8
  %i.adt = load i16, ptr %i.ads, align 1
  %i.adu = zext i16 %i.adt to i64
  %i.adv = xor i64 %i.adu, 24415
  %i.adw = or i64 %i.adr, %i.adv
  %i.adx = icmp ne i64 %i.adw, 0
  %i.ady = zext i1 %i.adx to i32
  %i.adz = icmp eq i32 %i.ady, 0
  br label %bb.dc

bb.cw:                                            ; preds = %bb.cr
  %i.aea = load i32, ptr %i.a, align 1
  %i.aeb = xor i32 %i.aea, 1953718111
  %i.aec = getelementptr i8, ptr %i.a, i64 3
  %i.aed = load i32, ptr %i.aec, align 1
  %i.aee = xor i32 %i.aed, 1600090740
  %i.aef = or i32 %i.aeb, %i.aee
  %i.aeg = icmp ne i32 %i.aef, 0
  %i.aeh = zext i1 %i.aeg to i32
  %i.aei = icmp eq i32 %i.aeh, 0
  br i1 %i.aei, label %bb.dc, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.aej = load i32, ptr %i.a, align 1
  %i.aek = xor i32 %i.aej, 1970495327
  %i.ael = getelementptr i8, ptr %i.a, i64 3
  %i.aem = load i32, ptr %i.ael, align 1
  %i.aen = xor i32 %i.aem, 1600086645
  %i.aeo = or i32 %i.aek, %i.aen
  %i.aep = icmp ne i32 %i.aeo, 0
  %i.aeq = zext i1 %i.aep to i32
  %i.aer = icmp eq i32 %i.aeq, 0
  br i1 %i.aer, label %bb.dc, label %bb.db

bb.cy:                                            ; preds = %bb.ax
  %i.aes = load i128, ptr %i.a, align 1
  %i.aet = xor i128 %i.aes, 126834251356332079816287430674838937439
  %i.aeu = getelementptr i8, ptr %i.a, i64 16
  %i.aev = load i8, ptr %i.aeu, align 1
  %i.aew = zext i8 %i.aev to i128
  %i.aex = xor i128 %i.aew, 95
  %i.aey = or i128 %i.aet, %i.aex
  %i.aez = icmp ne i128 %i.aey, 0
  %i.afa = zext i1 %i.aez to i32
  %i.afb = icmp eq i32 %i.afa, 0
  br label %bb.dc

bb.cz:                                            ; preds = %bb.cu
  %i.afc = load i64, ptr %i.a, align 1
  %i.afd = xor i64 %i.afc, 7594306426759307103
  %i.afe = getelementptr i8, ptr %i.a, i64 3
  %i.aff = load i64, ptr %i.afe, align 1
  %i.afg = xor i64 %i.aff, 6872341751418680690
  %i.afh = or i64 %i.afd, %i.afg
  %i.afi = icmp ne i64 %i.afh, 0
  %i.afj = zext i1 %i.afi to i32
  %i.afk = icmp eq i32 %i.afj, 0
  br label %bb.dc

bb.da:                                            ; preds = %bb.ck
  %i.afl = load i64, ptr %i.a, align 1
  %i.afm = xor i64 %i.afl, 6873458907007967071
  %i.afn = getelementptr i8, ptr %i.a, i64 8
  %i.afo = load i8, ptr %i.afn, align 1
  %i.afp = zext i8 %i.afo to i64
  %i.afq = xor i64 %i.afp, 95
  %i.afr = or i64 %i.afm, %i.afq
  %i.afs = icmp ne i64 %i.afr, 0
  %i.aft = zext i1 %i.afs to i32
  %i.afu = icmp eq i32 %i.aft, 0
  br label %bb.dc

bb.db:                                            ; preds = %bb.cx
  %i.afv = load i32, ptr %i.a, align 1
  %i.afw = xor i32 %i.afv, 1870159711
  %i.afx = getelementptr i8, ptr %i.a, i64 3
  %i.afy = load i32, ptr %i.afx, align 1
  %i.afz = xor i32 %i.afy, 1600090735
  %i.aga = or i32 %i.afw, %i.afz
  %i.agb = icmp ne i32 %i.aga, 0
  %i.agc = zext i1 %i.agb to i32
  %i.agd = icmp eq i32 %i.agc, 0
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cv, %bb.cs, %bb.cq, %bb.ce, %bb.ca, %bb.bu, %bb.bj, %bb.ak, %bb.ai, %bb.db, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.aj, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.cb, %bb.cc, %bb.cd, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cr, %bb.ct, %bb.cu, %bb.cw, %bb.cx
  %.sroa.0.0 = phi i1 [ true, %bb.b ], [ %i.acx, %bb.cs ], [ %i.xq, %bb.ca ], [ %i.kk, %bb.ai ], [ true, %bb.cx ], [ true, %bb.cw ], [ %i.lc, %bb.ak ], [ true, %bb.cu ], [ true, %bb.ct ], [ %i.sc, %bb.bj ], [ true, %bb.cr ], [ %i.vx, %bb.bu ], [ true, %bb.cp ], [ true, %bb.co ], [ true, %bb.cn ], [ true, %bb.cm ], [ true, %bb.cl ], [ true, %bb.ck ], [ true, %bb.cj ], [ true, %bb.ci ], [ true, %bb.ch ], [ true, %bb.cg ], [ true, %bb.cf ], [ %i.ace, %bb.cq ], [ true, %bb.cd ], [ true, %bb.cc ], [ true, %bb.cb ], [ false, %bb.a ], [ true, %bb.bz ], [ true, %bb.by ], [ true, %bb.bx ], [ true, %bb.bw ], [ true, %bb.bv ], [ %i.afk, %bb.cz ], [ true, %bb.bt ], [ true, %bb.bs ], [ true, %bb.br ], [ true, %bb.bq ], [ true, %bb.bp ], [ true, %bb.bo ], [ true, %bb.bn ], [ true, %bb.bm ], [ true, %bb.bl ], [ true, %bb.bk ], [ %i.yw, %bb.ce ], [ true, %bb.bi ], [ true, %bb.bh ], [ true, %bb.bg ], [ true, %bb.bf ], [ true, %bb.be ], [ true, %bb.bd ], [ true, %bb.bc ], [ true, %bb.bb ], [ true, %bb.ba ], [ true, %bb.az ], [ true, %bb.ay ], [ true, %bb.ax ], [ true, %bb.aw ], [ true, %bb.av ], [ true, %bb.au ], [ true, %bb.at ], [ true, %bb.as ], [ true, %bb.ar ], [ true, %bb.aq ], [ true, %bb.ap ], [ true, %bb.ao ], [ true, %bb.an ], [ true, %bb.am ], [ true, %bb.al ], [ %i.adz, %bb.cv ], [ true, %bb.aj ], [ %i.afu, %bb.da ], [ true, %bb.ah ], [ true, %bb.ag ], [ true, %bb.af ], [ true, %bb.ae ], [ true, %bb.ad ], [ true, %bb.ac ], [ true, %bb.ab ], [ true, %bb.aa ], [ true, %bb.z ], [ true, %bb.y ], [ true, %bb.x ], [ true, %bb.w ], [ true, %bb.v ], [ true, %bb.u ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ %i.agd, %bb.db ], [ %i.afb, %bb.cy ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB5_14ProtocolMember43has_incompatible_class_variable_declaration(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %4) unnamed_addr #1 personality ptr @rust_eh_personality !guid !16097 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [36 x i8], align 4                ; 4 uses
  %i.d = alloca [36 x i8], align 4                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 4                ; 4 uses
  %i.g = alloca [16 x i8], align 4                ; 4 uses
  %i.h = alloca [16 x i8], align 4                ; 6 uses
  %i.i = alloca [12 x i8], align 4                ; 8 uses
  %i.j = alloca [12 x i8], align 4                ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.k, align 8, !nonnull !108, !align !125, !noundef !108
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 92
  %i.m = load i8, ptr %i.l, align 4, !noundef !108
  %i.n = and i8 %i.m, 3
  %or.cond.not = icmp eq i8 %i.n, 1
  br i1 %or.cond.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type13nominal_class(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.j, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !16098)
  %i.o = load i32, ptr %i.j, align 4, !range !107, !alias.scope !16098, !noundef !108
  %.not.i = icmp eq i32 %i.o, -2
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.j, i64 12, i1 false)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeE7or_elseNCNvMsd_NtBM_14protocol_classNtB1Y_14ProtocolMember43has_incompatible_class_variable_declaration0EBO_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16099
  %.sroa.0.0.copyload.i.i = load i32, ptr %4, align 4, !noalias !16100 ; 2 uses
  %i.p = icmp ne i32 %.sroa.0.0.copyload.i.i, 17
  call void @llvm.assume(i1 %i.p)
  switch i32 %.sroa.0.0.copyload.i.i, label %bb.e [
    i32 0, label %bb.f
    i32 16, label %bb.f
    i32 15, label %bb.f
    i32 3, label %bb.f
    i32 2, label %bb.f
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  store i32 -2, ptr %i.i, align 4
  br label %_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB7_14ProtocolMember43has_incompatible_class_variable_declaration0Bb_.exit.i

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16100
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type12to_meta_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3), !noalias !16100
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type25to_instance_approximation(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.h, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.g, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3), !noalias !16100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16100
  %i.q = load i32, ptr %i.h, align 4, !range !109, !noalias !16100, !noundef !108
  %.not.i.i = icmp eq i32 %i.q, -1
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !16100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16100
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type13nominal_class(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.i, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
  br label %_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB7_14ProtocolMember43has_incompatible_class_variable_declaration0Bb_.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16100
  store i32 -2, ptr %i.i, align 4
  br label %_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB7_14ProtocolMember43has_incompatible_class_variable_declaration0Bb_.exit.i

_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB7_14ProtocolMember43has_incompatible_class_variable_declaration0Bb_.exit.i: ; preds = %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16099
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeE7or_elseNCNvMsd_NtBM_14protocol_classNtB1Y_14ProtocolMember43has_incompatible_class_variable_declaration0EBO_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeE7or_elseNCNvMsd_NtBM_14protocol_classNtB1Y_14ProtocolMember43has_incompatible_class_variable_declaration0EBO_.exit: ; preds = %bb.c, %_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB7_14ProtocolMember43has_incompatible_class_variable_declaration0Bb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.r = load i32, ptr %i.i, align 4, !range !107, !noundef !108
  %.not = icmp eq i32 %i.r, -2
  br i1 %.not, label %bb.o, label %bb.i

bb.i:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeE7or_elseNCNvMsd_NtBM_14protocol_classNtB1Y_14ProtocolMember43has_incompatible_class_variable_declaration0EBO_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16101
  %i.s = load ptr, ptr %0, align 8, !noalias !16101, !nonnull !108, !noundef !108 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !16101, !noundef !108 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16102)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = icmp ult i64 %i.u, 17
  br i1 %i.v, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = call { ptr, i64 } @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer9new_exact(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u), !noalias !16103 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0        ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.thread.i.i, label %bb.l

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.thread.i.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !16104
  %i.z = trunc nuw nsw i64 %i.u to i8
  %i.aa = or disjoint i8 %i.z, -64
  %.15..15..15..15..15..15..15..15..15..15..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 %i.aa, ptr %.15..15..15..15..15..15..15..15..15..15..sroa_idx, align 1, !noalias !16104
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %i.s, i64 %i.u, i1 false), !noalias !16103
  %.0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i = load ptr, ptr %i.a, align 8, !noalias !16105
  %.8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.8..8..8..8..8..8..8..sroa.6.0.copyload5.i.i = load i64, ptr %.8..8..8..8..8..8..8..sroa_idx, align 8, !noalias !16105
  br label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ab = extractvalue { ptr, i64 } %i.w, 1
  br label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i.i

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.02.0.i.i = phi ptr [ %.0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i, %bb.k ], [ %i.x, %bb.l ]
  %.sroa.6.0.i.i = phi i64 [ %.8..8..8..8..8..8..8..sroa.6.0.copyload5.i.i, %bb.k ], [ %i.ab, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = icmp ugt i64 %.sroa.6.0.i.i, -72057594037927937
  br i1 %i.ac, label %bb.m, label %_RINvMNtCskLngH8kgpZI_15ruff_python_ast4nameNtB3_4Name3newReECsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !131

bb.m:                                             ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i.i, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.thread.i.i
  call void @_RINvNvXsQ_Csj8vhLppEnlJ_8char_strINtNtCs4NRVxsYgnAr_4core6result6ResultppENtB8_13UnwrapWithMsg15unwrap_with_msg17do_panic_with_msgNtNtNtB8_6errors13reserve_error12ReserveErrorEB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #42, !noalias !16106
  unreachable

_RINvMNtCskLngH8kgpZI_15ruff_python_ast4nameNtB3_4Name3newReECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i.i
  store ptr %.sroa.02.0.i.i, ptr %i.e, align 8, !alias.scope !16102, !noalias !16101
  %.sroa.28.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.6.0.i.i, ptr %.sroa.28.0..sroa_idx.i.i, align 8, !alias.scope !16102, !noalias !16101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.i, i64 12, i1 false)
  %i.ad = call noundef i8 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides34effective_superclass_variable_kind(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.e), !noalias !16101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16101
  %i.ae = icmp eq i8 %i.ad, 1
  br i1 %i.ae, label %bb.n, label %_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB7_14ProtocolMember43has_incompatible_class_variable_declarations_0Bb_.exit

bb.n:                                             ; preds = %_RINvMNtCskLngH8kgpZI_15ruff_python_ast4nameNtB3_4Name3newReECsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType12class_member(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.d, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u, i8 noundef 0)
  call void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType15instance_member(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.c, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u)
  %.sroa.514.32.copyload = load i32, ptr %i.c, align 4, !noalias !16101
  %.sroa.012.0.copyload = load i32, ptr %i.d, align 4, !noalias !16101
  %or.cond.i.i.i.i.i = icmp sgt i32 %.sroa.012.0.copyload, 0
  %or.cond.i.i.i.i.i.1 = icmp sgt i32 %.sroa.514.32.copyload, 0
  %or.cond.i.i.i.i.i.lcssa = select i1 %or.cond.i.i.i.i.i, i1 true, i1 %or.cond.i.i.i.i.i.1
  br label %_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB7_14ProtocolMember43has_incompatible_class_variable_declarations_0Bb_.exit

_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB7_14ProtocolMember43has_incompatible_class_variable_declarations_0Bb_.exit: ; preds = %_RINvMNtCskLngH8kgpZI_15ruff_python_ast4nameNtB3_4Name3newReECsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.n
  %.sroa.0.0.i = phi i1 [ %or.cond.i.i.i.i.i.lcssa, %bb.n ], [ false, %_RINvMNtCskLngH8kgpZI_15ruff_python_ast4nameNtB3_4Name3newReECsoTR8nlGN3X_18ty_python_semantic.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.o:                                             ; preds = %_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB7_14ProtocolMember43has_incompatible_class_variable_declarations_0Bb_.exit, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeE7or_elseNCNvMsd_NtBM_14protocol_classNtB1Y_14ProtocolMember43has_incompatible_class_variable_declaration0EBO_.exit, %bb.a
  %.sroa.0.1 = phi i1 [ false, %bb.a ], [ %.sroa.0.0.i, %_RNCNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB7_14ProtocolMember43has_incompatible_class_variable_declarations_0Bb_.exit ], [ false, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeE7or_elseNCNvMsd_NtBM_14protocol_classNtB1Y_14ProtocolMember43has_incompatible_class_variable_declaration0EBO_.exit ]
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB5_14ProtocolMember6access(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([84 x i8]) align 4 captures(none) dereferenceable(84) initializes((0, 84)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, i1 noundef zeroext %5) unnamed_addr #1 personality ptr @rust_eh_personality !guid !16107 {
bb.a:
  %i.a = alloca [84 x i8], align 4                ; 3 uses
  %i.b = alloca [168 x i8], align 4               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !108, !align !125, !noundef !108
  call fastcc void @_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB5_18ProtocolMemberData12capabilities(ptr noalias noundef align 4 captures(none) dereferenceable(168) %i.b, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(96) %i.d, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4)
  %.sink.idx.sroa.sel.idx = select i1 %5, i64 84, i64 0
  %.sink.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink.idx.sroa.sel.idx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.a, ptr noundef nonnull align 4 dereferenceable(84) %.sink.idx.sroa.sel, i64 84, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i8, ptr %i.e, align 8, !range !121, !noundef !108 ; 2 uses
  %.not.i = icmp eq i8 %i.f, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = trunc nuw i8 %i.f to i1
  call fastcc void @_RNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB5_20ProtocolMemberAccess11materialize(ptr noalias noundef nonnull align 4 captures(none) dereferenceable(84) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(84) %i.a, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, i1 noundef zeroext %i.g)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types19MaterializationKindE6map_orNtNtBK_14protocol_class20ProtocolMemberAccessNCNvMsd_B1U_NtB1U_14ProtocolMember6access0EBM_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %0, ptr noundef nonnull readonly align 4 dereferenceable(84) %i.a, i64 84, i1 false)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types19MaterializationKindE6map_orNtNtBK_14protocol_class20ProtocolMemberAccessNCNvMsd_B1U_NtB1U_14ProtocolMember6access0EBM_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types19MaterializationKindE6map_orNtNtBK_14protocol_class20ProtocolMemberAccessNCNvMsd_B1U_NtB1U_14ProtocolMember6access0EBM_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_14TypedDictField14may_be_present(ptr noalias noundef readonly align 4 captures(none) dereferenceable(28) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2) unnamed_addr #1 !guid !16108 {
end_hunk_2
