Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonAsmBackend?download=true
inline.NumInlined: 924
inline.NumDeleted: 484
begin_hunk_0_@_ZNK12_GLOBAL__N_117HexagonAsmBackend12getFixupKindEN4llvm9StringRefE:bb.a
_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit739: ; preds = %bb.be
  br i1 %or.cond1464514997, label %.thread2122, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit747

.thread2122:                                      ; preds = %bb.bf, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit739
  %i.abw = load i128, ptr %1, align 1
  %i.abx = xor i128 %i.abw, 126532083536473815276747435399187029842
  %i.aby = getelementptr i8, ptr %1, i64 16
  %i.abz = load i8, ptr %i.aby, align 1
  %i.aca = zext i8 %i.abz to i128
  %i.acb = xor i128 %i.aca, 88
  %i.acc = or i128 %i.abx, %i.acb
  %i.acd = icmp ne i128 %i.acc, 0
  %i.ace = zext i1 %i.acd to i32
  %.not.i.i745 = icmp eq i32 %i.ace, 0
  br i1 %.not.i.i745, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit827, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit747

_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit747: ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit731, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit739, %.thread2122
  br i1 %or.cond146391496314977150201503515063150811511615165151861520615243, label %bb.bg, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit755

bb.bg:                                            ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit747
  %i.acf = load i64, ptr %1, align 1
  %i.acg = xor i64 %i.acf, 3689115877493989202
  %i.ach = getelementptr i8, ptr %1, i64 8
  %i.aci = load i32, ptr %i.ach, align 1
  %i.acj = zext i32 %i.aci to i64
  %i.ack = xor i64 %i.acj, 1195725407
  %i.acl = or i64 %i.acg, %i.ack
  %i.acm = icmp ne i64 %i.acl, 0
  %i.acn = zext i1 %i.acm to i32
  %.not.i.i753 = icmp eq i32 %i.acn, 0
  br i1 %.not.i.i753, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit827, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit763

_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit755: ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit747
  %.not.i.i.i.i759 = icmp eq i64 %2, 24
  %or.cond14795 = and i1 %.not.i.i.i.i759, %.not1482014961150221503315065150791512115164151881520215246
  br i1 %or.cond14795, label %bb.bh, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit763

bb.bh:                                            ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit755
  %i.aco = load i128, ptr %1, align 1
  %i.acp = xor i128 %i.aco, 66722360823970813625939949850571857746
  %i.acq = getelementptr i8, ptr %1, i64 16
  %i.acr = load i64, ptr %i.acq, align 1
  %i.acs = zext i64 %i.acr to i128
  %i.act = xor i128 %i.acs, 6367892258741768287
  %i.acu = or i128 %i.acp, %i.act
  %i.acv = icmp ne i128 %i.acu, 0
  %i.acw = zext i1 %i.acv to i32
  %.not.i.i761 = icmp eq i32 %i.acw, 0
  br i1 %.not.i.i761, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit827, label %.thread2140

_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit763: ; preds = %bb.bg, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit755
  %.not.i.i.i.i767 = icmp eq i64 %2, 24
  %or.cond14797 = and i1 %.not.i.i.i.i767, %.not1482014961150221503315065150791512115164151881520215246
  br i1 %or.cond14797, label %.thread2140, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit771

.thread2140:                                      ; preds = %bb.bh, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit763
  %i.acx = load i128, ptr %1, align 1
  %i.acy = xor i128 %i.acx, 66727553120829348453568480346901077842
  %i.acz = getelementptr i8, ptr %1, i64 16
  %i.ada = load i64, ptr %i.acz, align 1
  %i.adb = zext i64 %i.ada to i128
  %i.adc = xor i128 %i.adb, 6367892258741768287
  %i.add = or i128 %i.acy, %i.adc
  %i.ade = icmp ne i128 %i.add, 0
  %i.adf = zext i1 %i.ade to i32
  %.not.i.i769 = icmp eq i32 %i.adf, 0
  br i1 %.not.i.i769, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit827, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit771

_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit771: ; preds = %.thread2140, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit763
  %.not.i.i.i.i775 = icmp eq i64 %2, 24
  %or.cond14799 = and i1 %.not.i.i.i.i775, %.not1482014961150221503315065150791512115164151881520215246
  br i1 %or.cond14799, label %bb.bi, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit787

bb.bi:                                            ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit771
  %i.adg = load i128, ptr %1, align 1
  %i.adh = xor i128 %i.adg, 66722360823970813625941357225455411026
  %i.adi = getelementptr i8, ptr %1, i64 16
  %i.adj = load i64, ptr %i.adi, align 1
  %i.adk = zext i64 %i.adj to i128
  %i.adl = xor i128 %i.adk, 6367892258741768287
  %i.adm = or i128 %i.adh, %i.adl
  %i.adn = icmp ne i128 %i.adm, 0
  %i.ado = zext i1 %i.adn to i32
  %.not.i.i777 = icmp eq i32 %i.ado, 0
  br i1 %.not.i.i777, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit827, label %.thread2153

.thread2153:                                      ; preds = %bb.bi
  %i.adp = load i128, ptr %1, align 1
  %i.adq = xor i128 %i.adp, 66727553120829348453569887721784631122
  %i.adr = getelementptr i8, ptr %1, i64 16
  %i.ads = load i64, ptr %i.adr, align 1
  %i.adt = zext i64 %i.ads to i128
  %i.adu = xor i128 %i.adt, 6367892258741768287
  %i.adv = or i128 %i.adq, %i.adu
  %i.adw = icmp ne i128 %i.adv, 0
  %i.adx = zext i1 %i.adw to i32
  %.not.i.i785 = icmp eq i32 %i.adx, 0
  br i1 %.not.i.i785, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit827, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit787

_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit787: ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit771, %.thread2153
  br i1 %or.cond146391496314977150201503515063150811511615165151861520615243, label %bb.bj, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit795

bb.bj:                                            ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit787
  %i.ady = load i64, ptr %1, align 1
  %i.adz = xor i64 %i.ady, 3977346253645700946
  %i.aea = getelementptr i8, ptr %1, i64 8
  %i.aeb = load i32, ptr %i.aea, align 1
  %i.aec = zext i32 %i.aeb to i64
  %i.aed = xor i64 %i.aec, 1195725407
  %i.aee = or i64 %i.adz, %i.aed
  %i.aef = icmp ne i64 %i.aee, 0
  %i.aeg = zext i1 %i.aef to i32
  %.not.i.i793 = icmp eq i32 %i.aeg, 0
  br i1 %.not.i.i793, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit827, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit803.thread

_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit795: ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit787
  br i1 %or.cond14667151331527215289, label %bb.bk, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit803

bb.bk:                                            ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit795
  %i.aeh = load i64, ptr %1, align 1
  %i.aei = xor i64 %i.aeh, 5714018247314261570
  %i.aej = getelementptr i8, ptr %1, i64 6
  %i.aek = load i64, ptr %i.aej, align 1
  %i.ael = xor i64 %i.aek, 4994016234824748876
  %i.aem = or i64 %i.aei, %i.ael
  %i.aen = icmp ne i64 %i.aem, 0                  ; 3 uses
  %i.aeo = zext i1 %i.aen to i32                  ; 0 uses
  %brmerge.not = and i1 %i.aen, %or.cond1471715264
  %.mux15311 = select i1 %i.aen, i64 %.sroa.212.161495314984150181503715061150831511115167151841521015240, i64 4294967296
  br i1 %brmerge.not, label %bb.bl, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit827

_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit803: ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit795
  br i1 %or.cond1471715264, label %bb.bl, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit827

_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit803.thread: ; preds = %bb.bj
  br i1 %or.cond1471715264, label %.thread, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit811.thread

bb.bl:                                            ; preds = %bb.bk, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit803
  %i.aep = load i64, ptr %1, align 1
  %i.aeq = xor i64 %i.aep, 5714018247314261570
  %i.aer = getelementptr i8, ptr %1, i64 3
  %i.aes = load i64, ptr %i.aer, align 1
  %i.aet = xor i64 %i.aes, 4062039396772565599
  %i.aeu = or i64 %i.aeq, %i.aet
  %i.aev = icmp ne i64 %i.aeu, 0
  %i.aew = zext i1 %i.aev to i32
  %.not.i.i809 = icmp eq i32 %i.aew, 0
  %.mux = select i1 %.not.i.i809, i64 4294967304, i64 %.sroa.212.161495314984150181503715061150831511115167151841521015240
  br label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit827

.thread:                                          ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit803.thread
  %i.aex = load i64, ptr %1, align 1
  %i.aey = xor i64 %i.aex, 5714018247314261570
  %i.aez = getelementptr i8, ptr %1, i64 3
  %i.afa = load i64, ptr %i.aez, align 1
  %i.afb = xor i64 %i.afa, 4062039396772565599
  %i.afc = or i64 %i.aey, %i.afb
  %i.afd = icmp ne i64 %i.afc, 0
  %i.afe = zext i1 %i.afd to i32
  %.not.i.i80915309 = icmp eq i32 %i.afe, 0
  br i1 %.not.i.i80915309, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit827, label %.thread2189

_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit811.thread: ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit803.thread
  %i.aff = load i64, ptr %1, align 1
  %i.afg = xor i64 %i.aff, 5714018247314261570
  %i.afh = getelementptr i8, ptr %1, i64 8
  %i.afi = load i32, ptr %i.afh, align 1
  %i.afj = zext i32 %i.afi to i64
  %i.afk = xor i64 %i.afj, 909205315
  %i.afl = or i64 %i.afg, %i.afk
  %i.afm = icmp ne i64 %i.afl, 0
  %i.afn = zext i1 %i.afm to i32
  %.not.i.i817 = icmp eq i32 %i.afn, 0
  br i1 %.not.i.i817, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit827, label %.thread2189

.thread2189:                                      ; preds = %.thread, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit811.thread
  %i.afo = load i64, ptr %1, align 1
  %i.afp = xor i64 %i.afo, 5714018247314261570
  %i.afq = getelementptr i8, ptr %1, i64 8
  %i.afr = load i32, ptr %i.afq, align 1
  %i.afs = zext i32 %i.afr to i64
  %i.aft = xor i64 %i.afs, 842227523
  %i.afu = or i64 %i.afp, %i.aft
  %i.afv = icmp ne i64 %i.afu, 0
  %i.afw = zext i1 %i.afv to i32
  %.not.i.i825 = icmp eq i32 %i.afw, 0
  %spec.select = select i1 %.not.i.i825, i64 4294967302, i64 %.sroa.212.161495314984150181503715061150831511115167151841521015240
  br label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit827

_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit827: ; preds = %bb.bk, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit803, %bb.bl, %.thread, %.thread1789.thread, %.thread2189, %bb.e, %bb.d, %bb.h, %bb.g, %bb.f, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit35.thread, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit67.thread2236.thread2589, %bb.i, %bb.k, %.thread1546, %.thread1533, %bb.j, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit107.thread, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit115.thread2955.thread3258, %bb.l, %bb.m, %bb.n, %.thread1595, %bb.o, %bb.p, %bb.q, %.thread1613, %.thread1626, %bb.r, %.thread1639, %bb.s, %bb.t, %.thread1652, %.thread1665, %bb.u, %bb.w, %bb.v, %.thread1699, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit275, %bb.y, %bb.x, %.thread1727, %bb.z, %bb.ab, %.thread1771, %bb.aa, %.thread1750, %bb.ad, %bb.ac, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit371.thread, %.thread1789, %.thread1802, %bb.ae, %bb.af, %.thread1825, %.thread1846, %bb.ag, %.thread1867, %bb.ah, %bb.aj, %bb.ai, %bb.ak, %.thread1885, %bb.al, %.thread1898, %bb.am, %.thread1911, %.thread1924, %bb.an, %bb.ap, %bb.ao, %.thread1950, %bb.aq, %bb.ar, %.thread1973, %bb.at, %bb.as, %.thread1991, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit595.thread, %.thread2014, %bb.au, %bb.av, %bb.aw, %bb.ay, %bb.ax, %.thread2045, %bb.az, %.thread2068, %bb.ba, %bb.bc, %bb.bb, %bb.bd, %.thread2086, %.thread2099, %bb.be, %bb.bf, %.thread2122, %bb.bh, %bb.bg, %bb.bi, %.thread2140, %.thread2153, %bb.bj, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit811.thread
  %.sroa.212.103 = phi i64 [ 4294967304, %.thread ], [ 4294967299, %bb.e ], [ %spec.select, %.thread2189 ], [ 4294967298, %bb.d ], [ 4294967301, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit35.thread ], [ 4294967303, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit811.thread ], [ %.mux15311, %bb.bk ], [ %.mux, %bb.bl ], [ 4294967394, %.thread2153 ], [ 4294967395, %bb.bj ], [ 4294967393, %bb.bi ], [ 4294967392, %.thread2140 ], [ 4294967391, %bb.bh ], [ 4294967390, %bb.bg ], [ 4294967388, %bb.bf ], [ 4294967389, %.thread2122 ], [ 4294967386, %.thread2099 ], [ 4294967387, %bb.be ], [ 4294967385, %bb.bd ], [ 4294967384, %.thread2086 ], [ 4294967383, %bb.bc ], [ 4294967382, %bb.bb ], [ 4294967381, %.thread2068 ], [ 4294967380, %bb.ba ], [ 4294967378, %.thread2045 ], [ 4294967379, %bb.az ], [ 4294967377, %bb.ay ], [ 4294967376, %bb.ax ], [ 4294967373, %.thread2014 ], [ 4294967372, %bb.au ], [ 4294967374, %bb.av ], [ 4294967375, %bb.aw ], [ 4294967370, %.thread1991 ], [ 4294967371, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit595.thread ], [ 4294967369, %bb.at ], [ 4294967368, %bb.as ], [ 4294967366, %bb.ar ], [ 4294967367, %.thread1973 ], [ 4294967364, %.thread1950 ], [ 4294967365, %bb.aq ], [ 4294967363, %bb.ap ], [ 4294967362, %bb.ao ], [ 4294967360, %.thread1924 ], [ 4294967361, %bb.an ], [ 4294967359, %bb.am ], [ 4294967358, %.thread1911 ], [ 4294967357, %bb.al ], [ 4294967356, %.thread1898 ], [ 4294967355, %bb.ak ], [ 4294967354, %.thread1885 ], [ 4294967353, %bb.aj ], [ 4294967352, %bb.ai ], [ 4294967351, %.thread1867 ], [ 4294967350, %bb.ah ], [ 4294967346, %bb.af ], [ 4294967347, %.thread1825 ], [ 4294967349, %.thread1846 ], [ 4294967348, %bb.ag ], [ 4294967344, %.thread1802 ], [ 4294967345, %bb.ae ], [ 4294967343, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit371.thread ], [ 4294967342, %.thread1789 ], [ 4294967341, %bb.ad ], [ 4294967340, %bb.ac ], [ 4294967338, %bb.ab ], [ 4294967339, %.thread1771 ], [ 4294967336, %bb.aa ], [ 4294967337, %.thread1750 ], [ 4294967334, %.thread1727 ], [ 4294967335, %bb.z ], [ 4294967330, %.thread1699 ], [ 4294967331, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit275 ], [ 4294967333, %bb.y ], [ 4294967332, %bb.x ], [ 4294967329, %bb.w ], [ 4294967328, %bb.v ], [ 4294967326, %.thread1665 ], [ 4294967327, %bb.u ], [ 4294967325, %bb.t ], [ 4294967324, %.thread1652 ], [ 4294967322, %.thread1639 ], [ 4294967323, %bb.s ], [ 4294967320, %.thread1626 ], [ 4294967321, %bb.r ], [ 4294967319, %bb.q ], [ 4294967318, %.thread1613 ], [ 4294967314, %bb.n ], [ 4294967315, %.thread1595 ], [ 4294967316, %bb.o ], [ 4294967317, %bb.p ], [ 4294967312, %bb.l ], [ 4294967313, %bb.m ], [ 4294967310, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit107.thread ], [ 4294967311, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit115.thread2955.thread3258 ], [ 4294967309, %bb.k ], [ 4294967308, %.thread1546 ], [ 4294967306, %.thread1533 ], [ 4294967307, %bb.j ], [ 4294967305, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit67.thread2236.thread2589 ], [ 4294967304, %bb.i ], [ 4294967303, %bb.h ], [ 4294967302, %bb.g ], [ 4294967300, %bb.f ], [ 4294967342, %.thread1789.thread ], [ %.sroa.212.161495314984150181503715061150831511115167151841521015240, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit803 ] ; 3 uses
  %i.afx = and i64 %.sroa.212.103, 4294967296
  %.not14907 = icmp eq i64 %i.afx, 0
  %i.afy = and i64 %.sroa.212.103, 4294967295
  %i.afz = icmp eq i64 %i.afy, 4294967295
  %i.aga = or i1 %.not14907, %i.afz
  br i1 %i.aga, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit827.thread, label %bb.bm

bb.bm:                                            ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit827
  %i.agb = trunc i64 %.sroa.212.103 to i32
  %i.agc = add nuw nsw i32 %i.agb, 67536
  br label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit827.thread

_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit827.thread: ; preds = %bb.h, %bb.i, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit827, %bb.bm
  %.sroa.2.0 = phi i32 [ %i.agc, %bb.bm ], [ 0, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit827 ], [ 0, %bb.i ], [ 0, %bb.h ]
  ret i32 %.sroa.2.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal { ptr, i64 } @_ZNK12_GLOBAL__N_117HexagonAsmBackend16getFixupKindInfoEt(ptr noundef nonnull align 8 dereferenceable(212) %0, i16 noundef zeroext %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp ult i16 %1, 4010
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i64 } @_ZNK4llvm12MCAsmBackend16getFixupKindInfoEt(ptr noundef nonnull align 8 dereferenceable(24) %0, i16 noundef zeroext %1) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = zext i16 %1 to i64
  %i.d = getelementptr [16 x i8], ptr @_ZZNK12_GLOBAL__N_117HexagonAsmBackend16getFixupKindInfoEtE5Infos, i64 %i.c ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -64160
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 16, !tbaa !59
  %.sroa.3.0..sroa_idx = getelementptr i8, ptr %i.d, i64 -64152
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %.sroa.3.0.copyload, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.fca.1.insert.merged = phi { ptr, i64 } [ %i.b, %bb.b ], [ %i.g, %bb.c ]
  ret { ptr, i64 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZN4llvm12MCAsmBackend13evaluateFixupERKNS_10MCFragmentERNS_7MCFixupERNS_7MCValueERm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i16 0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117HexagonAsmBackend10applyFixupERKN4llvm10MCFragmentERKNS1_7MCFixupERKNS1_7MCValueEPhmb(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 %3, ptr nofree noundef captures(none) %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %5, ptr %i.a, align 8, !tbaa !60
  br i1 %6, label %bb.b, label %_ZN12_GLOBAL__N_117HexagonAsmBackend21shouldForceRelocationERKN4llvm7MCFixupE.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.val = load i16, ptr %i.b, align 4, !tbaa !70
  switch i16 %.val, label %bb.c [
    i16 4013, label %bb.e
    i16 4014, label %bb.e
    i16 4016, label %bb.e
    i16 4017, label %bb.e
    i16 4018, label %bb.e
    i16 4019, label %bb.e
    i16 4020, label %bb.e
    i16 4021, label %bb.e
    i16 4022, label %bb.e
    i16 4026, label %bb.e
    i16 4032, label %bb.e
    i16 4033, label %bb.e
    i16 4034, label %bb.e
    i16 4035, label %bb.e
    i16 4036, label %bb.e
    i16 4037, label %bb.e
    i16 4038, label %bb.e
    i16 4039, label %bb.e
    i16 4041, label %bb.e
    i16 4042, label %bb.e
    i16 4043, label %bb.e
    i16 4044, label %bb.e
    i16 4045, label %bb.e
    i16 4046, label %bb.e
    i16 4047, label %bb.e
    i16 4048, label %bb.e
    i16 4049, label %bb.e
    i16 4050, label %bb.e
    i16 4051, label %bb.e
    i16 4052, label %bb.e
    i16 4053, label %bb.e
    i16 4054, label %bb.e
    i16 4055, label %bb.e
    i16 4056, label %bb.e
    i16 4057, label %bb.e
    i16 4058, label %bb.e
    i16 4059, label %bb.e
    i16 4060, label %bb.e
    i16 4061, label %bb.e
    i16 4062, label %bb.e
    i16 4063, label %bb.e
    i16 4064, label %bb.e
    i16 4065, label %bb.e
    i16 4066, label %bb.e
    i16 4067, label %bb.e
    i16 4068, label %bb.e
    i16 4069, label %bb.e
    i16 4070, label %bb.e
    i16 4071, label %bb.e
    i16 4072, label %bb.e
    i16 4073, label %bb.e
    i16 4074, label %bb.e
    i16 4075, label %bb.e
    i16 4076, label %bb.e
    i16 4077, label %bb.e
    i16 4078, label %bb.e
    i16 4079, label %bb.e
    i16 4081, label %bb.e
    i16 4082, label %bb.e
    i16 4083, label %bb.e
    i16 4084, label %bb.e
    i16 4085, label %bb.e
    i16 4086, label %bb.e
    i16 4087, label %bb.e
    i16 4088, label %bb.e
    i16 4089, label %bb.e
    i16 4090, label %bb.e
    i16 4091, label %bb.e
    i16 4092, label %bb.e
    i16 4093, label %bb.e
    i16 4094, label %bb.e
    i16 4095, label %bb.e
    i16 4096, label %bb.e
    i16 4097, label %bb.e
    i16 4098, label %bb.e
    i16 4099, label %bb.e
    i16 4100, label %bb.e
    i16 4101, label %bb.e
    i16 4102, label %bb.e
    i16 4103, label %bb.e
    i16 4040, label %bb.e
    i16 4080, label %bb.e
    i16 4104, label %bb.e
    i16 4105, label %bb.e
    i16 4106, label %bb.e
    i16 4107, label %bb.e
    i16 4108, label %bb.e
    i16 4109, label %bb.e
    i16 4010, label %_ZN12_GLOBAL__N_117HexagonAsmBackend21shouldForceRelocationERKN4llvm7MCFixupE.exit
    i16 4023, label %bb.d
    i16 4029, label %bb.d
    i16 4025, label %bb.d
    i16 4027, label %bb.d
    i16 4011, label %bb.d
    i16 4028, label %bb.d
    i16 4024, label %bb.d
    i16 4030, label %bb.d
    i16 4012, label %bb.d
    i16 4031, label %bb.d
    i16 4001, label %_ZN12_GLOBAL__N_117HexagonAsmBackend21shouldForceRelocationERKN4llvm7MCFixupE.exit
    i16 4002, label %_ZN12_GLOBAL__N_117HexagonAsmBackend21shouldForceRelocationERKN4llvm7MCFixupE.exit
    i16 4003, label %_ZN12_GLOBAL__N_117HexagonAsmBackend21shouldForceRelocationERKN4llvm7MCFixupE.exit
    i16 4015, label %_ZN12_GLOBAL__N_117HexagonAsmBackend21shouldForceRelocationERKN4llvm7MCFixupE.exit
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL12DisableFixup, i64 120), align 8, !tbaa !76, !range !14, !noundef !15
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.e, label %_ZN12_GLOBAL__N_117HexagonAsmBackend21shouldForceRelocationERKN4llvm7MCFixupE.exit

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %_ZN12_GLOBAL__N_117HexagonAsmBackend21shouldForceRelocationERKN4llvm7MCFixupE.exit

_ZN12_GLOBAL__N_117HexagonAsmBackend21shouldForceRelocationERKN4llvm7MCFixupE.exit: ; preds = %bb.e, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.d, %bb.a
  %.046.shrunk = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.d ]
  call void @_ZN4llvm12MCAsmBackend13maybeAddRelocERKNS_10MCFragmentERKNS_7MCFixupERKNS_7MCValueERmb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext %.046.shrunk) #17
  %i.e = load i64, ptr %i.a, align 8, !tbaa !60   ; 12 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_117HexagonAsmBackend21shouldForceRelocationERKN4llvm7MCFixupE.exit
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = load i16, ptr %i.f, align 4, !tbaa !70   ; 3 uses
  switch i16 %i.g, label %_ZN12_GLOBAL__N_117HexagonAsmBackend20getFixupKindNumBytesEj.exit [
    i16 4001, label %iter.check
    i16 4002, label %bb.g
    i16 4003, label %bb.h
    i16 4015, label %bb.h
    i16 4025, label %bb.h
    i16 4010, label %bb.h
    i16 4027, label %bb.h
    i16 4011, label %bb.h
    i16 4028, label %bb.h
    i16 4023, label %bb.h
    i16 4029, label %bb.h
    i16 4024, label %bb.h
    i16 4030, label %bb.h
    i16 4012, label %bb.h
    i16 4031, label %bb.h
    i16 4107, label %bb.h
    i16 4109, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  br label %iter.check

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  br label %_ZN12_GLOBAL__N_117HexagonAsmBackend20getFixupKindNumBytesEj.exit

_ZN12_GLOBAL__N_117HexagonAsmBackend20getFixupKindNumBytesEj.exit: ; preds = %bb.f, %bb.h
  %.not79 = phi i1 [ false, %bb.h ], [ true, %bb.f ]
end_hunk_0
